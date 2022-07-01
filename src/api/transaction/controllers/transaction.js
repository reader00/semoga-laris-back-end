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

            await strapi
                .service("api::transaction.transaction")
                .checkOwnership(id, userId);

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
    })
);
