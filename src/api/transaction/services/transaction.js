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
                        fields: ["id"],
                    },
                },
            };

            // Get original data
            const transaction = await strapi.entityService.findOne(
                "api::transaction.transaction",
                transactionId,
                params
            );

            // Check ownership
            if (!transaction || userId !== transaction.owner.id) {
                return false;
            }

            return true;
        },

        async updatePayment(transactionId, status) {
            const params = {
                data: {
                    payment_status: status,
                },
            };

            const transaction = await strapi.entityService.findOne(
                "api::transaction.transaction",
                transactionId
            );
            if (transaction.payment_status !== "pending") {
                return false;
            }

            await strapi.entityService.update(
                "api::transaction.transaction",
                transactionId,
                params
            );
        },
    })
);
