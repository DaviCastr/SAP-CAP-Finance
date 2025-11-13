sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'apps/dflc/capfinance/categories/appcategories/test/integration/FirstJourney',
		'apps/dflc/capfinance/categories/appcategories/test/integration/pages/CategoriesList',
		'apps/dflc/capfinance/categories/appcategories/test/integration/pages/CategoriesObjectPage'
    ],
    function(JourneyRunner, opaJourney, CategoriesList, CategoriesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('apps/dflc/capfinance/categories/appcategories') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCategoriesList: CategoriesList,
					onTheCategoriesObjectPage: CategoriesObjectPage
                }
            },
            opaJourney.run
        );
    }
);