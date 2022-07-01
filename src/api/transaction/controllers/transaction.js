"use strict";

/**
 *  transaction controller
 */

const { createCoreController } = require("@strapi/strapi").factories;

module.exports = createCoreController(
    "api::transaction.transaction",
    ({ strapi }) => ({
        async create(ctx) {
            const owner = ctx.state.user.id;
            const cartId = ctx.request.body.data.cart;
            ctx.request.body.data.owner = owner;

            const { data, meta } = await super.create(ctx);
            const transactionId = data.id;

            await strapi
                .service("api::transaction.transaction")
                .createTransactionDetail(transactionId, ctx);

            await strapi.service("api::cart.cart").checkOut(cartId);

            return { data, meta };
        },

        async findOne(ctx) {
            const userId = ctx.state.user.id;
            const { id } = ctx.params;

            // Check ownership
            const isOwn = await strapi
                .service("api::transaction.transaction")
                .checkOwnership(id, userId);

            if (!isOwn) {
                return ctx.forbidden("You have no right to access this data");
            }

            const { data, meta } = await super.findOne(ctx);

            return { data, meta };
        },

        async find(ctx) {
            const userId = ctx.state.user.id;
            ctx.query = {
                ...ctx.query,
                filters: {
                    ...ctx.query.filters,
                    owner: userId,
                },
            };

            const { data, meta } = await super.find(ctx);

            return { data, meta };
        },

        async confirm(ctx) {
            const userId = ctx.state.user.id;
            const { transaction: id } = ctx.request.body.data;
            ctx.request.body.data.is_paid = true;
            ctx.params.id = id;

            // Check ownership
            const isOwn = await strapi
                .service("api::transaction.transaction")
                .checkOwnership(id, userId);

            if (!isOwn) {
                return ctx.forbidden("You have no right to access this data");
            }

            await strapi
                .service("api::transaction.transaction")
                .updatePayment(id, "confirmed");

            const { data, meta } = await super.findOne(ctx);

            return { data, meta };
        },

        async update(ctx) {
            ctx.request.body.data = {
                ...ctx.request.body.data,
                payment_status: false,
            };

            const { data, meta } = await super.update(ctx);

            return { data, meta };
        },

        async cancel(ctx) {
            const userId = ctx.state.user.id;
            const { transaction: id } = ctx.request.body.data;
            ctx.request.body.data.is_paid = true;
            ctx.params.id = id;

            // Check ownership
            const isOwn = await strapi
                .service("api::transaction.transaction")
                .checkOwnership(id, userId);

            if (!isOwn) {
                return ctx.forbidden("You have no right to access this data");
            }

            await strapi
                .service("api::transaction.transaction")
                .updatePayment(id, "canceled");

            const { data, meta } = await super.findOne(ctx);

            return { data, meta };
        },
    })
);
