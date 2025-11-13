sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'apps/dflc/capfinance/wallets/appwallets/test/integration/FirstJourney',
		'apps/dflc/capfinance/wallets/appwallets/test/integration/pages/WalletsList',
		'apps/dflc/capfinance/wallets/appwallets/test/integration/pages/WalletsObjectPage'
    ],
    function(JourneyRunner, opaJourney, WalletsList, WalletsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('apps/dflc/capfinance/wallets/appwallets') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheWalletsList: WalletsList,
					onTheWalletsObjectPage: WalletsObjectPage
                }
            },
            opaJourney.run
        );
    }
);