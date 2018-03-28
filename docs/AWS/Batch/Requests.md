## Module AWS.Batch.Requests

#### `cancelJob`

``` purescript
cancelJob :: forall eff. Service -> CancelJobRequest -> Aff (exception :: EXCEPTION | eff) CancelJobResponse
```

<p>Cancels a job in an AWS Batch job queue. Jobs that are in the <code>SUBMITTED</code>, <code>PENDING</code>, or <code>RUNNABLE</code> state are cancelled. Jobs that have progressed to <code>STARTING</code> or <code>RUNNING</code> are not cancelled (but the API operation still succeeds, even if no job is cancelled); these jobs must be terminated with the <a>TerminateJob</a> operation.</p>

#### `createComputeEnvironment`

``` purescript
createComputeEnvironment :: forall eff. Service -> CreateComputeEnvironmentRequest -> Aff (exception :: EXCEPTION | eff) CreateComputeEnvironmentResponse
```

<p>Creates an AWS Batch compute environment. You can create <code>MANAGED</code> or <code>UNMANAGED</code> compute environments.</p> <p>In a managed compute environment, AWS Batch manages the compute resources within the environment, based on the compute resources that you specify. Instances launched into a managed compute environment use a recent, approved version of the Amazon ECS-optimized AMI. You can choose to use Amazon EC2 On-Demand Instances in your managed compute environment, or you can use Amazon EC2 Spot Instances that only launch when the Spot bid price is below a specified percentage of the On-Demand price.</p> <p>In an unmanaged compute environment, you can manage your own compute resources. This provides more compute resource configuration options, such as using a custom AMI, but you must ensure that your AMI meets the Amazon ECS container instance AMI specification. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/container_instance_AMIs.html">Container Instance AMIs</a> in the <i>Amazon Elastic Container Service Developer Guide</i>. After you have created your unmanaged compute environment, you can use the <a>DescribeComputeEnvironments</a> operation to find the Amazon ECS cluster that is associated with it and then manually launch your container instances into that Amazon ECS cluster. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_container_instance.html">Launching an Amazon ECS Container Instance</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>

#### `createJobQueue`

``` purescript
createJobQueue :: forall eff. Service -> CreateJobQueueRequest -> Aff (exception :: EXCEPTION | eff) CreateJobQueueResponse
```

<p>Creates an AWS Batch job queue. When you create a job queue, you associate one or more compute environments to the queue and assign an order of preference for the compute environments.</p> <p>You also set a priority to the job queue that determines the order in which the AWS Batch scheduler places jobs onto its associated compute environments. For example, if a compute environment is associated with more than one job queue, the job queue with a higher priority is given preference for scheduling jobs to that compute environment.</p>

#### `deleteComputeEnvironment`

``` purescript
deleteComputeEnvironment :: forall eff. Service -> DeleteComputeEnvironmentRequest -> Aff (exception :: EXCEPTION | eff) DeleteComputeEnvironmentResponse
```

<p>Deletes an AWS Batch compute environment.</p> <p>Before you can delete a compute environment, you must set its state to <code>DISABLED</code> with the <a>UpdateComputeEnvironment</a> API operation and disassociate it from any job queues with the <a>UpdateJobQueue</a> API operation.</p>

#### `deleteJobQueue`

``` purescript
deleteJobQueue :: forall eff. Service -> DeleteJobQueueRequest -> Aff (exception :: EXCEPTION | eff) DeleteJobQueueResponse
```

<p>Deletes the specified job queue. You must first disable submissions for a queue with the <a>UpdateJobQueue</a> operation. All jobs in the queue are terminated when you delete a job queue.</p> <p>It is not necessary to disassociate compute environments from a queue before submitting a <code>DeleteJobQueue</code> request. </p>

#### `deregisterJobDefinition`

``` purescript
deregisterJobDefinition :: forall eff. Service -> DeregisterJobDefinitionRequest -> Aff (exception :: EXCEPTION | eff) DeregisterJobDefinitionResponse
```

<p>Deregisters an AWS Batch job definition.</p>

#### `describeComputeEnvironments`

``` purescript
describeComputeEnvironments :: forall eff. Service -> DescribeComputeEnvironmentsRequest -> Aff (exception :: EXCEPTION | eff) DescribeComputeEnvironmentsResponse
```

<p>Describes one or more of your compute environments.</p> <p>If you are using an unmanaged compute environment, you can use the <code>DescribeComputeEnvironment</code> operation to determine the <code>ecsClusterArn</code> that you should launch your Amazon ECS container instances into.</p>

#### `describeJobDefinitions`

``` purescript
describeJobDefinitions :: forall eff. Service -> DescribeJobDefinitionsRequest -> Aff (exception :: EXCEPTION | eff) DescribeJobDefinitionsResponse
```

<p>Describes a list of job definitions. You can specify a <code>status</code> (such as <code>ACTIVE</code>) to only return job definitions that match that status.</p>

#### `describeJobQueues`

``` purescript
describeJobQueues :: forall eff. Service -> DescribeJobQueuesRequest -> Aff (exception :: EXCEPTION | eff) DescribeJobQueuesResponse
```

<p>Describes one or more of your job queues.</p>

#### `describeJobs`

``` purescript
describeJobs :: forall eff. Service -> DescribeJobsRequest -> Aff (exception :: EXCEPTION | eff) DescribeJobsResponse
```

<p>Describes a list of AWS Batch jobs.</p>

#### `listJobs`

``` purescript
listJobs :: forall eff. Service -> ListJobsRequest -> Aff (exception :: EXCEPTION | eff) ListJobsResponse
```

<p>Returns a list of task jobs for a specified job queue. You can filter the results by job status with the <code>jobStatus</code> parameter. If you do not specify a status, only <code>RUNNING</code> jobs are returned.</p>

#### `registerJobDefinition`

``` purescript
registerJobDefinition :: forall eff. Service -> RegisterJobDefinitionRequest -> Aff (exception :: EXCEPTION | eff) RegisterJobDefinitionResponse
```

<p>Registers an AWS Batch job definition. </p>

#### `submitJob`

``` purescript
submitJob :: forall eff. Service -> SubmitJobRequest -> Aff (exception :: EXCEPTION | eff) SubmitJobResponse
```

<p>Submits an AWS Batch job from a job definition. Parameters specified during <a>SubmitJob</a> override parameters defined in the job definition. </p>

#### `terminateJob`

``` purescript
terminateJob :: forall eff. Service -> TerminateJobRequest -> Aff (exception :: EXCEPTION | eff) TerminateJobResponse
```

<p>Terminates a job in a job queue. Jobs that are in the <code>STARTING</code> or <code>RUNNING</code> state are terminated, which causes them to transition to <code>FAILED</code>. Jobs that have not progressed to the <code>STARTING</code> state are cancelled.</p>

#### `updateComputeEnvironment`

``` purescript
updateComputeEnvironment :: forall eff. Service -> UpdateComputeEnvironmentRequest -> Aff (exception :: EXCEPTION | eff) UpdateComputeEnvironmentResponse
```

<p>Updates an AWS Batch compute environment.</p>

#### `updateJobQueue`

``` purescript
updateJobQueue :: forall eff. Service -> UpdateJobQueueRequest -> Aff (exception :: EXCEPTION | eff) UpdateJobQueueResponse
```

<p>Updates a job queue.</p>


