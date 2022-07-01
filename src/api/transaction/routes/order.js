module.exports = {
    routes: [
        {
            method: "POST",
            path: "/carts/order",
            handler: "transaction.create",
        },
    ],
};
