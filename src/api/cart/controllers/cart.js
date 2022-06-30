"use strict";

/**
 *  cart controller
 */

const { createCoreController } = require("@strapi/strapi").factories;

module.exports = createCoreController("api::cart.cart", ({ strapi }) => ({
    async find(ctx) {
        // Get and set neccessary data
        const owner = ctx.state.user.id;
        ctx.request.query = {
            ...ctx.request.query,
            filters: {
                owner,
                is_checked_out: false,
            },
        };

        // Find original data
        let { data, meta } = await super.find(ctx);

        // Check if there is no cart yet
        if (data.length === 0) {
            // Create new cart
            await strapi.entityService.create("api::cart.cart", {
                data: {
                    owner,
                },
            });

            // Get cart
            const cart = await super.find(ctx);
            data = cart.data;
            meta = cart.meta;
        }

        return { data, meta };
    },

    async findOne(ctx) {
        // Get and set neccessary data
        const owner = ctx.state.user.id;
        ctx.query = {
            ...ctx.query,
            populate: {
                owner: {
                    fields: ["id"],
                },
            },
        };

        // Get original data
        const { data, meta } = await super.findOne(ctx);

        // Check ownership
        if (owner !== data.attributes.owner.data.id) {
            ctx.forbidden("Forbidden Error");
        }

        // Delete attribute owner
        delete data.attributes.owner;

        return { data, meta };
    },
}));
