sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'org.namespace.crud.orders.project2crud',
            componentId: 'OrderItemsObjectPage',
            entitySet: 'OrderItems'
        },
        CustomPageDefinitions
    );
});