using srvs.dflc.cap.schema as db from '../../db/schema';

service movementTypes {
    
    entity MovementTypes as projection on db.MovementTypes;
    
}
