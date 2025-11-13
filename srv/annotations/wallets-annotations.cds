using {wallets} from '..';

annotate wallets.Wallets with @(

    UI          : {
        SelectionFields : [name],
        LineItem        : [{
            Value: name,
            Label: 'Name'
        }],
        Facets          : [{
            $Type : 'UI.ReferenceFacet',
            Label : 'Wallet Details',
            Target: '@UI.FieldGroup#Main'
        }],
        FieldGroup #Main: {Data: [{
            Value: name,
            Label: 'Name'
        }]},
    },

    Capabilities: {
        InsertRestrictions: {
            $Type: 'Capabilities.InsertRestrictionsType',
            Insertable
        },
        UpdateRestrictions: {
            $Type: 'Capabilities.UpdateRestrictionsType',
            Updatable
        },
        DeleteRestrictions: {
            $Type: 'Capabilities.DeleteRestrictionsType',
            Deletable
        },
    }
);

annotate wallets.Wallets with @odata.draft.enabled;
