"use strict";

/**
 * transaction service.
 */

const { createCoreService } = require("@strapi/strapi").factories;

module.exports = createCoreService(
    "api::transaction.transaction",
    ({ strapi }) => ({
        async createTransactionDetail(transactionId, ctx) {
            ctx.request.body.data.transaction = transactionId;

            const transactionDetail = await strapi
                .controller("api::transaction-detail.transaction-detail")
                .create(ctx);
            strapi.log.debug(JSON.stringify(transactionDetail));
        },

        async checkOwnership(transactionId, userId) {
            const params = {
                populate: {
                    owner: {
                        fields: "id",
                    },
                },
            };

            // Get original data
            const transacation = await strapi.entityService.findOne(
                "api::transaction.transacation",
                transactionId,
                params
            );

            // Check ownership
            if (userId !== transacation.owner.id) {
                ctx.forbidden("Forbidden Error");
            }
        },
    })
);
