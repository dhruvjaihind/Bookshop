sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'org/namespace/crud/orders/project2crud/test/integration/FirstJourney',
		'org/namespace/crud/orders/project2crud/test/integration/pages/OrdersList',
		'org/namespace/crud/orders/project2crud/test/integration/pages/OrdersObjectPage',
		'org/namespace/crud/orders/project2crud/test/integration/pages/OrderItemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, OrdersList, OrdersObjectPage, OrderItemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('org/namespace/crud/orders/project2crud') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheOrdersList: OrdersList,
					onTheOrdersObjectPage: OrdersObjectPage,
					onTheOrderItemsObjectPage: OrderItemsObjectPage
                }
            },
            opaJourney.run
        );
    }
);