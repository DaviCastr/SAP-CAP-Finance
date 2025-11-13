sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'apps.dflc.capfinance.categories.appcategories',
            componentId: 'CategoriesObjectPage',
            entitySet: 'Categories'
        },
        CustomPageDefinitions
    );
});