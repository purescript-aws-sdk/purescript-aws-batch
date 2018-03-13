## Module AWS.Batch

<p>AWS Batch enables you to run batch computing workloads on the AWS Cloud. Batch computing is a common way for developers, scientists, and engineers to access large amounts of compute resources, and AWS Batch removes the undifferentiated heavy lifting of configuring and managing the required infrastructure. AWS Batch will be familiar to users of traditional batch computing software. This service can efficiently provision resources in response to jobs submitted in order to eliminate capacity constraints, reduce compute costs, and deliver results quickly.</p> <p>As a fully managed service, AWS Batch enables developers, scientists, and engineers to run batch computing workloads of any scale. AWS Batch automatically provisions compute resources and optimizes the workload distribution based on the quantity and scale of the workloads. With AWS Batch, there is no need to install or manage batch computing software, which allows you to focus on analyzing results and solving problems. AWS Batch reduces operational complexities, saves time, and reduces costs, which makes it easy for developers, scientists, and engineers to run their batch jobs in the AWS Cloud.</p>

#### `cancelJob`

``` purescript
cancelJob :: forall eff. CancelJobRequest -> Aff (exception :: EXCEPTION | eff) CancelJobResponse
```

<p>Cancels a job in an AWS Batch job queue. Jobs that are in the <code>SUBMITTED</code>, <code>PENDING</code>, or <code>RUNNABLE</code> state are cancelled. Jobs that have progressed to <code>STARTING</code> or <code>RUNNING</code> are not cancelled (but the API operation still succeeds, even if no job is cancelled); these jobs must be terminated with the <a>TerminateJob</a> operation.</p>

#### `createComputeEnvironment`

``` purescript
createComputeEnvironment :: forall eff. CreateComputeEnvironmentRequest -> Aff (exception :: EXCEPTION | eff) CreateComputeEnvironmentResponse
```

<p>Creates an AWS Batch compute environment. You can create <code>MANAGED</code> or <code>UNMANAGED</code> compute environments.</p> <p>In a managed compute environment, AWS Batch manages the compute resources within the environment, based on the compute resources that you specify. Instances launched into a managed compute environment use a recent, approved version of the Amazon ECS-optimized AMI. You can choose to use Amazon EC2 On-Demand Instances in your managed compute environment, or you can use Amazon EC2 Spot Instances that only launch when the Spot bid price is below a specified percentage of the On-Demand price.</p> <p>In an unmanaged compute environment, you can manage your own compute resources. This provides more compute resource configuration options, such as using a custom AMI, but you must ensure that your AMI meets the Amazon ECS container instance AMI specification. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/container_instance_AMIs.html">Container Instance AMIs</a> in the <i>Amazon Elastic Container Service Developer Guide</i>. After you have created your unmanaged compute environment, you can use the <a>DescribeComputeEnvironments</a> operation to find the Amazon ECS cluster that is associated with it and then manually launch your container instances into that Amazon ECS cluster. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_container_instance.html">Launching an Amazon ECS Container Instance</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>

#### `createJobQueue`

``` purescript
createJobQueue :: forall eff. CreateJobQueueRequest -> Aff (exception :: EXCEPTION | eff) CreateJobQueueResponse
```

<p>Creates an AWS Batch job queue. When you create a job queue, you associate one or more compute environments to the queue and assign an order of preference for the compute environments.</p> <p>You also set a priority to the job queue that determines the order in which the AWS Batch scheduler places jobs onto its associated compute environments. For example, if a compute environment is associated with more than one job queue, the job queue with a higher priority is given preference for scheduling jobs to that compute environment.</p>

#### `deleteComputeEnvironment`

``` purescript
deleteComputeEnvironment :: forall eff. DeleteComputeEnvironmentRequest -> Aff (exception :: EXCEPTION | eff) DeleteComputeEnvironmentResponse
```

<p>Deletes an AWS Batch compute environment.</p> <p>Before you can delete a compute environment, you must set its state to <code>DISABLED</code> with the <a>UpdateComputeEnvironment</a> API operation and disassociate it from any job queues with the <a>UpdateJobQueue</a> API operation.</p>

#### `deleteJobQueue`

``` purescript
deleteJobQueue :: forall eff. DeleteJobQueueRequest -> Aff (exception :: EXCEPTION | eff) DeleteJobQueueResponse
```

<p>Deletes the specified job queue. You must first disable submissions for a queue with the <a>UpdateJobQueue</a> operation. All jobs in the queue are terminated when you delete a job queue.</p> <p>It is not necessary to disassociate compute environments from a queue before submitting a <code>DeleteJobQueue</code> request. </p>

#### `deregisterJobDefinition`

``` purescript
deregisterJobDefinition :: forall eff. DeregisterJobDefinitionRequest -> Aff (exception :: EXCEPTION | eff) DeregisterJobDefinitionResponse
```

<p>Deregisters an AWS Batch job definition.</p>

#### `describeComputeEnvironments`

``` purescript
describeComputeEnvironments :: forall eff. DescribeComputeEnvironmentsRequest -> Aff (exception :: EXCEPTION | eff) DescribeComputeEnvironmentsResponse
```

<p>Describes one or more of your compute environments.</p> <p>If you are using an unmanaged compute environment, you can use the <code>DescribeComputeEnvironment</code> operation to determine the <code>ecsClusterArn</code> that you should launch your Amazon ECS container instances into.</p>

#### `describeJobDefinitions`

``` purescript
describeJobDefinitions :: forall eff. DescribeJobDefinitionsRequest -> Aff (exception :: EXCEPTION | eff) DescribeJobDefinitionsResponse
```

<p>Describes a list of job definitions. You can specify a <code>status</code> (such as <code>ACTIVE</code>) to only return job definitions that match that status.</p>

#### `describeJobQueues`

``` purescript
describeJobQueues :: forall eff. DescribeJobQueuesRequest -> Aff (exception :: EXCEPTION | eff) DescribeJobQueuesResponse
```

<p>Describes one or more of your job queues.</p>

#### `describeJobs`

``` purescript
describeJobs :: forall eff. DescribeJobsRequest -> Aff (exception :: EXCEPTION | eff) DescribeJobsResponse
```

<p>Describes a list of AWS Batch jobs.</p>

#### `listJobs`

``` purescript
listJobs :: forall eff. ListJobsRequest -> Aff (exception :: EXCEPTION | eff) ListJobsResponse
```

<p>Returns a list of task jobs for a specified job queue. You can filter the results by job status with the <code>jobStatus</code> parameter. If you do not specify a status, only <code>RUNNING</code> jobs are returned.</p>

#### `registerJobDefinition`

``` purescript
registerJobDefinition :: forall eff. RegisterJobDefinitionRequest -> Aff (exception :: EXCEPTION | eff) RegisterJobDefinitionResponse
```

<p>Registers an AWS Batch job definition. </p>

#### `submitJob`

``` purescript
submitJob :: forall eff. SubmitJobRequest -> Aff (exception :: EXCEPTION | eff) SubmitJobResponse
```

<p>Submits an AWS Batch job from a job definition. Parameters specified during <a>SubmitJob</a> override parameters defined in the job definition. </p>

#### `terminateJob`

``` purescript
terminateJob :: forall eff. TerminateJobRequest -> Aff (exception :: EXCEPTION | eff) TerminateJobResponse
```

<p>Terminates a job in a job queue. Jobs that are in the <code>STARTING</code> or <code>RUNNING</code> state are terminated, which causes them to transition to <code>FAILED</code>. Jobs that have not progressed to the <code>STARTING</code> state are cancelled.</p>

#### `updateComputeEnvironment`

``` purescript
updateComputeEnvironment :: forall eff. UpdateComputeEnvironmentRequest -> Aff (exception :: EXCEPTION | eff) UpdateComputeEnvironmentResponse
```

<p>Updates an AWS Batch compute environment.</p>

#### `updateJobQueue`

``` purescript
updateJobQueue :: forall eff. UpdateJobQueueRequest -> Aff (exception :: EXCEPTION | eff) UpdateJobQueueResponse
```

<p>Updates a job queue.</p>

#### `ArrayJobDependency`

``` purescript
newtype ArrayJobDependency
  = ArrayJobDependency String
```

##### Instances
``` purescript
Newtype ArrayJobDependency _
Generic ArrayJobDependency _
Show ArrayJobDependency
Decode ArrayJobDependency
Encode ArrayJobDependency
```

#### `ArrayJobStatusSummary`

``` purescript
newtype ArrayJobStatusSummary
  = ArrayJobStatusSummary (StrMap Int)
```

##### Instances
``` purescript
Newtype ArrayJobStatusSummary _
Generic ArrayJobStatusSummary _
Show ArrayJobStatusSummary
Decode ArrayJobStatusSummary
Encode ArrayJobStatusSummary
```

#### `ArrayProperties`

``` purescript
newtype ArrayProperties
  = ArrayProperties { size :: NullOrUndefined (Int) }
```

<p>An object representing an AWS Batch array job.</p>

##### Instances
``` purescript
Newtype ArrayProperties _
Generic ArrayProperties _
Show ArrayProperties
Decode ArrayProperties
Encode ArrayProperties
```

#### `newArrayProperties`

``` purescript
newArrayProperties :: ArrayProperties
```

Constructs ArrayProperties from required parameters

#### `newArrayProperties'`

``` purescript
newArrayProperties' :: ({ size :: NullOrUndefined (Int) } -> { size :: NullOrUndefined (Int) }) -> ArrayProperties
```

Constructs ArrayProperties's fields from required parameters

#### `ArrayPropertiesDetail`

``` purescript
newtype ArrayPropertiesDetail
  = ArrayPropertiesDetail { statusSummary :: NullOrUndefined (ArrayJobStatusSummary), size :: NullOrUndefined (Int), index :: NullOrUndefined (Int) }
```

<p>An object representing the array properties of a job.</p>

##### Instances
``` purescript
Newtype ArrayPropertiesDetail _
Generic ArrayPropertiesDetail _
Show ArrayPropertiesDetail
Decode ArrayPropertiesDetail
Encode ArrayPropertiesDetail
```

#### `newArrayPropertiesDetail`

``` purescript
newArrayPropertiesDetail :: ArrayPropertiesDetail
```

Constructs ArrayPropertiesDetail from required parameters

#### `newArrayPropertiesDetail'`

``` purescript
newArrayPropertiesDetail' :: ({ statusSummary :: NullOrUndefined (ArrayJobStatusSummary), size :: NullOrUndefined (Int), index :: NullOrUndefined (Int) } -> { statusSummary :: NullOrUndefined (ArrayJobStatusSummary), size :: NullOrUndefined (Int), index :: NullOrUndefined (Int) }) -> ArrayPropertiesDetail
```

Constructs ArrayPropertiesDetail's fields from required parameters

#### `ArrayPropertiesSummary`

``` purescript
newtype ArrayPropertiesSummary
  = ArrayPropertiesSummary { size :: NullOrUndefined (Int), index :: NullOrUndefined (Int) }
```

<p>An object representing the array properties of a job.</p>

##### Instances
``` purescript
Newtype ArrayPropertiesSummary _
Generic ArrayPropertiesSummary _
Show ArrayPropertiesSummary
Decode ArrayPropertiesSummary
Encode ArrayPropertiesSummary
```

#### `newArrayPropertiesSummary`

``` purescript
newArrayPropertiesSummary :: ArrayPropertiesSummary
```

Constructs ArrayPropertiesSummary from required parameters

#### `newArrayPropertiesSummary'`

``` purescript
newArrayPropertiesSummary' :: ({ size :: NullOrUndefined (Int), index :: NullOrUndefined (Int) } -> { size :: NullOrUndefined (Int), index :: NullOrUndefined (Int) }) -> ArrayPropertiesSummary
```

Constructs ArrayPropertiesSummary's fields from required parameters

#### `AttemptContainerDetail`

``` purescript
newtype AttemptContainerDetail
  = AttemptContainerDetail { containerInstanceArn :: NullOrUndefined (String), taskArn :: NullOrUndefined (String), exitCode :: NullOrUndefined (Int), reason :: NullOrUndefined (String), logStreamName :: NullOrUndefined (String) }
```

<p>An object representing the details of a container that is part of a job attempt.</p>

##### Instances
``` purescript
Newtype AttemptContainerDetail _
Generic AttemptContainerDetail _
Show AttemptContainerDetail
Decode AttemptContainerDetail
Encode AttemptContainerDetail
```

#### `newAttemptContainerDetail`

``` purescript
newAttemptContainerDetail :: AttemptContainerDetail
```

Constructs AttemptContainerDetail from required parameters

#### `newAttemptContainerDetail'`

``` purescript
newAttemptContainerDetail' :: ({ containerInstanceArn :: NullOrUndefined (String), taskArn :: NullOrUndefined (String), exitCode :: NullOrUndefined (Int), reason :: NullOrUndefined (String), logStreamName :: NullOrUndefined (String) } -> { containerInstanceArn :: NullOrUndefined (String), taskArn :: NullOrUndefined (String), exitCode :: NullOrUndefined (Int), reason :: NullOrUndefined (String), logStreamName :: NullOrUndefined (String) }) -> AttemptContainerDetail
```

Constructs AttemptContainerDetail's fields from required parameters

#### `AttemptDetail`

``` purescript
newtype AttemptDetail
  = AttemptDetail { container :: NullOrUndefined (AttemptContainerDetail), startedAt :: NullOrUndefined (Number), stoppedAt :: NullOrUndefined (Number), statusReason :: NullOrUndefined (String) }
```

<p>An object representing a job attempt.</p>

##### Instances
``` purescript
Newtype AttemptDetail _
Generic AttemptDetail _
Show AttemptDetail
Decode AttemptDetail
Encode AttemptDetail
```

#### `newAttemptDetail`

``` purescript
newAttemptDetail :: AttemptDetail
```

Constructs AttemptDetail from required parameters

#### `newAttemptDetail'`

``` purescript
newAttemptDetail' :: ({ container :: NullOrUndefined (AttemptContainerDetail), startedAt :: NullOrUndefined (Number), stoppedAt :: NullOrUndefined (Number), statusReason :: NullOrUndefined (String) } -> { container :: NullOrUndefined (AttemptContainerDetail), startedAt :: NullOrUndefined (Number), stoppedAt :: NullOrUndefined (Number), statusReason :: NullOrUndefined (String) }) -> AttemptDetail
```

Constructs AttemptDetail's fields from required parameters

#### `AttemptDetails`

``` purescript
newtype AttemptDetails
  = AttemptDetails (Array AttemptDetail)
```

##### Instances
``` purescript
Newtype AttemptDetails _
Generic AttemptDetails _
Show AttemptDetails
Decode AttemptDetails
Encode AttemptDetails
```

#### `CEState`

``` purescript
newtype CEState
  = CEState String
```

##### Instances
``` purescript
Newtype CEState _
Generic CEState _
Show CEState
Decode CEState
Encode CEState
```

#### `CEStatus`

``` purescript
newtype CEStatus
  = CEStatus String
```

##### Instances
``` purescript
Newtype CEStatus _
Generic CEStatus _
Show CEStatus
Decode CEStatus
Encode CEStatus
```

#### `CEType`

``` purescript
newtype CEType
  = CEType String
```

##### Instances
``` purescript
Newtype CEType _
Generic CEType _
Show CEType
Decode CEType
Encode CEType
```

#### `CRType`

``` purescript
newtype CRType
  = CRType String
```

##### Instances
``` purescript
Newtype CRType _
Generic CRType _
Show CRType
Decode CRType
Encode CRType
```

#### `CancelJobRequest`

``` purescript
newtype CancelJobRequest
  = CancelJobRequest { jobId :: String, reason :: String }
```

##### Instances
``` purescript
Newtype CancelJobRequest _
Generic CancelJobRequest _
Show CancelJobRequest
Decode CancelJobRequest
Encode CancelJobRequest
```

#### `newCancelJobRequest`

``` purescript
newCancelJobRequest :: String -> String -> CancelJobRequest
```

Constructs CancelJobRequest from required parameters

#### `newCancelJobRequest'`

``` purescript
newCancelJobRequest' :: String -> String -> ({ jobId :: String, reason :: String } -> { jobId :: String, reason :: String }) -> CancelJobRequest
```

Constructs CancelJobRequest's fields from required parameters

#### `CancelJobResponse`

``` purescript
newtype CancelJobResponse
  = CancelJobResponse NoArguments
```

##### Instances
``` purescript
Newtype CancelJobResponse _
Generic CancelJobResponse _
Show CancelJobResponse
Decode CancelJobResponse
Encode CancelJobResponse
```

#### `ClientException`

``` purescript
newtype ClientException
  = ClientException { message :: NullOrUndefined (String) }
```

<p>These errors are usually caused by a client action, such as using an action or resource on behalf of a user that doesn't have permissions to use the action or resource, or specifying an identifier that is not valid. </p>

##### Instances
``` purescript
Newtype ClientException _
Generic ClientException _
Show ClientException
Decode ClientException
Encode ClientException
```

#### `newClientException`

``` purescript
newClientException :: ClientException
```

Constructs ClientException from required parameters

#### `newClientException'`

``` purescript
newClientException' :: ({ message :: NullOrUndefined (String) } -> { message :: NullOrUndefined (String) }) -> ClientException
```

Constructs ClientException's fields from required parameters

#### `ComputeEnvironmentDetail`

``` purescript
newtype ComputeEnvironmentDetail
  = ComputeEnvironmentDetail { computeEnvironmentName :: String, computeEnvironmentArn :: String, ecsClusterArn :: String, "type" :: NullOrUndefined (CEType), state :: NullOrUndefined (CEState), status :: NullOrUndefined (CEStatus), statusReason :: NullOrUndefined (String), computeResources :: NullOrUndefined (ComputeResource), serviceRole :: NullOrUndefined (String) }
```

<p>An object representing an AWS Batch compute environment.</p>

##### Instances
``` purescript
Newtype ComputeEnvironmentDetail _
Generic ComputeEnvironmentDetail _
Show ComputeEnvironmentDetail
Decode ComputeEnvironmentDetail
Encode ComputeEnvironmentDetail
```

#### `newComputeEnvironmentDetail`

``` purescript
newComputeEnvironmentDetail :: String -> String -> String -> ComputeEnvironmentDetail
```

Constructs ComputeEnvironmentDetail from required parameters

#### `newComputeEnvironmentDetail'`

``` purescript
newComputeEnvironmentDetail' :: String -> String -> String -> ({ computeEnvironmentName :: String, computeEnvironmentArn :: String, ecsClusterArn :: String, "type" :: NullOrUndefined (CEType), state :: NullOrUndefined (CEState), status :: NullOrUndefined (CEStatus), statusReason :: NullOrUndefined (String), computeResources :: NullOrUndefined (ComputeResource), serviceRole :: NullOrUndefined (String) } -> { computeEnvironmentName :: String, computeEnvironmentArn :: String, ecsClusterArn :: String, "type" :: NullOrUndefined (CEType), state :: NullOrUndefined (CEState), status :: NullOrUndefined (CEStatus), statusReason :: NullOrUndefined (String), computeResources :: NullOrUndefined (ComputeResource), serviceRole :: NullOrUndefined (String) }) -> ComputeEnvironmentDetail
```

Constructs ComputeEnvironmentDetail's fields from required parameters

#### `ComputeEnvironmentDetailList`

``` purescript
newtype ComputeEnvironmentDetailList
  = ComputeEnvironmentDetailList (Array ComputeEnvironmentDetail)
```

##### Instances
``` purescript
Newtype ComputeEnvironmentDetailList _
Generic ComputeEnvironmentDetailList _
Show ComputeEnvironmentDetailList
Decode ComputeEnvironmentDetailList
Encode ComputeEnvironmentDetailList
```

#### `ComputeEnvironmentOrder`

``` purescript
newtype ComputeEnvironmentOrder
  = ComputeEnvironmentOrder { order :: Int, computeEnvironment :: String }
```

<p>The order in which compute environments are tried for job placement within a queue. Compute environments are tried in ascending order. For example, if two compute environments are associated with a job queue, the compute environment with a lower order integer value is tried for job placement first.</p>

##### Instances
``` purescript
Newtype ComputeEnvironmentOrder _
Generic ComputeEnvironmentOrder _
Show ComputeEnvironmentOrder
Decode ComputeEnvironmentOrder
Encode ComputeEnvironmentOrder
```

#### `newComputeEnvironmentOrder`

``` purescript
newComputeEnvironmentOrder :: String -> Int -> ComputeEnvironmentOrder
```

Constructs ComputeEnvironmentOrder from required parameters

#### `newComputeEnvironmentOrder'`

``` purescript
newComputeEnvironmentOrder' :: String -> Int -> ({ order :: Int, computeEnvironment :: String } -> { order :: Int, computeEnvironment :: String }) -> ComputeEnvironmentOrder
```

Constructs ComputeEnvironmentOrder's fields from required parameters

#### `ComputeEnvironmentOrders`

``` purescript
newtype ComputeEnvironmentOrders
  = ComputeEnvironmentOrders (Array ComputeEnvironmentOrder)
```

##### Instances
``` purescript
Newtype ComputeEnvironmentOrders _
Generic ComputeEnvironmentOrders _
Show ComputeEnvironmentOrders
Decode ComputeEnvironmentOrders
Encode ComputeEnvironmentOrders
```

#### `ComputeResource`

``` purescript
newtype ComputeResource
  = ComputeResource { "type" :: CRType, minvCpus :: Int, maxvCpus :: Int, desiredvCpus :: NullOrUndefined (Int), instanceTypes :: StringList, imageId :: NullOrUndefined (String), subnets :: StringList, securityGroupIds :: StringList, ec2KeyPair :: NullOrUndefined (String), instanceRole :: String, tags :: NullOrUndefined (TagsMap), bidPercentage :: NullOrUndefined (Int), spotIamFleetRole :: NullOrUndefined (String) }
```

<p>An object representing an AWS Batch compute resource.</p>

##### Instances
``` purescript
Newtype ComputeResource _
Generic ComputeResource _
Show ComputeResource
Decode ComputeResource
Encode ComputeResource
```

#### `newComputeResource`

``` purescript
newComputeResource :: String -> StringList -> Int -> Int -> StringList -> StringList -> CRType -> ComputeResource
```

Constructs ComputeResource from required parameters

#### `newComputeResource'`

``` purescript
newComputeResource' :: String -> StringList -> Int -> Int -> StringList -> StringList -> CRType -> ({ "type" :: CRType, minvCpus :: Int, maxvCpus :: Int, desiredvCpus :: NullOrUndefined (Int), instanceTypes :: StringList, imageId :: NullOrUndefined (String), subnets :: StringList, securityGroupIds :: StringList, ec2KeyPair :: NullOrUndefined (String), instanceRole :: String, tags :: NullOrUndefined (TagsMap), bidPercentage :: NullOrUndefined (Int), spotIamFleetRole :: NullOrUndefined (String) } -> { "type" :: CRType, minvCpus :: Int, maxvCpus :: Int, desiredvCpus :: NullOrUndefined (Int), instanceTypes :: StringList, imageId :: NullOrUndefined (String), subnets :: StringList, securityGroupIds :: StringList, ec2KeyPair :: NullOrUndefined (String), instanceRole :: String, tags :: NullOrUndefined (TagsMap), bidPercentage :: NullOrUndefined (Int), spotIamFleetRole :: NullOrUndefined (String) }) -> ComputeResource
```

Constructs ComputeResource's fields from required parameters

#### `ComputeResourceUpdate`

``` purescript
newtype ComputeResourceUpdate
  = ComputeResourceUpdate { minvCpus :: NullOrUndefined (Int), maxvCpus :: NullOrUndefined (Int), desiredvCpus :: NullOrUndefined (Int) }
```

<p>An object representing the attributes of a compute environment that can be updated.</p>

##### Instances
``` purescript
Newtype ComputeResourceUpdate _
Generic ComputeResourceUpdate _
Show ComputeResourceUpdate
Decode ComputeResourceUpdate
Encode ComputeResourceUpdate
```

#### `newComputeResourceUpdate`

``` purescript
newComputeResourceUpdate :: ComputeResourceUpdate
```

Constructs ComputeResourceUpdate from required parameters

#### `newComputeResourceUpdate'`

``` purescript
newComputeResourceUpdate' :: ({ minvCpus :: NullOrUndefined (Int), maxvCpus :: NullOrUndefined (Int), desiredvCpus :: NullOrUndefined (Int) } -> { minvCpus :: NullOrUndefined (Int), maxvCpus :: NullOrUndefined (Int), desiredvCpus :: NullOrUndefined (Int) }) -> ComputeResourceUpdate
```

Constructs ComputeResourceUpdate's fields from required parameters

#### `ContainerDetail`

``` purescript
newtype ContainerDetail
  = ContainerDetail { image :: NullOrUndefined (String), vcpus :: NullOrUndefined (Int), memory :: NullOrUndefined (Int), command :: NullOrUndefined (StringList), jobRoleArn :: NullOrUndefined (String), volumes :: NullOrUndefined (Volumes), environment :: NullOrUndefined (EnvironmentVariables), mountPoints :: NullOrUndefined (MountPoints), readonlyRootFilesystem :: NullOrUndefined (Boolean), ulimits :: NullOrUndefined (Ulimits), privileged :: NullOrUndefined (Boolean), user :: NullOrUndefined (String), exitCode :: NullOrUndefined (Int), reason :: NullOrUndefined (String), containerInstanceArn :: NullOrUndefined (String), taskArn :: NullOrUndefined (String), logStreamName :: NullOrUndefined (String) }
```

<p>An object representing the details of a container that is part of a job.</p>

##### Instances
``` purescript
Newtype ContainerDetail _
Generic ContainerDetail _
Show ContainerDetail
Decode ContainerDetail
Encode ContainerDetail
```

#### `newContainerDetail`

``` purescript
newContainerDetail :: ContainerDetail
```

Constructs ContainerDetail from required parameters

#### `newContainerDetail'`

``` purescript
newContainerDetail' :: ({ image :: NullOrUndefined (String), vcpus :: NullOrUndefined (Int), memory :: NullOrUndefined (Int), command :: NullOrUndefined (StringList), jobRoleArn :: NullOrUndefined (String), volumes :: NullOrUndefined (Volumes), environment :: NullOrUndefined (EnvironmentVariables), mountPoints :: NullOrUndefined (MountPoints), readonlyRootFilesystem :: NullOrUndefined (Boolean), ulimits :: NullOrUndefined (Ulimits), privileged :: NullOrUndefined (Boolean), user :: NullOrUndefined (String), exitCode :: NullOrUndefined (Int), reason :: NullOrUndefined (String), containerInstanceArn :: NullOrUndefined (String), taskArn :: NullOrUndefined (String), logStreamName :: NullOrUndefined (String) } -> { image :: NullOrUndefined (String), vcpus :: NullOrUndefined (Int), memory :: NullOrUndefined (Int), command :: NullOrUndefined (StringList), jobRoleArn :: NullOrUndefined (String), volumes :: NullOrUndefined (Volumes), environment :: NullOrUndefined (EnvironmentVariables), mountPoints :: NullOrUndefined (MountPoints), readonlyRootFilesystem :: NullOrUndefined (Boolean), ulimits :: NullOrUndefined (Ulimits), privileged :: NullOrUndefined (Boolean), user :: NullOrUndefined (String), exitCode :: NullOrUndefined (Int), reason :: NullOrUndefined (String), containerInstanceArn :: NullOrUndefined (String), taskArn :: NullOrUndefined (String), logStreamName :: NullOrUndefined (String) }) -> ContainerDetail
```

Constructs ContainerDetail's fields from required parameters

#### `ContainerOverrides`

``` purescript
newtype ContainerOverrides
  = ContainerOverrides { vcpus :: NullOrUndefined (Int), memory :: NullOrUndefined (Int), command :: NullOrUndefined (StringList), environment :: NullOrUndefined (EnvironmentVariables) }
```

<p>The overrides that should be sent to a container.</p>

##### Instances
``` purescript
Newtype ContainerOverrides _
Generic ContainerOverrides _
Show ContainerOverrides
Decode ContainerOverrides
Encode ContainerOverrides
```

#### `newContainerOverrides`

``` purescript
newContainerOverrides :: ContainerOverrides
```

Constructs ContainerOverrides from required parameters

#### `newContainerOverrides'`

``` purescript
newContainerOverrides' :: ({ vcpus :: NullOrUndefined (Int), memory :: NullOrUndefined (Int), command :: NullOrUndefined (StringList), environment :: NullOrUndefined (EnvironmentVariables) } -> { vcpus :: NullOrUndefined (Int), memory :: NullOrUndefined (Int), command :: NullOrUndefined (StringList), environment :: NullOrUndefined (EnvironmentVariables) }) -> ContainerOverrides
```

Constructs ContainerOverrides's fields from required parameters

#### `ContainerProperties`

``` purescript
newtype ContainerProperties
  = ContainerProperties { image :: String, vcpus :: Int, memory :: Int, command :: NullOrUndefined (StringList), jobRoleArn :: NullOrUndefined (String), volumes :: NullOrUndefined (Volumes), environment :: NullOrUndefined (EnvironmentVariables), mountPoints :: NullOrUndefined (MountPoints), readonlyRootFilesystem :: NullOrUndefined (Boolean), privileged :: NullOrUndefined (Boolean), ulimits :: NullOrUndefined (Ulimits), user :: NullOrUndefined (String) }
```

<p>Container properties are used in job definitions to describe the container that is launched as part of a job.</p>

##### Instances
``` purescript
Newtype ContainerProperties _
Generic ContainerProperties _
Show ContainerProperties
Decode ContainerProperties
Encode ContainerProperties
```

#### `newContainerProperties`

``` purescript
newContainerProperties :: String -> Int -> Int -> ContainerProperties
```

Constructs ContainerProperties from required parameters

#### `newContainerProperties'`

``` purescript
newContainerProperties' :: String -> Int -> Int -> ({ image :: String, vcpus :: Int, memory :: Int, command :: NullOrUndefined (StringList), jobRoleArn :: NullOrUndefined (String), volumes :: NullOrUndefined (Volumes), environment :: NullOrUndefined (EnvironmentVariables), mountPoints :: NullOrUndefined (MountPoints), readonlyRootFilesystem :: NullOrUndefined (Boolean), privileged :: NullOrUndefined (Boolean), ulimits :: NullOrUndefined (Ulimits), user :: NullOrUndefined (String) } -> { image :: String, vcpus :: Int, memory :: Int, command :: NullOrUndefined (StringList), jobRoleArn :: NullOrUndefined (String), volumes :: NullOrUndefined (Volumes), environment :: NullOrUndefined (EnvironmentVariables), mountPoints :: NullOrUndefined (MountPoints), readonlyRootFilesystem :: NullOrUndefined (Boolean), privileged :: NullOrUndefined (Boolean), ulimits :: NullOrUndefined (Ulimits), user :: NullOrUndefined (String) }) -> ContainerProperties
```

Constructs ContainerProperties's fields from required parameters

#### `ContainerSummary`

``` purescript
newtype ContainerSummary
  = ContainerSummary { exitCode :: NullOrUndefined (Int), reason :: NullOrUndefined (String) }
```

<p>An object representing summary details of a container within a job.</p>

##### Instances
``` purescript
Newtype ContainerSummary _
Generic ContainerSummary _
Show ContainerSummary
Decode ContainerSummary
Encode ContainerSummary
```

#### `newContainerSummary`

``` purescript
newContainerSummary :: ContainerSummary
```

Constructs ContainerSummary from required parameters

#### `newContainerSummary'`

``` purescript
newContainerSummary' :: ({ exitCode :: NullOrUndefined (Int), reason :: NullOrUndefined (String) } -> { exitCode :: NullOrUndefined (Int), reason :: NullOrUndefined (String) }) -> ContainerSummary
```

Constructs ContainerSummary's fields from required parameters

#### `CreateComputeEnvironmentRequest`

``` purescript
newtype CreateComputeEnvironmentRequest
  = CreateComputeEnvironmentRequest { computeEnvironmentName :: String, "type" :: CEType, state :: NullOrUndefined (CEState), computeResources :: NullOrUndefined (ComputeResource), serviceRole :: String }
```

##### Instances
``` purescript
Newtype CreateComputeEnvironmentRequest _
Generic CreateComputeEnvironmentRequest _
Show CreateComputeEnvironmentRequest
Decode CreateComputeEnvironmentRequest
Encode CreateComputeEnvironmentRequest
```

#### `newCreateComputeEnvironmentRequest`

``` purescript
newCreateComputeEnvironmentRequest :: String -> String -> CEType -> CreateComputeEnvironmentRequest
```

Constructs CreateComputeEnvironmentRequest from required parameters

#### `newCreateComputeEnvironmentRequest'`

``` purescript
newCreateComputeEnvironmentRequest' :: String -> String -> CEType -> ({ computeEnvironmentName :: String, "type" :: CEType, state :: NullOrUndefined (CEState), computeResources :: NullOrUndefined (ComputeResource), serviceRole :: String } -> { computeEnvironmentName :: String, "type" :: CEType, state :: NullOrUndefined (CEState), computeResources :: NullOrUndefined (ComputeResource), serviceRole :: String }) -> CreateComputeEnvironmentRequest
```

Constructs CreateComputeEnvironmentRequest's fields from required parameters

#### `CreateComputeEnvironmentResponse`

``` purescript
newtype CreateComputeEnvironmentResponse
  = CreateComputeEnvironmentResponse { computeEnvironmentName :: NullOrUndefined (String), computeEnvironmentArn :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype CreateComputeEnvironmentResponse _
Generic CreateComputeEnvironmentResponse _
Show CreateComputeEnvironmentResponse
Decode CreateComputeEnvironmentResponse
Encode CreateComputeEnvironmentResponse
```

#### `newCreateComputeEnvironmentResponse`

``` purescript
newCreateComputeEnvironmentResponse :: CreateComputeEnvironmentResponse
```

Constructs CreateComputeEnvironmentResponse from required parameters

#### `newCreateComputeEnvironmentResponse'`

``` purescript
newCreateComputeEnvironmentResponse' :: ({ computeEnvironmentName :: NullOrUndefined (String), computeEnvironmentArn :: NullOrUndefined (String) } -> { computeEnvironmentName :: NullOrUndefined (String), computeEnvironmentArn :: NullOrUndefined (String) }) -> CreateComputeEnvironmentResponse
```

Constructs CreateComputeEnvironmentResponse's fields from required parameters

#### `CreateJobQueueRequest`

``` purescript
newtype CreateJobQueueRequest
  = CreateJobQueueRequest { jobQueueName :: String, state :: NullOrUndefined (JQState), priority :: Int, computeEnvironmentOrder :: ComputeEnvironmentOrders }
```

##### Instances
``` purescript
Newtype CreateJobQueueRequest _
Generic CreateJobQueueRequest _
Show CreateJobQueueRequest
Decode CreateJobQueueRequest
Encode CreateJobQueueRequest
```

#### `newCreateJobQueueRequest`

``` purescript
newCreateJobQueueRequest :: ComputeEnvironmentOrders -> String -> Int -> CreateJobQueueRequest
```

Constructs CreateJobQueueRequest from required parameters

#### `newCreateJobQueueRequest'`

``` purescript
newCreateJobQueueRequest' :: ComputeEnvironmentOrders -> String -> Int -> ({ jobQueueName :: String, state :: NullOrUndefined (JQState), priority :: Int, computeEnvironmentOrder :: ComputeEnvironmentOrders } -> { jobQueueName :: String, state :: NullOrUndefined (JQState), priority :: Int, computeEnvironmentOrder :: ComputeEnvironmentOrders }) -> CreateJobQueueRequest
```

Constructs CreateJobQueueRequest's fields from required parameters

#### `CreateJobQueueResponse`

``` purescript
newtype CreateJobQueueResponse
  = CreateJobQueueResponse { jobQueueName :: String, jobQueueArn :: String }
```

##### Instances
``` purescript
Newtype CreateJobQueueResponse _
Generic CreateJobQueueResponse _
Show CreateJobQueueResponse
Decode CreateJobQueueResponse
Encode CreateJobQueueResponse
```

#### `newCreateJobQueueResponse`

``` purescript
newCreateJobQueueResponse :: String -> String -> CreateJobQueueResponse
```

Constructs CreateJobQueueResponse from required parameters

#### `newCreateJobQueueResponse'`

``` purescript
newCreateJobQueueResponse' :: String -> String -> ({ jobQueueName :: String, jobQueueArn :: String } -> { jobQueueName :: String, jobQueueArn :: String }) -> CreateJobQueueResponse
```

Constructs CreateJobQueueResponse's fields from required parameters

#### `DeleteComputeEnvironmentRequest`

``` purescript
newtype DeleteComputeEnvironmentRequest
  = DeleteComputeEnvironmentRequest { computeEnvironment :: String }
```

##### Instances
``` purescript
Newtype DeleteComputeEnvironmentRequest _
Generic DeleteComputeEnvironmentRequest _
Show DeleteComputeEnvironmentRequest
Decode DeleteComputeEnvironmentRequest
Encode DeleteComputeEnvironmentRequest
```

#### `newDeleteComputeEnvironmentRequest`

``` purescript
newDeleteComputeEnvironmentRequest :: String -> DeleteComputeEnvironmentRequest
```

Constructs DeleteComputeEnvironmentRequest from required parameters

#### `newDeleteComputeEnvironmentRequest'`

``` purescript
newDeleteComputeEnvironmentRequest' :: String -> ({ computeEnvironment :: String } -> { computeEnvironment :: String }) -> DeleteComputeEnvironmentRequest
```

Constructs DeleteComputeEnvironmentRequest's fields from required parameters

#### `DeleteComputeEnvironmentResponse`

``` purescript
newtype DeleteComputeEnvironmentResponse
  = DeleteComputeEnvironmentResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteComputeEnvironmentResponse _
Generic DeleteComputeEnvironmentResponse _
Show DeleteComputeEnvironmentResponse
Decode DeleteComputeEnvironmentResponse
Encode DeleteComputeEnvironmentResponse
```

#### `DeleteJobQueueRequest`

``` purescript
newtype DeleteJobQueueRequest
  = DeleteJobQueueRequest { jobQueue :: String }
```

##### Instances
``` purescript
Newtype DeleteJobQueueRequest _
Generic DeleteJobQueueRequest _
Show DeleteJobQueueRequest
Decode DeleteJobQueueRequest
Encode DeleteJobQueueRequest
```

#### `newDeleteJobQueueRequest`

``` purescript
newDeleteJobQueueRequest :: String -> DeleteJobQueueRequest
```

Constructs DeleteJobQueueRequest from required parameters

#### `newDeleteJobQueueRequest'`

``` purescript
newDeleteJobQueueRequest' :: String -> ({ jobQueue :: String } -> { jobQueue :: String }) -> DeleteJobQueueRequest
```

Constructs DeleteJobQueueRequest's fields from required parameters

#### `DeleteJobQueueResponse`

``` purescript
newtype DeleteJobQueueResponse
  = DeleteJobQueueResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteJobQueueResponse _
Generic DeleteJobQueueResponse _
Show DeleteJobQueueResponse
Decode DeleteJobQueueResponse
Encode DeleteJobQueueResponse
```

#### `DeregisterJobDefinitionRequest`

``` purescript
newtype DeregisterJobDefinitionRequest
  = DeregisterJobDefinitionRequest { jobDefinition :: String }
```

##### Instances
``` purescript
Newtype DeregisterJobDefinitionRequest _
Generic DeregisterJobDefinitionRequest _
Show DeregisterJobDefinitionRequest
Decode DeregisterJobDefinitionRequest
Encode DeregisterJobDefinitionRequest
```

#### `newDeregisterJobDefinitionRequest`

``` purescript
newDeregisterJobDefinitionRequest :: String -> DeregisterJobDefinitionRequest
```

Constructs DeregisterJobDefinitionRequest from required parameters

#### `newDeregisterJobDefinitionRequest'`

``` purescript
newDeregisterJobDefinitionRequest' :: String -> ({ jobDefinition :: String } -> { jobDefinition :: String }) -> DeregisterJobDefinitionRequest
```

Constructs DeregisterJobDefinitionRequest's fields from required parameters

#### `DeregisterJobDefinitionResponse`

``` purescript
newtype DeregisterJobDefinitionResponse
  = DeregisterJobDefinitionResponse NoArguments
```

##### Instances
``` purescript
Newtype DeregisterJobDefinitionResponse _
Generic DeregisterJobDefinitionResponse _
Show DeregisterJobDefinitionResponse
Decode DeregisterJobDefinitionResponse
Encode DeregisterJobDefinitionResponse
```

#### `DescribeComputeEnvironmentsRequest`

``` purescript
newtype DescribeComputeEnvironmentsRequest
  = DescribeComputeEnvironmentsRequest { computeEnvironments :: NullOrUndefined (StringList), maxResults :: NullOrUndefined (Int), nextToken :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype DescribeComputeEnvironmentsRequest _
Generic DescribeComputeEnvironmentsRequest _
Show DescribeComputeEnvironmentsRequest
Decode DescribeComputeEnvironmentsRequest
Encode DescribeComputeEnvironmentsRequest
```

#### `newDescribeComputeEnvironmentsRequest`

``` purescript
newDescribeComputeEnvironmentsRequest :: DescribeComputeEnvironmentsRequest
```

Constructs DescribeComputeEnvironmentsRequest from required parameters

#### `newDescribeComputeEnvironmentsRequest'`

``` purescript
newDescribeComputeEnvironmentsRequest' :: ({ computeEnvironments :: NullOrUndefined (StringList), maxResults :: NullOrUndefined (Int), nextToken :: NullOrUndefined (String) } -> { computeEnvironments :: NullOrUndefined (StringList), maxResults :: NullOrUndefined (Int), nextToken :: NullOrUndefined (String) }) -> DescribeComputeEnvironmentsRequest
```

Constructs DescribeComputeEnvironmentsRequest's fields from required parameters

#### `DescribeComputeEnvironmentsResponse`

``` purescript
newtype DescribeComputeEnvironmentsResponse
  = DescribeComputeEnvironmentsResponse { computeEnvironments :: NullOrUndefined (ComputeEnvironmentDetailList), nextToken :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype DescribeComputeEnvironmentsResponse _
Generic DescribeComputeEnvironmentsResponse _
Show DescribeComputeEnvironmentsResponse
Decode DescribeComputeEnvironmentsResponse
Encode DescribeComputeEnvironmentsResponse
```

#### `newDescribeComputeEnvironmentsResponse`

``` purescript
newDescribeComputeEnvironmentsResponse :: DescribeComputeEnvironmentsResponse
```

Constructs DescribeComputeEnvironmentsResponse from required parameters

#### `newDescribeComputeEnvironmentsResponse'`

``` purescript
newDescribeComputeEnvironmentsResponse' :: ({ computeEnvironments :: NullOrUndefined (ComputeEnvironmentDetailList), nextToken :: NullOrUndefined (String) } -> { computeEnvironments :: NullOrUndefined (ComputeEnvironmentDetailList), nextToken :: NullOrUndefined (String) }) -> DescribeComputeEnvironmentsResponse
```

Constructs DescribeComputeEnvironmentsResponse's fields from required parameters

#### `DescribeJobDefinitionsRequest`

``` purescript
newtype DescribeJobDefinitionsRequest
  = DescribeJobDefinitionsRequest { jobDefinitions :: NullOrUndefined (StringList), maxResults :: NullOrUndefined (Int), jobDefinitionName :: NullOrUndefined (String), status :: NullOrUndefined (String), nextToken :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype DescribeJobDefinitionsRequest _
Generic DescribeJobDefinitionsRequest _
Show DescribeJobDefinitionsRequest
Decode DescribeJobDefinitionsRequest
Encode DescribeJobDefinitionsRequest
```

#### `newDescribeJobDefinitionsRequest`

``` purescript
newDescribeJobDefinitionsRequest :: DescribeJobDefinitionsRequest
```

Constructs DescribeJobDefinitionsRequest from required parameters

#### `newDescribeJobDefinitionsRequest'`

``` purescript
newDescribeJobDefinitionsRequest' :: ({ jobDefinitions :: NullOrUndefined (StringList), maxResults :: NullOrUndefined (Int), jobDefinitionName :: NullOrUndefined (String), status :: NullOrUndefined (String), nextToken :: NullOrUndefined (String) } -> { jobDefinitions :: NullOrUndefined (StringList), maxResults :: NullOrUndefined (Int), jobDefinitionName :: NullOrUndefined (String), status :: NullOrUndefined (String), nextToken :: NullOrUndefined (String) }) -> DescribeJobDefinitionsRequest
```

Constructs DescribeJobDefinitionsRequest's fields from required parameters

#### `DescribeJobDefinitionsResponse`

``` purescript
newtype DescribeJobDefinitionsResponse
  = DescribeJobDefinitionsResponse { jobDefinitions :: NullOrUndefined (JobDefinitionList), nextToken :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype DescribeJobDefinitionsResponse _
Generic DescribeJobDefinitionsResponse _
Show DescribeJobDefinitionsResponse
Decode DescribeJobDefinitionsResponse
Encode DescribeJobDefinitionsResponse
```

#### `newDescribeJobDefinitionsResponse`

``` purescript
newDescribeJobDefinitionsResponse :: DescribeJobDefinitionsResponse
```

Constructs DescribeJobDefinitionsResponse from required parameters

#### `newDescribeJobDefinitionsResponse'`

``` purescript
newDescribeJobDefinitionsResponse' :: ({ jobDefinitions :: NullOrUndefined (JobDefinitionList), nextToken :: NullOrUndefined (String) } -> { jobDefinitions :: NullOrUndefined (JobDefinitionList), nextToken :: NullOrUndefined (String) }) -> DescribeJobDefinitionsResponse
```

Constructs DescribeJobDefinitionsResponse's fields from required parameters

#### `DescribeJobQueuesRequest`

``` purescript
newtype DescribeJobQueuesRequest
  = DescribeJobQueuesRequest { jobQueues :: NullOrUndefined (StringList), maxResults :: NullOrUndefined (Int), nextToken :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype DescribeJobQueuesRequest _
Generic DescribeJobQueuesRequest _
Show DescribeJobQueuesRequest
Decode DescribeJobQueuesRequest
Encode DescribeJobQueuesRequest
```

#### `newDescribeJobQueuesRequest`

``` purescript
newDescribeJobQueuesRequest :: DescribeJobQueuesRequest
```

Constructs DescribeJobQueuesRequest from required parameters

#### `newDescribeJobQueuesRequest'`

``` purescript
newDescribeJobQueuesRequest' :: ({ jobQueues :: NullOrUndefined (StringList), maxResults :: NullOrUndefined (Int), nextToken :: NullOrUndefined (String) } -> { jobQueues :: NullOrUndefined (StringList), maxResults :: NullOrUndefined (Int), nextToken :: NullOrUndefined (String) }) -> DescribeJobQueuesRequest
```

Constructs DescribeJobQueuesRequest's fields from required parameters

#### `DescribeJobQueuesResponse`

``` purescript
newtype DescribeJobQueuesResponse
  = DescribeJobQueuesResponse { jobQueues :: NullOrUndefined (JobQueueDetailList), nextToken :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype DescribeJobQueuesResponse _
Generic DescribeJobQueuesResponse _
Show DescribeJobQueuesResponse
Decode DescribeJobQueuesResponse
Encode DescribeJobQueuesResponse
```

#### `newDescribeJobQueuesResponse`

``` purescript
newDescribeJobQueuesResponse :: DescribeJobQueuesResponse
```

Constructs DescribeJobQueuesResponse from required parameters

#### `newDescribeJobQueuesResponse'`

``` purescript
newDescribeJobQueuesResponse' :: ({ jobQueues :: NullOrUndefined (JobQueueDetailList), nextToken :: NullOrUndefined (String) } -> { jobQueues :: NullOrUndefined (JobQueueDetailList), nextToken :: NullOrUndefined (String) }) -> DescribeJobQueuesResponse
```

Constructs DescribeJobQueuesResponse's fields from required parameters

#### `DescribeJobsRequest`

``` purescript
newtype DescribeJobsRequest
  = DescribeJobsRequest { jobs :: StringList }
```

##### Instances
``` purescript
Newtype DescribeJobsRequest _
Generic DescribeJobsRequest _
Show DescribeJobsRequest
Decode DescribeJobsRequest
Encode DescribeJobsRequest
```

#### `newDescribeJobsRequest`

``` purescript
newDescribeJobsRequest :: StringList -> DescribeJobsRequest
```

Constructs DescribeJobsRequest from required parameters

#### `newDescribeJobsRequest'`

``` purescript
newDescribeJobsRequest' :: StringList -> ({ jobs :: StringList } -> { jobs :: StringList }) -> DescribeJobsRequest
```

Constructs DescribeJobsRequest's fields from required parameters

#### `DescribeJobsResponse`

``` purescript
newtype DescribeJobsResponse
  = DescribeJobsResponse { jobs :: NullOrUndefined (JobDetailList) }
```

##### Instances
``` purescript
Newtype DescribeJobsResponse _
Generic DescribeJobsResponse _
Show DescribeJobsResponse
Decode DescribeJobsResponse
Encode DescribeJobsResponse
```

#### `newDescribeJobsResponse`

``` purescript
newDescribeJobsResponse :: DescribeJobsResponse
```

Constructs DescribeJobsResponse from required parameters

#### `newDescribeJobsResponse'`

``` purescript
newDescribeJobsResponse' :: ({ jobs :: NullOrUndefined (JobDetailList) } -> { jobs :: NullOrUndefined (JobDetailList) }) -> DescribeJobsResponse
```

Constructs DescribeJobsResponse's fields from required parameters

#### `EnvironmentVariables`

``` purescript
newtype EnvironmentVariables
  = EnvironmentVariables (Array KeyValuePair)
```

##### Instances
``` purescript
Newtype EnvironmentVariables _
Generic EnvironmentVariables _
Show EnvironmentVariables
Decode EnvironmentVariables
Encode EnvironmentVariables
```

#### `Host`

``` purescript
newtype Host
  = Host { sourcePath :: NullOrUndefined (String) }
```

<p>The contents of the <code>host</code> parameter determine whether your data volume persists on the host container instance and where it is stored. If the host parameter is empty, then the Docker daemon assigns a host path for your data volume, but the data is not guaranteed to persist after the containers associated with it stop running.</p>

##### Instances
``` purescript
Newtype Host _
Generic Host _
Show Host
Decode Host
Encode Host
```

#### `newHost`

``` purescript
newHost :: Host
```

Constructs Host from required parameters

#### `newHost'`

``` purescript
newHost' :: ({ sourcePath :: NullOrUndefined (String) } -> { sourcePath :: NullOrUndefined (String) }) -> Host
```

Constructs Host's fields from required parameters

#### `JQState`

``` purescript
newtype JQState
  = JQState String
```

##### Instances
``` purescript
Newtype JQState _
Generic JQState _
Show JQState
Decode JQState
Encode JQState
```

#### `JQStatus`

``` purescript
newtype JQStatus
  = JQStatus String
```

##### Instances
``` purescript
Newtype JQStatus _
Generic JQStatus _
Show JQStatus
Decode JQStatus
Encode JQStatus
```

#### `JobDefinition`

``` purescript
newtype JobDefinition
  = JobDefinition { jobDefinitionName :: String, jobDefinitionArn :: String, revision :: Int, status :: NullOrUndefined (String), "type" :: String, parameters :: NullOrUndefined (ParametersMap), retryStrategy :: NullOrUndefined (RetryStrategy), containerProperties :: NullOrUndefined (ContainerProperties) }
```

<p>An object representing an AWS Batch job definition.</p>

##### Instances
``` purescript
Newtype JobDefinition _
Generic JobDefinition _
Show JobDefinition
Decode JobDefinition
Encode JobDefinition
```

#### `newJobDefinition`

``` purescript
newJobDefinition :: String -> String -> Int -> String -> JobDefinition
```

Constructs JobDefinition from required parameters

#### `newJobDefinition'`

``` purescript
newJobDefinition' :: String -> String -> Int -> String -> ({ jobDefinitionName :: String, jobDefinitionArn :: String, revision :: Int, status :: NullOrUndefined (String), "type" :: String, parameters :: NullOrUndefined (ParametersMap), retryStrategy :: NullOrUndefined (RetryStrategy), containerProperties :: NullOrUndefined (ContainerProperties) } -> { jobDefinitionName :: String, jobDefinitionArn :: String, revision :: Int, status :: NullOrUndefined (String), "type" :: String, parameters :: NullOrUndefined (ParametersMap), retryStrategy :: NullOrUndefined (RetryStrategy), containerProperties :: NullOrUndefined (ContainerProperties) }) -> JobDefinition
```

Constructs JobDefinition's fields from required parameters

#### `JobDefinitionList`

``` purescript
newtype JobDefinitionList
  = JobDefinitionList (Array JobDefinition)
```

##### Instances
``` purescript
Newtype JobDefinitionList _
Generic JobDefinitionList _
Show JobDefinitionList
Decode JobDefinitionList
Encode JobDefinitionList
```

#### `JobDefinitionType`

``` purescript
newtype JobDefinitionType
  = JobDefinitionType String
```

##### Instances
``` purescript
Newtype JobDefinitionType _
Generic JobDefinitionType _
Show JobDefinitionType
Decode JobDefinitionType
Encode JobDefinitionType
```

#### `JobDependency`

``` purescript
newtype JobDependency
  = JobDependency { jobId :: NullOrUndefined (String), "type" :: NullOrUndefined (ArrayJobDependency) }
```

<p>An object representing an AWS Batch job dependency.</p>

##### Instances
``` purescript
Newtype JobDependency _
Generic JobDependency _
Show JobDependency
Decode JobDependency
Encode JobDependency
```

#### `newJobDependency`

``` purescript
newJobDependency :: JobDependency
```

Constructs JobDependency from required parameters

#### `newJobDependency'`

``` purescript
newJobDependency' :: ({ jobId :: NullOrUndefined (String), "type" :: NullOrUndefined (ArrayJobDependency) } -> { jobId :: NullOrUndefined (String), "type" :: NullOrUndefined (ArrayJobDependency) }) -> JobDependency
```

Constructs JobDependency's fields from required parameters

#### `JobDependencyList`

``` purescript
newtype JobDependencyList
  = JobDependencyList (Array JobDependency)
```

##### Instances
``` purescript
Newtype JobDependencyList _
Generic JobDependencyList _
Show JobDependencyList
Decode JobDependencyList
Encode JobDependencyList
```

#### `JobDetail`

``` purescript
newtype JobDetail
  = JobDetail { jobName :: String, jobId :: String, jobQueue :: String, status :: JobStatus, attempts :: NullOrUndefined (AttemptDetails), statusReason :: NullOrUndefined (String), createdAt :: NullOrUndefined (Number), retryStrategy :: NullOrUndefined (RetryStrategy), startedAt :: Number, stoppedAt :: NullOrUndefined (Number), dependsOn :: NullOrUndefined (JobDependencyList), jobDefinition :: String, parameters :: NullOrUndefined (ParametersMap), container :: NullOrUndefined (ContainerDetail), arrayProperties :: NullOrUndefined (ArrayPropertiesDetail) }
```

<p>An object representing an AWS Batch job.</p>

##### Instances
``` purescript
Newtype JobDetail _
Generic JobDetail _
Show JobDetail
Decode JobDetail
Encode JobDetail
```

#### `newJobDetail`

``` purescript
newJobDetail :: String -> String -> String -> String -> Number -> JobStatus -> JobDetail
```

Constructs JobDetail from required parameters

#### `newJobDetail'`

``` purescript
newJobDetail' :: String -> String -> String -> String -> Number -> JobStatus -> ({ jobName :: String, jobId :: String, jobQueue :: String, status :: JobStatus, attempts :: NullOrUndefined (AttemptDetails), statusReason :: NullOrUndefined (String), createdAt :: NullOrUndefined (Number), retryStrategy :: NullOrUndefined (RetryStrategy), startedAt :: Number, stoppedAt :: NullOrUndefined (Number), dependsOn :: NullOrUndefined (JobDependencyList), jobDefinition :: String, parameters :: NullOrUndefined (ParametersMap), container :: NullOrUndefined (ContainerDetail), arrayProperties :: NullOrUndefined (ArrayPropertiesDetail) } -> { jobName :: String, jobId :: String, jobQueue :: String, status :: JobStatus, attempts :: NullOrUndefined (AttemptDetails), statusReason :: NullOrUndefined (String), createdAt :: NullOrUndefined (Number), retryStrategy :: NullOrUndefined (RetryStrategy), startedAt :: Number, stoppedAt :: NullOrUndefined (Number), dependsOn :: NullOrUndefined (JobDependencyList), jobDefinition :: String, parameters :: NullOrUndefined (ParametersMap), container :: NullOrUndefined (ContainerDetail), arrayProperties :: NullOrUndefined (ArrayPropertiesDetail) }) -> JobDetail
```

Constructs JobDetail's fields from required parameters

#### `JobDetailList`

``` purescript
newtype JobDetailList
  = JobDetailList (Array JobDetail)
```

##### Instances
``` purescript
Newtype JobDetailList _
Generic JobDetailList _
Show JobDetailList
Decode JobDetailList
Encode JobDetailList
```

#### `JobQueueDetail`

``` purescript
newtype JobQueueDetail
  = JobQueueDetail { jobQueueName :: String, jobQueueArn :: String, state :: JQState, status :: NullOrUndefined (JQStatus), statusReason :: NullOrUndefined (String), priority :: Int, computeEnvironmentOrder :: ComputeEnvironmentOrders }
```

<p>An object representing the details of an AWS Batch job queue.</p>

##### Instances
``` purescript
Newtype JobQueueDetail _
Generic JobQueueDetail _
Show JobQueueDetail
Decode JobQueueDetail
Encode JobQueueDetail
```

#### `newJobQueueDetail`

``` purescript
newJobQueueDetail :: ComputeEnvironmentOrders -> String -> String -> Int -> JQState -> JobQueueDetail
```

Constructs JobQueueDetail from required parameters

#### `newJobQueueDetail'`

``` purescript
newJobQueueDetail' :: ComputeEnvironmentOrders -> String -> String -> Int -> JQState -> ({ jobQueueName :: String, jobQueueArn :: String, state :: JQState, status :: NullOrUndefined (JQStatus), statusReason :: NullOrUndefined (String), priority :: Int, computeEnvironmentOrder :: ComputeEnvironmentOrders } -> { jobQueueName :: String, jobQueueArn :: String, state :: JQState, status :: NullOrUndefined (JQStatus), statusReason :: NullOrUndefined (String), priority :: Int, computeEnvironmentOrder :: ComputeEnvironmentOrders }) -> JobQueueDetail
```

Constructs JobQueueDetail's fields from required parameters

#### `JobQueueDetailList`

``` purescript
newtype JobQueueDetailList
  = JobQueueDetailList (Array JobQueueDetail)
```

##### Instances
``` purescript
Newtype JobQueueDetailList _
Generic JobQueueDetailList _
Show JobQueueDetailList
Decode JobQueueDetailList
Encode JobQueueDetailList
```

#### `JobStatus`

``` purescript
newtype JobStatus
  = JobStatus String
```

##### Instances
``` purescript
Newtype JobStatus _
Generic JobStatus _
Show JobStatus
Decode JobStatus
Encode JobStatus
```

#### `JobSummary`

``` purescript
newtype JobSummary
  = JobSummary { jobId :: String, jobName :: String, createdAt :: NullOrUndefined (Number), status :: NullOrUndefined (JobStatus), statusReason :: NullOrUndefined (String), startedAt :: NullOrUndefined (Number), stoppedAt :: NullOrUndefined (Number), container :: NullOrUndefined (ContainerSummary), arrayProperties :: NullOrUndefined (ArrayPropertiesSummary) }
```

<p>An object representing summary details of a job.</p>

##### Instances
``` purescript
Newtype JobSummary _
Generic JobSummary _
Show JobSummary
Decode JobSummary
Encode JobSummary
```

#### `newJobSummary`

``` purescript
newJobSummary :: String -> String -> JobSummary
```

Constructs JobSummary from required parameters

#### `newJobSummary'`

``` purescript
newJobSummary' :: String -> String -> ({ jobId :: String, jobName :: String, createdAt :: NullOrUndefined (Number), status :: NullOrUndefined (JobStatus), statusReason :: NullOrUndefined (String), startedAt :: NullOrUndefined (Number), stoppedAt :: NullOrUndefined (Number), container :: NullOrUndefined (ContainerSummary), arrayProperties :: NullOrUndefined (ArrayPropertiesSummary) } -> { jobId :: String, jobName :: String, createdAt :: NullOrUndefined (Number), status :: NullOrUndefined (JobStatus), statusReason :: NullOrUndefined (String), startedAt :: NullOrUndefined (Number), stoppedAt :: NullOrUndefined (Number), container :: NullOrUndefined (ContainerSummary), arrayProperties :: NullOrUndefined (ArrayPropertiesSummary) }) -> JobSummary
```

Constructs JobSummary's fields from required parameters

#### `JobSummaryList`

``` purescript
newtype JobSummaryList
  = JobSummaryList (Array JobSummary)
```

##### Instances
``` purescript
Newtype JobSummaryList _
Generic JobSummaryList _
Show JobSummaryList
Decode JobSummaryList
Encode JobSummaryList
```

#### `KeyValuePair`

``` purescript
newtype KeyValuePair
  = KeyValuePair { name :: NullOrUndefined (String), value :: NullOrUndefined (String) }
```

<p>A key-value pair object.</p>

##### Instances
``` purescript
Newtype KeyValuePair _
Generic KeyValuePair _
Show KeyValuePair
Decode KeyValuePair
Encode KeyValuePair
```

#### `newKeyValuePair`

``` purescript
newKeyValuePair :: KeyValuePair
```

Constructs KeyValuePair from required parameters

#### `newKeyValuePair'`

``` purescript
newKeyValuePair' :: ({ name :: NullOrUndefined (String), value :: NullOrUndefined (String) } -> { name :: NullOrUndefined (String), value :: NullOrUndefined (String) }) -> KeyValuePair
```

Constructs KeyValuePair's fields from required parameters

#### `ListJobsRequest`

``` purescript
newtype ListJobsRequest
  = ListJobsRequest { jobQueue :: NullOrUndefined (String), arrayJobId :: NullOrUndefined (String), jobStatus :: NullOrUndefined (JobStatus), maxResults :: NullOrUndefined (Int), nextToken :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype ListJobsRequest _
Generic ListJobsRequest _
Show ListJobsRequest
Decode ListJobsRequest
Encode ListJobsRequest
```

#### `newListJobsRequest`

``` purescript
newListJobsRequest :: ListJobsRequest
```

Constructs ListJobsRequest from required parameters

#### `newListJobsRequest'`

``` purescript
newListJobsRequest' :: ({ jobQueue :: NullOrUndefined (String), arrayJobId :: NullOrUndefined (String), jobStatus :: NullOrUndefined (JobStatus), maxResults :: NullOrUndefined (Int), nextToken :: NullOrUndefined (String) } -> { jobQueue :: NullOrUndefined (String), arrayJobId :: NullOrUndefined (String), jobStatus :: NullOrUndefined (JobStatus), maxResults :: NullOrUndefined (Int), nextToken :: NullOrUndefined (String) }) -> ListJobsRequest
```

Constructs ListJobsRequest's fields from required parameters

#### `ListJobsResponse`

``` purescript
newtype ListJobsResponse
  = ListJobsResponse { jobSummaryList :: JobSummaryList, nextToken :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype ListJobsResponse _
Generic ListJobsResponse _
Show ListJobsResponse
Decode ListJobsResponse
Encode ListJobsResponse
```

#### `newListJobsResponse`

``` purescript
newListJobsResponse :: JobSummaryList -> ListJobsResponse
```

Constructs ListJobsResponse from required parameters

#### `newListJobsResponse'`

``` purescript
newListJobsResponse' :: JobSummaryList -> ({ jobSummaryList :: JobSummaryList, nextToken :: NullOrUndefined (String) } -> { jobSummaryList :: JobSummaryList, nextToken :: NullOrUndefined (String) }) -> ListJobsResponse
```

Constructs ListJobsResponse's fields from required parameters

#### `MountPoint`

``` purescript
newtype MountPoint
  = MountPoint { containerPath :: NullOrUndefined (String), readOnly :: NullOrUndefined (Boolean), sourceVolume :: NullOrUndefined (String) }
```

<p>Details on a Docker volume mount point that is used in a job's container properties.</p>

##### Instances
``` purescript
Newtype MountPoint _
Generic MountPoint _
Show MountPoint
Decode MountPoint
Encode MountPoint
```

#### `newMountPoint`

``` purescript
newMountPoint :: MountPoint
```

Constructs MountPoint from required parameters

#### `newMountPoint'`

``` purescript
newMountPoint' :: ({ containerPath :: NullOrUndefined (String), readOnly :: NullOrUndefined (Boolean), sourceVolume :: NullOrUndefined (String) } -> { containerPath :: NullOrUndefined (String), readOnly :: NullOrUndefined (Boolean), sourceVolume :: NullOrUndefined (String) }) -> MountPoint
```

Constructs MountPoint's fields from required parameters

#### `MountPoints`

``` purescript
newtype MountPoints
  = MountPoints (Array MountPoint)
```

##### Instances
``` purescript
Newtype MountPoints _
Generic MountPoints _
Show MountPoints
Decode MountPoints
Encode MountPoints
```

#### `ParametersMap`

``` purescript
newtype ParametersMap
  = ParametersMap (StrMap String)
```

##### Instances
``` purescript
Newtype ParametersMap _
Generic ParametersMap _
Show ParametersMap
Decode ParametersMap
Encode ParametersMap
```

#### `RegisterJobDefinitionRequest`

``` purescript
newtype RegisterJobDefinitionRequest
  = RegisterJobDefinitionRequest { jobDefinitionName :: String, "type" :: JobDefinitionType, parameters :: NullOrUndefined (ParametersMap), containerProperties :: NullOrUndefined (ContainerProperties), retryStrategy :: NullOrUndefined (RetryStrategy) }
```

##### Instances
``` purescript
Newtype RegisterJobDefinitionRequest _
Generic RegisterJobDefinitionRequest _
Show RegisterJobDefinitionRequest
Decode RegisterJobDefinitionRequest
Encode RegisterJobDefinitionRequest
```

#### `newRegisterJobDefinitionRequest`

``` purescript
newRegisterJobDefinitionRequest :: String -> JobDefinitionType -> RegisterJobDefinitionRequest
```

Constructs RegisterJobDefinitionRequest from required parameters

#### `newRegisterJobDefinitionRequest'`

``` purescript
newRegisterJobDefinitionRequest' :: String -> JobDefinitionType -> ({ jobDefinitionName :: String, "type" :: JobDefinitionType, parameters :: NullOrUndefined (ParametersMap), containerProperties :: NullOrUndefined (ContainerProperties), retryStrategy :: NullOrUndefined (RetryStrategy) } -> { jobDefinitionName :: String, "type" :: JobDefinitionType, parameters :: NullOrUndefined (ParametersMap), containerProperties :: NullOrUndefined (ContainerProperties), retryStrategy :: NullOrUndefined (RetryStrategy) }) -> RegisterJobDefinitionRequest
```

Constructs RegisterJobDefinitionRequest's fields from required parameters

#### `RegisterJobDefinitionResponse`

``` purescript
newtype RegisterJobDefinitionResponse
  = RegisterJobDefinitionResponse { jobDefinitionName :: String, jobDefinitionArn :: String, revision :: Int }
```

##### Instances
``` purescript
Newtype RegisterJobDefinitionResponse _
Generic RegisterJobDefinitionResponse _
Show RegisterJobDefinitionResponse
Decode RegisterJobDefinitionResponse
Encode RegisterJobDefinitionResponse
```

#### `newRegisterJobDefinitionResponse`

``` purescript
newRegisterJobDefinitionResponse :: String -> String -> Int -> RegisterJobDefinitionResponse
```

Constructs RegisterJobDefinitionResponse from required parameters

#### `newRegisterJobDefinitionResponse'`

``` purescript
newRegisterJobDefinitionResponse' :: String -> String -> Int -> ({ jobDefinitionName :: String, jobDefinitionArn :: String, revision :: Int } -> { jobDefinitionName :: String, jobDefinitionArn :: String, revision :: Int }) -> RegisterJobDefinitionResponse
```

Constructs RegisterJobDefinitionResponse's fields from required parameters

#### `RetryStrategy`

``` purescript
newtype RetryStrategy
  = RetryStrategy { attempts :: NullOrUndefined (Int) }
```

<p>The retry strategy associated with a job.</p>

##### Instances
``` purescript
Newtype RetryStrategy _
Generic RetryStrategy _
Show RetryStrategy
Decode RetryStrategy
Encode RetryStrategy
```

#### `newRetryStrategy`

``` purescript
newRetryStrategy :: RetryStrategy
```

Constructs RetryStrategy from required parameters

#### `newRetryStrategy'`

``` purescript
newRetryStrategy' :: ({ attempts :: NullOrUndefined (Int) } -> { attempts :: NullOrUndefined (Int) }) -> RetryStrategy
```

Constructs RetryStrategy's fields from required parameters

#### `ServerException`

``` purescript
newtype ServerException
  = ServerException { message :: NullOrUndefined (String) }
```

<p>These errors are usually caused by a server issue.</p>

##### Instances
``` purescript
Newtype ServerException _
Generic ServerException _
Show ServerException
Decode ServerException
Encode ServerException
```

#### `newServerException`

``` purescript
newServerException :: ServerException
```

Constructs ServerException from required parameters

#### `newServerException'`

``` purescript
newServerException' :: ({ message :: NullOrUndefined (String) } -> { message :: NullOrUndefined (String) }) -> ServerException
```

Constructs ServerException's fields from required parameters

#### `StringList`

``` purescript
newtype StringList
  = StringList (Array String)
```

##### Instances
``` purescript
Newtype StringList _
Generic StringList _
Show StringList
Decode StringList
Encode StringList
```

#### `SubmitJobRequest`

``` purescript
newtype SubmitJobRequest
  = SubmitJobRequest { jobName :: String, jobQueue :: String, arrayProperties :: NullOrUndefined (ArrayProperties), dependsOn :: NullOrUndefined (JobDependencyList), jobDefinition :: String, parameters :: NullOrUndefined (ParametersMap), containerOverrides :: NullOrUndefined (ContainerOverrides), retryStrategy :: NullOrUndefined (RetryStrategy) }
```

##### Instances
``` purescript
Newtype SubmitJobRequest _
Generic SubmitJobRequest _
Show SubmitJobRequest
Decode SubmitJobRequest
Encode SubmitJobRequest
```

#### `newSubmitJobRequest`

``` purescript
newSubmitJobRequest :: String -> String -> String -> SubmitJobRequest
```

Constructs SubmitJobRequest from required parameters

#### `newSubmitJobRequest'`

``` purescript
newSubmitJobRequest' :: String -> String -> String -> ({ jobName :: String, jobQueue :: String, arrayProperties :: NullOrUndefined (ArrayProperties), dependsOn :: NullOrUndefined (JobDependencyList), jobDefinition :: String, parameters :: NullOrUndefined (ParametersMap), containerOverrides :: NullOrUndefined (ContainerOverrides), retryStrategy :: NullOrUndefined (RetryStrategy) } -> { jobName :: String, jobQueue :: String, arrayProperties :: NullOrUndefined (ArrayProperties), dependsOn :: NullOrUndefined (JobDependencyList), jobDefinition :: String, parameters :: NullOrUndefined (ParametersMap), containerOverrides :: NullOrUndefined (ContainerOverrides), retryStrategy :: NullOrUndefined (RetryStrategy) }) -> SubmitJobRequest
```

Constructs SubmitJobRequest's fields from required parameters

#### `SubmitJobResponse`

``` purescript
newtype SubmitJobResponse
  = SubmitJobResponse { jobName :: String, jobId :: String }
```

##### Instances
``` purescript
Newtype SubmitJobResponse _
Generic SubmitJobResponse _
Show SubmitJobResponse
Decode SubmitJobResponse
Encode SubmitJobResponse
```

#### `newSubmitJobResponse`

``` purescript
newSubmitJobResponse :: String -> String -> SubmitJobResponse
```

Constructs SubmitJobResponse from required parameters

#### `newSubmitJobResponse'`

``` purescript
newSubmitJobResponse' :: String -> String -> ({ jobName :: String, jobId :: String } -> { jobName :: String, jobId :: String }) -> SubmitJobResponse
```

Constructs SubmitJobResponse's fields from required parameters

#### `TagsMap`

``` purescript
newtype TagsMap
  = TagsMap (StrMap String)
```

##### Instances
``` purescript
Newtype TagsMap _
Generic TagsMap _
Show TagsMap
Decode TagsMap
Encode TagsMap
```

#### `TerminateJobRequest`

``` purescript
newtype TerminateJobRequest
  = TerminateJobRequest { jobId :: String, reason :: String }
```

##### Instances
``` purescript
Newtype TerminateJobRequest _
Generic TerminateJobRequest _
Show TerminateJobRequest
Decode TerminateJobRequest
Encode TerminateJobRequest
```

#### `newTerminateJobRequest`

``` purescript
newTerminateJobRequest :: String -> String -> TerminateJobRequest
```

Constructs TerminateJobRequest from required parameters

#### `newTerminateJobRequest'`

``` purescript
newTerminateJobRequest' :: String -> String -> ({ jobId :: String, reason :: String } -> { jobId :: String, reason :: String }) -> TerminateJobRequest
```

Constructs TerminateJobRequest's fields from required parameters

#### `TerminateJobResponse`

``` purescript
newtype TerminateJobResponse
  = TerminateJobResponse NoArguments
```

##### Instances
``` purescript
Newtype TerminateJobResponse _
Generic TerminateJobResponse _
Show TerminateJobResponse
Decode TerminateJobResponse
Encode TerminateJobResponse
```

#### `Ulimit`

``` purescript
newtype Ulimit
  = Ulimit { hardLimit :: Int, name :: String, softLimit :: Int }
```

<p>The <code>ulimit</code> settings to pass to the container.</p>

##### Instances
``` purescript
Newtype Ulimit _
Generic Ulimit _
Show Ulimit
Decode Ulimit
Encode Ulimit
```

#### `newUlimit`

``` purescript
newUlimit :: Int -> String -> Int -> Ulimit
```

Constructs Ulimit from required parameters

#### `newUlimit'`

``` purescript
newUlimit' :: Int -> String -> Int -> ({ hardLimit :: Int, name :: String, softLimit :: Int } -> { hardLimit :: Int, name :: String, softLimit :: Int }) -> Ulimit
```

Constructs Ulimit's fields from required parameters

#### `Ulimits`

``` purescript
newtype Ulimits
  = Ulimits (Array Ulimit)
```

##### Instances
``` purescript
Newtype Ulimits _
Generic Ulimits _
Show Ulimits
Decode Ulimits
Encode Ulimits
```

#### `UpdateComputeEnvironmentRequest`

``` purescript
newtype UpdateComputeEnvironmentRequest
  = UpdateComputeEnvironmentRequest { computeEnvironment :: String, state :: NullOrUndefined (CEState), computeResources :: NullOrUndefined (ComputeResourceUpdate), serviceRole :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype UpdateComputeEnvironmentRequest _
Generic UpdateComputeEnvironmentRequest _
Show UpdateComputeEnvironmentRequest
Decode UpdateComputeEnvironmentRequest
Encode UpdateComputeEnvironmentRequest
```

#### `newUpdateComputeEnvironmentRequest`

``` purescript
newUpdateComputeEnvironmentRequest :: String -> UpdateComputeEnvironmentRequest
```

Constructs UpdateComputeEnvironmentRequest from required parameters

#### `newUpdateComputeEnvironmentRequest'`

``` purescript
newUpdateComputeEnvironmentRequest' :: String -> ({ computeEnvironment :: String, state :: NullOrUndefined (CEState), computeResources :: NullOrUndefined (ComputeResourceUpdate), serviceRole :: NullOrUndefined (String) } -> { computeEnvironment :: String, state :: NullOrUndefined (CEState), computeResources :: NullOrUndefined (ComputeResourceUpdate), serviceRole :: NullOrUndefined (String) }) -> UpdateComputeEnvironmentRequest
```

Constructs UpdateComputeEnvironmentRequest's fields from required parameters

#### `UpdateComputeEnvironmentResponse`

``` purescript
newtype UpdateComputeEnvironmentResponse
  = UpdateComputeEnvironmentResponse { computeEnvironmentName :: NullOrUndefined (String), computeEnvironmentArn :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype UpdateComputeEnvironmentResponse _
Generic UpdateComputeEnvironmentResponse _
Show UpdateComputeEnvironmentResponse
Decode UpdateComputeEnvironmentResponse
Encode UpdateComputeEnvironmentResponse
```

#### `newUpdateComputeEnvironmentResponse`

``` purescript
newUpdateComputeEnvironmentResponse :: UpdateComputeEnvironmentResponse
```

Constructs UpdateComputeEnvironmentResponse from required parameters

#### `newUpdateComputeEnvironmentResponse'`

``` purescript
newUpdateComputeEnvironmentResponse' :: ({ computeEnvironmentName :: NullOrUndefined (String), computeEnvironmentArn :: NullOrUndefined (String) } -> { computeEnvironmentName :: NullOrUndefined (String), computeEnvironmentArn :: NullOrUndefined (String) }) -> UpdateComputeEnvironmentResponse
```

Constructs UpdateComputeEnvironmentResponse's fields from required parameters

#### `UpdateJobQueueRequest`

``` purescript
newtype UpdateJobQueueRequest
  = UpdateJobQueueRequest { jobQueue :: String, state :: NullOrUndefined (JQState), priority :: NullOrUndefined (Int), computeEnvironmentOrder :: NullOrUndefined (ComputeEnvironmentOrders) }
```

##### Instances
``` purescript
Newtype UpdateJobQueueRequest _
Generic UpdateJobQueueRequest _
Show UpdateJobQueueRequest
Decode UpdateJobQueueRequest
Encode UpdateJobQueueRequest
```

#### `newUpdateJobQueueRequest`

``` purescript
newUpdateJobQueueRequest :: String -> UpdateJobQueueRequest
```

Constructs UpdateJobQueueRequest from required parameters

#### `newUpdateJobQueueRequest'`

``` purescript
newUpdateJobQueueRequest' :: String -> ({ jobQueue :: String, state :: NullOrUndefined (JQState), priority :: NullOrUndefined (Int), computeEnvironmentOrder :: NullOrUndefined (ComputeEnvironmentOrders) } -> { jobQueue :: String, state :: NullOrUndefined (JQState), priority :: NullOrUndefined (Int), computeEnvironmentOrder :: NullOrUndefined (ComputeEnvironmentOrders) }) -> UpdateJobQueueRequest
```

Constructs UpdateJobQueueRequest's fields from required parameters

#### `UpdateJobQueueResponse`

``` purescript
newtype UpdateJobQueueResponse
  = UpdateJobQueueResponse { jobQueueName :: NullOrUndefined (String), jobQueueArn :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype UpdateJobQueueResponse _
Generic UpdateJobQueueResponse _
Show UpdateJobQueueResponse
Decode UpdateJobQueueResponse
Encode UpdateJobQueueResponse
```

#### `newUpdateJobQueueResponse`

``` purescript
newUpdateJobQueueResponse :: UpdateJobQueueResponse
```

Constructs UpdateJobQueueResponse from required parameters

#### `newUpdateJobQueueResponse'`

``` purescript
newUpdateJobQueueResponse' :: ({ jobQueueName :: NullOrUndefined (String), jobQueueArn :: NullOrUndefined (String) } -> { jobQueueName :: NullOrUndefined (String), jobQueueArn :: NullOrUndefined (String) }) -> UpdateJobQueueResponse
```

Constructs UpdateJobQueueResponse's fields from required parameters

#### `Volume`

``` purescript
newtype Volume
  = Volume { host :: NullOrUndefined (Host), name :: NullOrUndefined (String) }
```

<p>A data volume used in a job's container properties.</p>

##### Instances
``` purescript
Newtype Volume _
Generic Volume _
Show Volume
Decode Volume
Encode Volume
```

#### `newVolume`

``` purescript
newVolume :: Volume
```

Constructs Volume from required parameters

#### `newVolume'`

``` purescript
newVolume' :: ({ host :: NullOrUndefined (Host), name :: NullOrUndefined (String) } -> { host :: NullOrUndefined (Host), name :: NullOrUndefined (String) }) -> Volume
```

Constructs Volume's fields from required parameters

#### `Volumes`

``` purescript
newtype Volumes
  = Volumes (Array Volume)
```

##### Instances
``` purescript
Newtype Volumes _
Generic Volumes _
Show Volumes
Decode Volumes
Encode Volumes
```


