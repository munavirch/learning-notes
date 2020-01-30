# AWS Well Architected Framework

Well architected framework is a set of architectural best practices for designing and operating secure, reliable, efficient and cost-effective systems in cloud and helps understand the pros and cons of the architectural designs. It is a set of fundamental questions that allows if an architecture aligns well with a cloud best practices.

## Five Pillars

1. Operational excellence - Ability to run and monitor systems to deliver business values and continually improve supporting processes and procedures.
2. Security - Ability to proctect information, systems and assets while delivering the business values using risk assesments and mitigation strategies.
3. Reliability - Ability of a system to recover from an infrastructure or service disruption, dynamically acquiring computing resource to meet the demand and mitigate disruptions such as misconfigurations or transient network issues.
4. Performance efficiency - Ability to use computing resources efficiently to meet system requirements and to maintain that efficiency as demand changes and techologies evolve.
5. Cost optimization - Ability to run systems to deliver business values at lowest price point.

- Component: code, configuration and AWS resources that together delivers a requirement.
- Workload: set of components that together delivers a business values.
- Milestone: key change in the architecture.
- Architecture - How components work with each other in a workload.
- Technology protfolio - collection of workloads required for the business to run.

## General Design Principles

- Stop guessing the capasity needs - auto scaling options.
- Test systems ar production scale - with desposible resources in cloud, this becomes handy cost effective solution.
- Automate to make architectural experimentation easier - IaC and other automation helps replication a lot easier.
- Allow for evolutionary architecture - Automation and on demand test environments reduces the risk of impact from design changes. This lets the business set innovation as a standard practice.
- Drive architectures using data - Using logs and metrics in cloud, allows to make fact based decisions on how design changes affect the workload.
- Improve through game days - Simulate events in productions to test how your architecture and processes responds.

## Operational Excellence

### Design Princples

- **Perform operations as code**: Define workload as code. Implement operations and procedures as code and execute the same with response to events. This limits human errors and enable consistant response to events.
- **Annotate documentation**: Integrate the documentation process with operations using automated annotated documentation techniques rather manual documentation, which may struggle to cope with the pace of change.
- **Make frequent, small and reversible changes**: Design workloads to allow component updates regularly. Make small changes which is reversible in case of failures.
- **Refine operations procedures frequently**: Look for improving operations procedures as workload evolves.Regularly test the efficiency and make sure teams are familiar with it.
- **Anticipate failure**: Perform 'pre-mortem' excresice to identify potential sources of failure and remove or mitigate the same. Test the failure scenarios to understand the impact. Test the response procedures for effectiveness and make sure teams are familiar with the execution. 
- **Learn from all operational failure**: Drive improvemtns through lessons learned from all operational events and failures. Share what is learned to the team and to the entire organization.

### Best Practices: Prepare-Operate-Evolve

- **Prepare**: Design workloads with mechaninsm to monitor and gain insights into application, platform and infrastructure components as well as customer experience and behaviour. Create mechanisms to validate that workloads, or changes are ready to move to production and supported by oprations. Use checklists to ensure workloads meets defined standards. Validate that there are sufficiant personnel to effectively support workloads. Test responses to operational events and failures befroe transition.
- **Operate**: Define expected outcomes, determine how success will be measured and identify the operational and workload metrics used to calculate if operations are successful. Operational health includes both health of workloads and heleath and success of the operations acting upon the workload. Establish baselines to idenfiy improvements or degradations.
    - Efficient and effective management of operational events: Prioritize events based on business and customer impact. Ensure with each alert being raised there is an associated process and specifically identified owner. Ensure in advance the personnel required to resolve an event and include escalation triggers to engage more personnel. Identify and engage induviduals with authority to decide on the course of action in case of unidentified events.
    - Communicate operational status of workloads using dashboards and notifications tailored for target audience. 
    - Determine the root cause of unplanned events and unexpected impacts from planned events. Use this information to update the procedures to mitagte the occurance in future.
    - Automation should be in place for routine operations, response to unplanned events, deployments, release management, changes and rollbacks. 
- **Evolve**: Regularly evaluate and prioritize oppertunities for improvements, including workload and operations procedures. Include feedback loops within procedures to rapidly identify areas of improvements and acapture learnings from the execution of operations. Share the learning across teams.

### Key Services

- CloudFormation - Helps automate resource provisioning and other operations.
- Config rules - Helps define standards for workloads and determine if workloads are complaint.
- CloudWatch - Logging, monitoring, alerts and dashboards.
- ElasticSearch - Gain insight from the log data.

### Other Links

- https://aws.amazon.com/devops/?ref=wellarchitected-wp
- https://d0.awsstatic.com/whitepapers/architecture/AWS-Operational-Excellence-Pillar.pdf?ref=wellarchitected-wp
- https://www.youtube.com/watch?v=esEFaY0FDKc&ref=wellarchitected-wp

## Security

### Design Principles

- **Implement a strong identity foundation**: Implement least privilage and enforce seperation of duties with appropriate authorization for each interaction. Reduce or eliminate the use of long term credentials.
- **Enable tracebility**: Monitor, alert and audit actions and changes to your environment in real time. Integrate logs and metrics with systems to automatically respond and take actions.
- **Apply security at all layers**: Rather than focusing on just a single outer layer apply security controls to all layers including edge networks, VPCs, subnets, instances etc.
- **Automate security best practices**: Automated software based security mechanisms allow to securely scale more rapidly and cost effectively. Create architectures with implementation of controls defined as code.
- **Protect data in transit and at rest**: Classify the data based on sensitivity and apply machanism such as encryption, tokenisation and access control appropriately.
- **Keep people away from data**: Create mechanisms and tools to reduce or eliminate the need of direct access or manual processing of data. This reduces the risk of data loss or modification and human error while handling the data.
- **Prepare for security events**: Prepare for incidents by having incident management process that aligns to your organizational requirements. Run incident response simulations and use tools with automation to speed up the detection, investigation and recovery.

### Best Practices

- **Identity and Access Management**: Ensuring only authenticated and authorized users has access to resources through intented manner is the key part of information security. Define principals (users, groups, service, roles etc.) and build policies aligned with these principals. This previlage-management forms the core of authentication and authorization.
- **Detective Controls**: It is useful for identification of potential security threat or incident. They are an essential part of governance framework and can be used to support a quality process, a legal or compliance obligation and for threat identification and response events.
- **Infrastructure Protection**: Infrastructure protection encompasses control methedologies such as, defence in depth, necessary to meet best practices and organizational and regulatory obligations. Packet inspections, and setting up monitoring in ingress and egress are some of the exapmles.
- **Data Protection**: In AWS, customer has the full ownership over data security. Classify the data based on sensitivity and use access controls and encryptions to prevent unauthorized access. Rotate encryption keys regularly. Use versionaing to prevent accidental deletion.
- **Incident Response**: Put processes in place to respond to and mitigate the potential impact of security incidents.

### Key Services

- IAM
- CloudTrail
- GaurdDuty
- CloudWatch
- VPC Security Controls
- KMS
- S3 SSE

### Other Links

- http://aws.amazon.com/security/?ref=wellarchitected-wp
- https://aws.amazon.com/compliance/?ref=wellarchitected-wp
- http://blogs.aws.amazon.com/security/?ref=wellarchitected-wp
- https://d0.awsstatic.com/whitepapers/architecture/AWS-Security-Pillar.pdf?ref=wellarchitected-wp
- https://d0.awsstatic.com/whitepapers/Security/AWS%20Security%20Whitepaper.pdf?ref=wellarchitected-wp
- https://aws.amazon.com/whitepapers/aws-security-best-practices/?ref=wellarchitected-wp
- https://d0.awsstatic.com/whitepapers/compliance/AWS_Risk_and_Compliance_Whitepaper.pdf?ref=wellarchitected-wp
- https://youtu.be/Wvyc-VEUOns?ref=wellarchitected-wp
- https://www.youtube.com/watch?v=U632-ND7dKQ&ref=wellarchitected-wp

## Reliability

### Design Principles

- **Test recovery procedure**: Use automation to simulate various failure scenarios and make sure system recovers as expected. This allows to know the failure pathways before the failure has occurred in customer facing environment.
- **Automatically recover from failure**: By monitoring a system for key performance indicators (KPI), notification can be triggered for automated recovery processes that work around or repair failures. More sophisticated automations can anticipate and remediate failures even before they occur.
- **Scale horizontally to increase aggregate system availability**: Replace one large resources with multiple small resources and distribute requests to avoid single point of failure.
- **Stop guessing capacity**: Monitor system utlization and provision or decommision resources based on demand.
- **Manage change in automation**: Manage infrastructure changes via automation.

### Best Practices

- **Foundations**: Before architecting a system, foundamental requirements that influence reliability such as network band width should be in place. With cloud, most of these fundamental requirements are already incorporated or may be addressed as needed. AWS puts in place service limits to protect from accidental over provisioning. 
- **Change Management**: Being aware of how a change affects the system allows to plan proactively and monitoring helps to quickly identify the trends that could lead to capacity issues or SLA breaches.
- **Failure Management**: Based on particular metrics, actions can be triggered to remedy the problem. Instead of daignosing a resource, a new resource can replace the existing one and failed resource can be daignosed offline.
    - Regulary backup the data and test the backup files to ensure system can recover from both logical physical failures.
    - Test recovery process thoroughly.

### Other Links

- http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html?ref=wellarchitected-wp
- http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html?ref=wellarchitected-wp
- https://d0.awsstatic.com/whitepapers/architecture/AWS-Reliability-Pillar.pdf?ref=wellarchitected-wp
- http://d0.awsstatic.com/whitepapers/Backup_Archive_and_Restore_Approaches_Using_AWS.pdf?ref=wellarchitected-wp
- http://d0.awsstatic.com/whitepapers/Backup_Archive_and_Restore_Approaches_Using_AWS.pdf?ref=wellarchitected-wp
- http://media.amazonwebservices.com/AWS_Disaster_Recovery.pdf?ref=wellarchitected-wp
- http://media.amazonwebservices.com/AWS_Amazon_VPC_Connectivity_Options.pdf?ref=wellarchitected-wp
- http://media.amazonwebservices.com/AWS_Amazon_VPC_Connectivity_Options.pdf?ref=wellarchitected-wp

## Performance Efficiency

### Design Principles

- **Democratize advanced technologies**: Pushing complex technologies into cloud vendor's domain can allows organizations to focus on building their workloads.
- **Go global in minutes**: Use globally distributed network of the cloud vendor to serve customers with lower latencies.
- **Use serverless architecture**: Serverless completely elimate the need of infrastructure management.
- **Experiment more often**: Carrying out comparitive tests of various resources are made easy with virtual and automatable resources.
- **Mechanical sympathy**: Use technology approaches that aligns best to what you are trying to achieve.

### Best Practices

- **Selection**: In AWS, resources are virtualized and available in different types and configuration. Use data driven approach to select patterns and implementations for the architecture.
    - **Compute** resources are available in 3 types. Instances, containers and functions.
    - Choosing optimate **storage** may vary on kind of access (block, file, object), pattern of access (random or sequential), throughput required, frequency of access (online, offline, archive), frequency of update (WORM or dynamic) and availability and durability constrains.
    - Optimal **database** solution may vary based on requirements for availability, consistency, partition tolerance, latency, durability, scalability and query capability. 
    - Optimal **network** may vary on requirements like latency, throughput etc.
- **Review**: Continue to innovate as the new services or region releases.
- **Monitor**: After implementation, monitor the performance continually to find out and remediate any issues before customers are aware.
- **Tradeoff**: Think about tradeoff as you choose optimal solutions. Test and ensure that a measurable benefit is obtained.

## Cost Optimization

### Design Principles

- **Adpot a consumption model**: Pay only for the compute resources that is required increase or decrease the usage depending on the business requirement.
- **Measure overall efficiency**: Measure the business output of a workload and the costs associated with delivering it. Use this measure to know the gains made from increasing output and reducing cost.
- **Stop spending money on datacenter operations**: AWS does the heavy lifting of setting up a data center so that organization can focus on building business workloads.
- **Analyze and attribute expenditure**: Calculate the cost associated with each workload. This helps in measuring return on investment with specific owner and reduce and optimize cost.
- **Use managed and application level services to reduce cost of ownership**

### Best Practices

- **Expenditure awareness**: Attribute resource costs with induvidual workload owners with the use of resource tags. It also helps identify orphaned resources and decommisioning the same.
- **Cost effective resources**: Right sizing the instances and resources optimal for the workload is key to cost optimization. Use reserved instances to reserve the capacity and savings on usage. Spot instances are also available for cheaper rates for suitable use cases.
- **Matching supply and demand**: OPtimally matching supply for demand delivers lowest cost for a workload.
- **Optimize over time**: As AWS releases new services, review the architecture for cost optimization.
