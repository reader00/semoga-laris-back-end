"use strict";

/**
 * cart service.
 */

const { createCoreService } = require("@strapi/strapi").factories;

module.exports = createCoreService("api::cart.cart", ({ strapi }) => ({
    async updateValues(cartId) {
        // get cart
        let total = 0,
            count = 0,
            productPrice = 0,
            shippingFee = 40000;

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
            productPrice += parseInt(itemCount) * parseInt(itemPrice);
            shippingFee += 10000;
        }
        if (cart.cart_items.length === 0) {
            shippingFee = 0;
        }
        total = productPrice + shippingFee;

        await strapi.entityService.update("api::cart.cart", cartId, {
            data: {
                count,
                total,
                shipping_fee: shippingFee,
                products_price: productPrice,
            },
        });
    },

    async checkOut(cartId) {
        await strapi.entityService.update("api::cart.cart", cartId, {
            data: {
                is_checked_out: true,
            },
        });
    },

    async checkOwnership(cartId, userId) {
        const params = {
            populate: {
                owner: {
                    fields: ["id"],
                },
            },
        };

        // Get original data
        const cart = await strapi.entityService.findOne(
            "api::cart.cart",
            cartId,
            params
        );
        strapi.log.debug(JSON.stringify(cart));

        // Check ownership
        if (!cart || userId !== cart.owner.id) {
            return false;
        }

        return true;
    },
}));
