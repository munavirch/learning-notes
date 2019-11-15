# DynamoDB

- Type: Distributed NoSQL DB
- Delivery: Managed DaaS
- Provider: AWS
- Supported Consistency Models: Eventual (1s delay), Strong and ACID transactions
- Supported Indexing: Primary keys (single or composite), global and local secondary indexes (?)

### Billing

- On-Demand: Billes per the number of read or write operations performed on the table
- Provisioned: Bills per the provisioned throughput, even unused. Can be autoscaled

### Core Components

- Table: Collection of data/items. A table is schemaless with an exception for primary key, implies no schema defenition beforehand.
- Items: Collection of attributes uniquely identifiable in a table. 
- Attribute: Fundamental data element in a table, can't break down any further. Attributes can be either scalar or nested upto 32 levels.

[Exapmple table structure](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/images/HowItWorksPeople.png)
    
- Primary Key: DynamoDB supports 2 types of primary keys. Primary key attributes must be scalar.
  - Partition Key: Single atrribute primary key. DynamoDB uses and internal hash function to decide the physical location of the storage of an item.
  - Partition Key and Sort Key: Two atrribute primary key. Parition key is used to decide the physical location and sort key used to sort all items with same partition key.
[TO DO - Read](https://aws.amazon.com/blogs/database/choosing-the-right-dynamodb-partition-key/)

- Secondary Indexes: lets query the table with additional indexes. DynamoDB supports 2 types of secondary indexes.
  - Global secondary index: partition key and sort key are different from primary key. Limit is 20 keys per table.
  - Local secondary index: sort key is different from that of table. Each table has a limit of 5 keys.

- DynamoDB Streams (check)

### DynamoDB API

API components can be organized into four categories.
- Control Pane - Table level operations such as `CreateTable`, `DescibeTable`, `ListTables`, `UpdateTable`, `DeleteTable`.
- Data Pane - CRUD operations on table. e.g. `PutItem`.
- DynamoDB Streams
- Transcations - delas with ACID transactions

### Nomenclature
- All names must be utf-8 encoded and are case sensitive
- Allowed chars: a to z, A to Z, 0 to 9, _, -, and .
- Length: 1 to 255 chars
- Recommended not to use [reserved names](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html)
- 
