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
        async checkOwnership(cartItemId, userId) {
            const params = {
                populate: {
                    cart: {
                        populate: {
                            owner: {
                                fields: "id",
                            },
                        },
                    },
                },
            };

            // Get original data
            const cartItem = await strapi.entityService.findOne(
                "api::cart-item.cart-item",
                cartItemId,
                params
            );

            // Check ownership
            if (!cartItem || userId !== cartItem.cart.owner.id) {
                return false;
            }

            return true;
        },
    })
);
