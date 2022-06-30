"use strict";

/**
 * cart-item service.
 */

const { createCoreService } = require("@strapi/strapi").factories;

module.exports = createCoreService(
    "api::cart-item.cart-item",
    ({ strapi }) => ({
        async _getCarts(owner) {
            // Get carts
            let carts = await strapi.entityService.findMany("api::cart.cart", {
                filters: {
                    owner,
                    is_checked_out: false,
                },
            });

            return carts;
        },
    })
);
