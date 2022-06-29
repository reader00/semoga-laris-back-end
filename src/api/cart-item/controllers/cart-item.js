"use strict";

/**
 *  cart-item controller
 */
const { createCoreController } = require("@strapi/strapi").factories;

module.exports = createCoreController(
    "api::cart-item.cart-item",
    ({ strapi }) => ({
        async create(ctx) {
            let cartId;

            // Get neccessary data
            const owner = ctx.state.user.id;

            const { count, product: productId } = ctx.request.body.data;

            // Get cart that not checked out yet
            let carts = await strapi.entityService.findMany("api::cart.cart", {
                filters: {
                    owner,
                    is_checked_out: false,
                },
            });

            // Get product price
            let { price } = await strapi.entityService.findOne(
                "api::product.product",
                productId,
                {
                    fields: ["price"],
                }
            );

            // Get total price
            const total = Number(price) * Number(count);

            // Check if there is no cart
            if (!carts.length) {
                // Create new cart
                const { id } = await strapi.entityService.create(
                    "api::cart.cart",
                    {
                        data: {
                            owner,
                        },
                    }
                );
                cartId = id;
            } else {
                cartId = carts[0].id;
            }

            ctx.request.body.data.cart = cartId;

            const { data, meta } = await super.create(ctx);

            const cart = await strapi
                .service("api::cart.cart")
                .updateValues(cartId);

            return { data, meta, cart };
        },
    })
);
