sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'apps.dflc.capfinance.movementtypes.appmovementtypes',
            componentId: 'MovementTypesObjectPage',
            entitySet: 'MovementTypes'
        },
        CustomPageDefinitions
    );
});