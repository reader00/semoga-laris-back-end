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
    })
);
