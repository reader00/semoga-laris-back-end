"use strict";

/**
 * cart service.
 */

const { createCoreService } = require("@strapi/strapi").factories;

module.exports = createCoreService("api::cart.cart", ({ strapi }) => ({
    async addItem(cart_id, { count, total }) {
        // get cart
        let cart = await strapi.entityService.findOne(
            "api::cart.cart",
            cart_id,
            {
                fields: ["count", "total"],
            }
        );

        count = Number(count) + Number(cart.count);
        total = Number(total) + Number(cart.total);

        await strapi.entityService.update("api::cart.cart", cart_id, {
            data: {
                count,
                total,
            },
        });
    },
}));
