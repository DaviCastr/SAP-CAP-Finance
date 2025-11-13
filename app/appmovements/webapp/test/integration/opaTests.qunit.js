sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'apps/dflc/capfinance/movements/appmovements/test/integration/FirstJourney',
		'apps/dflc/capfinance/movements/appmovements/test/integration/pages/MovementsList',
		'apps/dflc/capfinance/movements/appmovements/test/integration/pages/MovementsObjectPage'
    ],
    function(JourneyRunner, opaJourney, MovementsList, MovementsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('apps/dflc/capfinance/movements/appmovements') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheMovementsList: MovementsList,
					onTheMovementsObjectPage: MovementsObjectPage
                }
            },
            opaJourney.run
        );
    }
);