using srvs.dflc.cap.schema as db from '../../db/schema';

service movements {

    entity MovementTypes as projection on db.MovementTypes;
    entity Wallets      as projection on db.Wallets;
    entity Categories   as projection on db.Categories;

    entity Movements    as
        projection on db.Movements {
            ID,
            title,
            amount,
            @Common.ValueList      : {
                Label         : 'Movement Type',
                CollectionPath: 'MovementTypes',
                Parameters    : [
                    {
                        $Type            : 'Common.ValueListParameterInOut',
                        LocalDataProperty: 'type_ID',
                        ValueListProperty: 'ID'
                    },
                    {
                        $Type            : 'Common.ValueListParameterDisplayOnly',
                        ValueListProperty: 'description'
                    }
                ]
            }
            @Common.TextArrangement: #TextOnly
            @Common.Text           : type_name
            type,
            type.description                      as type_name,
            @Common.ValueList      : {
                Label         : 'Wallet',
                CollectionPath: 'Wallets',
                Parameters    : [
                    {
                        $Type            : 'Common.ValueListParameterInOut',
                        LocalDataProperty: 'wallet_ID',
                        ValueListProperty: 'ID'
                    },
                    {
                        $Type            : 'Common.ValueListParameterDisplayOnly',
                        ValueListProperty: 'name'
                    }
                ]
            }
            @Common.TextArrangement: #TextOnly
            @Common.Text           : wallet_name
            wallet,
            wallet.name                           as wallet_name,
            @Common.ValueList      : {
                Label         : 'Category',
                CollectionPath: 'Categories',
                Parameters    : [
                    {
                        $Type            : 'Common.ValueListParameterInOut',
                        LocalDataProperty: 'category_ID',
                        ValueListProperty: 'ID'
                    },
                    {
                        $Type            : 'Common.ValueListParameterDisplayOnly',
                        ValueListProperty: 'name'
                    },
                    {
                        $Type            : 'Common.ValueListParameterDisplayOnly',
                        ValueListProperty: 'icon'
                    }
                ]
            }
            @Common.TextArrangement: #TextOnly
            @Common.Text           : category_name
            category,
            category.icon || ' ' || category.name as category_name : String(50),
            case
                when type.description = 'REVENUE'
                     then 3
                when type.description = 'EXPENSE'
                     then 1
                else 2
            end                                   as criticality   : Integer,
        };

}
