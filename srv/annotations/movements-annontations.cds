using {movements} from '..';

annotate movements.Movements with @(

    UI          : {
        SelectionFields : [title],
        LineItem        : [
            {Value: title},
            {
                Value      : amount,
                Criticality: criticality
            },
            {
                Value: type_name,
                Label: 'Type'
            },
            {
                Value: wallet_name,
                Label: 'Wallet'
            },
            {
                Value: category_name,
                Label: 'Category'
            }
        ],
        Facets          : [{
            $Type : 'UI.ReferenceFacet',
            Label : 'Details',
            Target: '@UI.FieldGroup#Main'
        }],
        FieldGroup #Main: {Data: [
            {Value: title},
            {Value: amount},
            {Value: type_ID},
            {Value: wallet_ID},
            {Value: category_ID}
        ]}
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

annotate movements.Movements with @odata.draft.enabled;