using {categories} from '..';

annotate categories.Categories with @(

    UI          : {
        SelectionFields : [name],
        LineItem        : [
            {
                Value: name,
                Label: 'Name'
            },
            {
                Value: icon,
                Label : 'Icon'
            }
        ],
        Facets          : [{
            $Type : 'UI.ReferenceFacet',
            Label : 'Category Details',
            Target: '@UI.FieldGroup#Main'
        }],
        FieldGroup #Main: {Data: [
            {
                Value: name,
                Label: 'Name'
            },
            {
                Value: icon,
                Label : 'Icon'
            }
        ]},
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

annotate categories.Categories with @odata.draft.enabled;
