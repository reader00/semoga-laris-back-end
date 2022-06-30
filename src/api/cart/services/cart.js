"use strict";

/**
 * cart service.
 */

const { createCoreService } = require("@strapi/strapi").factories;

module.exports = createCoreService("api::cart.cart", ({ strapi }) => ({
    async updateValues(cartId) {
        // get cart
        let total = 0,
            count = 0;

        let cart = await strapi.entityService.findOne(
            "api::cart.cart",
            cartId,
            {
                populate: {
                    cart_items: {
                        fields: ["count"],
                        populate: {
                            product: {
                                fields: ["price"],
                            },
                        },
                    },
                },
            }
        );

        for (let item of cart.cart_items) {
            const itemCount = item.count;
            const itemPrice = item.product.price;

            count += parseInt(itemCount);
            total += parseInt(itemCount) * parseInt(itemPrice);
        }

        await strapi.entityService.update("api::cart.cart", cartId, {
            data: {
                count,
                total,
            },
        });
    },
}));
