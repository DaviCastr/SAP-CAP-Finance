sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'apps.dflc.capfinance.movementtypes.appmovementtypes',
            componentId: 'MovementTypesList',
            entitySet: 'MovementTypes'
        },
        CustomPageDefinitions
    );
});