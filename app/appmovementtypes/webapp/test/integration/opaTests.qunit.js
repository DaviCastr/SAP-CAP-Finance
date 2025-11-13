sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'apps/dflc/capfinance/movementtypes/appmovementtypes/test/integration/FirstJourney',
		'apps/dflc/capfinance/movementtypes/appmovementtypes/test/integration/pages/MovementTypesList',
		'apps/dflc/capfinance/movementtypes/appmovementtypes/test/integration/pages/MovementTypesObjectPage'
    ],
    function(JourneyRunner, opaJourney, MovementTypesList, MovementTypesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('apps/dflc/capfinance/movementtypes/appmovementtypes') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheMovementTypesList: MovementTypesList,
					onTheMovementTypesObjectPage: MovementTypesObjectPage
                }
            },
            opaJourney.run
        );
    }
);