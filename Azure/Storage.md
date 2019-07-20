Azure Storage Overview
======================

*   Blobs
*   Files
*   Tables
*   Queues

### Blobs

*   Object storage
*   Supports AZ Data Lake Storage G2
*   Storage heirarchy: Storage Account > Container > Blob
*   Nomenclature:
    *   Containers: Must be a valid DNS. 3-63 chars long.
    *   Blobs: 1-1024 chars, case sensitive and URI encoded. No. of path segmens should not exceed 254.
*   Types of blobs:
    *   Block blobs, text/binary, 4.7TB max, made of blocks of data which can be managed induvidually
    *   Append blobs, similar to block optimized for append operation
    *   Page blobs, collection of 512-byte pages, 8 GB max, best for frequent I/O operation
*   Data transfer options
    *   AzCopy: a CLI tool for Win/Linux
    *   Azure Storage Data Movement Library for .NET: a .NET library, AzCopy is build with this.
    *   Azure Data Factory
    *   Blobfuse
    *   Azure Data Box Disk
    *   Azure Import/Export service

### Azure Files

*   Network file shares that can be access using SMB
*   AD based ACLs are not support, authenticated via storage account credentials
*   Files can be accessed via REST API using the file url

### Queue Storage

*   Used for message storage and retrieval
*   Max size of 64KB
*   General use-case: To store a list of message that can be processed asynchronously
*   URL format: `<sa_name>.queue.core.windows.net/<queue>`
*   Nomenclature: name must be lower case

### Table Storage

*   Premium alternative: CosmosDB
*   NoSQL DaaS, key/attribute store
*   URL format: `http://<storage account>.table.core.windows.net/<table>`

### Disk Storage

*   Part of compute service, provisions managed and unmanaged virtual disk for Azure Vms

### Types of Storage Accounts

*   Gen Purpose v2 - basic storage account
*   Gen Purpose v1 - legacy, not reccomended, use v2 whenever possible
*   Block blob - Bloby only storage account for premium blob use cases
*   File Storage - File only storage with premium feature
*   Blob Storage - blob only storage, not reccomended, use v2 whenever possible

### Storage - Authorization

*   Azure AD for blob and queue
*   Auth with shared key
*   Auth with SAS (Shared Access Secret)
*   Anonymous access to containers and blobs

### Security - Encryption

*   Data at rest is encrypted via SSE
*   Client Side - libraries provides functions to encrypt data at client end

### Availability - Redundancy

*   Locally Redundant Storage (LRS) - low cost, replicated within same storage unit
*   Zone redundant Storage (ZRS) - high availability and durability, replicated across 3 AZs synchronously
*   Geo redundant Storage (GRS) - Cross-region replication, protects againt region failures
*   Read-access Geo-redundant Storage - read only replica of GRS