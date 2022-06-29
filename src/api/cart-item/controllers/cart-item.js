"use strict";

/**
 *  cart-item controller
 */
const { parseMultipartData } = require("@strapi/utils");
const { createCoreController } = require("@strapi/strapi").factories;

module.exports = createCoreController(
    "api::cart-item.cart-item",
    ({ strapi }) => ({
        async create(ctx) {
            let cart_id;

            // Get neccessary data
            const owner = ctx.state.user.id;
            const { count, product: product_id } = ctx.request.body.data;

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
                product_id,
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
                cart_id = id;
            } else {
                cart_id = carts[0].id;
            }

            ctx.request.body.data.cart = cart_id;
            const { data, meta } = await super.create(ctx);

            await strapi
                .service("api::cart.cart")
                .addItem(cart_id, { count, total });

            return { data, meta };
        },
    })
);
