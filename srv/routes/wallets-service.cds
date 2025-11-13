using srvs.dflc.cap.schema as db from '../../db/schema';

service wallets {
    
    entity Wallets as projection on db.Wallets;
    
}
