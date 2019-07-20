*   Planet scale.
*   JSON data store with multi-API support. Supported APIs: SQL, MongoDB, Graph API, Table API and Cassandra.
*   Eventual Consistency: Data is committed eventually. 
*   Consistent Prefix: Commit sequence are maintained. \[check\]
*   Session : Client who commits sees the changes immediatly, other users experience staleness.
*   Bounded Staleness: all dbs will be behind for the staleness period. Staleness period is customizable in AZ.
*   Strong Consistancy: Value is updated only when all read replicas are updated.
*   Data store heirarchy: DB > Collections > Document > JSON file.