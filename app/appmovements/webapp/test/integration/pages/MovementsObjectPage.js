sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'apps.dflc.capfinance.movements.appmovements',
            componentId: 'MovementsObjectPage',
            entitySet: 'Movements'
        },
        CustomPageDefinitions
    );
});