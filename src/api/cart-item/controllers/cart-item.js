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

            // Get cart that not checked out yet
            let carts = await strapi
                .service("api::cart-item.cart-item")
                ._getCarts(owner);

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

            await strapi.service("api::cart.cart").updateValues(cartId);

            return { data, meta };
        },

        async update(ctx) {
            // Get and set neccessary data
            const owner = ctx.state.user.id;

            ctx.query = {
                ...ctx.query,
                populate: {
                    cart: {
                        fields: ["id"],
                        populate: {
                            owner: {
                                fields: ["id"],
                            },
                        },
                    },
                },
            };

            // Get original data
            const cartItem = await super.findOne(ctx);

            // Check ownership
            if (
                owner !==
                cartItem.data.attributes.cart.data.attributes.owner.data.id
            ) {
                ctx.forbidden("Forbidden Error");
            }

            delete ctx.request.query.populate;

            // Get cart
            let carts = await strapi
                .service("api::cart-item.cart-item")
                ._getCarts(owner);

            const cartId = carts[0].id;

            // Get original data
            const { data, meta } = await super.update(ctx);

            // Update cart
            await strapi.service("api::cart.cart").updateValues(cartId);

            return { data, meta };
        },

        async delete(ctx) {
            // Get and set neccessary data
            const owner = ctx.state.user.id;
            ctx.query = {
                ...ctx.query,
                populate: {
                    cart: {
                        fields: ["id"],
                        populate: {
                            owner: {
                                fields: ["id"],
                            },
                        },
                    },
                },
            };

            // Get original data
            const cartItem = await super.findOne(ctx);

            // Check ownership
            if (
                owner !==
                cartItem.data.attributes.cart.data.attributes.owner.data.id
            ) {
                ctx.forbidden("Forbidden Error");
            }

            delete ctx.request.query.populate;

            // Get carts
            let carts = await strapi
                .service("api::cart-item.cart-item")
                ._getCarts(owner);

            const cartId = carts[0].id;

            // Get original data
            const { data, meta } = await super.delete(ctx);

            // Update cart
            await strapi.service("api::cart.cart").updateValues(cartId);

            return { data, meta };
        },
    })
);
