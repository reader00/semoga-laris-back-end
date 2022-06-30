"use strict";

/**
 *  cart controller
 */

const { createCoreController } = require("@strapi/strapi").factories;

module.exports = createCoreController("api::cart.cart", ({ strapi }) => ({
    async find(ctx) {
        const owner = ctx.state.user.id;
        ctx.request.query = {
            ...ctx.request.query,
            filters: {
                owner,
                is_checked_out: false,
            },
        };
        let { data, meta } = await super.find(ctx);

        if (data.length === 0) {
            await strapi.entityService.create("api::cart.cart", {
                data: {
                    owner,
                },
            });

            const cart = await super.find(ctx);
            data = cart.data;
            meta = cart.meta;
        }

        return { data, meta };
    },

    async findOne(ctx) {
        const owner = ctx.state.user.id;
        ctx.query = {
            ...ctx.query,
            populate: {
                owner: {
                    fields: ["id"],
                },
            },
        };

        // const data = await super.findOne(ctx);
        const { data, meta } = await super.findOne(ctx);

        strapi.log.debug(JSON.stringify(data));

        if (owner !== data.attributes.owner.data.id) {
            ctx.forbidden("Forbidden Error");
        }

        delete data.attributes.owner;

        // if()
        return { data, meta };
    },
}));
