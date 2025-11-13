sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'apps.dflc.capfinance.wallets.appwallets',
            componentId: 'WalletsList',
            entitySet: 'Wallets'
        },
        CustomPageDefinitions
    );
});