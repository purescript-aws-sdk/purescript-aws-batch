

-- | <p>AWS Batch enables you to run batch computing workloads on the AWS Cloud. Batch computing is a common way for developers, scientists, and engineers to access large amounts of compute resources, and AWS Batch removes the undifferentiated heavy lifting of configuring and managing the required infrastructure. AWS Batch will be familiar to users of traditional batch computing software. This service can efficiently provision resources in response to jobs submitted in order to eliminate capacity constraints, reduce compute costs, and deliver results quickly.</p> <p>As a fully managed service, AWS Batch enables developers, scientists, and engineers to run batch computing workloads of any scale. AWS Batch automatically provisions compute resources and optimizes the workload distribution based on the quantity and scale of the workloads. With AWS Batch, there is no need to install or manage batch computing software, which allows you to focus on analyzing results and solving problems. AWS Batch reduces operational complexities, saves time, and reduces costs, which makes it easy for developers, scientists, and engineers to run their batch jobs in the AWS Cloud.</p>
module AWS.Batch where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foreign as Foreign
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined as NullOrUndefined
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap as StrMap

import AWS.Request as Request
import AWS.Request.Types as Types

serviceName = "Batch" :: String


-- | <p>Cancels a job in an AWS Batch job queue. Jobs that are in the <code>SUBMITTED</code>, <code>PENDING</code>, or <code>RUNNABLE</code> state are cancelled. Jobs that have progressed to <code>STARTING</code> or <code>RUNNING</code> are not cancelled (but the API operation still succeeds, even if no job is cancelled); these jobs must be terminated with the <a>TerminateJob</a> operation.</p>
cancelJob :: forall eff. CancelJobRequest -> Aff (exception :: EXCEPTION | eff) CancelJobResponse
cancelJob = Request.request serviceName "cancelJob" 


-- | <p>Creates an AWS Batch compute environment. You can create <code>MANAGED</code> or <code>UNMANAGED</code> compute environments.</p> <p>In a managed compute environment, AWS Batch manages the compute resources within the environment, based on the compute resources that you specify. Instances launched into a managed compute environment use a recent, approved version of the Amazon ECS-optimized AMI. You can choose to use Amazon EC2 On-Demand Instances in your managed compute environment, or you can use Amazon EC2 Spot Instances that only launch when the Spot bid price is below a specified percentage of the On-Demand price.</p> <p>In an unmanaged compute environment, you can manage your own compute resources. This provides more compute resource configuration options, such as using a custom AMI, but you must ensure that your AMI meets the Amazon ECS container instance AMI specification. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/container_instance_AMIs.html">Container Instance AMIs</a> in the <i>Amazon Elastic Container Service Developer Guide</i>. After you have created your unmanaged compute environment, you can use the <a>DescribeComputeEnvironments</a> operation to find the Amazon ECS cluster that is associated with it and then manually launch your container instances into that Amazon ECS cluster. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_container_instance.html">Launching an Amazon ECS Container Instance</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
createComputeEnvironment :: forall eff. CreateComputeEnvironmentRequest -> Aff (exception :: EXCEPTION | eff) CreateComputeEnvironmentResponse
createComputeEnvironment = Request.request serviceName "createComputeEnvironment" 


-- | <p>Creates an AWS Batch job queue. When you create a job queue, you associate one or more compute environments to the queue and assign an order of preference for the compute environments.</p> <p>You also set a priority to the job queue that determines the order in which the AWS Batch scheduler places jobs onto its associated compute environments. For example, if a compute environment is associated with more than one job queue, the job queue with a higher priority is given preference for scheduling jobs to that compute environment.</p>
createJobQueue :: forall eff. CreateJobQueueRequest -> Aff (exception :: EXCEPTION | eff) CreateJobQueueResponse
createJobQueue = Request.request serviceName "createJobQueue" 


-- | <p>Deletes an AWS Batch compute environment.</p> <p>Before you can delete a compute environment, you must set its state to <code>DISABLED</code> with the <a>UpdateComputeEnvironment</a> API operation and disassociate it from any job queues with the <a>UpdateJobQueue</a> API operation.</p>
deleteComputeEnvironment :: forall eff. DeleteComputeEnvironmentRequest -> Aff (exception :: EXCEPTION | eff) DeleteComputeEnvironmentResponse
deleteComputeEnvironment = Request.request serviceName "deleteComputeEnvironment" 


-- | <p>Deletes the specified job queue. You must first disable submissions for a queue with the <a>UpdateJobQueue</a> operation. All jobs in the queue are terminated when you delete a job queue.</p> <p>It is not necessary to disassociate compute environments from a queue before submitting a <code>DeleteJobQueue</code> request. </p>
deleteJobQueue :: forall eff. DeleteJobQueueRequest -> Aff (exception :: EXCEPTION | eff) DeleteJobQueueResponse
deleteJobQueue = Request.request serviceName "deleteJobQueue" 


-- | <p>Deregisters an AWS Batch job definition.</p>
deregisterJobDefinition :: forall eff. DeregisterJobDefinitionRequest -> Aff (exception :: EXCEPTION | eff) DeregisterJobDefinitionResponse
deregisterJobDefinition = Request.request serviceName "deregisterJobDefinition" 


-- | <p>Describes one or more of your compute environments.</p> <p>If you are using an unmanaged compute environment, you can use the <code>DescribeComputeEnvironment</code> operation to determine the <code>ecsClusterArn</code> that you should launch your Amazon ECS container instances into.</p>
describeComputeEnvironments :: forall eff. DescribeComputeEnvironmentsRequest -> Aff (exception :: EXCEPTION | eff) DescribeComputeEnvironmentsResponse
describeComputeEnvironments = Request.request serviceName "describeComputeEnvironments" 


-- | <p>Describes a list of job definitions. You can specify a <code>status</code> (such as <code>ACTIVE</code>) to only return job definitions that match that status.</p>
describeJobDefinitions :: forall eff. DescribeJobDefinitionsRequest -> Aff (exception :: EXCEPTION | eff) DescribeJobDefinitionsResponse
describeJobDefinitions = Request.request serviceName "describeJobDefinitions" 


-- | <p>Describes one or more of your job queues.</p>
describeJobQueues :: forall eff. DescribeJobQueuesRequest -> Aff (exception :: EXCEPTION | eff) DescribeJobQueuesResponse
describeJobQueues = Request.request serviceName "describeJobQueues" 


-- | <p>Describes a list of AWS Batch jobs.</p>
describeJobs :: forall eff. DescribeJobsRequest -> Aff (exception :: EXCEPTION | eff) DescribeJobsResponse
describeJobs = Request.request serviceName "describeJobs" 


-- | <p>Returns a list of task jobs for a specified job queue. You can filter the results by job status with the <code>jobStatus</code> parameter. If you do not specify a status, only <code>RUNNING</code> jobs are returned.</p>
listJobs :: forall eff. ListJobsRequest -> Aff (exception :: EXCEPTION | eff) ListJobsResponse
listJobs = Request.request serviceName "listJobs" 


-- | <p>Registers an AWS Batch job definition. </p>
registerJobDefinition :: forall eff. RegisterJobDefinitionRequest -> Aff (exception :: EXCEPTION | eff) RegisterJobDefinitionResponse
registerJobDefinition = Request.request serviceName "registerJobDefinition" 


-- | <p>Submits an AWS Batch job from a job definition. Parameters specified during <a>SubmitJob</a> override parameters defined in the job definition. </p>
submitJob :: forall eff. SubmitJobRequest -> Aff (exception :: EXCEPTION | eff) SubmitJobResponse
submitJob = Request.request serviceName "submitJob" 


-- | <p>Terminates a job in a job queue. Jobs that are in the <code>STARTING</code> or <code>RUNNING</code> state are terminated, which causes them to transition to <code>FAILED</code>. Jobs that have not progressed to the <code>STARTING</code> state are cancelled.</p>
terminateJob :: forall eff. TerminateJobRequest -> Aff (exception :: EXCEPTION | eff) TerminateJobResponse
terminateJob = Request.request serviceName "terminateJob" 


-- | <p>Updates an AWS Batch compute environment.</p>
updateComputeEnvironment :: forall eff. UpdateComputeEnvironmentRequest -> Aff (exception :: EXCEPTION | eff) UpdateComputeEnvironmentResponse
updateComputeEnvironment = Request.request serviceName "updateComputeEnvironment" 


-- | <p>Updates a job queue.</p>
updateJobQueue :: forall eff. UpdateJobQueueRequest -> Aff (exception :: EXCEPTION | eff) UpdateJobQueueResponse
updateJobQueue = Request.request serviceName "updateJobQueue" 


newtype ArrayJobDependency = ArrayJobDependency String
derive instance newtypeArrayJobDependency :: Newtype ArrayJobDependency _
derive instance repGenericArrayJobDependency :: Generic ArrayJobDependency _
instance showArrayJobDependency :: Show ArrayJobDependency where
  show = genericShow
instance decodeArrayJobDependency :: Decode ArrayJobDependency where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeArrayJobDependency :: Encode ArrayJobDependency where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ArrayJobStatusSummary = ArrayJobStatusSummary (StrMap.StrMap Int)
derive instance newtypeArrayJobStatusSummary :: Newtype ArrayJobStatusSummary _
derive instance repGenericArrayJobStatusSummary :: Generic ArrayJobStatusSummary _
instance showArrayJobStatusSummary :: Show ArrayJobStatusSummary where
  show = genericShow
instance decodeArrayJobStatusSummary :: Decode ArrayJobStatusSummary where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeArrayJobStatusSummary :: Encode ArrayJobStatusSummary where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>An object representing an AWS Batch array job.</p>
newtype ArrayProperties = ArrayProperties 
  { "size" :: NullOrUndefined.NullOrUndefined (Int)
  }
derive instance newtypeArrayProperties :: Newtype ArrayProperties _
derive instance repGenericArrayProperties :: Generic ArrayProperties _
instance showArrayProperties :: Show ArrayProperties where
  show = genericShow
instance decodeArrayProperties :: Decode ArrayProperties where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeArrayProperties :: Encode ArrayProperties where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ArrayProperties from required parameters
newArrayProperties :: ArrayProperties
newArrayProperties  = ArrayProperties { "size": (NullOrUndefined Nothing) }

-- | Constructs ArrayProperties's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newArrayProperties' :: ( { "size" :: NullOrUndefined.NullOrUndefined (Int) } -> {"size" :: NullOrUndefined.NullOrUndefined (Int) } ) -> ArrayProperties
newArrayProperties'  customize = (ArrayProperties <<< customize) { "size": (NullOrUndefined Nothing) }



-- | <p>An object representing the array properties of a job.</p>
newtype ArrayPropertiesDetail = ArrayPropertiesDetail 
  { "statusSummary" :: NullOrUndefined.NullOrUndefined (ArrayJobStatusSummary)
  , "size" :: NullOrUndefined.NullOrUndefined (Int)
  , "index" :: NullOrUndefined.NullOrUndefined (Int)
  }
derive instance newtypeArrayPropertiesDetail :: Newtype ArrayPropertiesDetail _
derive instance repGenericArrayPropertiesDetail :: Generic ArrayPropertiesDetail _
instance showArrayPropertiesDetail :: Show ArrayPropertiesDetail where
  show = genericShow
instance decodeArrayPropertiesDetail :: Decode ArrayPropertiesDetail where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeArrayPropertiesDetail :: Encode ArrayPropertiesDetail where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ArrayPropertiesDetail from required parameters
newArrayPropertiesDetail :: ArrayPropertiesDetail
newArrayPropertiesDetail  = ArrayPropertiesDetail { "index": (NullOrUndefined Nothing), "size": (NullOrUndefined Nothing), "statusSummary": (NullOrUndefined Nothing) }

-- | Constructs ArrayPropertiesDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newArrayPropertiesDetail' :: ( { "statusSummary" :: NullOrUndefined.NullOrUndefined (ArrayJobStatusSummary) , "size" :: NullOrUndefined.NullOrUndefined (Int) , "index" :: NullOrUndefined.NullOrUndefined (Int) } -> {"statusSummary" :: NullOrUndefined.NullOrUndefined (ArrayJobStatusSummary) , "size" :: NullOrUndefined.NullOrUndefined (Int) , "index" :: NullOrUndefined.NullOrUndefined (Int) } ) -> ArrayPropertiesDetail
newArrayPropertiesDetail'  customize = (ArrayPropertiesDetail <<< customize) { "index": (NullOrUndefined Nothing), "size": (NullOrUndefined Nothing), "statusSummary": (NullOrUndefined Nothing) }



-- | <p>An object representing the array properties of a job.</p>
newtype ArrayPropertiesSummary = ArrayPropertiesSummary 
  { "size" :: NullOrUndefined.NullOrUndefined (Int)
  , "index" :: NullOrUndefined.NullOrUndefined (Int)
  }
derive instance newtypeArrayPropertiesSummary :: Newtype ArrayPropertiesSummary _
derive instance repGenericArrayPropertiesSummary :: Generic ArrayPropertiesSummary _
instance showArrayPropertiesSummary :: Show ArrayPropertiesSummary where
  show = genericShow
instance decodeArrayPropertiesSummary :: Decode ArrayPropertiesSummary where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeArrayPropertiesSummary :: Encode ArrayPropertiesSummary where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ArrayPropertiesSummary from required parameters
newArrayPropertiesSummary :: ArrayPropertiesSummary
newArrayPropertiesSummary  = ArrayPropertiesSummary { "index": (NullOrUndefined Nothing), "size": (NullOrUndefined Nothing) }

-- | Constructs ArrayPropertiesSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newArrayPropertiesSummary' :: ( { "size" :: NullOrUndefined.NullOrUndefined (Int) , "index" :: NullOrUndefined.NullOrUndefined (Int) } -> {"size" :: NullOrUndefined.NullOrUndefined (Int) , "index" :: NullOrUndefined.NullOrUndefined (Int) } ) -> ArrayPropertiesSummary
newArrayPropertiesSummary'  customize = (ArrayPropertiesSummary <<< customize) { "index": (NullOrUndefined Nothing), "size": (NullOrUndefined Nothing) }



-- | <p>An object representing the details of a container that is part of a job attempt.</p>
newtype AttemptContainerDetail = AttemptContainerDetail 
  { "containerInstanceArn" :: NullOrUndefined.NullOrUndefined (String)
  , "taskArn" :: NullOrUndefined.NullOrUndefined (String)
  , "exitCode" :: NullOrUndefined.NullOrUndefined (Int)
  , "reason" :: NullOrUndefined.NullOrUndefined (String)
  , "logStreamName" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeAttemptContainerDetail :: Newtype AttemptContainerDetail _
derive instance repGenericAttemptContainerDetail :: Generic AttemptContainerDetail _
instance showAttemptContainerDetail :: Show AttemptContainerDetail where
  show = genericShow
instance decodeAttemptContainerDetail :: Decode AttemptContainerDetail where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttemptContainerDetail :: Encode AttemptContainerDetail where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AttemptContainerDetail from required parameters
newAttemptContainerDetail :: AttemptContainerDetail
newAttemptContainerDetail  = AttemptContainerDetail { "containerInstanceArn": (NullOrUndefined Nothing), "exitCode": (NullOrUndefined Nothing), "logStreamName": (NullOrUndefined Nothing), "reason": (NullOrUndefined Nothing), "taskArn": (NullOrUndefined Nothing) }

-- | Constructs AttemptContainerDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttemptContainerDetail' :: ( { "containerInstanceArn" :: NullOrUndefined.NullOrUndefined (String) , "taskArn" :: NullOrUndefined.NullOrUndefined (String) , "exitCode" :: NullOrUndefined.NullOrUndefined (Int) , "reason" :: NullOrUndefined.NullOrUndefined (String) , "logStreamName" :: NullOrUndefined.NullOrUndefined (String) } -> {"containerInstanceArn" :: NullOrUndefined.NullOrUndefined (String) , "taskArn" :: NullOrUndefined.NullOrUndefined (String) , "exitCode" :: NullOrUndefined.NullOrUndefined (Int) , "reason" :: NullOrUndefined.NullOrUndefined (String) , "logStreamName" :: NullOrUndefined.NullOrUndefined (String) } ) -> AttemptContainerDetail
newAttemptContainerDetail'  customize = (AttemptContainerDetail <<< customize) { "containerInstanceArn": (NullOrUndefined Nothing), "exitCode": (NullOrUndefined Nothing), "logStreamName": (NullOrUndefined Nothing), "reason": (NullOrUndefined Nothing), "taskArn": (NullOrUndefined Nothing) }



-- | <p>An object representing a job attempt.</p>
newtype AttemptDetail = AttemptDetail 
  { "container" :: NullOrUndefined.NullOrUndefined (AttemptContainerDetail)
  , "startedAt" :: NullOrUndefined.NullOrUndefined (Number)
  , "stoppedAt" :: NullOrUndefined.NullOrUndefined (Number)
  , "statusReason" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeAttemptDetail :: Newtype AttemptDetail _
derive instance repGenericAttemptDetail :: Generic AttemptDetail _
instance showAttemptDetail :: Show AttemptDetail where
  show = genericShow
instance decodeAttemptDetail :: Decode AttemptDetail where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttemptDetail :: Encode AttemptDetail where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AttemptDetail from required parameters
newAttemptDetail :: AttemptDetail
newAttemptDetail  = AttemptDetail { "container": (NullOrUndefined Nothing), "startedAt": (NullOrUndefined Nothing), "statusReason": (NullOrUndefined Nothing), "stoppedAt": (NullOrUndefined Nothing) }

-- | Constructs AttemptDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttemptDetail' :: ( { "container" :: NullOrUndefined.NullOrUndefined (AttemptContainerDetail) , "startedAt" :: NullOrUndefined.NullOrUndefined (Number) , "stoppedAt" :: NullOrUndefined.NullOrUndefined (Number) , "statusReason" :: NullOrUndefined.NullOrUndefined (String) } -> {"container" :: NullOrUndefined.NullOrUndefined (AttemptContainerDetail) , "startedAt" :: NullOrUndefined.NullOrUndefined (Number) , "stoppedAt" :: NullOrUndefined.NullOrUndefined (Number) , "statusReason" :: NullOrUndefined.NullOrUndefined (String) } ) -> AttemptDetail
newAttemptDetail'  customize = (AttemptDetail <<< customize) { "container": (NullOrUndefined Nothing), "startedAt": (NullOrUndefined Nothing), "statusReason": (NullOrUndefined Nothing), "stoppedAt": (NullOrUndefined Nothing) }



newtype AttemptDetails = AttemptDetails (Array AttemptDetail)
derive instance newtypeAttemptDetails :: Newtype AttemptDetails _
derive instance repGenericAttemptDetails :: Generic AttemptDetails _
instance showAttemptDetails :: Show AttemptDetails where
  show = genericShow
instance decodeAttemptDetails :: Decode AttemptDetails where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttemptDetails :: Encode AttemptDetails where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CEState = CEState String
derive instance newtypeCEState :: Newtype CEState _
derive instance repGenericCEState :: Generic CEState _
instance showCEState :: Show CEState where
  show = genericShow
instance decodeCEState :: Decode CEState where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCEState :: Encode CEState where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CEStatus = CEStatus String
derive instance newtypeCEStatus :: Newtype CEStatus _
derive instance repGenericCEStatus :: Generic CEStatus _
instance showCEStatus :: Show CEStatus where
  show = genericShow
instance decodeCEStatus :: Decode CEStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCEStatus :: Encode CEStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CEType = CEType String
derive instance newtypeCEType :: Newtype CEType _
derive instance repGenericCEType :: Generic CEType _
instance showCEType :: Show CEType where
  show = genericShow
instance decodeCEType :: Decode CEType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCEType :: Encode CEType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CRType = CRType String
derive instance newtypeCRType :: Newtype CRType _
derive instance repGenericCRType :: Generic CRType _
instance showCRType :: Show CRType where
  show = genericShow
instance decodeCRType :: Decode CRType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCRType :: Encode CRType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CancelJobRequest = CancelJobRequest 
  { "jobId" :: (String)
  , "reason" :: (String)
  }
derive instance newtypeCancelJobRequest :: Newtype CancelJobRequest _
derive instance repGenericCancelJobRequest :: Generic CancelJobRequest _
instance showCancelJobRequest :: Show CancelJobRequest where
  show = genericShow
instance decodeCancelJobRequest :: Decode CancelJobRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCancelJobRequest :: Encode CancelJobRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CancelJobRequest from required parameters
newCancelJobRequest :: String -> String -> CancelJobRequest
newCancelJobRequest _jobId _reason = CancelJobRequest { "jobId": _jobId, "reason": _reason }

-- | Constructs CancelJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelJobRequest' :: String -> String -> ( { "jobId" :: (String) , "reason" :: (String) } -> {"jobId" :: (String) , "reason" :: (String) } ) -> CancelJobRequest
newCancelJobRequest' _jobId _reason customize = (CancelJobRequest <<< customize) { "jobId": _jobId, "reason": _reason }



newtype CancelJobResponse = CancelJobResponse Types.NoArguments
derive instance newtypeCancelJobResponse :: Newtype CancelJobResponse _
derive instance repGenericCancelJobResponse :: Generic CancelJobResponse _
instance showCancelJobResponse :: Show CancelJobResponse where
  show = genericShow
instance decodeCancelJobResponse :: Decode CancelJobResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCancelJobResponse :: Encode CancelJobResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>These errors are usually caused by a client action, such as using an action or resource on behalf of a user that doesn't have permissions to use the action or resource, or specifying an identifier that is not valid. </p>
newtype ClientException = ClientException 
  { "message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeClientException :: Newtype ClientException _
derive instance repGenericClientException :: Generic ClientException _
instance showClientException :: Show ClientException where
  show = genericShow
instance decodeClientException :: Decode ClientException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeClientException :: Encode ClientException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ClientException from required parameters
newClientException :: ClientException
newClientException  = ClientException { "message": (NullOrUndefined Nothing) }

-- | Constructs ClientException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newClientException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (String) } -> {"message" :: NullOrUndefined.NullOrUndefined (String) } ) -> ClientException
newClientException'  customize = (ClientException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>An object representing an AWS Batch compute environment.</p>
newtype ComputeEnvironmentDetail = ComputeEnvironmentDetail 
  { "computeEnvironmentName" :: (String)
  , "computeEnvironmentArn" :: (String)
  , "ecsClusterArn" :: (String)
  , "type" :: NullOrUndefined.NullOrUndefined (CEType)
  , "state" :: NullOrUndefined.NullOrUndefined (CEState)
  , "status" :: NullOrUndefined.NullOrUndefined (CEStatus)
  , "statusReason" :: NullOrUndefined.NullOrUndefined (String)
  , "computeResources" :: NullOrUndefined.NullOrUndefined (ComputeResource)
  , "serviceRole" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeComputeEnvironmentDetail :: Newtype ComputeEnvironmentDetail _
derive instance repGenericComputeEnvironmentDetail :: Generic ComputeEnvironmentDetail _
instance showComputeEnvironmentDetail :: Show ComputeEnvironmentDetail where
  show = genericShow
instance decodeComputeEnvironmentDetail :: Decode ComputeEnvironmentDetail where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeComputeEnvironmentDetail :: Encode ComputeEnvironmentDetail where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ComputeEnvironmentDetail from required parameters
newComputeEnvironmentDetail :: String -> String -> String -> ComputeEnvironmentDetail
newComputeEnvironmentDetail _computeEnvironmentArn _computeEnvironmentName _ecsClusterArn = ComputeEnvironmentDetail { "computeEnvironmentArn": _computeEnvironmentArn, "computeEnvironmentName": _computeEnvironmentName, "ecsClusterArn": _ecsClusterArn, "computeResources": (NullOrUndefined Nothing), "serviceRole": (NullOrUndefined Nothing), "state": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing), "statusReason": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }

-- | Constructs ComputeEnvironmentDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newComputeEnvironmentDetail' :: String -> String -> String -> ( { "computeEnvironmentName" :: (String) , "computeEnvironmentArn" :: (String) , "ecsClusterArn" :: (String) , "type" :: NullOrUndefined.NullOrUndefined (CEType) , "state" :: NullOrUndefined.NullOrUndefined (CEState) , "status" :: NullOrUndefined.NullOrUndefined (CEStatus) , "statusReason" :: NullOrUndefined.NullOrUndefined (String) , "computeResources" :: NullOrUndefined.NullOrUndefined (ComputeResource) , "serviceRole" :: NullOrUndefined.NullOrUndefined (String) } -> {"computeEnvironmentName" :: (String) , "computeEnvironmentArn" :: (String) , "ecsClusterArn" :: (String) , "type" :: NullOrUndefined.NullOrUndefined (CEType) , "state" :: NullOrUndefined.NullOrUndefined (CEState) , "status" :: NullOrUndefined.NullOrUndefined (CEStatus) , "statusReason" :: NullOrUndefined.NullOrUndefined (String) , "computeResources" :: NullOrUndefined.NullOrUndefined (ComputeResource) , "serviceRole" :: NullOrUndefined.NullOrUndefined (String) } ) -> ComputeEnvironmentDetail
newComputeEnvironmentDetail' _computeEnvironmentArn _computeEnvironmentName _ecsClusterArn customize = (ComputeEnvironmentDetail <<< customize) { "computeEnvironmentArn": _computeEnvironmentArn, "computeEnvironmentName": _computeEnvironmentName, "ecsClusterArn": _ecsClusterArn, "computeResources": (NullOrUndefined Nothing), "serviceRole": (NullOrUndefined Nothing), "state": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing), "statusReason": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }



newtype ComputeEnvironmentDetailList = ComputeEnvironmentDetailList (Array ComputeEnvironmentDetail)
derive instance newtypeComputeEnvironmentDetailList :: Newtype ComputeEnvironmentDetailList _
derive instance repGenericComputeEnvironmentDetailList :: Generic ComputeEnvironmentDetailList _
instance showComputeEnvironmentDetailList :: Show ComputeEnvironmentDetailList where
  show = genericShow
instance decodeComputeEnvironmentDetailList :: Decode ComputeEnvironmentDetailList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeComputeEnvironmentDetailList :: Encode ComputeEnvironmentDetailList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The order in which compute environments are tried for job placement within a queue. Compute environments are tried in ascending order. For example, if two compute environments are associated with a job queue, the compute environment with a lower order integer value is tried for job placement first.</p>
newtype ComputeEnvironmentOrder = ComputeEnvironmentOrder 
  { "order" :: (Int)
  , "computeEnvironment" :: (String)
  }
derive instance newtypeComputeEnvironmentOrder :: Newtype ComputeEnvironmentOrder _
derive instance repGenericComputeEnvironmentOrder :: Generic ComputeEnvironmentOrder _
instance showComputeEnvironmentOrder :: Show ComputeEnvironmentOrder where
  show = genericShow
instance decodeComputeEnvironmentOrder :: Decode ComputeEnvironmentOrder where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeComputeEnvironmentOrder :: Encode ComputeEnvironmentOrder where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ComputeEnvironmentOrder from required parameters
newComputeEnvironmentOrder :: String -> Int -> ComputeEnvironmentOrder
newComputeEnvironmentOrder _computeEnvironment _order = ComputeEnvironmentOrder { "computeEnvironment": _computeEnvironment, "order": _order }

-- | Constructs ComputeEnvironmentOrder's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newComputeEnvironmentOrder' :: String -> Int -> ( { "order" :: (Int) , "computeEnvironment" :: (String) } -> {"order" :: (Int) , "computeEnvironment" :: (String) } ) -> ComputeEnvironmentOrder
newComputeEnvironmentOrder' _computeEnvironment _order customize = (ComputeEnvironmentOrder <<< customize) { "computeEnvironment": _computeEnvironment, "order": _order }



newtype ComputeEnvironmentOrders = ComputeEnvironmentOrders (Array ComputeEnvironmentOrder)
derive instance newtypeComputeEnvironmentOrders :: Newtype ComputeEnvironmentOrders _
derive instance repGenericComputeEnvironmentOrders :: Generic ComputeEnvironmentOrders _
instance showComputeEnvironmentOrders :: Show ComputeEnvironmentOrders where
  show = genericShow
instance decodeComputeEnvironmentOrders :: Decode ComputeEnvironmentOrders where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeComputeEnvironmentOrders :: Encode ComputeEnvironmentOrders where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>An object representing an AWS Batch compute resource.</p>
newtype ComputeResource = ComputeResource 
  { "type" :: (CRType)
  , "minvCpus" :: (Int)
  , "maxvCpus" :: (Int)
  , "desiredvCpus" :: NullOrUndefined.NullOrUndefined (Int)
  , "instanceTypes" :: (StringList)
  , "imageId" :: NullOrUndefined.NullOrUndefined (String)
  , "subnets" :: (StringList)
  , "securityGroupIds" :: (StringList)
  , "ec2KeyPair" :: NullOrUndefined.NullOrUndefined (String)
  , "instanceRole" :: (String)
  , "tags" :: NullOrUndefined.NullOrUndefined (TagsMap)
  , "bidPercentage" :: NullOrUndefined.NullOrUndefined (Int)
  , "spotIamFleetRole" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeComputeResource :: Newtype ComputeResource _
derive instance repGenericComputeResource :: Generic ComputeResource _
instance showComputeResource :: Show ComputeResource where
  show = genericShow
instance decodeComputeResource :: Decode ComputeResource where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeComputeResource :: Encode ComputeResource where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ComputeResource from required parameters
newComputeResource :: String -> StringList -> Int -> Int -> StringList -> StringList -> CRType -> ComputeResource
newComputeResource _instanceRole _instanceTypes _maxvCpus _minvCpus _securityGroupIds _subnets _type = ComputeResource { "instanceRole": _instanceRole, "instanceTypes": _instanceTypes, "maxvCpus": _maxvCpus, "minvCpus": _minvCpus, "securityGroupIds": _securityGroupIds, "subnets": _subnets, "type": _type, "bidPercentage": (NullOrUndefined Nothing), "desiredvCpus": (NullOrUndefined Nothing), "ec2KeyPair": (NullOrUndefined Nothing), "imageId": (NullOrUndefined Nothing), "spotIamFleetRole": (NullOrUndefined Nothing), "tags": (NullOrUndefined Nothing) }

-- | Constructs ComputeResource's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newComputeResource' :: String -> StringList -> Int -> Int -> StringList -> StringList -> CRType -> ( { "type" :: (CRType) , "minvCpus" :: (Int) , "maxvCpus" :: (Int) , "desiredvCpus" :: NullOrUndefined.NullOrUndefined (Int) , "instanceTypes" :: (StringList) , "imageId" :: NullOrUndefined.NullOrUndefined (String) , "subnets" :: (StringList) , "securityGroupIds" :: (StringList) , "ec2KeyPair" :: NullOrUndefined.NullOrUndefined (String) , "instanceRole" :: (String) , "tags" :: NullOrUndefined.NullOrUndefined (TagsMap) , "bidPercentage" :: NullOrUndefined.NullOrUndefined (Int) , "spotIamFleetRole" :: NullOrUndefined.NullOrUndefined (String) } -> {"type" :: (CRType) , "minvCpus" :: (Int) , "maxvCpus" :: (Int) , "desiredvCpus" :: NullOrUndefined.NullOrUndefined (Int) , "instanceTypes" :: (StringList) , "imageId" :: NullOrUndefined.NullOrUndefined (String) , "subnets" :: (StringList) , "securityGroupIds" :: (StringList) , "ec2KeyPair" :: NullOrUndefined.NullOrUndefined (String) , "instanceRole" :: (String) , "tags" :: NullOrUndefined.NullOrUndefined (TagsMap) , "bidPercentage" :: NullOrUndefined.NullOrUndefined (Int) , "spotIamFleetRole" :: NullOrUndefined.NullOrUndefined (String) } ) -> ComputeResource
newComputeResource' _instanceRole _instanceTypes _maxvCpus _minvCpus _securityGroupIds _subnets _type customize = (ComputeResource <<< customize) { "instanceRole": _instanceRole, "instanceTypes": _instanceTypes, "maxvCpus": _maxvCpus, "minvCpus": _minvCpus, "securityGroupIds": _securityGroupIds, "subnets": _subnets, "type": _type, "bidPercentage": (NullOrUndefined Nothing), "desiredvCpus": (NullOrUndefined Nothing), "ec2KeyPair": (NullOrUndefined Nothing), "imageId": (NullOrUndefined Nothing), "spotIamFleetRole": (NullOrUndefined Nothing), "tags": (NullOrUndefined Nothing) }



-- | <p>An object representing the attributes of a compute environment that can be updated.</p>
newtype ComputeResourceUpdate = ComputeResourceUpdate 
  { "minvCpus" :: NullOrUndefined.NullOrUndefined (Int)
  , "maxvCpus" :: NullOrUndefined.NullOrUndefined (Int)
  , "desiredvCpus" :: NullOrUndefined.NullOrUndefined (Int)
  }
derive instance newtypeComputeResourceUpdate :: Newtype ComputeResourceUpdate _
derive instance repGenericComputeResourceUpdate :: Generic ComputeResourceUpdate _
instance showComputeResourceUpdate :: Show ComputeResourceUpdate where
  show = genericShow
instance decodeComputeResourceUpdate :: Decode ComputeResourceUpdate where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeComputeResourceUpdate :: Encode ComputeResourceUpdate where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ComputeResourceUpdate from required parameters
newComputeResourceUpdate :: ComputeResourceUpdate
newComputeResourceUpdate  = ComputeResourceUpdate { "desiredvCpus": (NullOrUndefined Nothing), "maxvCpus": (NullOrUndefined Nothing), "minvCpus": (NullOrUndefined Nothing) }

-- | Constructs ComputeResourceUpdate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newComputeResourceUpdate' :: ( { "minvCpus" :: NullOrUndefined.NullOrUndefined (Int) , "maxvCpus" :: NullOrUndefined.NullOrUndefined (Int) , "desiredvCpus" :: NullOrUndefined.NullOrUndefined (Int) } -> {"minvCpus" :: NullOrUndefined.NullOrUndefined (Int) , "maxvCpus" :: NullOrUndefined.NullOrUndefined (Int) , "desiredvCpus" :: NullOrUndefined.NullOrUndefined (Int) } ) -> ComputeResourceUpdate
newComputeResourceUpdate'  customize = (ComputeResourceUpdate <<< customize) { "desiredvCpus": (NullOrUndefined Nothing), "maxvCpus": (NullOrUndefined Nothing), "minvCpus": (NullOrUndefined Nothing) }



-- | <p>An object representing the details of a container that is part of a job.</p>
newtype ContainerDetail = ContainerDetail 
  { "image" :: NullOrUndefined.NullOrUndefined (String)
  , "vcpus" :: NullOrUndefined.NullOrUndefined (Int)
  , "memory" :: NullOrUndefined.NullOrUndefined (Int)
  , "command" :: NullOrUndefined.NullOrUndefined (StringList)
  , "jobRoleArn" :: NullOrUndefined.NullOrUndefined (String)
  , "volumes" :: NullOrUndefined.NullOrUndefined (Volumes)
  , "environment" :: NullOrUndefined.NullOrUndefined (EnvironmentVariables)
  , "mountPoints" :: NullOrUndefined.NullOrUndefined (MountPoints)
  , "readonlyRootFilesystem" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "ulimits" :: NullOrUndefined.NullOrUndefined (Ulimits)
  , "privileged" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "user" :: NullOrUndefined.NullOrUndefined (String)
  , "exitCode" :: NullOrUndefined.NullOrUndefined (Int)
  , "reason" :: NullOrUndefined.NullOrUndefined (String)
  , "containerInstanceArn" :: NullOrUndefined.NullOrUndefined (String)
  , "taskArn" :: NullOrUndefined.NullOrUndefined (String)
  , "logStreamName" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeContainerDetail :: Newtype ContainerDetail _
derive instance repGenericContainerDetail :: Generic ContainerDetail _
instance showContainerDetail :: Show ContainerDetail where
  show = genericShow
instance decodeContainerDetail :: Decode ContainerDetail where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeContainerDetail :: Encode ContainerDetail where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ContainerDetail from required parameters
newContainerDetail :: ContainerDetail
newContainerDetail  = ContainerDetail { "command": (NullOrUndefined Nothing), "containerInstanceArn": (NullOrUndefined Nothing), "environment": (NullOrUndefined Nothing), "exitCode": (NullOrUndefined Nothing), "image": (NullOrUndefined Nothing), "jobRoleArn": (NullOrUndefined Nothing), "logStreamName": (NullOrUndefined Nothing), "memory": (NullOrUndefined Nothing), "mountPoints": (NullOrUndefined Nothing), "privileged": (NullOrUndefined Nothing), "readonlyRootFilesystem": (NullOrUndefined Nothing), "reason": (NullOrUndefined Nothing), "taskArn": (NullOrUndefined Nothing), "ulimits": (NullOrUndefined Nothing), "user": (NullOrUndefined Nothing), "vcpus": (NullOrUndefined Nothing), "volumes": (NullOrUndefined Nothing) }

-- | Constructs ContainerDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContainerDetail' :: ( { "image" :: NullOrUndefined.NullOrUndefined (String) , "vcpus" :: NullOrUndefined.NullOrUndefined (Int) , "memory" :: NullOrUndefined.NullOrUndefined (Int) , "command" :: NullOrUndefined.NullOrUndefined (StringList) , "jobRoleArn" :: NullOrUndefined.NullOrUndefined (String) , "volumes" :: NullOrUndefined.NullOrUndefined (Volumes) , "environment" :: NullOrUndefined.NullOrUndefined (EnvironmentVariables) , "mountPoints" :: NullOrUndefined.NullOrUndefined (MountPoints) , "readonlyRootFilesystem" :: NullOrUndefined.NullOrUndefined (Boolean) , "ulimits" :: NullOrUndefined.NullOrUndefined (Ulimits) , "privileged" :: NullOrUndefined.NullOrUndefined (Boolean) , "user" :: NullOrUndefined.NullOrUndefined (String) , "exitCode" :: NullOrUndefined.NullOrUndefined (Int) , "reason" :: NullOrUndefined.NullOrUndefined (String) , "containerInstanceArn" :: NullOrUndefined.NullOrUndefined (String) , "taskArn" :: NullOrUndefined.NullOrUndefined (String) , "logStreamName" :: NullOrUndefined.NullOrUndefined (String) } -> {"image" :: NullOrUndefined.NullOrUndefined (String) , "vcpus" :: NullOrUndefined.NullOrUndefined (Int) , "memory" :: NullOrUndefined.NullOrUndefined (Int) , "command" :: NullOrUndefined.NullOrUndefined (StringList) , "jobRoleArn" :: NullOrUndefined.NullOrUndefined (String) , "volumes" :: NullOrUndefined.NullOrUndefined (Volumes) , "environment" :: NullOrUndefined.NullOrUndefined (EnvironmentVariables) , "mountPoints" :: NullOrUndefined.NullOrUndefined (MountPoints) , "readonlyRootFilesystem" :: NullOrUndefined.NullOrUndefined (Boolean) , "ulimits" :: NullOrUndefined.NullOrUndefined (Ulimits) , "privileged" :: NullOrUndefined.NullOrUndefined (Boolean) , "user" :: NullOrUndefined.NullOrUndefined (String) , "exitCode" :: NullOrUndefined.NullOrUndefined (Int) , "reason" :: NullOrUndefined.NullOrUndefined (String) , "containerInstanceArn" :: NullOrUndefined.NullOrUndefined (String) , "taskArn" :: NullOrUndefined.NullOrUndefined (String) , "logStreamName" :: NullOrUndefined.NullOrUndefined (String) } ) -> ContainerDetail
newContainerDetail'  customize = (ContainerDetail <<< customize) { "command": (NullOrUndefined Nothing), "containerInstanceArn": (NullOrUndefined Nothing), "environment": (NullOrUndefined Nothing), "exitCode": (NullOrUndefined Nothing), "image": (NullOrUndefined Nothing), "jobRoleArn": (NullOrUndefined Nothing), "logStreamName": (NullOrUndefined Nothing), "memory": (NullOrUndefined Nothing), "mountPoints": (NullOrUndefined Nothing), "privileged": (NullOrUndefined Nothing), "readonlyRootFilesystem": (NullOrUndefined Nothing), "reason": (NullOrUndefined Nothing), "taskArn": (NullOrUndefined Nothing), "ulimits": (NullOrUndefined Nothing), "user": (NullOrUndefined Nothing), "vcpus": (NullOrUndefined Nothing), "volumes": (NullOrUndefined Nothing) }



-- | <p>The overrides that should be sent to a container.</p>
newtype ContainerOverrides = ContainerOverrides 
  { "vcpus" :: NullOrUndefined.NullOrUndefined (Int)
  , "memory" :: NullOrUndefined.NullOrUndefined (Int)
  , "command" :: NullOrUndefined.NullOrUndefined (StringList)
  , "environment" :: NullOrUndefined.NullOrUndefined (EnvironmentVariables)
  }
derive instance newtypeContainerOverrides :: Newtype ContainerOverrides _
derive instance repGenericContainerOverrides :: Generic ContainerOverrides _
instance showContainerOverrides :: Show ContainerOverrides where
  show = genericShow
instance decodeContainerOverrides :: Decode ContainerOverrides where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeContainerOverrides :: Encode ContainerOverrides where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ContainerOverrides from required parameters
newContainerOverrides :: ContainerOverrides
newContainerOverrides  = ContainerOverrides { "command": (NullOrUndefined Nothing), "environment": (NullOrUndefined Nothing), "memory": (NullOrUndefined Nothing), "vcpus": (NullOrUndefined Nothing) }

-- | Constructs ContainerOverrides's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContainerOverrides' :: ( { "vcpus" :: NullOrUndefined.NullOrUndefined (Int) , "memory" :: NullOrUndefined.NullOrUndefined (Int) , "command" :: NullOrUndefined.NullOrUndefined (StringList) , "environment" :: NullOrUndefined.NullOrUndefined (EnvironmentVariables) } -> {"vcpus" :: NullOrUndefined.NullOrUndefined (Int) , "memory" :: NullOrUndefined.NullOrUndefined (Int) , "command" :: NullOrUndefined.NullOrUndefined (StringList) , "environment" :: NullOrUndefined.NullOrUndefined (EnvironmentVariables) } ) -> ContainerOverrides
newContainerOverrides'  customize = (ContainerOverrides <<< customize) { "command": (NullOrUndefined Nothing), "environment": (NullOrUndefined Nothing), "memory": (NullOrUndefined Nothing), "vcpus": (NullOrUndefined Nothing) }



-- | <p>Container properties are used in job definitions to describe the container that is launched as part of a job.</p>
newtype ContainerProperties = ContainerProperties 
  { "image" :: (String)
  , "vcpus" :: (Int)
  , "memory" :: (Int)
  , "command" :: NullOrUndefined.NullOrUndefined (StringList)
  , "jobRoleArn" :: NullOrUndefined.NullOrUndefined (String)
  , "volumes" :: NullOrUndefined.NullOrUndefined (Volumes)
  , "environment" :: NullOrUndefined.NullOrUndefined (EnvironmentVariables)
  , "mountPoints" :: NullOrUndefined.NullOrUndefined (MountPoints)
  , "readonlyRootFilesystem" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "privileged" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "ulimits" :: NullOrUndefined.NullOrUndefined (Ulimits)
  , "user" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeContainerProperties :: Newtype ContainerProperties _
derive instance repGenericContainerProperties :: Generic ContainerProperties _
instance showContainerProperties :: Show ContainerProperties where
  show = genericShow
instance decodeContainerProperties :: Decode ContainerProperties where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeContainerProperties :: Encode ContainerProperties where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ContainerProperties from required parameters
newContainerProperties :: String -> Int -> Int -> ContainerProperties
newContainerProperties _image _memory _vcpus = ContainerProperties { "image": _image, "memory": _memory, "vcpus": _vcpus, "command": (NullOrUndefined Nothing), "environment": (NullOrUndefined Nothing), "jobRoleArn": (NullOrUndefined Nothing), "mountPoints": (NullOrUndefined Nothing), "privileged": (NullOrUndefined Nothing), "readonlyRootFilesystem": (NullOrUndefined Nothing), "ulimits": (NullOrUndefined Nothing), "user": (NullOrUndefined Nothing), "volumes": (NullOrUndefined Nothing) }

-- | Constructs ContainerProperties's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContainerProperties' :: String -> Int -> Int -> ( { "image" :: (String) , "vcpus" :: (Int) , "memory" :: (Int) , "command" :: NullOrUndefined.NullOrUndefined (StringList) , "jobRoleArn" :: NullOrUndefined.NullOrUndefined (String) , "volumes" :: NullOrUndefined.NullOrUndefined (Volumes) , "environment" :: NullOrUndefined.NullOrUndefined (EnvironmentVariables) , "mountPoints" :: NullOrUndefined.NullOrUndefined (MountPoints) , "readonlyRootFilesystem" :: NullOrUndefined.NullOrUndefined (Boolean) , "privileged" :: NullOrUndefined.NullOrUndefined (Boolean) , "ulimits" :: NullOrUndefined.NullOrUndefined (Ulimits) , "user" :: NullOrUndefined.NullOrUndefined (String) } -> {"image" :: (String) , "vcpus" :: (Int) , "memory" :: (Int) , "command" :: NullOrUndefined.NullOrUndefined (StringList) , "jobRoleArn" :: NullOrUndefined.NullOrUndefined (String) , "volumes" :: NullOrUndefined.NullOrUndefined (Volumes) , "environment" :: NullOrUndefined.NullOrUndefined (EnvironmentVariables) , "mountPoints" :: NullOrUndefined.NullOrUndefined (MountPoints) , "readonlyRootFilesystem" :: NullOrUndefined.NullOrUndefined (Boolean) , "privileged" :: NullOrUndefined.NullOrUndefined (Boolean) , "ulimits" :: NullOrUndefined.NullOrUndefined (Ulimits) , "user" :: NullOrUndefined.NullOrUndefined (String) } ) -> ContainerProperties
newContainerProperties' _image _memory _vcpus customize = (ContainerProperties <<< customize) { "image": _image, "memory": _memory, "vcpus": _vcpus, "command": (NullOrUndefined Nothing), "environment": (NullOrUndefined Nothing), "jobRoleArn": (NullOrUndefined Nothing), "mountPoints": (NullOrUndefined Nothing), "privileged": (NullOrUndefined Nothing), "readonlyRootFilesystem": (NullOrUndefined Nothing), "ulimits": (NullOrUndefined Nothing), "user": (NullOrUndefined Nothing), "volumes": (NullOrUndefined Nothing) }



-- | <p>An object representing summary details of a container within a job.</p>
newtype ContainerSummary = ContainerSummary 
  { "exitCode" :: NullOrUndefined.NullOrUndefined (Int)
  , "reason" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeContainerSummary :: Newtype ContainerSummary _
derive instance repGenericContainerSummary :: Generic ContainerSummary _
instance showContainerSummary :: Show ContainerSummary where
  show = genericShow
instance decodeContainerSummary :: Decode ContainerSummary where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeContainerSummary :: Encode ContainerSummary where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ContainerSummary from required parameters
newContainerSummary :: ContainerSummary
newContainerSummary  = ContainerSummary { "exitCode": (NullOrUndefined Nothing), "reason": (NullOrUndefined Nothing) }

-- | Constructs ContainerSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContainerSummary' :: ( { "exitCode" :: NullOrUndefined.NullOrUndefined (Int) , "reason" :: NullOrUndefined.NullOrUndefined (String) } -> {"exitCode" :: NullOrUndefined.NullOrUndefined (Int) , "reason" :: NullOrUndefined.NullOrUndefined (String) } ) -> ContainerSummary
newContainerSummary'  customize = (ContainerSummary <<< customize) { "exitCode": (NullOrUndefined Nothing), "reason": (NullOrUndefined Nothing) }



newtype CreateComputeEnvironmentRequest = CreateComputeEnvironmentRequest 
  { "computeEnvironmentName" :: (String)
  , "type" :: (CEType)
  , "state" :: NullOrUndefined.NullOrUndefined (CEState)
  , "computeResources" :: NullOrUndefined.NullOrUndefined (ComputeResource)
  , "serviceRole" :: (String)
  }
derive instance newtypeCreateComputeEnvironmentRequest :: Newtype CreateComputeEnvironmentRequest _
derive instance repGenericCreateComputeEnvironmentRequest :: Generic CreateComputeEnvironmentRequest _
instance showCreateComputeEnvironmentRequest :: Show CreateComputeEnvironmentRequest where
  show = genericShow
instance decodeCreateComputeEnvironmentRequest :: Decode CreateComputeEnvironmentRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateComputeEnvironmentRequest :: Encode CreateComputeEnvironmentRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateComputeEnvironmentRequest from required parameters
newCreateComputeEnvironmentRequest :: String -> String -> CEType -> CreateComputeEnvironmentRequest
newCreateComputeEnvironmentRequest _computeEnvironmentName _serviceRole _type = CreateComputeEnvironmentRequest { "computeEnvironmentName": _computeEnvironmentName, "serviceRole": _serviceRole, "type": _type, "computeResources": (NullOrUndefined Nothing), "state": (NullOrUndefined Nothing) }

-- | Constructs CreateComputeEnvironmentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateComputeEnvironmentRequest' :: String -> String -> CEType -> ( { "computeEnvironmentName" :: (String) , "type" :: (CEType) , "state" :: NullOrUndefined.NullOrUndefined (CEState) , "computeResources" :: NullOrUndefined.NullOrUndefined (ComputeResource) , "serviceRole" :: (String) } -> {"computeEnvironmentName" :: (String) , "type" :: (CEType) , "state" :: NullOrUndefined.NullOrUndefined (CEState) , "computeResources" :: NullOrUndefined.NullOrUndefined (ComputeResource) , "serviceRole" :: (String) } ) -> CreateComputeEnvironmentRequest
newCreateComputeEnvironmentRequest' _computeEnvironmentName _serviceRole _type customize = (CreateComputeEnvironmentRequest <<< customize) { "computeEnvironmentName": _computeEnvironmentName, "serviceRole": _serviceRole, "type": _type, "computeResources": (NullOrUndefined Nothing), "state": (NullOrUndefined Nothing) }



newtype CreateComputeEnvironmentResponse = CreateComputeEnvironmentResponse 
  { "computeEnvironmentName" :: NullOrUndefined.NullOrUndefined (String)
  , "computeEnvironmentArn" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeCreateComputeEnvironmentResponse :: Newtype CreateComputeEnvironmentResponse _
derive instance repGenericCreateComputeEnvironmentResponse :: Generic CreateComputeEnvironmentResponse _
instance showCreateComputeEnvironmentResponse :: Show CreateComputeEnvironmentResponse where
  show = genericShow
instance decodeCreateComputeEnvironmentResponse :: Decode CreateComputeEnvironmentResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateComputeEnvironmentResponse :: Encode CreateComputeEnvironmentResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateComputeEnvironmentResponse from required parameters
newCreateComputeEnvironmentResponse :: CreateComputeEnvironmentResponse
newCreateComputeEnvironmentResponse  = CreateComputeEnvironmentResponse { "computeEnvironmentArn": (NullOrUndefined Nothing), "computeEnvironmentName": (NullOrUndefined Nothing) }

-- | Constructs CreateComputeEnvironmentResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateComputeEnvironmentResponse' :: ( { "computeEnvironmentName" :: NullOrUndefined.NullOrUndefined (String) , "computeEnvironmentArn" :: NullOrUndefined.NullOrUndefined (String) } -> {"computeEnvironmentName" :: NullOrUndefined.NullOrUndefined (String) , "computeEnvironmentArn" :: NullOrUndefined.NullOrUndefined (String) } ) -> CreateComputeEnvironmentResponse
newCreateComputeEnvironmentResponse'  customize = (CreateComputeEnvironmentResponse <<< customize) { "computeEnvironmentArn": (NullOrUndefined Nothing), "computeEnvironmentName": (NullOrUndefined Nothing) }



newtype CreateJobQueueRequest = CreateJobQueueRequest 
  { "jobQueueName" :: (String)
  , "state" :: NullOrUndefined.NullOrUndefined (JQState)
  , "priority" :: (Int)
  , "computeEnvironmentOrder" :: (ComputeEnvironmentOrders)
  }
derive instance newtypeCreateJobQueueRequest :: Newtype CreateJobQueueRequest _
derive instance repGenericCreateJobQueueRequest :: Generic CreateJobQueueRequest _
instance showCreateJobQueueRequest :: Show CreateJobQueueRequest where
  show = genericShow
instance decodeCreateJobQueueRequest :: Decode CreateJobQueueRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateJobQueueRequest :: Encode CreateJobQueueRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateJobQueueRequest from required parameters
newCreateJobQueueRequest :: ComputeEnvironmentOrders -> String -> Int -> CreateJobQueueRequest
newCreateJobQueueRequest _computeEnvironmentOrder _jobQueueName _priority = CreateJobQueueRequest { "computeEnvironmentOrder": _computeEnvironmentOrder, "jobQueueName": _jobQueueName, "priority": _priority, "state": (NullOrUndefined Nothing) }

-- | Constructs CreateJobQueueRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateJobQueueRequest' :: ComputeEnvironmentOrders -> String -> Int -> ( { "jobQueueName" :: (String) , "state" :: NullOrUndefined.NullOrUndefined (JQState) , "priority" :: (Int) , "computeEnvironmentOrder" :: (ComputeEnvironmentOrders) } -> {"jobQueueName" :: (String) , "state" :: NullOrUndefined.NullOrUndefined (JQState) , "priority" :: (Int) , "computeEnvironmentOrder" :: (ComputeEnvironmentOrders) } ) -> CreateJobQueueRequest
newCreateJobQueueRequest' _computeEnvironmentOrder _jobQueueName _priority customize = (CreateJobQueueRequest <<< customize) { "computeEnvironmentOrder": _computeEnvironmentOrder, "jobQueueName": _jobQueueName, "priority": _priority, "state": (NullOrUndefined Nothing) }



newtype CreateJobQueueResponse = CreateJobQueueResponse 
  { "jobQueueName" :: (String)
  , "jobQueueArn" :: (String)
  }
derive instance newtypeCreateJobQueueResponse :: Newtype CreateJobQueueResponse _
derive instance repGenericCreateJobQueueResponse :: Generic CreateJobQueueResponse _
instance showCreateJobQueueResponse :: Show CreateJobQueueResponse where
  show = genericShow
instance decodeCreateJobQueueResponse :: Decode CreateJobQueueResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateJobQueueResponse :: Encode CreateJobQueueResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateJobQueueResponse from required parameters
newCreateJobQueueResponse :: String -> String -> CreateJobQueueResponse
newCreateJobQueueResponse _jobQueueArn _jobQueueName = CreateJobQueueResponse { "jobQueueArn": _jobQueueArn, "jobQueueName": _jobQueueName }

-- | Constructs CreateJobQueueResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateJobQueueResponse' :: String -> String -> ( { "jobQueueName" :: (String) , "jobQueueArn" :: (String) } -> {"jobQueueName" :: (String) , "jobQueueArn" :: (String) } ) -> CreateJobQueueResponse
newCreateJobQueueResponse' _jobQueueArn _jobQueueName customize = (CreateJobQueueResponse <<< customize) { "jobQueueArn": _jobQueueArn, "jobQueueName": _jobQueueName }



newtype DeleteComputeEnvironmentRequest = DeleteComputeEnvironmentRequest 
  { "computeEnvironment" :: (String)
  }
derive instance newtypeDeleteComputeEnvironmentRequest :: Newtype DeleteComputeEnvironmentRequest _
derive instance repGenericDeleteComputeEnvironmentRequest :: Generic DeleteComputeEnvironmentRequest _
instance showDeleteComputeEnvironmentRequest :: Show DeleteComputeEnvironmentRequest where
  show = genericShow
instance decodeDeleteComputeEnvironmentRequest :: Decode DeleteComputeEnvironmentRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteComputeEnvironmentRequest :: Encode DeleteComputeEnvironmentRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteComputeEnvironmentRequest from required parameters
newDeleteComputeEnvironmentRequest :: String -> DeleteComputeEnvironmentRequest
newDeleteComputeEnvironmentRequest _computeEnvironment = DeleteComputeEnvironmentRequest { "computeEnvironment": _computeEnvironment }

-- | Constructs DeleteComputeEnvironmentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteComputeEnvironmentRequest' :: String -> ( { "computeEnvironment" :: (String) } -> {"computeEnvironment" :: (String) } ) -> DeleteComputeEnvironmentRequest
newDeleteComputeEnvironmentRequest' _computeEnvironment customize = (DeleteComputeEnvironmentRequest <<< customize) { "computeEnvironment": _computeEnvironment }



newtype DeleteComputeEnvironmentResponse = DeleteComputeEnvironmentResponse Types.NoArguments
derive instance newtypeDeleteComputeEnvironmentResponse :: Newtype DeleteComputeEnvironmentResponse _
derive instance repGenericDeleteComputeEnvironmentResponse :: Generic DeleteComputeEnvironmentResponse _
instance showDeleteComputeEnvironmentResponse :: Show DeleteComputeEnvironmentResponse where
  show = genericShow
instance decodeDeleteComputeEnvironmentResponse :: Decode DeleteComputeEnvironmentResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteComputeEnvironmentResponse :: Encode DeleteComputeEnvironmentResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DeleteJobQueueRequest = DeleteJobQueueRequest 
  { "jobQueue" :: (String)
  }
derive instance newtypeDeleteJobQueueRequest :: Newtype DeleteJobQueueRequest _
derive instance repGenericDeleteJobQueueRequest :: Generic DeleteJobQueueRequest _
instance showDeleteJobQueueRequest :: Show DeleteJobQueueRequest where
  show = genericShow
instance decodeDeleteJobQueueRequest :: Decode DeleteJobQueueRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteJobQueueRequest :: Encode DeleteJobQueueRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteJobQueueRequest from required parameters
newDeleteJobQueueRequest :: String -> DeleteJobQueueRequest
newDeleteJobQueueRequest _jobQueue = DeleteJobQueueRequest { "jobQueue": _jobQueue }

-- | Constructs DeleteJobQueueRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteJobQueueRequest' :: String -> ( { "jobQueue" :: (String) } -> {"jobQueue" :: (String) } ) -> DeleteJobQueueRequest
newDeleteJobQueueRequest' _jobQueue customize = (DeleteJobQueueRequest <<< customize) { "jobQueue": _jobQueue }



newtype DeleteJobQueueResponse = DeleteJobQueueResponse Types.NoArguments
derive instance newtypeDeleteJobQueueResponse :: Newtype DeleteJobQueueResponse _
derive instance repGenericDeleteJobQueueResponse :: Generic DeleteJobQueueResponse _
instance showDeleteJobQueueResponse :: Show DeleteJobQueueResponse where
  show = genericShow
instance decodeDeleteJobQueueResponse :: Decode DeleteJobQueueResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteJobQueueResponse :: Encode DeleteJobQueueResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DeregisterJobDefinitionRequest = DeregisterJobDefinitionRequest 
  { "jobDefinition" :: (String)
  }
derive instance newtypeDeregisterJobDefinitionRequest :: Newtype DeregisterJobDefinitionRequest _
derive instance repGenericDeregisterJobDefinitionRequest :: Generic DeregisterJobDefinitionRequest _
instance showDeregisterJobDefinitionRequest :: Show DeregisterJobDefinitionRequest where
  show = genericShow
instance decodeDeregisterJobDefinitionRequest :: Decode DeregisterJobDefinitionRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeregisterJobDefinitionRequest :: Encode DeregisterJobDefinitionRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeregisterJobDefinitionRequest from required parameters
newDeregisterJobDefinitionRequest :: String -> DeregisterJobDefinitionRequest
newDeregisterJobDefinitionRequest _jobDefinition = DeregisterJobDefinitionRequest { "jobDefinition": _jobDefinition }

-- | Constructs DeregisterJobDefinitionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeregisterJobDefinitionRequest' :: String -> ( { "jobDefinition" :: (String) } -> {"jobDefinition" :: (String) } ) -> DeregisterJobDefinitionRequest
newDeregisterJobDefinitionRequest' _jobDefinition customize = (DeregisterJobDefinitionRequest <<< customize) { "jobDefinition": _jobDefinition }



newtype DeregisterJobDefinitionResponse = DeregisterJobDefinitionResponse Types.NoArguments
derive instance newtypeDeregisterJobDefinitionResponse :: Newtype DeregisterJobDefinitionResponse _
derive instance repGenericDeregisterJobDefinitionResponse :: Generic DeregisterJobDefinitionResponse _
instance showDeregisterJobDefinitionResponse :: Show DeregisterJobDefinitionResponse where
  show = genericShow
instance decodeDeregisterJobDefinitionResponse :: Decode DeregisterJobDefinitionResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeregisterJobDefinitionResponse :: Encode DeregisterJobDefinitionResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DescribeComputeEnvironmentsRequest = DescribeComputeEnvironmentsRequest 
  { "computeEnvironments" :: NullOrUndefined.NullOrUndefined (StringList)
  , "maxResults" :: NullOrUndefined.NullOrUndefined (Int)
  , "nextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeDescribeComputeEnvironmentsRequest :: Newtype DescribeComputeEnvironmentsRequest _
derive instance repGenericDescribeComputeEnvironmentsRequest :: Generic DescribeComputeEnvironmentsRequest _
instance showDescribeComputeEnvironmentsRequest :: Show DescribeComputeEnvironmentsRequest where
  show = genericShow
instance decodeDescribeComputeEnvironmentsRequest :: Decode DescribeComputeEnvironmentsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeComputeEnvironmentsRequest :: Encode DescribeComputeEnvironmentsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeComputeEnvironmentsRequest from required parameters
newDescribeComputeEnvironmentsRequest :: DescribeComputeEnvironmentsRequest
newDescribeComputeEnvironmentsRequest  = DescribeComputeEnvironmentsRequest { "computeEnvironments": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeComputeEnvironmentsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeComputeEnvironmentsRequest' :: ( { "computeEnvironments" :: NullOrUndefined.NullOrUndefined (StringList) , "maxResults" :: NullOrUndefined.NullOrUndefined (Int) , "nextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"computeEnvironments" :: NullOrUndefined.NullOrUndefined (StringList) , "maxResults" :: NullOrUndefined.NullOrUndefined (Int) , "nextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> DescribeComputeEnvironmentsRequest
newDescribeComputeEnvironmentsRequest'  customize = (DescribeComputeEnvironmentsRequest <<< customize) { "computeEnvironments": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype DescribeComputeEnvironmentsResponse = DescribeComputeEnvironmentsResponse 
  { "computeEnvironments" :: NullOrUndefined.NullOrUndefined (ComputeEnvironmentDetailList)
  , "nextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeDescribeComputeEnvironmentsResponse :: Newtype DescribeComputeEnvironmentsResponse _
derive instance repGenericDescribeComputeEnvironmentsResponse :: Generic DescribeComputeEnvironmentsResponse _
instance showDescribeComputeEnvironmentsResponse :: Show DescribeComputeEnvironmentsResponse where
  show = genericShow
instance decodeDescribeComputeEnvironmentsResponse :: Decode DescribeComputeEnvironmentsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeComputeEnvironmentsResponse :: Encode DescribeComputeEnvironmentsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeComputeEnvironmentsResponse from required parameters
newDescribeComputeEnvironmentsResponse :: DescribeComputeEnvironmentsResponse
newDescribeComputeEnvironmentsResponse  = DescribeComputeEnvironmentsResponse { "computeEnvironments": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeComputeEnvironmentsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeComputeEnvironmentsResponse' :: ( { "computeEnvironments" :: NullOrUndefined.NullOrUndefined (ComputeEnvironmentDetailList) , "nextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"computeEnvironments" :: NullOrUndefined.NullOrUndefined (ComputeEnvironmentDetailList) , "nextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> DescribeComputeEnvironmentsResponse
newDescribeComputeEnvironmentsResponse'  customize = (DescribeComputeEnvironmentsResponse <<< customize) { "computeEnvironments": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype DescribeJobDefinitionsRequest = DescribeJobDefinitionsRequest 
  { "jobDefinitions" :: NullOrUndefined.NullOrUndefined (StringList)
  , "maxResults" :: NullOrUndefined.NullOrUndefined (Int)
  , "jobDefinitionName" :: NullOrUndefined.NullOrUndefined (String)
  , "status" :: NullOrUndefined.NullOrUndefined (String)
  , "nextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeDescribeJobDefinitionsRequest :: Newtype DescribeJobDefinitionsRequest _
derive instance repGenericDescribeJobDefinitionsRequest :: Generic DescribeJobDefinitionsRequest _
instance showDescribeJobDefinitionsRequest :: Show DescribeJobDefinitionsRequest where
  show = genericShow
instance decodeDescribeJobDefinitionsRequest :: Decode DescribeJobDefinitionsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeJobDefinitionsRequest :: Encode DescribeJobDefinitionsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeJobDefinitionsRequest from required parameters
newDescribeJobDefinitionsRequest :: DescribeJobDefinitionsRequest
newDescribeJobDefinitionsRequest  = DescribeJobDefinitionsRequest { "jobDefinitionName": (NullOrUndefined Nothing), "jobDefinitions": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }

-- | Constructs DescribeJobDefinitionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeJobDefinitionsRequest' :: ( { "jobDefinitions" :: NullOrUndefined.NullOrUndefined (StringList) , "maxResults" :: NullOrUndefined.NullOrUndefined (Int) , "jobDefinitionName" :: NullOrUndefined.NullOrUndefined (String) , "status" :: NullOrUndefined.NullOrUndefined (String) , "nextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"jobDefinitions" :: NullOrUndefined.NullOrUndefined (StringList) , "maxResults" :: NullOrUndefined.NullOrUndefined (Int) , "jobDefinitionName" :: NullOrUndefined.NullOrUndefined (String) , "status" :: NullOrUndefined.NullOrUndefined (String) , "nextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> DescribeJobDefinitionsRequest
newDescribeJobDefinitionsRequest'  customize = (DescribeJobDefinitionsRequest <<< customize) { "jobDefinitionName": (NullOrUndefined Nothing), "jobDefinitions": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }



newtype DescribeJobDefinitionsResponse = DescribeJobDefinitionsResponse 
  { "jobDefinitions" :: NullOrUndefined.NullOrUndefined (JobDefinitionList)
  , "nextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeDescribeJobDefinitionsResponse :: Newtype DescribeJobDefinitionsResponse _
derive instance repGenericDescribeJobDefinitionsResponse :: Generic DescribeJobDefinitionsResponse _
instance showDescribeJobDefinitionsResponse :: Show DescribeJobDefinitionsResponse where
  show = genericShow
instance decodeDescribeJobDefinitionsResponse :: Decode DescribeJobDefinitionsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeJobDefinitionsResponse :: Encode DescribeJobDefinitionsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeJobDefinitionsResponse from required parameters
newDescribeJobDefinitionsResponse :: DescribeJobDefinitionsResponse
newDescribeJobDefinitionsResponse  = DescribeJobDefinitionsResponse { "jobDefinitions": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeJobDefinitionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeJobDefinitionsResponse' :: ( { "jobDefinitions" :: NullOrUndefined.NullOrUndefined (JobDefinitionList) , "nextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"jobDefinitions" :: NullOrUndefined.NullOrUndefined (JobDefinitionList) , "nextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> DescribeJobDefinitionsResponse
newDescribeJobDefinitionsResponse'  customize = (DescribeJobDefinitionsResponse <<< customize) { "jobDefinitions": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype DescribeJobQueuesRequest = DescribeJobQueuesRequest 
  { "jobQueues" :: NullOrUndefined.NullOrUndefined (StringList)
  , "maxResults" :: NullOrUndefined.NullOrUndefined (Int)
  , "nextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeDescribeJobQueuesRequest :: Newtype DescribeJobQueuesRequest _
derive instance repGenericDescribeJobQueuesRequest :: Generic DescribeJobQueuesRequest _
instance showDescribeJobQueuesRequest :: Show DescribeJobQueuesRequest where
  show = genericShow
instance decodeDescribeJobQueuesRequest :: Decode DescribeJobQueuesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeJobQueuesRequest :: Encode DescribeJobQueuesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeJobQueuesRequest from required parameters
newDescribeJobQueuesRequest :: DescribeJobQueuesRequest
newDescribeJobQueuesRequest  = DescribeJobQueuesRequest { "jobQueues": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeJobQueuesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeJobQueuesRequest' :: ( { "jobQueues" :: NullOrUndefined.NullOrUndefined (StringList) , "maxResults" :: NullOrUndefined.NullOrUndefined (Int) , "nextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"jobQueues" :: NullOrUndefined.NullOrUndefined (StringList) , "maxResults" :: NullOrUndefined.NullOrUndefined (Int) , "nextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> DescribeJobQueuesRequest
newDescribeJobQueuesRequest'  customize = (DescribeJobQueuesRequest <<< customize) { "jobQueues": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype DescribeJobQueuesResponse = DescribeJobQueuesResponse 
  { "jobQueues" :: NullOrUndefined.NullOrUndefined (JobQueueDetailList)
  , "nextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeDescribeJobQueuesResponse :: Newtype DescribeJobQueuesResponse _
derive instance repGenericDescribeJobQueuesResponse :: Generic DescribeJobQueuesResponse _
instance showDescribeJobQueuesResponse :: Show DescribeJobQueuesResponse where
  show = genericShow
instance decodeDescribeJobQueuesResponse :: Decode DescribeJobQueuesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeJobQueuesResponse :: Encode DescribeJobQueuesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeJobQueuesResponse from required parameters
newDescribeJobQueuesResponse :: DescribeJobQueuesResponse
newDescribeJobQueuesResponse  = DescribeJobQueuesResponse { "jobQueues": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeJobQueuesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeJobQueuesResponse' :: ( { "jobQueues" :: NullOrUndefined.NullOrUndefined (JobQueueDetailList) , "nextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"jobQueues" :: NullOrUndefined.NullOrUndefined (JobQueueDetailList) , "nextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> DescribeJobQueuesResponse
newDescribeJobQueuesResponse'  customize = (DescribeJobQueuesResponse <<< customize) { "jobQueues": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype DescribeJobsRequest = DescribeJobsRequest 
  { "jobs" :: (StringList)
  }
derive instance newtypeDescribeJobsRequest :: Newtype DescribeJobsRequest _
derive instance repGenericDescribeJobsRequest :: Generic DescribeJobsRequest _
instance showDescribeJobsRequest :: Show DescribeJobsRequest where
  show = genericShow
instance decodeDescribeJobsRequest :: Decode DescribeJobsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeJobsRequest :: Encode DescribeJobsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeJobsRequest from required parameters
newDescribeJobsRequest :: StringList -> DescribeJobsRequest
newDescribeJobsRequest _jobs = DescribeJobsRequest { "jobs": _jobs }

-- | Constructs DescribeJobsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeJobsRequest' :: StringList -> ( { "jobs" :: (StringList) } -> {"jobs" :: (StringList) } ) -> DescribeJobsRequest
newDescribeJobsRequest' _jobs customize = (DescribeJobsRequest <<< customize) { "jobs": _jobs }



newtype DescribeJobsResponse = DescribeJobsResponse 
  { "jobs" :: NullOrUndefined.NullOrUndefined (JobDetailList)
  }
derive instance newtypeDescribeJobsResponse :: Newtype DescribeJobsResponse _
derive instance repGenericDescribeJobsResponse :: Generic DescribeJobsResponse _
instance showDescribeJobsResponse :: Show DescribeJobsResponse where
  show = genericShow
instance decodeDescribeJobsResponse :: Decode DescribeJobsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeJobsResponse :: Encode DescribeJobsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeJobsResponse from required parameters
newDescribeJobsResponse :: DescribeJobsResponse
newDescribeJobsResponse  = DescribeJobsResponse { "jobs": (NullOrUndefined Nothing) }

-- | Constructs DescribeJobsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeJobsResponse' :: ( { "jobs" :: NullOrUndefined.NullOrUndefined (JobDetailList) } -> {"jobs" :: NullOrUndefined.NullOrUndefined (JobDetailList) } ) -> DescribeJobsResponse
newDescribeJobsResponse'  customize = (DescribeJobsResponse <<< customize) { "jobs": (NullOrUndefined Nothing) }



newtype EnvironmentVariables = EnvironmentVariables (Array KeyValuePair)
derive instance newtypeEnvironmentVariables :: Newtype EnvironmentVariables _
derive instance repGenericEnvironmentVariables :: Generic EnvironmentVariables _
instance showEnvironmentVariables :: Show EnvironmentVariables where
  show = genericShow
instance decodeEnvironmentVariables :: Decode EnvironmentVariables where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEnvironmentVariables :: Encode EnvironmentVariables where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The contents of the <code>host</code> parameter determine whether your data volume persists on the host container instance and where it is stored. If the host parameter is empty, then the Docker daemon assigns a host path for your data volume, but the data is not guaranteed to persist after the containers associated with it stop running.</p>
newtype Host = Host 
  { "sourcePath" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeHost :: Newtype Host _
derive instance repGenericHost :: Generic Host _
instance showHost :: Show Host where
  show = genericShow
instance decodeHost :: Decode Host where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHost :: Encode Host where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Host from required parameters
newHost :: Host
newHost  = Host { "sourcePath": (NullOrUndefined Nothing) }

-- | Constructs Host's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHost' :: ( { "sourcePath" :: NullOrUndefined.NullOrUndefined (String) } -> {"sourcePath" :: NullOrUndefined.NullOrUndefined (String) } ) -> Host
newHost'  customize = (Host <<< customize) { "sourcePath": (NullOrUndefined Nothing) }



newtype JQState = JQState String
derive instance newtypeJQState :: Newtype JQState _
derive instance repGenericJQState :: Generic JQState _
instance showJQState :: Show JQState where
  show = genericShow
instance decodeJQState :: Decode JQState where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJQState :: Encode JQState where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype JQStatus = JQStatus String
derive instance newtypeJQStatus :: Newtype JQStatus _
derive instance repGenericJQStatus :: Generic JQStatus _
instance showJQStatus :: Show JQStatus where
  show = genericShow
instance decodeJQStatus :: Decode JQStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJQStatus :: Encode JQStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>An object representing an AWS Batch job definition.</p>
newtype JobDefinition = JobDefinition 
  { "jobDefinitionName" :: (String)
  , "jobDefinitionArn" :: (String)
  , "revision" :: (Int)
  , "status" :: NullOrUndefined.NullOrUndefined (String)
  , "type" :: (String)
  , "parameters" :: NullOrUndefined.NullOrUndefined (ParametersMap)
  , "retryStrategy" :: NullOrUndefined.NullOrUndefined (RetryStrategy)
  , "containerProperties" :: NullOrUndefined.NullOrUndefined (ContainerProperties)
  }
derive instance newtypeJobDefinition :: Newtype JobDefinition _
derive instance repGenericJobDefinition :: Generic JobDefinition _
instance showJobDefinition :: Show JobDefinition where
  show = genericShow
instance decodeJobDefinition :: Decode JobDefinition where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobDefinition :: Encode JobDefinition where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs JobDefinition from required parameters
newJobDefinition :: String -> String -> Int -> String -> JobDefinition
newJobDefinition _jobDefinitionArn _jobDefinitionName _revision _type = JobDefinition { "jobDefinitionArn": _jobDefinitionArn, "jobDefinitionName": _jobDefinitionName, "revision": _revision, "type": _type, "containerProperties": (NullOrUndefined Nothing), "parameters": (NullOrUndefined Nothing), "retryStrategy": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }

-- | Constructs JobDefinition's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobDefinition' :: String -> String -> Int -> String -> ( { "jobDefinitionName" :: (String) , "jobDefinitionArn" :: (String) , "revision" :: (Int) , "status" :: NullOrUndefined.NullOrUndefined (String) , "type" :: (String) , "parameters" :: NullOrUndefined.NullOrUndefined (ParametersMap) , "retryStrategy" :: NullOrUndefined.NullOrUndefined (RetryStrategy) , "containerProperties" :: NullOrUndefined.NullOrUndefined (ContainerProperties) } -> {"jobDefinitionName" :: (String) , "jobDefinitionArn" :: (String) , "revision" :: (Int) , "status" :: NullOrUndefined.NullOrUndefined (String) , "type" :: (String) , "parameters" :: NullOrUndefined.NullOrUndefined (ParametersMap) , "retryStrategy" :: NullOrUndefined.NullOrUndefined (RetryStrategy) , "containerProperties" :: NullOrUndefined.NullOrUndefined (ContainerProperties) } ) -> JobDefinition
newJobDefinition' _jobDefinitionArn _jobDefinitionName _revision _type customize = (JobDefinition <<< customize) { "jobDefinitionArn": _jobDefinitionArn, "jobDefinitionName": _jobDefinitionName, "revision": _revision, "type": _type, "containerProperties": (NullOrUndefined Nothing), "parameters": (NullOrUndefined Nothing), "retryStrategy": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }



newtype JobDefinitionList = JobDefinitionList (Array JobDefinition)
derive instance newtypeJobDefinitionList :: Newtype JobDefinitionList _
derive instance repGenericJobDefinitionList :: Generic JobDefinitionList _
instance showJobDefinitionList :: Show JobDefinitionList where
  show = genericShow
instance decodeJobDefinitionList :: Decode JobDefinitionList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobDefinitionList :: Encode JobDefinitionList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype JobDefinitionType = JobDefinitionType String
derive instance newtypeJobDefinitionType :: Newtype JobDefinitionType _
derive instance repGenericJobDefinitionType :: Generic JobDefinitionType _
instance showJobDefinitionType :: Show JobDefinitionType where
  show = genericShow
instance decodeJobDefinitionType :: Decode JobDefinitionType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobDefinitionType :: Encode JobDefinitionType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>An object representing an AWS Batch job dependency.</p>
newtype JobDependency = JobDependency 
  { "jobId" :: NullOrUndefined.NullOrUndefined (String)
  , "type" :: NullOrUndefined.NullOrUndefined (ArrayJobDependency)
  }
derive instance newtypeJobDependency :: Newtype JobDependency _
derive instance repGenericJobDependency :: Generic JobDependency _
instance showJobDependency :: Show JobDependency where
  show = genericShow
instance decodeJobDependency :: Decode JobDependency where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobDependency :: Encode JobDependency where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs JobDependency from required parameters
newJobDependency :: JobDependency
newJobDependency  = JobDependency { "jobId": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }

-- | Constructs JobDependency's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobDependency' :: ( { "jobId" :: NullOrUndefined.NullOrUndefined (String) , "type" :: NullOrUndefined.NullOrUndefined (ArrayJobDependency) } -> {"jobId" :: NullOrUndefined.NullOrUndefined (String) , "type" :: NullOrUndefined.NullOrUndefined (ArrayJobDependency) } ) -> JobDependency
newJobDependency'  customize = (JobDependency <<< customize) { "jobId": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }



newtype JobDependencyList = JobDependencyList (Array JobDependency)
derive instance newtypeJobDependencyList :: Newtype JobDependencyList _
derive instance repGenericJobDependencyList :: Generic JobDependencyList _
instance showJobDependencyList :: Show JobDependencyList where
  show = genericShow
instance decodeJobDependencyList :: Decode JobDependencyList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobDependencyList :: Encode JobDependencyList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>An object representing an AWS Batch job.</p>
newtype JobDetail = JobDetail 
  { "jobName" :: (String)
  , "jobId" :: (String)
  , "jobQueue" :: (String)
  , "status" :: (JobStatus)
  , "attempts" :: NullOrUndefined.NullOrUndefined (AttemptDetails)
  , "statusReason" :: NullOrUndefined.NullOrUndefined (String)
  , "createdAt" :: NullOrUndefined.NullOrUndefined (Number)
  , "retryStrategy" :: NullOrUndefined.NullOrUndefined (RetryStrategy)
  , "startedAt" :: (Number)
  , "stoppedAt" :: NullOrUndefined.NullOrUndefined (Number)
  , "dependsOn" :: NullOrUndefined.NullOrUndefined (JobDependencyList)
  , "jobDefinition" :: (String)
  , "parameters" :: NullOrUndefined.NullOrUndefined (ParametersMap)
  , "container" :: NullOrUndefined.NullOrUndefined (ContainerDetail)
  , "arrayProperties" :: NullOrUndefined.NullOrUndefined (ArrayPropertiesDetail)
  }
derive instance newtypeJobDetail :: Newtype JobDetail _
derive instance repGenericJobDetail :: Generic JobDetail _
instance showJobDetail :: Show JobDetail where
  show = genericShow
instance decodeJobDetail :: Decode JobDetail where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobDetail :: Encode JobDetail where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs JobDetail from required parameters
newJobDetail :: String -> String -> String -> String -> Number -> JobStatus -> JobDetail
newJobDetail _jobDefinition _jobId _jobName _jobQueue _startedAt _status = JobDetail { "jobDefinition": _jobDefinition, "jobId": _jobId, "jobName": _jobName, "jobQueue": _jobQueue, "startedAt": _startedAt, "status": _status, "arrayProperties": (NullOrUndefined Nothing), "attempts": (NullOrUndefined Nothing), "container": (NullOrUndefined Nothing), "createdAt": (NullOrUndefined Nothing), "dependsOn": (NullOrUndefined Nothing), "parameters": (NullOrUndefined Nothing), "retryStrategy": (NullOrUndefined Nothing), "statusReason": (NullOrUndefined Nothing), "stoppedAt": (NullOrUndefined Nothing) }

-- | Constructs JobDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobDetail' :: String -> String -> String -> String -> Number -> JobStatus -> ( { "jobName" :: (String) , "jobId" :: (String) , "jobQueue" :: (String) , "status" :: (JobStatus) , "attempts" :: NullOrUndefined.NullOrUndefined (AttemptDetails) , "statusReason" :: NullOrUndefined.NullOrUndefined (String) , "createdAt" :: NullOrUndefined.NullOrUndefined (Number) , "retryStrategy" :: NullOrUndefined.NullOrUndefined (RetryStrategy) , "startedAt" :: (Number) , "stoppedAt" :: NullOrUndefined.NullOrUndefined (Number) , "dependsOn" :: NullOrUndefined.NullOrUndefined (JobDependencyList) , "jobDefinition" :: (String) , "parameters" :: NullOrUndefined.NullOrUndefined (ParametersMap) , "container" :: NullOrUndefined.NullOrUndefined (ContainerDetail) , "arrayProperties" :: NullOrUndefined.NullOrUndefined (ArrayPropertiesDetail) } -> {"jobName" :: (String) , "jobId" :: (String) , "jobQueue" :: (String) , "status" :: (JobStatus) , "attempts" :: NullOrUndefined.NullOrUndefined (AttemptDetails) , "statusReason" :: NullOrUndefined.NullOrUndefined (String) , "createdAt" :: NullOrUndefined.NullOrUndefined (Number) , "retryStrategy" :: NullOrUndefined.NullOrUndefined (RetryStrategy) , "startedAt" :: (Number) , "stoppedAt" :: NullOrUndefined.NullOrUndefined (Number) , "dependsOn" :: NullOrUndefined.NullOrUndefined (JobDependencyList) , "jobDefinition" :: (String) , "parameters" :: NullOrUndefined.NullOrUndefined (ParametersMap) , "container" :: NullOrUndefined.NullOrUndefined (ContainerDetail) , "arrayProperties" :: NullOrUndefined.NullOrUndefined (ArrayPropertiesDetail) } ) -> JobDetail
newJobDetail' _jobDefinition _jobId _jobName _jobQueue _startedAt _status customize = (JobDetail <<< customize) { "jobDefinition": _jobDefinition, "jobId": _jobId, "jobName": _jobName, "jobQueue": _jobQueue, "startedAt": _startedAt, "status": _status, "arrayProperties": (NullOrUndefined Nothing), "attempts": (NullOrUndefined Nothing), "container": (NullOrUndefined Nothing), "createdAt": (NullOrUndefined Nothing), "dependsOn": (NullOrUndefined Nothing), "parameters": (NullOrUndefined Nothing), "retryStrategy": (NullOrUndefined Nothing), "statusReason": (NullOrUndefined Nothing), "stoppedAt": (NullOrUndefined Nothing) }



newtype JobDetailList = JobDetailList (Array JobDetail)
derive instance newtypeJobDetailList :: Newtype JobDetailList _
derive instance repGenericJobDetailList :: Generic JobDetailList _
instance showJobDetailList :: Show JobDetailList where
  show = genericShow
instance decodeJobDetailList :: Decode JobDetailList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobDetailList :: Encode JobDetailList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>An object representing the details of an AWS Batch job queue.</p>
newtype JobQueueDetail = JobQueueDetail 
  { "jobQueueName" :: (String)
  , "jobQueueArn" :: (String)
  , "state" :: (JQState)
  , "status" :: NullOrUndefined.NullOrUndefined (JQStatus)
  , "statusReason" :: NullOrUndefined.NullOrUndefined (String)
  , "priority" :: (Int)
  , "computeEnvironmentOrder" :: (ComputeEnvironmentOrders)
  }
derive instance newtypeJobQueueDetail :: Newtype JobQueueDetail _
derive instance repGenericJobQueueDetail :: Generic JobQueueDetail _
instance showJobQueueDetail :: Show JobQueueDetail where
  show = genericShow
instance decodeJobQueueDetail :: Decode JobQueueDetail where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobQueueDetail :: Encode JobQueueDetail where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs JobQueueDetail from required parameters
newJobQueueDetail :: ComputeEnvironmentOrders -> String -> String -> Int -> JQState -> JobQueueDetail
newJobQueueDetail _computeEnvironmentOrder _jobQueueArn _jobQueueName _priority _state = JobQueueDetail { "computeEnvironmentOrder": _computeEnvironmentOrder, "jobQueueArn": _jobQueueArn, "jobQueueName": _jobQueueName, "priority": _priority, "state": _state, "status": (NullOrUndefined Nothing), "statusReason": (NullOrUndefined Nothing) }

-- | Constructs JobQueueDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobQueueDetail' :: ComputeEnvironmentOrders -> String -> String -> Int -> JQState -> ( { "jobQueueName" :: (String) , "jobQueueArn" :: (String) , "state" :: (JQState) , "status" :: NullOrUndefined.NullOrUndefined (JQStatus) , "statusReason" :: NullOrUndefined.NullOrUndefined (String) , "priority" :: (Int) , "computeEnvironmentOrder" :: (ComputeEnvironmentOrders) } -> {"jobQueueName" :: (String) , "jobQueueArn" :: (String) , "state" :: (JQState) , "status" :: NullOrUndefined.NullOrUndefined (JQStatus) , "statusReason" :: NullOrUndefined.NullOrUndefined (String) , "priority" :: (Int) , "computeEnvironmentOrder" :: (ComputeEnvironmentOrders) } ) -> JobQueueDetail
newJobQueueDetail' _computeEnvironmentOrder _jobQueueArn _jobQueueName _priority _state customize = (JobQueueDetail <<< customize) { "computeEnvironmentOrder": _computeEnvironmentOrder, "jobQueueArn": _jobQueueArn, "jobQueueName": _jobQueueName, "priority": _priority, "state": _state, "status": (NullOrUndefined Nothing), "statusReason": (NullOrUndefined Nothing) }



newtype JobQueueDetailList = JobQueueDetailList (Array JobQueueDetail)
derive instance newtypeJobQueueDetailList :: Newtype JobQueueDetailList _
derive instance repGenericJobQueueDetailList :: Generic JobQueueDetailList _
instance showJobQueueDetailList :: Show JobQueueDetailList where
  show = genericShow
instance decodeJobQueueDetailList :: Decode JobQueueDetailList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobQueueDetailList :: Encode JobQueueDetailList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype JobStatus = JobStatus String
derive instance newtypeJobStatus :: Newtype JobStatus _
derive instance repGenericJobStatus :: Generic JobStatus _
instance showJobStatus :: Show JobStatus where
  show = genericShow
instance decodeJobStatus :: Decode JobStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobStatus :: Encode JobStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>An object representing summary details of a job.</p>
newtype JobSummary = JobSummary 
  { "jobId" :: (String)
  , "jobName" :: (String)
  , "createdAt" :: NullOrUndefined.NullOrUndefined (Number)
  , "status" :: NullOrUndefined.NullOrUndefined (JobStatus)
  , "statusReason" :: NullOrUndefined.NullOrUndefined (String)
  , "startedAt" :: NullOrUndefined.NullOrUndefined (Number)
  , "stoppedAt" :: NullOrUndefined.NullOrUndefined (Number)
  , "container" :: NullOrUndefined.NullOrUndefined (ContainerSummary)
  , "arrayProperties" :: NullOrUndefined.NullOrUndefined (ArrayPropertiesSummary)
  }
derive instance newtypeJobSummary :: Newtype JobSummary _
derive instance repGenericJobSummary :: Generic JobSummary _
instance showJobSummary :: Show JobSummary where
  show = genericShow
instance decodeJobSummary :: Decode JobSummary where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobSummary :: Encode JobSummary where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs JobSummary from required parameters
newJobSummary :: String -> String -> JobSummary
newJobSummary _jobId _jobName = JobSummary { "jobId": _jobId, "jobName": _jobName, "arrayProperties": (NullOrUndefined Nothing), "container": (NullOrUndefined Nothing), "createdAt": (NullOrUndefined Nothing), "startedAt": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing), "statusReason": (NullOrUndefined Nothing), "stoppedAt": (NullOrUndefined Nothing) }

-- | Constructs JobSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobSummary' :: String -> String -> ( { "jobId" :: (String) , "jobName" :: (String) , "createdAt" :: NullOrUndefined.NullOrUndefined (Number) , "status" :: NullOrUndefined.NullOrUndefined (JobStatus) , "statusReason" :: NullOrUndefined.NullOrUndefined (String) , "startedAt" :: NullOrUndefined.NullOrUndefined (Number) , "stoppedAt" :: NullOrUndefined.NullOrUndefined (Number) , "container" :: NullOrUndefined.NullOrUndefined (ContainerSummary) , "arrayProperties" :: NullOrUndefined.NullOrUndefined (ArrayPropertiesSummary) } -> {"jobId" :: (String) , "jobName" :: (String) , "createdAt" :: NullOrUndefined.NullOrUndefined (Number) , "status" :: NullOrUndefined.NullOrUndefined (JobStatus) , "statusReason" :: NullOrUndefined.NullOrUndefined (String) , "startedAt" :: NullOrUndefined.NullOrUndefined (Number) , "stoppedAt" :: NullOrUndefined.NullOrUndefined (Number) , "container" :: NullOrUndefined.NullOrUndefined (ContainerSummary) , "arrayProperties" :: NullOrUndefined.NullOrUndefined (ArrayPropertiesSummary) } ) -> JobSummary
newJobSummary' _jobId _jobName customize = (JobSummary <<< customize) { "jobId": _jobId, "jobName": _jobName, "arrayProperties": (NullOrUndefined Nothing), "container": (NullOrUndefined Nothing), "createdAt": (NullOrUndefined Nothing), "startedAt": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing), "statusReason": (NullOrUndefined Nothing), "stoppedAt": (NullOrUndefined Nothing) }



newtype JobSummaryList = JobSummaryList (Array JobSummary)
derive instance newtypeJobSummaryList :: Newtype JobSummaryList _
derive instance repGenericJobSummaryList :: Generic JobSummaryList _
instance showJobSummaryList :: Show JobSummaryList where
  show = genericShow
instance decodeJobSummaryList :: Decode JobSummaryList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobSummaryList :: Encode JobSummaryList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>A key-value pair object.</p>
newtype KeyValuePair = KeyValuePair 
  { "name" :: NullOrUndefined.NullOrUndefined (String)
  , "value" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeKeyValuePair :: Newtype KeyValuePair _
derive instance repGenericKeyValuePair :: Generic KeyValuePair _
instance showKeyValuePair :: Show KeyValuePair where
  show = genericShow
instance decodeKeyValuePair :: Decode KeyValuePair where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeKeyValuePair :: Encode KeyValuePair where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs KeyValuePair from required parameters
newKeyValuePair :: KeyValuePair
newKeyValuePair  = KeyValuePair { "name": (NullOrUndefined Nothing), "value": (NullOrUndefined Nothing) }

-- | Constructs KeyValuePair's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKeyValuePair' :: ( { "name" :: NullOrUndefined.NullOrUndefined (String) , "value" :: NullOrUndefined.NullOrUndefined (String) } -> {"name" :: NullOrUndefined.NullOrUndefined (String) , "value" :: NullOrUndefined.NullOrUndefined (String) } ) -> KeyValuePair
newKeyValuePair'  customize = (KeyValuePair <<< customize) { "name": (NullOrUndefined Nothing), "value": (NullOrUndefined Nothing) }



newtype ListJobsRequest = ListJobsRequest 
  { "jobQueue" :: NullOrUndefined.NullOrUndefined (String)
  , "arrayJobId" :: NullOrUndefined.NullOrUndefined (String)
  , "jobStatus" :: NullOrUndefined.NullOrUndefined (JobStatus)
  , "maxResults" :: NullOrUndefined.NullOrUndefined (Int)
  , "nextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeListJobsRequest :: Newtype ListJobsRequest _
derive instance repGenericListJobsRequest :: Generic ListJobsRequest _
instance showListJobsRequest :: Show ListJobsRequest where
  show = genericShow
instance decodeListJobsRequest :: Decode ListJobsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListJobsRequest :: Encode ListJobsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListJobsRequest from required parameters
newListJobsRequest :: ListJobsRequest
newListJobsRequest  = ListJobsRequest { "arrayJobId": (NullOrUndefined Nothing), "jobQueue": (NullOrUndefined Nothing), "jobStatus": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs ListJobsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListJobsRequest' :: ( { "jobQueue" :: NullOrUndefined.NullOrUndefined (String) , "arrayJobId" :: NullOrUndefined.NullOrUndefined (String) , "jobStatus" :: NullOrUndefined.NullOrUndefined (JobStatus) , "maxResults" :: NullOrUndefined.NullOrUndefined (Int) , "nextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"jobQueue" :: NullOrUndefined.NullOrUndefined (String) , "arrayJobId" :: NullOrUndefined.NullOrUndefined (String) , "jobStatus" :: NullOrUndefined.NullOrUndefined (JobStatus) , "maxResults" :: NullOrUndefined.NullOrUndefined (Int) , "nextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> ListJobsRequest
newListJobsRequest'  customize = (ListJobsRequest <<< customize) { "arrayJobId": (NullOrUndefined Nothing), "jobQueue": (NullOrUndefined Nothing), "jobStatus": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype ListJobsResponse = ListJobsResponse 
  { "jobSummaryList" :: (JobSummaryList)
  , "nextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeListJobsResponse :: Newtype ListJobsResponse _
derive instance repGenericListJobsResponse :: Generic ListJobsResponse _
instance showListJobsResponse :: Show ListJobsResponse where
  show = genericShow
instance decodeListJobsResponse :: Decode ListJobsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListJobsResponse :: Encode ListJobsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListJobsResponse from required parameters
newListJobsResponse :: JobSummaryList -> ListJobsResponse
newListJobsResponse _jobSummaryList = ListJobsResponse { "jobSummaryList": _jobSummaryList, "nextToken": (NullOrUndefined Nothing) }

-- | Constructs ListJobsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListJobsResponse' :: JobSummaryList -> ( { "jobSummaryList" :: (JobSummaryList) , "nextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"jobSummaryList" :: (JobSummaryList) , "nextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> ListJobsResponse
newListJobsResponse' _jobSummaryList customize = (ListJobsResponse <<< customize) { "jobSummaryList": _jobSummaryList, "nextToken": (NullOrUndefined Nothing) }



-- | <p>Details on a Docker volume mount point that is used in a job's container properties.</p>
newtype MountPoint = MountPoint 
  { "containerPath" :: NullOrUndefined.NullOrUndefined (String)
  , "readOnly" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "sourceVolume" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeMountPoint :: Newtype MountPoint _
derive instance repGenericMountPoint :: Generic MountPoint _
instance showMountPoint :: Show MountPoint where
  show = genericShow
instance decodeMountPoint :: Decode MountPoint where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMountPoint :: Encode MountPoint where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs MountPoint from required parameters
newMountPoint :: MountPoint
newMountPoint  = MountPoint { "containerPath": (NullOrUndefined Nothing), "readOnly": (NullOrUndefined Nothing), "sourceVolume": (NullOrUndefined Nothing) }

-- | Constructs MountPoint's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMountPoint' :: ( { "containerPath" :: NullOrUndefined.NullOrUndefined (String) , "readOnly" :: NullOrUndefined.NullOrUndefined (Boolean) , "sourceVolume" :: NullOrUndefined.NullOrUndefined (String) } -> {"containerPath" :: NullOrUndefined.NullOrUndefined (String) , "readOnly" :: NullOrUndefined.NullOrUndefined (Boolean) , "sourceVolume" :: NullOrUndefined.NullOrUndefined (String) } ) -> MountPoint
newMountPoint'  customize = (MountPoint <<< customize) { "containerPath": (NullOrUndefined Nothing), "readOnly": (NullOrUndefined Nothing), "sourceVolume": (NullOrUndefined Nothing) }



newtype MountPoints = MountPoints (Array MountPoint)
derive instance newtypeMountPoints :: Newtype MountPoints _
derive instance repGenericMountPoints :: Generic MountPoints _
instance showMountPoints :: Show MountPoints where
  show = genericShow
instance decodeMountPoints :: Decode MountPoints where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMountPoints :: Encode MountPoints where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ParametersMap = ParametersMap (StrMap.StrMap String)
derive instance newtypeParametersMap :: Newtype ParametersMap _
derive instance repGenericParametersMap :: Generic ParametersMap _
instance showParametersMap :: Show ParametersMap where
  show = genericShow
instance decodeParametersMap :: Decode ParametersMap where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeParametersMap :: Encode ParametersMap where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype RegisterJobDefinitionRequest = RegisterJobDefinitionRequest 
  { "jobDefinitionName" :: (String)
  , "type" :: (JobDefinitionType)
  , "parameters" :: NullOrUndefined.NullOrUndefined (ParametersMap)
  , "containerProperties" :: NullOrUndefined.NullOrUndefined (ContainerProperties)
  , "retryStrategy" :: NullOrUndefined.NullOrUndefined (RetryStrategy)
  }
derive instance newtypeRegisterJobDefinitionRequest :: Newtype RegisterJobDefinitionRequest _
derive instance repGenericRegisterJobDefinitionRequest :: Generic RegisterJobDefinitionRequest _
instance showRegisterJobDefinitionRequest :: Show RegisterJobDefinitionRequest where
  show = genericShow
instance decodeRegisterJobDefinitionRequest :: Decode RegisterJobDefinitionRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRegisterJobDefinitionRequest :: Encode RegisterJobDefinitionRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RegisterJobDefinitionRequest from required parameters
newRegisterJobDefinitionRequest :: String -> JobDefinitionType -> RegisterJobDefinitionRequest
newRegisterJobDefinitionRequest _jobDefinitionName _type = RegisterJobDefinitionRequest { "jobDefinitionName": _jobDefinitionName, "type": _type, "containerProperties": (NullOrUndefined Nothing), "parameters": (NullOrUndefined Nothing), "retryStrategy": (NullOrUndefined Nothing) }

-- | Constructs RegisterJobDefinitionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterJobDefinitionRequest' :: String -> JobDefinitionType -> ( { "jobDefinitionName" :: (String) , "type" :: (JobDefinitionType) , "parameters" :: NullOrUndefined.NullOrUndefined (ParametersMap) , "containerProperties" :: NullOrUndefined.NullOrUndefined (ContainerProperties) , "retryStrategy" :: NullOrUndefined.NullOrUndefined (RetryStrategy) } -> {"jobDefinitionName" :: (String) , "type" :: (JobDefinitionType) , "parameters" :: NullOrUndefined.NullOrUndefined (ParametersMap) , "containerProperties" :: NullOrUndefined.NullOrUndefined (ContainerProperties) , "retryStrategy" :: NullOrUndefined.NullOrUndefined (RetryStrategy) } ) -> RegisterJobDefinitionRequest
newRegisterJobDefinitionRequest' _jobDefinitionName _type customize = (RegisterJobDefinitionRequest <<< customize) { "jobDefinitionName": _jobDefinitionName, "type": _type, "containerProperties": (NullOrUndefined Nothing), "parameters": (NullOrUndefined Nothing), "retryStrategy": (NullOrUndefined Nothing) }



newtype RegisterJobDefinitionResponse = RegisterJobDefinitionResponse 
  { "jobDefinitionName" :: (String)
  , "jobDefinitionArn" :: (String)
  , "revision" :: (Int)
  }
derive instance newtypeRegisterJobDefinitionResponse :: Newtype RegisterJobDefinitionResponse _
derive instance repGenericRegisterJobDefinitionResponse :: Generic RegisterJobDefinitionResponse _
instance showRegisterJobDefinitionResponse :: Show RegisterJobDefinitionResponse where
  show = genericShow
instance decodeRegisterJobDefinitionResponse :: Decode RegisterJobDefinitionResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRegisterJobDefinitionResponse :: Encode RegisterJobDefinitionResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RegisterJobDefinitionResponse from required parameters
newRegisterJobDefinitionResponse :: String -> String -> Int -> RegisterJobDefinitionResponse
newRegisterJobDefinitionResponse _jobDefinitionArn _jobDefinitionName _revision = RegisterJobDefinitionResponse { "jobDefinitionArn": _jobDefinitionArn, "jobDefinitionName": _jobDefinitionName, "revision": _revision }

-- | Constructs RegisterJobDefinitionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterJobDefinitionResponse' :: String -> String -> Int -> ( { "jobDefinitionName" :: (String) , "jobDefinitionArn" :: (String) , "revision" :: (Int) } -> {"jobDefinitionName" :: (String) , "jobDefinitionArn" :: (String) , "revision" :: (Int) } ) -> RegisterJobDefinitionResponse
newRegisterJobDefinitionResponse' _jobDefinitionArn _jobDefinitionName _revision customize = (RegisterJobDefinitionResponse <<< customize) { "jobDefinitionArn": _jobDefinitionArn, "jobDefinitionName": _jobDefinitionName, "revision": _revision }



-- | <p>The retry strategy associated with a job.</p>
newtype RetryStrategy = RetryStrategy 
  { "attempts" :: NullOrUndefined.NullOrUndefined (Int)
  }
derive instance newtypeRetryStrategy :: Newtype RetryStrategy _
derive instance repGenericRetryStrategy :: Generic RetryStrategy _
instance showRetryStrategy :: Show RetryStrategy where
  show = genericShow
instance decodeRetryStrategy :: Decode RetryStrategy where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRetryStrategy :: Encode RetryStrategy where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RetryStrategy from required parameters
newRetryStrategy :: RetryStrategy
newRetryStrategy  = RetryStrategy { "attempts": (NullOrUndefined Nothing) }

-- | Constructs RetryStrategy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRetryStrategy' :: ( { "attempts" :: NullOrUndefined.NullOrUndefined (Int) } -> {"attempts" :: NullOrUndefined.NullOrUndefined (Int) } ) -> RetryStrategy
newRetryStrategy'  customize = (RetryStrategy <<< customize) { "attempts": (NullOrUndefined Nothing) }



-- | <p>These errors are usually caused by a server issue.</p>
newtype ServerException = ServerException 
  { "message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeServerException :: Newtype ServerException _
derive instance repGenericServerException :: Generic ServerException _
instance showServerException :: Show ServerException where
  show = genericShow
instance decodeServerException :: Decode ServerException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServerException :: Encode ServerException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ServerException from required parameters
newServerException :: ServerException
newServerException  = ServerException { "message": (NullOrUndefined Nothing) }

-- | Constructs ServerException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServerException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (String) } -> {"message" :: NullOrUndefined.NullOrUndefined (String) } ) -> ServerException
newServerException'  customize = (ServerException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype StringList = StringList (Array String)
derive instance newtypeStringList :: Newtype StringList _
derive instance repGenericStringList :: Generic StringList _
instance showStringList :: Show StringList where
  show = genericShow
instance decodeStringList :: Decode StringList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStringList :: Encode StringList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype SubmitJobRequest = SubmitJobRequest 
  { "jobName" :: (String)
  , "jobQueue" :: (String)
  , "arrayProperties" :: NullOrUndefined.NullOrUndefined (ArrayProperties)
  , "dependsOn" :: NullOrUndefined.NullOrUndefined (JobDependencyList)
  , "jobDefinition" :: (String)
  , "parameters" :: NullOrUndefined.NullOrUndefined (ParametersMap)
  , "containerOverrides" :: NullOrUndefined.NullOrUndefined (ContainerOverrides)
  , "retryStrategy" :: NullOrUndefined.NullOrUndefined (RetryStrategy)
  }
derive instance newtypeSubmitJobRequest :: Newtype SubmitJobRequest _
derive instance repGenericSubmitJobRequest :: Generic SubmitJobRequest _
instance showSubmitJobRequest :: Show SubmitJobRequest where
  show = genericShow
instance decodeSubmitJobRequest :: Decode SubmitJobRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSubmitJobRequest :: Encode SubmitJobRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SubmitJobRequest from required parameters
newSubmitJobRequest :: String -> String -> String -> SubmitJobRequest
newSubmitJobRequest _jobDefinition _jobName _jobQueue = SubmitJobRequest { "jobDefinition": _jobDefinition, "jobName": _jobName, "jobQueue": _jobQueue, "arrayProperties": (NullOrUndefined Nothing), "containerOverrides": (NullOrUndefined Nothing), "dependsOn": (NullOrUndefined Nothing), "parameters": (NullOrUndefined Nothing), "retryStrategy": (NullOrUndefined Nothing) }

-- | Constructs SubmitJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSubmitJobRequest' :: String -> String -> String -> ( { "jobName" :: (String) , "jobQueue" :: (String) , "arrayProperties" :: NullOrUndefined.NullOrUndefined (ArrayProperties) , "dependsOn" :: NullOrUndefined.NullOrUndefined (JobDependencyList) , "jobDefinition" :: (String) , "parameters" :: NullOrUndefined.NullOrUndefined (ParametersMap) , "containerOverrides" :: NullOrUndefined.NullOrUndefined (ContainerOverrides) , "retryStrategy" :: NullOrUndefined.NullOrUndefined (RetryStrategy) } -> {"jobName" :: (String) , "jobQueue" :: (String) , "arrayProperties" :: NullOrUndefined.NullOrUndefined (ArrayProperties) , "dependsOn" :: NullOrUndefined.NullOrUndefined (JobDependencyList) , "jobDefinition" :: (String) , "parameters" :: NullOrUndefined.NullOrUndefined (ParametersMap) , "containerOverrides" :: NullOrUndefined.NullOrUndefined (ContainerOverrides) , "retryStrategy" :: NullOrUndefined.NullOrUndefined (RetryStrategy) } ) -> SubmitJobRequest
newSubmitJobRequest' _jobDefinition _jobName _jobQueue customize = (SubmitJobRequest <<< customize) { "jobDefinition": _jobDefinition, "jobName": _jobName, "jobQueue": _jobQueue, "arrayProperties": (NullOrUndefined Nothing), "containerOverrides": (NullOrUndefined Nothing), "dependsOn": (NullOrUndefined Nothing), "parameters": (NullOrUndefined Nothing), "retryStrategy": (NullOrUndefined Nothing) }



newtype SubmitJobResponse = SubmitJobResponse 
  { "jobName" :: (String)
  , "jobId" :: (String)
  }
derive instance newtypeSubmitJobResponse :: Newtype SubmitJobResponse _
derive instance repGenericSubmitJobResponse :: Generic SubmitJobResponse _
instance showSubmitJobResponse :: Show SubmitJobResponse where
  show = genericShow
instance decodeSubmitJobResponse :: Decode SubmitJobResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSubmitJobResponse :: Encode SubmitJobResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SubmitJobResponse from required parameters
newSubmitJobResponse :: String -> String -> SubmitJobResponse
newSubmitJobResponse _jobId _jobName = SubmitJobResponse { "jobId": _jobId, "jobName": _jobName }

-- | Constructs SubmitJobResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSubmitJobResponse' :: String -> String -> ( { "jobName" :: (String) , "jobId" :: (String) } -> {"jobName" :: (String) , "jobId" :: (String) } ) -> SubmitJobResponse
newSubmitJobResponse' _jobId _jobName customize = (SubmitJobResponse <<< customize) { "jobId": _jobId, "jobName": _jobName }



newtype TagsMap = TagsMap (StrMap.StrMap String)
derive instance newtypeTagsMap :: Newtype TagsMap _
derive instance repGenericTagsMap :: Generic TagsMap _
instance showTagsMap :: Show TagsMap where
  show = genericShow
instance decodeTagsMap :: Decode TagsMap where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTagsMap :: Encode TagsMap where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype TerminateJobRequest = TerminateJobRequest 
  { "jobId" :: (String)
  , "reason" :: (String)
  }
derive instance newtypeTerminateJobRequest :: Newtype TerminateJobRequest _
derive instance repGenericTerminateJobRequest :: Generic TerminateJobRequest _
instance showTerminateJobRequest :: Show TerminateJobRequest where
  show = genericShow
instance decodeTerminateJobRequest :: Decode TerminateJobRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTerminateJobRequest :: Encode TerminateJobRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs TerminateJobRequest from required parameters
newTerminateJobRequest :: String -> String -> TerminateJobRequest
newTerminateJobRequest _jobId _reason = TerminateJobRequest { "jobId": _jobId, "reason": _reason }

-- | Constructs TerminateJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTerminateJobRequest' :: String -> String -> ( { "jobId" :: (String) , "reason" :: (String) } -> {"jobId" :: (String) , "reason" :: (String) } ) -> TerminateJobRequest
newTerminateJobRequest' _jobId _reason customize = (TerminateJobRequest <<< customize) { "jobId": _jobId, "reason": _reason }



newtype TerminateJobResponse = TerminateJobResponse Types.NoArguments
derive instance newtypeTerminateJobResponse :: Newtype TerminateJobResponse _
derive instance repGenericTerminateJobResponse :: Generic TerminateJobResponse _
instance showTerminateJobResponse :: Show TerminateJobResponse where
  show = genericShow
instance decodeTerminateJobResponse :: Decode TerminateJobResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTerminateJobResponse :: Encode TerminateJobResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The <code>ulimit</code> settings to pass to the container.</p>
newtype Ulimit = Ulimit 
  { "hardLimit" :: (Int)
  , "name" :: (String)
  , "softLimit" :: (Int)
  }
derive instance newtypeUlimit :: Newtype Ulimit _
derive instance repGenericUlimit :: Generic Ulimit _
instance showUlimit :: Show Ulimit where
  show = genericShow
instance decodeUlimit :: Decode Ulimit where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUlimit :: Encode Ulimit where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Ulimit from required parameters
newUlimit :: Int -> String -> Int -> Ulimit
newUlimit _hardLimit _name _softLimit = Ulimit { "hardLimit": _hardLimit, "name": _name, "softLimit": _softLimit }

-- | Constructs Ulimit's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUlimit' :: Int -> String -> Int -> ( { "hardLimit" :: (Int) , "name" :: (String) , "softLimit" :: (Int) } -> {"hardLimit" :: (Int) , "name" :: (String) , "softLimit" :: (Int) } ) -> Ulimit
newUlimit' _hardLimit _name _softLimit customize = (Ulimit <<< customize) { "hardLimit": _hardLimit, "name": _name, "softLimit": _softLimit }



newtype Ulimits = Ulimits (Array Ulimit)
derive instance newtypeUlimits :: Newtype Ulimits _
derive instance repGenericUlimits :: Generic Ulimits _
instance showUlimits :: Show Ulimits where
  show = genericShow
instance decodeUlimits :: Decode Ulimits where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUlimits :: Encode Ulimits where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype UpdateComputeEnvironmentRequest = UpdateComputeEnvironmentRequest 
  { "computeEnvironment" :: (String)
  , "state" :: NullOrUndefined.NullOrUndefined (CEState)
  , "computeResources" :: NullOrUndefined.NullOrUndefined (ComputeResourceUpdate)
  , "serviceRole" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeUpdateComputeEnvironmentRequest :: Newtype UpdateComputeEnvironmentRequest _
derive instance repGenericUpdateComputeEnvironmentRequest :: Generic UpdateComputeEnvironmentRequest _
instance showUpdateComputeEnvironmentRequest :: Show UpdateComputeEnvironmentRequest where
  show = genericShow
instance decodeUpdateComputeEnvironmentRequest :: Decode UpdateComputeEnvironmentRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateComputeEnvironmentRequest :: Encode UpdateComputeEnvironmentRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateComputeEnvironmentRequest from required parameters
newUpdateComputeEnvironmentRequest :: String -> UpdateComputeEnvironmentRequest
newUpdateComputeEnvironmentRequest _computeEnvironment = UpdateComputeEnvironmentRequest { "computeEnvironment": _computeEnvironment, "computeResources": (NullOrUndefined Nothing), "serviceRole": (NullOrUndefined Nothing), "state": (NullOrUndefined Nothing) }

-- | Constructs UpdateComputeEnvironmentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateComputeEnvironmentRequest' :: String -> ( { "computeEnvironment" :: (String) , "state" :: NullOrUndefined.NullOrUndefined (CEState) , "computeResources" :: NullOrUndefined.NullOrUndefined (ComputeResourceUpdate) , "serviceRole" :: NullOrUndefined.NullOrUndefined (String) } -> {"computeEnvironment" :: (String) , "state" :: NullOrUndefined.NullOrUndefined (CEState) , "computeResources" :: NullOrUndefined.NullOrUndefined (ComputeResourceUpdate) , "serviceRole" :: NullOrUndefined.NullOrUndefined (String) } ) -> UpdateComputeEnvironmentRequest
newUpdateComputeEnvironmentRequest' _computeEnvironment customize = (UpdateComputeEnvironmentRequest <<< customize) { "computeEnvironment": _computeEnvironment, "computeResources": (NullOrUndefined Nothing), "serviceRole": (NullOrUndefined Nothing), "state": (NullOrUndefined Nothing) }



newtype UpdateComputeEnvironmentResponse = UpdateComputeEnvironmentResponse 
  { "computeEnvironmentName" :: NullOrUndefined.NullOrUndefined (String)
  , "computeEnvironmentArn" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeUpdateComputeEnvironmentResponse :: Newtype UpdateComputeEnvironmentResponse _
derive instance repGenericUpdateComputeEnvironmentResponse :: Generic UpdateComputeEnvironmentResponse _
instance showUpdateComputeEnvironmentResponse :: Show UpdateComputeEnvironmentResponse where
  show = genericShow
instance decodeUpdateComputeEnvironmentResponse :: Decode UpdateComputeEnvironmentResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateComputeEnvironmentResponse :: Encode UpdateComputeEnvironmentResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateComputeEnvironmentResponse from required parameters
newUpdateComputeEnvironmentResponse :: UpdateComputeEnvironmentResponse
newUpdateComputeEnvironmentResponse  = UpdateComputeEnvironmentResponse { "computeEnvironmentArn": (NullOrUndefined Nothing), "computeEnvironmentName": (NullOrUndefined Nothing) }

-- | Constructs UpdateComputeEnvironmentResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateComputeEnvironmentResponse' :: ( { "computeEnvironmentName" :: NullOrUndefined.NullOrUndefined (String) , "computeEnvironmentArn" :: NullOrUndefined.NullOrUndefined (String) } -> {"computeEnvironmentName" :: NullOrUndefined.NullOrUndefined (String) , "computeEnvironmentArn" :: NullOrUndefined.NullOrUndefined (String) } ) -> UpdateComputeEnvironmentResponse
newUpdateComputeEnvironmentResponse'  customize = (UpdateComputeEnvironmentResponse <<< customize) { "computeEnvironmentArn": (NullOrUndefined Nothing), "computeEnvironmentName": (NullOrUndefined Nothing) }



newtype UpdateJobQueueRequest = UpdateJobQueueRequest 
  { "jobQueue" :: (String)
  , "state" :: NullOrUndefined.NullOrUndefined (JQState)
  , "priority" :: NullOrUndefined.NullOrUndefined (Int)
  , "computeEnvironmentOrder" :: NullOrUndefined.NullOrUndefined (ComputeEnvironmentOrders)
  }
derive instance newtypeUpdateJobQueueRequest :: Newtype UpdateJobQueueRequest _
derive instance repGenericUpdateJobQueueRequest :: Generic UpdateJobQueueRequest _
instance showUpdateJobQueueRequest :: Show UpdateJobQueueRequest where
  show = genericShow
instance decodeUpdateJobQueueRequest :: Decode UpdateJobQueueRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateJobQueueRequest :: Encode UpdateJobQueueRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateJobQueueRequest from required parameters
newUpdateJobQueueRequest :: String -> UpdateJobQueueRequest
newUpdateJobQueueRequest _jobQueue = UpdateJobQueueRequest { "jobQueue": _jobQueue, "computeEnvironmentOrder": (NullOrUndefined Nothing), "priority": (NullOrUndefined Nothing), "state": (NullOrUndefined Nothing) }

-- | Constructs UpdateJobQueueRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateJobQueueRequest' :: String -> ( { "jobQueue" :: (String) , "state" :: NullOrUndefined.NullOrUndefined (JQState) , "priority" :: NullOrUndefined.NullOrUndefined (Int) , "computeEnvironmentOrder" :: NullOrUndefined.NullOrUndefined (ComputeEnvironmentOrders) } -> {"jobQueue" :: (String) , "state" :: NullOrUndefined.NullOrUndefined (JQState) , "priority" :: NullOrUndefined.NullOrUndefined (Int) , "computeEnvironmentOrder" :: NullOrUndefined.NullOrUndefined (ComputeEnvironmentOrders) } ) -> UpdateJobQueueRequest
newUpdateJobQueueRequest' _jobQueue customize = (UpdateJobQueueRequest <<< customize) { "jobQueue": _jobQueue, "computeEnvironmentOrder": (NullOrUndefined Nothing), "priority": (NullOrUndefined Nothing), "state": (NullOrUndefined Nothing) }



newtype UpdateJobQueueResponse = UpdateJobQueueResponse 
  { "jobQueueName" :: NullOrUndefined.NullOrUndefined (String)
  , "jobQueueArn" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeUpdateJobQueueResponse :: Newtype UpdateJobQueueResponse _
derive instance repGenericUpdateJobQueueResponse :: Generic UpdateJobQueueResponse _
instance showUpdateJobQueueResponse :: Show UpdateJobQueueResponse where
  show = genericShow
instance decodeUpdateJobQueueResponse :: Decode UpdateJobQueueResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateJobQueueResponse :: Encode UpdateJobQueueResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateJobQueueResponse from required parameters
newUpdateJobQueueResponse :: UpdateJobQueueResponse
newUpdateJobQueueResponse  = UpdateJobQueueResponse { "jobQueueArn": (NullOrUndefined Nothing), "jobQueueName": (NullOrUndefined Nothing) }

-- | Constructs UpdateJobQueueResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateJobQueueResponse' :: ( { "jobQueueName" :: NullOrUndefined.NullOrUndefined (String) , "jobQueueArn" :: NullOrUndefined.NullOrUndefined (String) } -> {"jobQueueName" :: NullOrUndefined.NullOrUndefined (String) , "jobQueueArn" :: NullOrUndefined.NullOrUndefined (String) } ) -> UpdateJobQueueResponse
newUpdateJobQueueResponse'  customize = (UpdateJobQueueResponse <<< customize) { "jobQueueArn": (NullOrUndefined Nothing), "jobQueueName": (NullOrUndefined Nothing) }



-- | <p>A data volume used in a job's container properties.</p>
newtype Volume = Volume 
  { "host" :: NullOrUndefined.NullOrUndefined (Host)
  , "name" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeVolume :: Newtype Volume _
derive instance repGenericVolume :: Generic Volume _
instance showVolume :: Show Volume where
  show = genericShow
instance decodeVolume :: Decode Volume where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeVolume :: Encode Volume where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Volume from required parameters
newVolume :: Volume
newVolume  = Volume { "host": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing) }

-- | Constructs Volume's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVolume' :: ( { "host" :: NullOrUndefined.NullOrUndefined (Host) , "name" :: NullOrUndefined.NullOrUndefined (String) } -> {"host" :: NullOrUndefined.NullOrUndefined (Host) , "name" :: NullOrUndefined.NullOrUndefined (String) } ) -> Volume
newVolume'  customize = (Volume <<< customize) { "host": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing) }



newtype Volumes = Volumes (Array Volume)
derive instance newtypeVolumes :: Newtype Volumes _
derive instance repGenericVolumes :: Generic Volumes _
instance showVolumes :: Show Volumes where
  show = genericShow
instance decodeVolumes :: Decode Volumes where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeVolumes :: Encode Volumes where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

