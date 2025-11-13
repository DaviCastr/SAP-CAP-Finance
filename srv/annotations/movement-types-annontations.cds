using { movementTypes } from '..';

annotate movementTypes.MovementTypes with @(

    UI          : {
        SelectionFields : [description],
        LineItem        : [{
            Value: description,
            Label: 'Description'
        }],
        Facets          : [{
            $Type : 'UI.ReferenceFacet',
            Label : 'Movement Type Details',
            Target: '@UI.FieldGroup#Main'
        }],
        FieldGroup #Main: {Data: [{
            Value: description,
            Label: 'Description'
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

annotate movementTypes.MovementTypes with @odata.draft.enabled;
