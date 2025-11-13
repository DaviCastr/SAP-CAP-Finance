namespace srvs.dflc.cap.schema;

using {
    managed,
    cuid
} from '@sap/cds/common';

entity Wallets : cuid, managed {
    @title: 'Name'
    name      : String(50);
    createdAt : DateTime;
}

entity Categories : cuid, managed {
    @title: 'Name'
    name  : String(50);

    @title: 'Icon'
    icon  : String(30);

    @title: 'Color'
    color : String(10);
}

entity MovementTypes : cuid, managed {
    @title: 'Description'
    description : String(50);
}

entity Movements : cuid, managed {
    @title: 'Title'
    title    : String(50);

    @title: 'Amount'
    amount   : Decimal(15, 2);

    @title: 'Date'
    date     : Date;

    @title: 'Type'
    type     : Association to MovementTypes;

    @title: 'Wallet'
    wallet   : Association to Wallets;

    @title: 'Category'
    category : Association to Categories;

    @title: 'Note'
    note     : String(50);

    cratedAt : DateTime;

}