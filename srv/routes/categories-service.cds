using srvs.dflc.cap.schema as db from '../../db/schema';

service categories {
    
    entity Categories as projection on db.Categories;
    
}
