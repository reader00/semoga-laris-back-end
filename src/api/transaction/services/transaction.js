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
    })
);
