
module AWS.Batch.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


newtype ArrayJobDependency = ArrayJobDependency String
derive instance newtypeArrayJobDependency :: Newtype ArrayJobDependency _
derive instance repGenericArrayJobDependency :: Generic ArrayJobDependency _
instance showArrayJobDependency :: Show ArrayJobDependency where show = genericShow
instance decodeArrayJobDependency :: Decode ArrayJobDependency where decode = genericDecode options
instance encodeArrayJobDependency :: Encode ArrayJobDependency where encode = genericEncode options



newtype ArrayJobStatusSummary = ArrayJobStatusSummary (StrMap.StrMap Int)
derive instance newtypeArrayJobStatusSummary :: Newtype ArrayJobStatusSummary _
derive instance repGenericArrayJobStatusSummary :: Generic ArrayJobStatusSummary _
instance showArrayJobStatusSummary :: Show ArrayJobStatusSummary where show = genericShow
instance decodeArrayJobStatusSummary :: Decode ArrayJobStatusSummary where decode = genericDecode options
instance encodeArrayJobStatusSummary :: Encode ArrayJobStatusSummary where encode = genericEncode options



-- | <p>An object representing an AWS Batch array job.</p>
newtype ArrayProperties = ArrayProperties 
  { "size" :: Maybe (Int)
  }
derive instance newtypeArrayProperties :: Newtype ArrayProperties _
derive instance repGenericArrayProperties :: Generic ArrayProperties _
instance showArrayProperties :: Show ArrayProperties where show = genericShow
instance decodeArrayProperties :: Decode ArrayProperties where decode = genericDecode options
instance encodeArrayProperties :: Encode ArrayProperties where encode = genericEncode options

-- | Constructs ArrayProperties from required parameters
newArrayProperties :: ArrayProperties
newArrayProperties  = ArrayProperties { "size": Nothing }

-- | Constructs ArrayProperties's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newArrayProperties' :: ( { "size" :: Maybe (Int) } -> {"size" :: Maybe (Int) } ) -> ArrayProperties
newArrayProperties'  customize = (ArrayProperties <<< customize) { "size": Nothing }



-- | <p>An object representing the array properties of a job.</p>
newtype ArrayPropertiesDetail = ArrayPropertiesDetail 
  { "statusSummary" :: Maybe (ArrayJobStatusSummary)
  , "size" :: Maybe (Int)
  , "index" :: Maybe (Int)
  }
derive instance newtypeArrayPropertiesDetail :: Newtype ArrayPropertiesDetail _
derive instance repGenericArrayPropertiesDetail :: Generic ArrayPropertiesDetail _
instance showArrayPropertiesDetail :: Show ArrayPropertiesDetail where show = genericShow
instance decodeArrayPropertiesDetail :: Decode ArrayPropertiesDetail where decode = genericDecode options
instance encodeArrayPropertiesDetail :: Encode ArrayPropertiesDetail where encode = genericEncode options

-- | Constructs ArrayPropertiesDetail from required parameters
newArrayPropertiesDetail :: ArrayPropertiesDetail
newArrayPropertiesDetail  = ArrayPropertiesDetail { "index": Nothing, "size": Nothing, "statusSummary": Nothing }

-- | Constructs ArrayPropertiesDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newArrayPropertiesDetail' :: ( { "statusSummary" :: Maybe (ArrayJobStatusSummary) , "size" :: Maybe (Int) , "index" :: Maybe (Int) } -> {"statusSummary" :: Maybe (ArrayJobStatusSummary) , "size" :: Maybe (Int) , "index" :: Maybe (Int) } ) -> ArrayPropertiesDetail
newArrayPropertiesDetail'  customize = (ArrayPropertiesDetail <<< customize) { "index": Nothing, "size": Nothing, "statusSummary": Nothing }



-- | <p>An object representing the array properties of a job.</p>
newtype ArrayPropertiesSummary = ArrayPropertiesSummary 
  { "size" :: Maybe (Int)
  , "index" :: Maybe (Int)
  }
derive instance newtypeArrayPropertiesSummary :: Newtype ArrayPropertiesSummary _
derive instance repGenericArrayPropertiesSummary :: Generic ArrayPropertiesSummary _
instance showArrayPropertiesSummary :: Show ArrayPropertiesSummary where show = genericShow
instance decodeArrayPropertiesSummary :: Decode ArrayPropertiesSummary where decode = genericDecode options
instance encodeArrayPropertiesSummary :: Encode ArrayPropertiesSummary where encode = genericEncode options

-- | Constructs ArrayPropertiesSummary from required parameters
newArrayPropertiesSummary :: ArrayPropertiesSummary
newArrayPropertiesSummary  = ArrayPropertiesSummary { "index": Nothing, "size": Nothing }

-- | Constructs ArrayPropertiesSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newArrayPropertiesSummary' :: ( { "size" :: Maybe (Int) , "index" :: Maybe (Int) } -> {"size" :: Maybe (Int) , "index" :: Maybe (Int) } ) -> ArrayPropertiesSummary
newArrayPropertiesSummary'  customize = (ArrayPropertiesSummary <<< customize) { "index": Nothing, "size": Nothing }



-- | <p>An object representing the details of a container that is part of a job attempt.</p>
newtype AttemptContainerDetail = AttemptContainerDetail 
  { "containerInstanceArn" :: Maybe (String)
  , "taskArn" :: Maybe (String)
  , "exitCode" :: Maybe (Int)
  , "reason" :: Maybe (String)
  , "logStreamName" :: Maybe (String)
  }
derive instance newtypeAttemptContainerDetail :: Newtype AttemptContainerDetail _
derive instance repGenericAttemptContainerDetail :: Generic AttemptContainerDetail _
instance showAttemptContainerDetail :: Show AttemptContainerDetail where show = genericShow
instance decodeAttemptContainerDetail :: Decode AttemptContainerDetail where decode = genericDecode options
instance encodeAttemptContainerDetail :: Encode AttemptContainerDetail where encode = genericEncode options

-- | Constructs AttemptContainerDetail from required parameters
newAttemptContainerDetail :: AttemptContainerDetail
newAttemptContainerDetail  = AttemptContainerDetail { "containerInstanceArn": Nothing, "exitCode": Nothing, "logStreamName": Nothing, "reason": Nothing, "taskArn": Nothing }

-- | Constructs AttemptContainerDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttemptContainerDetail' :: ( { "containerInstanceArn" :: Maybe (String) , "taskArn" :: Maybe (String) , "exitCode" :: Maybe (Int) , "reason" :: Maybe (String) , "logStreamName" :: Maybe (String) } -> {"containerInstanceArn" :: Maybe (String) , "taskArn" :: Maybe (String) , "exitCode" :: Maybe (Int) , "reason" :: Maybe (String) , "logStreamName" :: Maybe (String) } ) -> AttemptContainerDetail
newAttemptContainerDetail'  customize = (AttemptContainerDetail <<< customize) { "containerInstanceArn": Nothing, "exitCode": Nothing, "logStreamName": Nothing, "reason": Nothing, "taskArn": Nothing }



-- | <p>An object representing a job attempt.</p>
newtype AttemptDetail = AttemptDetail 
  { "container" :: Maybe (AttemptContainerDetail)
  , "startedAt" :: Maybe (Number)
  , "stoppedAt" :: Maybe (Number)
  , "statusReason" :: Maybe (String)
  }
derive instance newtypeAttemptDetail :: Newtype AttemptDetail _
derive instance repGenericAttemptDetail :: Generic AttemptDetail _
instance showAttemptDetail :: Show AttemptDetail where show = genericShow
instance decodeAttemptDetail :: Decode AttemptDetail where decode = genericDecode options
instance encodeAttemptDetail :: Encode AttemptDetail where encode = genericEncode options

-- | Constructs AttemptDetail from required parameters
newAttemptDetail :: AttemptDetail
newAttemptDetail  = AttemptDetail { "container": Nothing, "startedAt": Nothing, "statusReason": Nothing, "stoppedAt": Nothing }

-- | Constructs AttemptDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttemptDetail' :: ( { "container" :: Maybe (AttemptContainerDetail) , "startedAt" :: Maybe (Number) , "stoppedAt" :: Maybe (Number) , "statusReason" :: Maybe (String) } -> {"container" :: Maybe (AttemptContainerDetail) , "startedAt" :: Maybe (Number) , "stoppedAt" :: Maybe (Number) , "statusReason" :: Maybe (String) } ) -> AttemptDetail
newAttemptDetail'  customize = (AttemptDetail <<< customize) { "container": Nothing, "startedAt": Nothing, "statusReason": Nothing, "stoppedAt": Nothing }



newtype AttemptDetails = AttemptDetails (Array AttemptDetail)
derive instance newtypeAttemptDetails :: Newtype AttemptDetails _
derive instance repGenericAttemptDetails :: Generic AttemptDetails _
instance showAttemptDetails :: Show AttemptDetails where show = genericShow
instance decodeAttemptDetails :: Decode AttemptDetails where decode = genericDecode options
instance encodeAttemptDetails :: Encode AttemptDetails where encode = genericEncode options



newtype CEState = CEState String
derive instance newtypeCEState :: Newtype CEState _
derive instance repGenericCEState :: Generic CEState _
instance showCEState :: Show CEState where show = genericShow
instance decodeCEState :: Decode CEState where decode = genericDecode options
instance encodeCEState :: Encode CEState where encode = genericEncode options



newtype CEStatus = CEStatus String
derive instance newtypeCEStatus :: Newtype CEStatus _
derive instance repGenericCEStatus :: Generic CEStatus _
instance showCEStatus :: Show CEStatus where show = genericShow
instance decodeCEStatus :: Decode CEStatus where decode = genericDecode options
instance encodeCEStatus :: Encode CEStatus where encode = genericEncode options



newtype CEType = CEType String
derive instance newtypeCEType :: Newtype CEType _
derive instance repGenericCEType :: Generic CEType _
instance showCEType :: Show CEType where show = genericShow
instance decodeCEType :: Decode CEType where decode = genericDecode options
instance encodeCEType :: Encode CEType where encode = genericEncode options



newtype CRType = CRType String
derive instance newtypeCRType :: Newtype CRType _
derive instance repGenericCRType :: Generic CRType _
instance showCRType :: Show CRType where show = genericShow
instance decodeCRType :: Decode CRType where decode = genericDecode options
instance encodeCRType :: Encode CRType where encode = genericEncode options



newtype CancelJobRequest = CancelJobRequest 
  { "jobId" :: (String)
  , "reason" :: (String)
  }
derive instance newtypeCancelJobRequest :: Newtype CancelJobRequest _
derive instance repGenericCancelJobRequest :: Generic CancelJobRequest _
instance showCancelJobRequest :: Show CancelJobRequest where show = genericShow
instance decodeCancelJobRequest :: Decode CancelJobRequest where decode = genericDecode options
instance encodeCancelJobRequest :: Encode CancelJobRequest where encode = genericEncode options

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
instance showCancelJobResponse :: Show CancelJobResponse where show = genericShow
instance decodeCancelJobResponse :: Decode CancelJobResponse where decode = genericDecode options
instance encodeCancelJobResponse :: Encode CancelJobResponse where encode = genericEncode options



-- | <p>These errors are usually caused by a client action, such as using an action or resource on behalf of a user that doesn't have permissions to use the action or resource, or specifying an identifier that is not valid. </p>
newtype ClientException = ClientException 
  { "message" :: Maybe (String)
  }
derive instance newtypeClientException :: Newtype ClientException _
derive instance repGenericClientException :: Generic ClientException _
instance showClientException :: Show ClientException where show = genericShow
instance decodeClientException :: Decode ClientException where decode = genericDecode options
instance encodeClientException :: Encode ClientException where encode = genericEncode options

-- | Constructs ClientException from required parameters
newClientException :: ClientException
newClientException  = ClientException { "message": Nothing }

-- | Constructs ClientException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newClientException' :: ( { "message" :: Maybe (String) } -> {"message" :: Maybe (String) } ) -> ClientException
newClientException'  customize = (ClientException <<< customize) { "message": Nothing }



-- | <p>An object representing an AWS Batch compute environment.</p>
newtype ComputeEnvironmentDetail = ComputeEnvironmentDetail 
  { "computeEnvironmentName" :: (String)
  , "computeEnvironmentArn" :: (String)
  , "ecsClusterArn" :: (String)
  , "type" :: Maybe (CEType)
  , "state" :: Maybe (CEState)
  , "status" :: Maybe (CEStatus)
  , "statusReason" :: Maybe (String)
  , "computeResources" :: Maybe (ComputeResource)
  , "serviceRole" :: Maybe (String)
  }
derive instance newtypeComputeEnvironmentDetail :: Newtype ComputeEnvironmentDetail _
derive instance repGenericComputeEnvironmentDetail :: Generic ComputeEnvironmentDetail _
instance showComputeEnvironmentDetail :: Show ComputeEnvironmentDetail where show = genericShow
instance decodeComputeEnvironmentDetail :: Decode ComputeEnvironmentDetail where decode = genericDecode options
instance encodeComputeEnvironmentDetail :: Encode ComputeEnvironmentDetail where encode = genericEncode options

-- | Constructs ComputeEnvironmentDetail from required parameters
newComputeEnvironmentDetail :: String -> String -> String -> ComputeEnvironmentDetail
newComputeEnvironmentDetail _computeEnvironmentArn _computeEnvironmentName _ecsClusterArn = ComputeEnvironmentDetail { "computeEnvironmentArn": _computeEnvironmentArn, "computeEnvironmentName": _computeEnvironmentName, "ecsClusterArn": _ecsClusterArn, "computeResources": Nothing, "serviceRole": Nothing, "state": Nothing, "status": Nothing, "statusReason": Nothing, "type": Nothing }

-- | Constructs ComputeEnvironmentDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newComputeEnvironmentDetail' :: String -> String -> String -> ( { "computeEnvironmentName" :: (String) , "computeEnvironmentArn" :: (String) , "ecsClusterArn" :: (String) , "type" :: Maybe (CEType) , "state" :: Maybe (CEState) , "status" :: Maybe (CEStatus) , "statusReason" :: Maybe (String) , "computeResources" :: Maybe (ComputeResource) , "serviceRole" :: Maybe (String) } -> {"computeEnvironmentName" :: (String) , "computeEnvironmentArn" :: (String) , "ecsClusterArn" :: (String) , "type" :: Maybe (CEType) , "state" :: Maybe (CEState) , "status" :: Maybe (CEStatus) , "statusReason" :: Maybe (String) , "computeResources" :: Maybe (ComputeResource) , "serviceRole" :: Maybe (String) } ) -> ComputeEnvironmentDetail
newComputeEnvironmentDetail' _computeEnvironmentArn _computeEnvironmentName _ecsClusterArn customize = (ComputeEnvironmentDetail <<< customize) { "computeEnvironmentArn": _computeEnvironmentArn, "computeEnvironmentName": _computeEnvironmentName, "ecsClusterArn": _ecsClusterArn, "computeResources": Nothing, "serviceRole": Nothing, "state": Nothing, "status": Nothing, "statusReason": Nothing, "type": Nothing }



newtype ComputeEnvironmentDetailList = ComputeEnvironmentDetailList (Array ComputeEnvironmentDetail)
derive instance newtypeComputeEnvironmentDetailList :: Newtype ComputeEnvironmentDetailList _
derive instance repGenericComputeEnvironmentDetailList :: Generic ComputeEnvironmentDetailList _
instance showComputeEnvironmentDetailList :: Show ComputeEnvironmentDetailList where show = genericShow
instance decodeComputeEnvironmentDetailList :: Decode ComputeEnvironmentDetailList where decode = genericDecode options
instance encodeComputeEnvironmentDetailList :: Encode ComputeEnvironmentDetailList where encode = genericEncode options



-- | <p>The order in which compute environments are tried for job placement within a queue. Compute environments are tried in ascending order. For example, if two compute environments are associated with a job queue, the compute environment with a lower order integer value is tried for job placement first.</p>
newtype ComputeEnvironmentOrder = ComputeEnvironmentOrder 
  { "order" :: (Int)
  , "computeEnvironment" :: (String)
  }
derive instance newtypeComputeEnvironmentOrder :: Newtype ComputeEnvironmentOrder _
derive instance repGenericComputeEnvironmentOrder :: Generic ComputeEnvironmentOrder _
instance showComputeEnvironmentOrder :: Show ComputeEnvironmentOrder where show = genericShow
instance decodeComputeEnvironmentOrder :: Decode ComputeEnvironmentOrder where decode = genericDecode options
instance encodeComputeEnvironmentOrder :: Encode ComputeEnvironmentOrder where encode = genericEncode options

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
instance showComputeEnvironmentOrders :: Show ComputeEnvironmentOrders where show = genericShow
instance decodeComputeEnvironmentOrders :: Decode ComputeEnvironmentOrders where decode = genericDecode options
instance encodeComputeEnvironmentOrders :: Encode ComputeEnvironmentOrders where encode = genericEncode options



-- | <p>An object representing an AWS Batch compute resource.</p>
newtype ComputeResource = ComputeResource 
  { "type" :: (CRType)
  , "minvCpus" :: (Int)
  , "maxvCpus" :: (Int)
  , "desiredvCpus" :: Maybe (Int)
  , "instanceTypes" :: (StringList)
  , "imageId" :: Maybe (String)
  , "subnets" :: (StringList)
  , "securityGroupIds" :: (StringList)
  , "ec2KeyPair" :: Maybe (String)
  , "instanceRole" :: (String)
  , "tags" :: Maybe (TagsMap)
  , "bidPercentage" :: Maybe (Int)
  , "spotIamFleetRole" :: Maybe (String)
  }
derive instance newtypeComputeResource :: Newtype ComputeResource _
derive instance repGenericComputeResource :: Generic ComputeResource _
instance showComputeResource :: Show ComputeResource where show = genericShow
instance decodeComputeResource :: Decode ComputeResource where decode = genericDecode options
instance encodeComputeResource :: Encode ComputeResource where encode = genericEncode options

-- | Constructs ComputeResource from required parameters
newComputeResource :: String -> StringList -> Int -> Int -> StringList -> StringList -> CRType -> ComputeResource
newComputeResource _instanceRole _instanceTypes _maxvCpus _minvCpus _securityGroupIds _subnets _type = ComputeResource { "instanceRole": _instanceRole, "instanceTypes": _instanceTypes, "maxvCpus": _maxvCpus, "minvCpus": _minvCpus, "securityGroupIds": _securityGroupIds, "subnets": _subnets, "type": _type, "bidPercentage": Nothing, "desiredvCpus": Nothing, "ec2KeyPair": Nothing, "imageId": Nothing, "spotIamFleetRole": Nothing, "tags": Nothing }

-- | Constructs ComputeResource's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newComputeResource' :: String -> StringList -> Int -> Int -> StringList -> StringList -> CRType -> ( { "type" :: (CRType) , "minvCpus" :: (Int) , "maxvCpus" :: (Int) , "desiredvCpus" :: Maybe (Int) , "instanceTypes" :: (StringList) , "imageId" :: Maybe (String) , "subnets" :: (StringList) , "securityGroupIds" :: (StringList) , "ec2KeyPair" :: Maybe (String) , "instanceRole" :: (String) , "tags" :: Maybe (TagsMap) , "bidPercentage" :: Maybe (Int) , "spotIamFleetRole" :: Maybe (String) } -> {"type" :: (CRType) , "minvCpus" :: (Int) , "maxvCpus" :: (Int) , "desiredvCpus" :: Maybe (Int) , "instanceTypes" :: (StringList) , "imageId" :: Maybe (String) , "subnets" :: (StringList) , "securityGroupIds" :: (StringList) , "ec2KeyPair" :: Maybe (String) , "instanceRole" :: (String) , "tags" :: Maybe (TagsMap) , "bidPercentage" :: Maybe (Int) , "spotIamFleetRole" :: Maybe (String) } ) -> ComputeResource
newComputeResource' _instanceRole _instanceTypes _maxvCpus _minvCpus _securityGroupIds _subnets _type customize = (ComputeResource <<< customize) { "instanceRole": _instanceRole, "instanceTypes": _instanceTypes, "maxvCpus": _maxvCpus, "minvCpus": _minvCpus, "securityGroupIds": _securityGroupIds, "subnets": _subnets, "type": _type, "bidPercentage": Nothing, "desiredvCpus": Nothing, "ec2KeyPair": Nothing, "imageId": Nothing, "spotIamFleetRole": Nothing, "tags": Nothing }



-- | <p>An object representing the attributes of a compute environment that can be updated.</p>
newtype ComputeResourceUpdate = ComputeResourceUpdate 
  { "minvCpus" :: Maybe (Int)
  , "maxvCpus" :: Maybe (Int)
  , "desiredvCpus" :: Maybe (Int)
  }
derive instance newtypeComputeResourceUpdate :: Newtype ComputeResourceUpdate _
derive instance repGenericComputeResourceUpdate :: Generic ComputeResourceUpdate _
instance showComputeResourceUpdate :: Show ComputeResourceUpdate where show = genericShow
instance decodeComputeResourceUpdate :: Decode ComputeResourceUpdate where decode = genericDecode options
instance encodeComputeResourceUpdate :: Encode ComputeResourceUpdate where encode = genericEncode options

-- | Constructs ComputeResourceUpdate from required parameters
newComputeResourceUpdate :: ComputeResourceUpdate
newComputeResourceUpdate  = ComputeResourceUpdate { "desiredvCpus": Nothing, "maxvCpus": Nothing, "minvCpus": Nothing }

-- | Constructs ComputeResourceUpdate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newComputeResourceUpdate' :: ( { "minvCpus" :: Maybe (Int) , "maxvCpus" :: Maybe (Int) , "desiredvCpus" :: Maybe (Int) } -> {"minvCpus" :: Maybe (Int) , "maxvCpus" :: Maybe (Int) , "desiredvCpus" :: Maybe (Int) } ) -> ComputeResourceUpdate
newComputeResourceUpdate'  customize = (ComputeResourceUpdate <<< customize) { "desiredvCpus": Nothing, "maxvCpus": Nothing, "minvCpus": Nothing }



-- | <p>An object representing the details of a container that is part of a job.</p>
newtype ContainerDetail = ContainerDetail 
  { "image" :: Maybe (String)
  , "vcpus" :: Maybe (Int)
  , "memory" :: Maybe (Int)
  , "command" :: Maybe (StringList)
  , "jobRoleArn" :: Maybe (String)
  , "volumes" :: Maybe (Volumes)
  , "environment" :: Maybe (EnvironmentVariables)
  , "mountPoints" :: Maybe (MountPoints)
  , "readonlyRootFilesystem" :: Maybe (Boolean)
  , "ulimits" :: Maybe (Ulimits)
  , "privileged" :: Maybe (Boolean)
  , "user" :: Maybe (String)
  , "exitCode" :: Maybe (Int)
  , "reason" :: Maybe (String)
  , "containerInstanceArn" :: Maybe (String)
  , "taskArn" :: Maybe (String)
  , "logStreamName" :: Maybe (String)
  }
derive instance newtypeContainerDetail :: Newtype ContainerDetail _
derive instance repGenericContainerDetail :: Generic ContainerDetail _
instance showContainerDetail :: Show ContainerDetail where show = genericShow
instance decodeContainerDetail :: Decode ContainerDetail where decode = genericDecode options
instance encodeContainerDetail :: Encode ContainerDetail where encode = genericEncode options

-- | Constructs ContainerDetail from required parameters
newContainerDetail :: ContainerDetail
newContainerDetail  = ContainerDetail { "command": Nothing, "containerInstanceArn": Nothing, "environment": Nothing, "exitCode": Nothing, "image": Nothing, "jobRoleArn": Nothing, "logStreamName": Nothing, "memory": Nothing, "mountPoints": Nothing, "privileged": Nothing, "readonlyRootFilesystem": Nothing, "reason": Nothing, "taskArn": Nothing, "ulimits": Nothing, "user": Nothing, "vcpus": Nothing, "volumes": Nothing }

-- | Constructs ContainerDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContainerDetail' :: ( { "image" :: Maybe (String) , "vcpus" :: Maybe (Int) , "memory" :: Maybe (Int) , "command" :: Maybe (StringList) , "jobRoleArn" :: Maybe (String) , "volumes" :: Maybe (Volumes) , "environment" :: Maybe (EnvironmentVariables) , "mountPoints" :: Maybe (MountPoints) , "readonlyRootFilesystem" :: Maybe (Boolean) , "ulimits" :: Maybe (Ulimits) , "privileged" :: Maybe (Boolean) , "user" :: Maybe (String) , "exitCode" :: Maybe (Int) , "reason" :: Maybe (String) , "containerInstanceArn" :: Maybe (String) , "taskArn" :: Maybe (String) , "logStreamName" :: Maybe (String) } -> {"image" :: Maybe (String) , "vcpus" :: Maybe (Int) , "memory" :: Maybe (Int) , "command" :: Maybe (StringList) , "jobRoleArn" :: Maybe (String) , "volumes" :: Maybe (Volumes) , "environment" :: Maybe (EnvironmentVariables) , "mountPoints" :: Maybe (MountPoints) , "readonlyRootFilesystem" :: Maybe (Boolean) , "ulimits" :: Maybe (Ulimits) , "privileged" :: Maybe (Boolean) , "user" :: Maybe (String) , "exitCode" :: Maybe (Int) , "reason" :: Maybe (String) , "containerInstanceArn" :: Maybe (String) , "taskArn" :: Maybe (String) , "logStreamName" :: Maybe (String) } ) -> ContainerDetail
newContainerDetail'  customize = (ContainerDetail <<< customize) { "command": Nothing, "containerInstanceArn": Nothing, "environment": Nothing, "exitCode": Nothing, "image": Nothing, "jobRoleArn": Nothing, "logStreamName": Nothing, "memory": Nothing, "mountPoints": Nothing, "privileged": Nothing, "readonlyRootFilesystem": Nothing, "reason": Nothing, "taskArn": Nothing, "ulimits": Nothing, "user": Nothing, "vcpus": Nothing, "volumes": Nothing }



-- | <p>The overrides that should be sent to a container.</p>
newtype ContainerOverrides = ContainerOverrides 
  { "vcpus" :: Maybe (Int)
  , "memory" :: Maybe (Int)
  , "command" :: Maybe (StringList)
  , "environment" :: Maybe (EnvironmentVariables)
  }
derive instance newtypeContainerOverrides :: Newtype ContainerOverrides _
derive instance repGenericContainerOverrides :: Generic ContainerOverrides _
instance showContainerOverrides :: Show ContainerOverrides where show = genericShow
instance decodeContainerOverrides :: Decode ContainerOverrides where decode = genericDecode options
instance encodeContainerOverrides :: Encode ContainerOverrides where encode = genericEncode options

-- | Constructs ContainerOverrides from required parameters
newContainerOverrides :: ContainerOverrides
newContainerOverrides  = ContainerOverrides { "command": Nothing, "environment": Nothing, "memory": Nothing, "vcpus": Nothing }

-- | Constructs ContainerOverrides's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContainerOverrides' :: ( { "vcpus" :: Maybe (Int) , "memory" :: Maybe (Int) , "command" :: Maybe (StringList) , "environment" :: Maybe (EnvironmentVariables) } -> {"vcpus" :: Maybe (Int) , "memory" :: Maybe (Int) , "command" :: Maybe (StringList) , "environment" :: Maybe (EnvironmentVariables) } ) -> ContainerOverrides
newContainerOverrides'  customize = (ContainerOverrides <<< customize) { "command": Nothing, "environment": Nothing, "memory": Nothing, "vcpus": Nothing }



-- | <p>Container properties are used in job definitions to describe the container that is launched as part of a job.</p>
newtype ContainerProperties = ContainerProperties 
  { "image" :: (String)
  , "vcpus" :: (Int)
  , "memory" :: (Int)
  , "command" :: Maybe (StringList)
  , "jobRoleArn" :: Maybe (String)
  , "volumes" :: Maybe (Volumes)
  , "environment" :: Maybe (EnvironmentVariables)
  , "mountPoints" :: Maybe (MountPoints)
  , "readonlyRootFilesystem" :: Maybe (Boolean)
  , "privileged" :: Maybe (Boolean)
  , "ulimits" :: Maybe (Ulimits)
  , "user" :: Maybe (String)
  }
derive instance newtypeContainerProperties :: Newtype ContainerProperties _
derive instance repGenericContainerProperties :: Generic ContainerProperties _
instance showContainerProperties :: Show ContainerProperties where show = genericShow
instance decodeContainerProperties :: Decode ContainerProperties where decode = genericDecode options
instance encodeContainerProperties :: Encode ContainerProperties where encode = genericEncode options

-- | Constructs ContainerProperties from required parameters
newContainerProperties :: String -> Int -> Int -> ContainerProperties
newContainerProperties _image _memory _vcpus = ContainerProperties { "image": _image, "memory": _memory, "vcpus": _vcpus, "command": Nothing, "environment": Nothing, "jobRoleArn": Nothing, "mountPoints": Nothing, "privileged": Nothing, "readonlyRootFilesystem": Nothing, "ulimits": Nothing, "user": Nothing, "volumes": Nothing }

-- | Constructs ContainerProperties's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContainerProperties' :: String -> Int -> Int -> ( { "image" :: (String) , "vcpus" :: (Int) , "memory" :: (Int) , "command" :: Maybe (StringList) , "jobRoleArn" :: Maybe (String) , "volumes" :: Maybe (Volumes) , "environment" :: Maybe (EnvironmentVariables) , "mountPoints" :: Maybe (MountPoints) , "readonlyRootFilesystem" :: Maybe (Boolean) , "privileged" :: Maybe (Boolean) , "ulimits" :: Maybe (Ulimits) , "user" :: Maybe (String) } -> {"image" :: (String) , "vcpus" :: (Int) , "memory" :: (Int) , "command" :: Maybe (StringList) , "jobRoleArn" :: Maybe (String) , "volumes" :: Maybe (Volumes) , "environment" :: Maybe (EnvironmentVariables) , "mountPoints" :: Maybe (MountPoints) , "readonlyRootFilesystem" :: Maybe (Boolean) , "privileged" :: Maybe (Boolean) , "ulimits" :: Maybe (Ulimits) , "user" :: Maybe (String) } ) -> ContainerProperties
newContainerProperties' _image _memory _vcpus customize = (ContainerProperties <<< customize) { "image": _image, "memory": _memory, "vcpus": _vcpus, "command": Nothing, "environment": Nothing, "jobRoleArn": Nothing, "mountPoints": Nothing, "privileged": Nothing, "readonlyRootFilesystem": Nothing, "ulimits": Nothing, "user": Nothing, "volumes": Nothing }



-- | <p>An object representing summary details of a container within a job.</p>
newtype ContainerSummary = ContainerSummary 
  { "exitCode" :: Maybe (Int)
  , "reason" :: Maybe (String)
  }
derive instance newtypeContainerSummary :: Newtype ContainerSummary _
derive instance repGenericContainerSummary :: Generic ContainerSummary _
instance showContainerSummary :: Show ContainerSummary where show = genericShow
instance decodeContainerSummary :: Decode ContainerSummary where decode = genericDecode options
instance encodeContainerSummary :: Encode ContainerSummary where encode = genericEncode options

-- | Constructs ContainerSummary from required parameters
newContainerSummary :: ContainerSummary
newContainerSummary  = ContainerSummary { "exitCode": Nothing, "reason": Nothing }

-- | Constructs ContainerSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContainerSummary' :: ( { "exitCode" :: Maybe (Int) , "reason" :: Maybe (String) } -> {"exitCode" :: Maybe (Int) , "reason" :: Maybe (String) } ) -> ContainerSummary
newContainerSummary'  customize = (ContainerSummary <<< customize) { "exitCode": Nothing, "reason": Nothing }



newtype CreateComputeEnvironmentRequest = CreateComputeEnvironmentRequest 
  { "computeEnvironmentName" :: (String)
  , "type" :: (CEType)
  , "state" :: Maybe (CEState)
  , "computeResources" :: Maybe (ComputeResource)
  , "serviceRole" :: (String)
  }
derive instance newtypeCreateComputeEnvironmentRequest :: Newtype CreateComputeEnvironmentRequest _
derive instance repGenericCreateComputeEnvironmentRequest :: Generic CreateComputeEnvironmentRequest _
instance showCreateComputeEnvironmentRequest :: Show CreateComputeEnvironmentRequest where show = genericShow
instance decodeCreateComputeEnvironmentRequest :: Decode CreateComputeEnvironmentRequest where decode = genericDecode options
instance encodeCreateComputeEnvironmentRequest :: Encode CreateComputeEnvironmentRequest where encode = genericEncode options

-- | Constructs CreateComputeEnvironmentRequest from required parameters
newCreateComputeEnvironmentRequest :: String -> String -> CEType -> CreateComputeEnvironmentRequest
newCreateComputeEnvironmentRequest _computeEnvironmentName _serviceRole _type = CreateComputeEnvironmentRequest { "computeEnvironmentName": _computeEnvironmentName, "serviceRole": _serviceRole, "type": _type, "computeResources": Nothing, "state": Nothing }

-- | Constructs CreateComputeEnvironmentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateComputeEnvironmentRequest' :: String -> String -> CEType -> ( { "computeEnvironmentName" :: (String) , "type" :: (CEType) , "state" :: Maybe (CEState) , "computeResources" :: Maybe (ComputeResource) , "serviceRole" :: (String) } -> {"computeEnvironmentName" :: (String) , "type" :: (CEType) , "state" :: Maybe (CEState) , "computeResources" :: Maybe (ComputeResource) , "serviceRole" :: (String) } ) -> CreateComputeEnvironmentRequest
newCreateComputeEnvironmentRequest' _computeEnvironmentName _serviceRole _type customize = (CreateComputeEnvironmentRequest <<< customize) { "computeEnvironmentName": _computeEnvironmentName, "serviceRole": _serviceRole, "type": _type, "computeResources": Nothing, "state": Nothing }



newtype CreateComputeEnvironmentResponse = CreateComputeEnvironmentResponse 
  { "computeEnvironmentName" :: Maybe (String)
  , "computeEnvironmentArn" :: Maybe (String)
  }
derive instance newtypeCreateComputeEnvironmentResponse :: Newtype CreateComputeEnvironmentResponse _
derive instance repGenericCreateComputeEnvironmentResponse :: Generic CreateComputeEnvironmentResponse _
instance showCreateComputeEnvironmentResponse :: Show CreateComputeEnvironmentResponse where show = genericShow
instance decodeCreateComputeEnvironmentResponse :: Decode CreateComputeEnvironmentResponse where decode = genericDecode options
instance encodeCreateComputeEnvironmentResponse :: Encode CreateComputeEnvironmentResponse where encode = genericEncode options

-- | Constructs CreateComputeEnvironmentResponse from required parameters
newCreateComputeEnvironmentResponse :: CreateComputeEnvironmentResponse
newCreateComputeEnvironmentResponse  = CreateComputeEnvironmentResponse { "computeEnvironmentArn": Nothing, "computeEnvironmentName": Nothing }

-- | Constructs CreateComputeEnvironmentResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateComputeEnvironmentResponse' :: ( { "computeEnvironmentName" :: Maybe (String) , "computeEnvironmentArn" :: Maybe (String) } -> {"computeEnvironmentName" :: Maybe (String) , "computeEnvironmentArn" :: Maybe (String) } ) -> CreateComputeEnvironmentResponse
newCreateComputeEnvironmentResponse'  customize = (CreateComputeEnvironmentResponse <<< customize) { "computeEnvironmentArn": Nothing, "computeEnvironmentName": Nothing }



newtype CreateJobQueueRequest = CreateJobQueueRequest 
  { "jobQueueName" :: (String)
  , "state" :: Maybe (JQState)
  , "priority" :: (Int)
  , "computeEnvironmentOrder" :: (ComputeEnvironmentOrders)
  }
derive instance newtypeCreateJobQueueRequest :: Newtype CreateJobQueueRequest _
derive instance repGenericCreateJobQueueRequest :: Generic CreateJobQueueRequest _
instance showCreateJobQueueRequest :: Show CreateJobQueueRequest where show = genericShow
instance decodeCreateJobQueueRequest :: Decode CreateJobQueueRequest where decode = genericDecode options
instance encodeCreateJobQueueRequest :: Encode CreateJobQueueRequest where encode = genericEncode options

-- | Constructs CreateJobQueueRequest from required parameters
newCreateJobQueueRequest :: ComputeEnvironmentOrders -> String -> Int -> CreateJobQueueRequest
newCreateJobQueueRequest _computeEnvironmentOrder _jobQueueName _priority = CreateJobQueueRequest { "computeEnvironmentOrder": _computeEnvironmentOrder, "jobQueueName": _jobQueueName, "priority": _priority, "state": Nothing }

-- | Constructs CreateJobQueueRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateJobQueueRequest' :: ComputeEnvironmentOrders -> String -> Int -> ( { "jobQueueName" :: (String) , "state" :: Maybe (JQState) , "priority" :: (Int) , "computeEnvironmentOrder" :: (ComputeEnvironmentOrders) } -> {"jobQueueName" :: (String) , "state" :: Maybe (JQState) , "priority" :: (Int) , "computeEnvironmentOrder" :: (ComputeEnvironmentOrders) } ) -> CreateJobQueueRequest
newCreateJobQueueRequest' _computeEnvironmentOrder _jobQueueName _priority customize = (CreateJobQueueRequest <<< customize) { "computeEnvironmentOrder": _computeEnvironmentOrder, "jobQueueName": _jobQueueName, "priority": _priority, "state": Nothing }



newtype CreateJobQueueResponse = CreateJobQueueResponse 
  { "jobQueueName" :: (String)
  , "jobQueueArn" :: (String)
  }
derive instance newtypeCreateJobQueueResponse :: Newtype CreateJobQueueResponse _
derive instance repGenericCreateJobQueueResponse :: Generic CreateJobQueueResponse _
instance showCreateJobQueueResponse :: Show CreateJobQueueResponse where show = genericShow
instance decodeCreateJobQueueResponse :: Decode CreateJobQueueResponse where decode = genericDecode options
instance encodeCreateJobQueueResponse :: Encode CreateJobQueueResponse where encode = genericEncode options

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
instance showDeleteComputeEnvironmentRequest :: Show DeleteComputeEnvironmentRequest where show = genericShow
instance decodeDeleteComputeEnvironmentRequest :: Decode DeleteComputeEnvironmentRequest where decode = genericDecode options
instance encodeDeleteComputeEnvironmentRequest :: Encode DeleteComputeEnvironmentRequest where encode = genericEncode options

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
instance showDeleteComputeEnvironmentResponse :: Show DeleteComputeEnvironmentResponse where show = genericShow
instance decodeDeleteComputeEnvironmentResponse :: Decode DeleteComputeEnvironmentResponse where decode = genericDecode options
instance encodeDeleteComputeEnvironmentResponse :: Encode DeleteComputeEnvironmentResponse where encode = genericEncode options



newtype DeleteJobQueueRequest = DeleteJobQueueRequest 
  { "jobQueue" :: (String)
  }
derive instance newtypeDeleteJobQueueRequest :: Newtype DeleteJobQueueRequest _
derive instance repGenericDeleteJobQueueRequest :: Generic DeleteJobQueueRequest _
instance showDeleteJobQueueRequest :: Show DeleteJobQueueRequest where show = genericShow
instance decodeDeleteJobQueueRequest :: Decode DeleteJobQueueRequest where decode = genericDecode options
instance encodeDeleteJobQueueRequest :: Encode DeleteJobQueueRequest where encode = genericEncode options

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
instance showDeleteJobQueueResponse :: Show DeleteJobQueueResponse where show = genericShow
instance decodeDeleteJobQueueResponse :: Decode DeleteJobQueueResponse where decode = genericDecode options
instance encodeDeleteJobQueueResponse :: Encode DeleteJobQueueResponse where encode = genericEncode options



newtype DeregisterJobDefinitionRequest = DeregisterJobDefinitionRequest 
  { "jobDefinition" :: (String)
  }
derive instance newtypeDeregisterJobDefinitionRequest :: Newtype DeregisterJobDefinitionRequest _
derive instance repGenericDeregisterJobDefinitionRequest :: Generic DeregisterJobDefinitionRequest _
instance showDeregisterJobDefinitionRequest :: Show DeregisterJobDefinitionRequest where show = genericShow
instance decodeDeregisterJobDefinitionRequest :: Decode DeregisterJobDefinitionRequest where decode = genericDecode options
instance encodeDeregisterJobDefinitionRequest :: Encode DeregisterJobDefinitionRequest where encode = genericEncode options

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
instance showDeregisterJobDefinitionResponse :: Show DeregisterJobDefinitionResponse where show = genericShow
instance decodeDeregisterJobDefinitionResponse :: Decode DeregisterJobDefinitionResponse where decode = genericDecode options
instance encodeDeregisterJobDefinitionResponse :: Encode DeregisterJobDefinitionResponse where encode = genericEncode options



newtype DescribeComputeEnvironmentsRequest = DescribeComputeEnvironmentsRequest 
  { "computeEnvironments" :: Maybe (StringList)
  , "maxResults" :: Maybe (Int)
  , "nextToken" :: Maybe (String)
  }
derive instance newtypeDescribeComputeEnvironmentsRequest :: Newtype DescribeComputeEnvironmentsRequest _
derive instance repGenericDescribeComputeEnvironmentsRequest :: Generic DescribeComputeEnvironmentsRequest _
instance showDescribeComputeEnvironmentsRequest :: Show DescribeComputeEnvironmentsRequest where show = genericShow
instance decodeDescribeComputeEnvironmentsRequest :: Decode DescribeComputeEnvironmentsRequest where decode = genericDecode options
instance encodeDescribeComputeEnvironmentsRequest :: Encode DescribeComputeEnvironmentsRequest where encode = genericEncode options

-- | Constructs DescribeComputeEnvironmentsRequest from required parameters
newDescribeComputeEnvironmentsRequest :: DescribeComputeEnvironmentsRequest
newDescribeComputeEnvironmentsRequest  = DescribeComputeEnvironmentsRequest { "computeEnvironments": Nothing, "maxResults": Nothing, "nextToken": Nothing }

-- | Constructs DescribeComputeEnvironmentsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeComputeEnvironmentsRequest' :: ( { "computeEnvironments" :: Maybe (StringList) , "maxResults" :: Maybe (Int) , "nextToken" :: Maybe (String) } -> {"computeEnvironments" :: Maybe (StringList) , "maxResults" :: Maybe (Int) , "nextToken" :: Maybe (String) } ) -> DescribeComputeEnvironmentsRequest
newDescribeComputeEnvironmentsRequest'  customize = (DescribeComputeEnvironmentsRequest <<< customize) { "computeEnvironments": Nothing, "maxResults": Nothing, "nextToken": Nothing }



newtype DescribeComputeEnvironmentsResponse = DescribeComputeEnvironmentsResponse 
  { "computeEnvironments" :: Maybe (ComputeEnvironmentDetailList)
  , "nextToken" :: Maybe (String)
  }
derive instance newtypeDescribeComputeEnvironmentsResponse :: Newtype DescribeComputeEnvironmentsResponse _
derive instance repGenericDescribeComputeEnvironmentsResponse :: Generic DescribeComputeEnvironmentsResponse _
instance showDescribeComputeEnvironmentsResponse :: Show DescribeComputeEnvironmentsResponse where show = genericShow
instance decodeDescribeComputeEnvironmentsResponse :: Decode DescribeComputeEnvironmentsResponse where decode = genericDecode options
instance encodeDescribeComputeEnvironmentsResponse :: Encode DescribeComputeEnvironmentsResponse where encode = genericEncode options

-- | Constructs DescribeComputeEnvironmentsResponse from required parameters
newDescribeComputeEnvironmentsResponse :: DescribeComputeEnvironmentsResponse
newDescribeComputeEnvironmentsResponse  = DescribeComputeEnvironmentsResponse { "computeEnvironments": Nothing, "nextToken": Nothing }

-- | Constructs DescribeComputeEnvironmentsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeComputeEnvironmentsResponse' :: ( { "computeEnvironments" :: Maybe (ComputeEnvironmentDetailList) , "nextToken" :: Maybe (String) } -> {"computeEnvironments" :: Maybe (ComputeEnvironmentDetailList) , "nextToken" :: Maybe (String) } ) -> DescribeComputeEnvironmentsResponse
newDescribeComputeEnvironmentsResponse'  customize = (DescribeComputeEnvironmentsResponse <<< customize) { "computeEnvironments": Nothing, "nextToken": Nothing }



newtype DescribeJobDefinitionsRequest = DescribeJobDefinitionsRequest 
  { "jobDefinitions" :: Maybe (StringList)
  , "maxResults" :: Maybe (Int)
  , "jobDefinitionName" :: Maybe (String)
  , "status" :: Maybe (String)
  , "nextToken" :: Maybe (String)
  }
derive instance newtypeDescribeJobDefinitionsRequest :: Newtype DescribeJobDefinitionsRequest _
derive instance repGenericDescribeJobDefinitionsRequest :: Generic DescribeJobDefinitionsRequest _
instance showDescribeJobDefinitionsRequest :: Show DescribeJobDefinitionsRequest where show = genericShow
instance decodeDescribeJobDefinitionsRequest :: Decode DescribeJobDefinitionsRequest where decode = genericDecode options
instance encodeDescribeJobDefinitionsRequest :: Encode DescribeJobDefinitionsRequest where encode = genericEncode options

-- | Constructs DescribeJobDefinitionsRequest from required parameters
newDescribeJobDefinitionsRequest :: DescribeJobDefinitionsRequest
newDescribeJobDefinitionsRequest  = DescribeJobDefinitionsRequest { "jobDefinitionName": Nothing, "jobDefinitions": Nothing, "maxResults": Nothing, "nextToken": Nothing, "status": Nothing }

-- | Constructs DescribeJobDefinitionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeJobDefinitionsRequest' :: ( { "jobDefinitions" :: Maybe (StringList) , "maxResults" :: Maybe (Int) , "jobDefinitionName" :: Maybe (String) , "status" :: Maybe (String) , "nextToken" :: Maybe (String) } -> {"jobDefinitions" :: Maybe (StringList) , "maxResults" :: Maybe (Int) , "jobDefinitionName" :: Maybe (String) , "status" :: Maybe (String) , "nextToken" :: Maybe (String) } ) -> DescribeJobDefinitionsRequest
newDescribeJobDefinitionsRequest'  customize = (DescribeJobDefinitionsRequest <<< customize) { "jobDefinitionName": Nothing, "jobDefinitions": Nothing, "maxResults": Nothing, "nextToken": Nothing, "status": Nothing }



newtype DescribeJobDefinitionsResponse = DescribeJobDefinitionsResponse 
  { "jobDefinitions" :: Maybe (JobDefinitionList)
  , "nextToken" :: Maybe (String)
  }
derive instance newtypeDescribeJobDefinitionsResponse :: Newtype DescribeJobDefinitionsResponse _
derive instance repGenericDescribeJobDefinitionsResponse :: Generic DescribeJobDefinitionsResponse _
instance showDescribeJobDefinitionsResponse :: Show DescribeJobDefinitionsResponse where show = genericShow
instance decodeDescribeJobDefinitionsResponse :: Decode DescribeJobDefinitionsResponse where decode = genericDecode options
instance encodeDescribeJobDefinitionsResponse :: Encode DescribeJobDefinitionsResponse where encode = genericEncode options

-- | Constructs DescribeJobDefinitionsResponse from required parameters
newDescribeJobDefinitionsResponse :: DescribeJobDefinitionsResponse
newDescribeJobDefinitionsResponse  = DescribeJobDefinitionsResponse { "jobDefinitions": Nothing, "nextToken": Nothing }

-- | Constructs DescribeJobDefinitionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeJobDefinitionsResponse' :: ( { "jobDefinitions" :: Maybe (JobDefinitionList) , "nextToken" :: Maybe (String) } -> {"jobDefinitions" :: Maybe (JobDefinitionList) , "nextToken" :: Maybe (String) } ) -> DescribeJobDefinitionsResponse
newDescribeJobDefinitionsResponse'  customize = (DescribeJobDefinitionsResponse <<< customize) { "jobDefinitions": Nothing, "nextToken": Nothing }



newtype DescribeJobQueuesRequest = DescribeJobQueuesRequest 
  { "jobQueues" :: Maybe (StringList)
  , "maxResults" :: Maybe (Int)
  , "nextToken" :: Maybe (String)
  }
derive instance newtypeDescribeJobQueuesRequest :: Newtype DescribeJobQueuesRequest _
derive instance repGenericDescribeJobQueuesRequest :: Generic DescribeJobQueuesRequest _
instance showDescribeJobQueuesRequest :: Show DescribeJobQueuesRequest where show = genericShow
instance decodeDescribeJobQueuesRequest :: Decode DescribeJobQueuesRequest where decode = genericDecode options
instance encodeDescribeJobQueuesRequest :: Encode DescribeJobQueuesRequest where encode = genericEncode options

-- | Constructs DescribeJobQueuesRequest from required parameters
newDescribeJobQueuesRequest :: DescribeJobQueuesRequest
newDescribeJobQueuesRequest  = DescribeJobQueuesRequest { "jobQueues": Nothing, "maxResults": Nothing, "nextToken": Nothing }

-- | Constructs DescribeJobQueuesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeJobQueuesRequest' :: ( { "jobQueues" :: Maybe (StringList) , "maxResults" :: Maybe (Int) , "nextToken" :: Maybe (String) } -> {"jobQueues" :: Maybe (StringList) , "maxResults" :: Maybe (Int) , "nextToken" :: Maybe (String) } ) -> DescribeJobQueuesRequest
newDescribeJobQueuesRequest'  customize = (DescribeJobQueuesRequest <<< customize) { "jobQueues": Nothing, "maxResults": Nothing, "nextToken": Nothing }



newtype DescribeJobQueuesResponse = DescribeJobQueuesResponse 
  { "jobQueues" :: Maybe (JobQueueDetailList)
  , "nextToken" :: Maybe (String)
  }
derive instance newtypeDescribeJobQueuesResponse :: Newtype DescribeJobQueuesResponse _
derive instance repGenericDescribeJobQueuesResponse :: Generic DescribeJobQueuesResponse _
instance showDescribeJobQueuesResponse :: Show DescribeJobQueuesResponse where show = genericShow
instance decodeDescribeJobQueuesResponse :: Decode DescribeJobQueuesResponse where decode = genericDecode options
instance encodeDescribeJobQueuesResponse :: Encode DescribeJobQueuesResponse where encode = genericEncode options

-- | Constructs DescribeJobQueuesResponse from required parameters
newDescribeJobQueuesResponse :: DescribeJobQueuesResponse
newDescribeJobQueuesResponse  = DescribeJobQueuesResponse { "jobQueues": Nothing, "nextToken": Nothing }

-- | Constructs DescribeJobQueuesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeJobQueuesResponse' :: ( { "jobQueues" :: Maybe (JobQueueDetailList) , "nextToken" :: Maybe (String) } -> {"jobQueues" :: Maybe (JobQueueDetailList) , "nextToken" :: Maybe (String) } ) -> DescribeJobQueuesResponse
newDescribeJobQueuesResponse'  customize = (DescribeJobQueuesResponse <<< customize) { "jobQueues": Nothing, "nextToken": Nothing }



newtype DescribeJobsRequest = DescribeJobsRequest 
  { "jobs" :: (StringList)
  }
derive instance newtypeDescribeJobsRequest :: Newtype DescribeJobsRequest _
derive instance repGenericDescribeJobsRequest :: Generic DescribeJobsRequest _
instance showDescribeJobsRequest :: Show DescribeJobsRequest where show = genericShow
instance decodeDescribeJobsRequest :: Decode DescribeJobsRequest where decode = genericDecode options
instance encodeDescribeJobsRequest :: Encode DescribeJobsRequest where encode = genericEncode options

-- | Constructs DescribeJobsRequest from required parameters
newDescribeJobsRequest :: StringList -> DescribeJobsRequest
newDescribeJobsRequest _jobs = DescribeJobsRequest { "jobs": _jobs }

-- | Constructs DescribeJobsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeJobsRequest' :: StringList -> ( { "jobs" :: (StringList) } -> {"jobs" :: (StringList) } ) -> DescribeJobsRequest
newDescribeJobsRequest' _jobs customize = (DescribeJobsRequest <<< customize) { "jobs": _jobs }



newtype DescribeJobsResponse = DescribeJobsResponse 
  { "jobs" :: Maybe (JobDetailList)
  }
derive instance newtypeDescribeJobsResponse :: Newtype DescribeJobsResponse _
derive instance repGenericDescribeJobsResponse :: Generic DescribeJobsResponse _
instance showDescribeJobsResponse :: Show DescribeJobsResponse where show = genericShow
instance decodeDescribeJobsResponse :: Decode DescribeJobsResponse where decode = genericDecode options
instance encodeDescribeJobsResponse :: Encode DescribeJobsResponse where encode = genericEncode options

-- | Constructs DescribeJobsResponse from required parameters
newDescribeJobsResponse :: DescribeJobsResponse
newDescribeJobsResponse  = DescribeJobsResponse { "jobs": Nothing }

-- | Constructs DescribeJobsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeJobsResponse' :: ( { "jobs" :: Maybe (JobDetailList) } -> {"jobs" :: Maybe (JobDetailList) } ) -> DescribeJobsResponse
newDescribeJobsResponse'  customize = (DescribeJobsResponse <<< customize) { "jobs": Nothing }



newtype EnvironmentVariables = EnvironmentVariables (Array KeyValuePair)
derive instance newtypeEnvironmentVariables :: Newtype EnvironmentVariables _
derive instance repGenericEnvironmentVariables :: Generic EnvironmentVariables _
instance showEnvironmentVariables :: Show EnvironmentVariables where show = genericShow
instance decodeEnvironmentVariables :: Decode EnvironmentVariables where decode = genericDecode options
instance encodeEnvironmentVariables :: Encode EnvironmentVariables where encode = genericEncode options



-- | <p>The contents of the <code>host</code> parameter determine whether your data volume persists on the host container instance and where it is stored. If the host parameter is empty, then the Docker daemon assigns a host path for your data volume, but the data is not guaranteed to persist after the containers associated with it stop running.</p>
newtype Host = Host 
  { "sourcePath" :: Maybe (String)
  }
derive instance newtypeHost :: Newtype Host _
derive instance repGenericHost :: Generic Host _
instance showHost :: Show Host where show = genericShow
instance decodeHost :: Decode Host where decode = genericDecode options
instance encodeHost :: Encode Host where encode = genericEncode options

-- | Constructs Host from required parameters
newHost :: Host
newHost  = Host { "sourcePath": Nothing }

-- | Constructs Host's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHost' :: ( { "sourcePath" :: Maybe (String) } -> {"sourcePath" :: Maybe (String) } ) -> Host
newHost'  customize = (Host <<< customize) { "sourcePath": Nothing }



newtype JQState = JQState String
derive instance newtypeJQState :: Newtype JQState _
derive instance repGenericJQState :: Generic JQState _
instance showJQState :: Show JQState where show = genericShow
instance decodeJQState :: Decode JQState where decode = genericDecode options
instance encodeJQState :: Encode JQState where encode = genericEncode options



newtype JQStatus = JQStatus String
derive instance newtypeJQStatus :: Newtype JQStatus _
derive instance repGenericJQStatus :: Generic JQStatus _
instance showJQStatus :: Show JQStatus where show = genericShow
instance decodeJQStatus :: Decode JQStatus where decode = genericDecode options
instance encodeJQStatus :: Encode JQStatus where encode = genericEncode options



-- | <p>An object representing an AWS Batch job definition.</p>
newtype JobDefinition = JobDefinition 
  { "jobDefinitionName" :: (String)
  , "jobDefinitionArn" :: (String)
  , "revision" :: (Int)
  , "status" :: Maybe (String)
  , "type" :: (String)
  , "parameters" :: Maybe (ParametersMap)
  , "retryStrategy" :: Maybe (RetryStrategy)
  , "containerProperties" :: Maybe (ContainerProperties)
  }
derive instance newtypeJobDefinition :: Newtype JobDefinition _
derive instance repGenericJobDefinition :: Generic JobDefinition _
instance showJobDefinition :: Show JobDefinition where show = genericShow
instance decodeJobDefinition :: Decode JobDefinition where decode = genericDecode options
instance encodeJobDefinition :: Encode JobDefinition where encode = genericEncode options

-- | Constructs JobDefinition from required parameters
newJobDefinition :: String -> String -> Int -> String -> JobDefinition
newJobDefinition _jobDefinitionArn _jobDefinitionName _revision _type = JobDefinition { "jobDefinitionArn": _jobDefinitionArn, "jobDefinitionName": _jobDefinitionName, "revision": _revision, "type": _type, "containerProperties": Nothing, "parameters": Nothing, "retryStrategy": Nothing, "status": Nothing }

-- | Constructs JobDefinition's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobDefinition' :: String -> String -> Int -> String -> ( { "jobDefinitionName" :: (String) , "jobDefinitionArn" :: (String) , "revision" :: (Int) , "status" :: Maybe (String) , "type" :: (String) , "parameters" :: Maybe (ParametersMap) , "retryStrategy" :: Maybe (RetryStrategy) , "containerProperties" :: Maybe (ContainerProperties) } -> {"jobDefinitionName" :: (String) , "jobDefinitionArn" :: (String) , "revision" :: (Int) , "status" :: Maybe (String) , "type" :: (String) , "parameters" :: Maybe (ParametersMap) , "retryStrategy" :: Maybe (RetryStrategy) , "containerProperties" :: Maybe (ContainerProperties) } ) -> JobDefinition
newJobDefinition' _jobDefinitionArn _jobDefinitionName _revision _type customize = (JobDefinition <<< customize) { "jobDefinitionArn": _jobDefinitionArn, "jobDefinitionName": _jobDefinitionName, "revision": _revision, "type": _type, "containerProperties": Nothing, "parameters": Nothing, "retryStrategy": Nothing, "status": Nothing }



newtype JobDefinitionList = JobDefinitionList (Array JobDefinition)
derive instance newtypeJobDefinitionList :: Newtype JobDefinitionList _
derive instance repGenericJobDefinitionList :: Generic JobDefinitionList _
instance showJobDefinitionList :: Show JobDefinitionList where show = genericShow
instance decodeJobDefinitionList :: Decode JobDefinitionList where decode = genericDecode options
instance encodeJobDefinitionList :: Encode JobDefinitionList where encode = genericEncode options



newtype JobDefinitionType = JobDefinitionType String
derive instance newtypeJobDefinitionType :: Newtype JobDefinitionType _
derive instance repGenericJobDefinitionType :: Generic JobDefinitionType _
instance showJobDefinitionType :: Show JobDefinitionType where show = genericShow
instance decodeJobDefinitionType :: Decode JobDefinitionType where decode = genericDecode options
instance encodeJobDefinitionType :: Encode JobDefinitionType where encode = genericEncode options



-- | <p>An object representing an AWS Batch job dependency.</p>
newtype JobDependency = JobDependency 
  { "jobId" :: Maybe (String)
  , "type" :: Maybe (ArrayJobDependency)
  }
derive instance newtypeJobDependency :: Newtype JobDependency _
derive instance repGenericJobDependency :: Generic JobDependency _
instance showJobDependency :: Show JobDependency where show = genericShow
instance decodeJobDependency :: Decode JobDependency where decode = genericDecode options
instance encodeJobDependency :: Encode JobDependency where encode = genericEncode options

-- | Constructs JobDependency from required parameters
newJobDependency :: JobDependency
newJobDependency  = JobDependency { "jobId": Nothing, "type": Nothing }

-- | Constructs JobDependency's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobDependency' :: ( { "jobId" :: Maybe (String) , "type" :: Maybe (ArrayJobDependency) } -> {"jobId" :: Maybe (String) , "type" :: Maybe (ArrayJobDependency) } ) -> JobDependency
newJobDependency'  customize = (JobDependency <<< customize) { "jobId": Nothing, "type": Nothing }



newtype JobDependencyList = JobDependencyList (Array JobDependency)
derive instance newtypeJobDependencyList :: Newtype JobDependencyList _
derive instance repGenericJobDependencyList :: Generic JobDependencyList _
instance showJobDependencyList :: Show JobDependencyList where show = genericShow
instance decodeJobDependencyList :: Decode JobDependencyList where decode = genericDecode options
instance encodeJobDependencyList :: Encode JobDependencyList where encode = genericEncode options



-- | <p>An object representing an AWS Batch job.</p>
newtype JobDetail = JobDetail 
  { "jobName" :: (String)
  , "jobId" :: (String)
  , "jobQueue" :: (String)
  , "status" :: (JobStatus)
  , "attempts" :: Maybe (AttemptDetails)
  , "statusReason" :: Maybe (String)
  , "createdAt" :: Maybe (Number)
  , "retryStrategy" :: Maybe (RetryStrategy)
  , "startedAt" :: (Number)
  , "stoppedAt" :: Maybe (Number)
  , "dependsOn" :: Maybe (JobDependencyList)
  , "jobDefinition" :: (String)
  , "parameters" :: Maybe (ParametersMap)
  , "container" :: Maybe (ContainerDetail)
  , "arrayProperties" :: Maybe (ArrayPropertiesDetail)
  }
derive instance newtypeJobDetail :: Newtype JobDetail _
derive instance repGenericJobDetail :: Generic JobDetail _
instance showJobDetail :: Show JobDetail where show = genericShow
instance decodeJobDetail :: Decode JobDetail where decode = genericDecode options
instance encodeJobDetail :: Encode JobDetail where encode = genericEncode options

-- | Constructs JobDetail from required parameters
newJobDetail :: String -> String -> String -> String -> Number -> JobStatus -> JobDetail
newJobDetail _jobDefinition _jobId _jobName _jobQueue _startedAt _status = JobDetail { "jobDefinition": _jobDefinition, "jobId": _jobId, "jobName": _jobName, "jobQueue": _jobQueue, "startedAt": _startedAt, "status": _status, "arrayProperties": Nothing, "attempts": Nothing, "container": Nothing, "createdAt": Nothing, "dependsOn": Nothing, "parameters": Nothing, "retryStrategy": Nothing, "statusReason": Nothing, "stoppedAt": Nothing }

-- | Constructs JobDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobDetail' :: String -> String -> String -> String -> Number -> JobStatus -> ( { "jobName" :: (String) , "jobId" :: (String) , "jobQueue" :: (String) , "status" :: (JobStatus) , "attempts" :: Maybe (AttemptDetails) , "statusReason" :: Maybe (String) , "createdAt" :: Maybe (Number) , "retryStrategy" :: Maybe (RetryStrategy) , "startedAt" :: (Number) , "stoppedAt" :: Maybe (Number) , "dependsOn" :: Maybe (JobDependencyList) , "jobDefinition" :: (String) , "parameters" :: Maybe (ParametersMap) , "container" :: Maybe (ContainerDetail) , "arrayProperties" :: Maybe (ArrayPropertiesDetail) } -> {"jobName" :: (String) , "jobId" :: (String) , "jobQueue" :: (String) , "status" :: (JobStatus) , "attempts" :: Maybe (AttemptDetails) , "statusReason" :: Maybe (String) , "createdAt" :: Maybe (Number) , "retryStrategy" :: Maybe (RetryStrategy) , "startedAt" :: (Number) , "stoppedAt" :: Maybe (Number) , "dependsOn" :: Maybe (JobDependencyList) , "jobDefinition" :: (String) , "parameters" :: Maybe (ParametersMap) , "container" :: Maybe (ContainerDetail) , "arrayProperties" :: Maybe (ArrayPropertiesDetail) } ) -> JobDetail
newJobDetail' _jobDefinition _jobId _jobName _jobQueue _startedAt _status customize = (JobDetail <<< customize) { "jobDefinition": _jobDefinition, "jobId": _jobId, "jobName": _jobName, "jobQueue": _jobQueue, "startedAt": _startedAt, "status": _status, "arrayProperties": Nothing, "attempts": Nothing, "container": Nothing, "createdAt": Nothing, "dependsOn": Nothing, "parameters": Nothing, "retryStrategy": Nothing, "statusReason": Nothing, "stoppedAt": Nothing }



newtype JobDetailList = JobDetailList (Array JobDetail)
derive instance newtypeJobDetailList :: Newtype JobDetailList _
derive instance repGenericJobDetailList :: Generic JobDetailList _
instance showJobDetailList :: Show JobDetailList where show = genericShow
instance decodeJobDetailList :: Decode JobDetailList where decode = genericDecode options
instance encodeJobDetailList :: Encode JobDetailList where encode = genericEncode options



-- | <p>An object representing the details of an AWS Batch job queue.</p>
newtype JobQueueDetail = JobQueueDetail 
  { "jobQueueName" :: (String)
  , "jobQueueArn" :: (String)
  , "state" :: (JQState)
  , "status" :: Maybe (JQStatus)
  , "statusReason" :: Maybe (String)
  , "priority" :: (Int)
  , "computeEnvironmentOrder" :: (ComputeEnvironmentOrders)
  }
derive instance newtypeJobQueueDetail :: Newtype JobQueueDetail _
derive instance repGenericJobQueueDetail :: Generic JobQueueDetail _
instance showJobQueueDetail :: Show JobQueueDetail where show = genericShow
instance decodeJobQueueDetail :: Decode JobQueueDetail where decode = genericDecode options
instance encodeJobQueueDetail :: Encode JobQueueDetail where encode = genericEncode options

-- | Constructs JobQueueDetail from required parameters
newJobQueueDetail :: ComputeEnvironmentOrders -> String -> String -> Int -> JQState -> JobQueueDetail
newJobQueueDetail _computeEnvironmentOrder _jobQueueArn _jobQueueName _priority _state = JobQueueDetail { "computeEnvironmentOrder": _computeEnvironmentOrder, "jobQueueArn": _jobQueueArn, "jobQueueName": _jobQueueName, "priority": _priority, "state": _state, "status": Nothing, "statusReason": Nothing }

-- | Constructs JobQueueDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobQueueDetail' :: ComputeEnvironmentOrders -> String -> String -> Int -> JQState -> ( { "jobQueueName" :: (String) , "jobQueueArn" :: (String) , "state" :: (JQState) , "status" :: Maybe (JQStatus) , "statusReason" :: Maybe (String) , "priority" :: (Int) , "computeEnvironmentOrder" :: (ComputeEnvironmentOrders) } -> {"jobQueueName" :: (String) , "jobQueueArn" :: (String) , "state" :: (JQState) , "status" :: Maybe (JQStatus) , "statusReason" :: Maybe (String) , "priority" :: (Int) , "computeEnvironmentOrder" :: (ComputeEnvironmentOrders) } ) -> JobQueueDetail
newJobQueueDetail' _computeEnvironmentOrder _jobQueueArn _jobQueueName _priority _state customize = (JobQueueDetail <<< customize) { "computeEnvironmentOrder": _computeEnvironmentOrder, "jobQueueArn": _jobQueueArn, "jobQueueName": _jobQueueName, "priority": _priority, "state": _state, "status": Nothing, "statusReason": Nothing }



newtype JobQueueDetailList = JobQueueDetailList (Array JobQueueDetail)
derive instance newtypeJobQueueDetailList :: Newtype JobQueueDetailList _
derive instance repGenericJobQueueDetailList :: Generic JobQueueDetailList _
instance showJobQueueDetailList :: Show JobQueueDetailList where show = genericShow
instance decodeJobQueueDetailList :: Decode JobQueueDetailList where decode = genericDecode options
instance encodeJobQueueDetailList :: Encode JobQueueDetailList where encode = genericEncode options



newtype JobStatus = JobStatus String
derive instance newtypeJobStatus :: Newtype JobStatus _
derive instance repGenericJobStatus :: Generic JobStatus _
instance showJobStatus :: Show JobStatus where show = genericShow
instance decodeJobStatus :: Decode JobStatus where decode = genericDecode options
instance encodeJobStatus :: Encode JobStatus where encode = genericEncode options



-- | <p>An object representing summary details of a job.</p>
newtype JobSummary = JobSummary 
  { "jobId" :: (String)
  , "jobName" :: (String)
  , "createdAt" :: Maybe (Number)
  , "status" :: Maybe (JobStatus)
  , "statusReason" :: Maybe (String)
  , "startedAt" :: Maybe (Number)
  , "stoppedAt" :: Maybe (Number)
  , "container" :: Maybe (ContainerSummary)
  , "arrayProperties" :: Maybe (ArrayPropertiesSummary)
  }
derive instance newtypeJobSummary :: Newtype JobSummary _
derive instance repGenericJobSummary :: Generic JobSummary _
instance showJobSummary :: Show JobSummary where show = genericShow
instance decodeJobSummary :: Decode JobSummary where decode = genericDecode options
instance encodeJobSummary :: Encode JobSummary where encode = genericEncode options

-- | Constructs JobSummary from required parameters
newJobSummary :: String -> String -> JobSummary
newJobSummary _jobId _jobName = JobSummary { "jobId": _jobId, "jobName": _jobName, "arrayProperties": Nothing, "container": Nothing, "createdAt": Nothing, "startedAt": Nothing, "status": Nothing, "statusReason": Nothing, "stoppedAt": Nothing }

-- | Constructs JobSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobSummary' :: String -> String -> ( { "jobId" :: (String) , "jobName" :: (String) , "createdAt" :: Maybe (Number) , "status" :: Maybe (JobStatus) , "statusReason" :: Maybe (String) , "startedAt" :: Maybe (Number) , "stoppedAt" :: Maybe (Number) , "container" :: Maybe (ContainerSummary) , "arrayProperties" :: Maybe (ArrayPropertiesSummary) } -> {"jobId" :: (String) , "jobName" :: (String) , "createdAt" :: Maybe (Number) , "status" :: Maybe (JobStatus) , "statusReason" :: Maybe (String) , "startedAt" :: Maybe (Number) , "stoppedAt" :: Maybe (Number) , "container" :: Maybe (ContainerSummary) , "arrayProperties" :: Maybe (ArrayPropertiesSummary) } ) -> JobSummary
newJobSummary' _jobId _jobName customize = (JobSummary <<< customize) { "jobId": _jobId, "jobName": _jobName, "arrayProperties": Nothing, "container": Nothing, "createdAt": Nothing, "startedAt": Nothing, "status": Nothing, "statusReason": Nothing, "stoppedAt": Nothing }



newtype JobSummaryList = JobSummaryList (Array JobSummary)
derive instance newtypeJobSummaryList :: Newtype JobSummaryList _
derive instance repGenericJobSummaryList :: Generic JobSummaryList _
instance showJobSummaryList :: Show JobSummaryList where show = genericShow
instance decodeJobSummaryList :: Decode JobSummaryList where decode = genericDecode options
instance encodeJobSummaryList :: Encode JobSummaryList where encode = genericEncode options



-- | <p>A key-value pair object.</p>
newtype KeyValuePair = KeyValuePair 
  { "name" :: Maybe (String)
  , "value" :: Maybe (String)
  }
derive instance newtypeKeyValuePair :: Newtype KeyValuePair _
derive instance repGenericKeyValuePair :: Generic KeyValuePair _
instance showKeyValuePair :: Show KeyValuePair where show = genericShow
instance decodeKeyValuePair :: Decode KeyValuePair where decode = genericDecode options
instance encodeKeyValuePair :: Encode KeyValuePair where encode = genericEncode options

-- | Constructs KeyValuePair from required parameters
newKeyValuePair :: KeyValuePair
newKeyValuePair  = KeyValuePair { "name": Nothing, "value": Nothing }

-- | Constructs KeyValuePair's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKeyValuePair' :: ( { "name" :: Maybe (String) , "value" :: Maybe (String) } -> {"name" :: Maybe (String) , "value" :: Maybe (String) } ) -> KeyValuePair
newKeyValuePair'  customize = (KeyValuePair <<< customize) { "name": Nothing, "value": Nothing }



newtype ListJobsRequest = ListJobsRequest 
  { "jobQueue" :: Maybe (String)
  , "arrayJobId" :: Maybe (String)
  , "jobStatus" :: Maybe (JobStatus)
  , "maxResults" :: Maybe (Int)
  , "nextToken" :: Maybe (String)
  }
derive instance newtypeListJobsRequest :: Newtype ListJobsRequest _
derive instance repGenericListJobsRequest :: Generic ListJobsRequest _
instance showListJobsRequest :: Show ListJobsRequest where show = genericShow
instance decodeListJobsRequest :: Decode ListJobsRequest where decode = genericDecode options
instance encodeListJobsRequest :: Encode ListJobsRequest where encode = genericEncode options

-- | Constructs ListJobsRequest from required parameters
newListJobsRequest :: ListJobsRequest
newListJobsRequest  = ListJobsRequest { "arrayJobId": Nothing, "jobQueue": Nothing, "jobStatus": Nothing, "maxResults": Nothing, "nextToken": Nothing }

-- | Constructs ListJobsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListJobsRequest' :: ( { "jobQueue" :: Maybe (String) , "arrayJobId" :: Maybe (String) , "jobStatus" :: Maybe (JobStatus) , "maxResults" :: Maybe (Int) , "nextToken" :: Maybe (String) } -> {"jobQueue" :: Maybe (String) , "arrayJobId" :: Maybe (String) , "jobStatus" :: Maybe (JobStatus) , "maxResults" :: Maybe (Int) , "nextToken" :: Maybe (String) } ) -> ListJobsRequest
newListJobsRequest'  customize = (ListJobsRequest <<< customize) { "arrayJobId": Nothing, "jobQueue": Nothing, "jobStatus": Nothing, "maxResults": Nothing, "nextToken": Nothing }



newtype ListJobsResponse = ListJobsResponse 
  { "jobSummaryList" :: (JobSummaryList)
  , "nextToken" :: Maybe (String)
  }
derive instance newtypeListJobsResponse :: Newtype ListJobsResponse _
derive instance repGenericListJobsResponse :: Generic ListJobsResponse _
instance showListJobsResponse :: Show ListJobsResponse where show = genericShow
instance decodeListJobsResponse :: Decode ListJobsResponse where decode = genericDecode options
instance encodeListJobsResponse :: Encode ListJobsResponse where encode = genericEncode options

-- | Constructs ListJobsResponse from required parameters
newListJobsResponse :: JobSummaryList -> ListJobsResponse
newListJobsResponse _jobSummaryList = ListJobsResponse { "jobSummaryList": _jobSummaryList, "nextToken": Nothing }

-- | Constructs ListJobsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListJobsResponse' :: JobSummaryList -> ( { "jobSummaryList" :: (JobSummaryList) , "nextToken" :: Maybe (String) } -> {"jobSummaryList" :: (JobSummaryList) , "nextToken" :: Maybe (String) } ) -> ListJobsResponse
newListJobsResponse' _jobSummaryList customize = (ListJobsResponse <<< customize) { "jobSummaryList": _jobSummaryList, "nextToken": Nothing }



-- | <p>Details on a Docker volume mount point that is used in a job's container properties.</p>
newtype MountPoint = MountPoint 
  { "containerPath" :: Maybe (String)
  , "readOnly" :: Maybe (Boolean)
  , "sourceVolume" :: Maybe (String)
  }
derive instance newtypeMountPoint :: Newtype MountPoint _
derive instance repGenericMountPoint :: Generic MountPoint _
instance showMountPoint :: Show MountPoint where show = genericShow
instance decodeMountPoint :: Decode MountPoint where decode = genericDecode options
instance encodeMountPoint :: Encode MountPoint where encode = genericEncode options

-- | Constructs MountPoint from required parameters
newMountPoint :: MountPoint
newMountPoint  = MountPoint { "containerPath": Nothing, "readOnly": Nothing, "sourceVolume": Nothing }

-- | Constructs MountPoint's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMountPoint' :: ( { "containerPath" :: Maybe (String) , "readOnly" :: Maybe (Boolean) , "sourceVolume" :: Maybe (String) } -> {"containerPath" :: Maybe (String) , "readOnly" :: Maybe (Boolean) , "sourceVolume" :: Maybe (String) } ) -> MountPoint
newMountPoint'  customize = (MountPoint <<< customize) { "containerPath": Nothing, "readOnly": Nothing, "sourceVolume": Nothing }



newtype MountPoints = MountPoints (Array MountPoint)
derive instance newtypeMountPoints :: Newtype MountPoints _
derive instance repGenericMountPoints :: Generic MountPoints _
instance showMountPoints :: Show MountPoints where show = genericShow
instance decodeMountPoints :: Decode MountPoints where decode = genericDecode options
instance encodeMountPoints :: Encode MountPoints where encode = genericEncode options



newtype ParametersMap = ParametersMap (StrMap.StrMap String)
derive instance newtypeParametersMap :: Newtype ParametersMap _
derive instance repGenericParametersMap :: Generic ParametersMap _
instance showParametersMap :: Show ParametersMap where show = genericShow
instance decodeParametersMap :: Decode ParametersMap where decode = genericDecode options
instance encodeParametersMap :: Encode ParametersMap where encode = genericEncode options



newtype RegisterJobDefinitionRequest = RegisterJobDefinitionRequest 
  { "jobDefinitionName" :: (String)
  , "type" :: (JobDefinitionType)
  , "parameters" :: Maybe (ParametersMap)
  , "containerProperties" :: Maybe (ContainerProperties)
  , "retryStrategy" :: Maybe (RetryStrategy)
  }
derive instance newtypeRegisterJobDefinitionRequest :: Newtype RegisterJobDefinitionRequest _
derive instance repGenericRegisterJobDefinitionRequest :: Generic RegisterJobDefinitionRequest _
instance showRegisterJobDefinitionRequest :: Show RegisterJobDefinitionRequest where show = genericShow
instance decodeRegisterJobDefinitionRequest :: Decode RegisterJobDefinitionRequest where decode = genericDecode options
instance encodeRegisterJobDefinitionRequest :: Encode RegisterJobDefinitionRequest where encode = genericEncode options

-- | Constructs RegisterJobDefinitionRequest from required parameters
newRegisterJobDefinitionRequest :: String -> JobDefinitionType -> RegisterJobDefinitionRequest
newRegisterJobDefinitionRequest _jobDefinitionName _type = RegisterJobDefinitionRequest { "jobDefinitionName": _jobDefinitionName, "type": _type, "containerProperties": Nothing, "parameters": Nothing, "retryStrategy": Nothing }

-- | Constructs RegisterJobDefinitionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterJobDefinitionRequest' :: String -> JobDefinitionType -> ( { "jobDefinitionName" :: (String) , "type" :: (JobDefinitionType) , "parameters" :: Maybe (ParametersMap) , "containerProperties" :: Maybe (ContainerProperties) , "retryStrategy" :: Maybe (RetryStrategy) } -> {"jobDefinitionName" :: (String) , "type" :: (JobDefinitionType) , "parameters" :: Maybe (ParametersMap) , "containerProperties" :: Maybe (ContainerProperties) , "retryStrategy" :: Maybe (RetryStrategy) } ) -> RegisterJobDefinitionRequest
newRegisterJobDefinitionRequest' _jobDefinitionName _type customize = (RegisterJobDefinitionRequest <<< customize) { "jobDefinitionName": _jobDefinitionName, "type": _type, "containerProperties": Nothing, "parameters": Nothing, "retryStrategy": Nothing }



newtype RegisterJobDefinitionResponse = RegisterJobDefinitionResponse 
  { "jobDefinitionName" :: (String)
  , "jobDefinitionArn" :: (String)
  , "revision" :: (Int)
  }
derive instance newtypeRegisterJobDefinitionResponse :: Newtype RegisterJobDefinitionResponse _
derive instance repGenericRegisterJobDefinitionResponse :: Generic RegisterJobDefinitionResponse _
instance showRegisterJobDefinitionResponse :: Show RegisterJobDefinitionResponse where show = genericShow
instance decodeRegisterJobDefinitionResponse :: Decode RegisterJobDefinitionResponse where decode = genericDecode options
instance encodeRegisterJobDefinitionResponse :: Encode RegisterJobDefinitionResponse where encode = genericEncode options

-- | Constructs RegisterJobDefinitionResponse from required parameters
newRegisterJobDefinitionResponse :: String -> String -> Int -> RegisterJobDefinitionResponse
newRegisterJobDefinitionResponse _jobDefinitionArn _jobDefinitionName _revision = RegisterJobDefinitionResponse { "jobDefinitionArn": _jobDefinitionArn, "jobDefinitionName": _jobDefinitionName, "revision": _revision }

-- | Constructs RegisterJobDefinitionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterJobDefinitionResponse' :: String -> String -> Int -> ( { "jobDefinitionName" :: (String) , "jobDefinitionArn" :: (String) , "revision" :: (Int) } -> {"jobDefinitionName" :: (String) , "jobDefinitionArn" :: (String) , "revision" :: (Int) } ) -> RegisterJobDefinitionResponse
newRegisterJobDefinitionResponse' _jobDefinitionArn _jobDefinitionName _revision customize = (RegisterJobDefinitionResponse <<< customize) { "jobDefinitionArn": _jobDefinitionArn, "jobDefinitionName": _jobDefinitionName, "revision": _revision }



-- | <p>The retry strategy associated with a job.</p>
newtype RetryStrategy = RetryStrategy 
  { "attempts" :: Maybe (Int)
  }
derive instance newtypeRetryStrategy :: Newtype RetryStrategy _
derive instance repGenericRetryStrategy :: Generic RetryStrategy _
instance showRetryStrategy :: Show RetryStrategy where show = genericShow
instance decodeRetryStrategy :: Decode RetryStrategy where decode = genericDecode options
instance encodeRetryStrategy :: Encode RetryStrategy where encode = genericEncode options

-- | Constructs RetryStrategy from required parameters
newRetryStrategy :: RetryStrategy
newRetryStrategy  = RetryStrategy { "attempts": Nothing }

-- | Constructs RetryStrategy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRetryStrategy' :: ( { "attempts" :: Maybe (Int) } -> {"attempts" :: Maybe (Int) } ) -> RetryStrategy
newRetryStrategy'  customize = (RetryStrategy <<< customize) { "attempts": Nothing }



-- | <p>These errors are usually caused by a server issue.</p>
newtype ServerException = ServerException 
  { "message" :: Maybe (String)
  }
derive instance newtypeServerException :: Newtype ServerException _
derive instance repGenericServerException :: Generic ServerException _
instance showServerException :: Show ServerException where show = genericShow
instance decodeServerException :: Decode ServerException where decode = genericDecode options
instance encodeServerException :: Encode ServerException where encode = genericEncode options

-- | Constructs ServerException from required parameters
newServerException :: ServerException
newServerException  = ServerException { "message": Nothing }

-- | Constructs ServerException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServerException' :: ( { "message" :: Maybe (String) } -> {"message" :: Maybe (String) } ) -> ServerException
newServerException'  customize = (ServerException <<< customize) { "message": Nothing }



newtype StringList = StringList (Array String)
derive instance newtypeStringList :: Newtype StringList _
derive instance repGenericStringList :: Generic StringList _
instance showStringList :: Show StringList where show = genericShow
instance decodeStringList :: Decode StringList where decode = genericDecode options
instance encodeStringList :: Encode StringList where encode = genericEncode options



newtype SubmitJobRequest = SubmitJobRequest 
  { "jobName" :: (String)
  , "jobQueue" :: (String)
  , "arrayProperties" :: Maybe (ArrayProperties)
  , "dependsOn" :: Maybe (JobDependencyList)
  , "jobDefinition" :: (String)
  , "parameters" :: Maybe (ParametersMap)
  , "containerOverrides" :: Maybe (ContainerOverrides)
  , "retryStrategy" :: Maybe (RetryStrategy)
  }
derive instance newtypeSubmitJobRequest :: Newtype SubmitJobRequest _
derive instance repGenericSubmitJobRequest :: Generic SubmitJobRequest _
instance showSubmitJobRequest :: Show SubmitJobRequest where show = genericShow
instance decodeSubmitJobRequest :: Decode SubmitJobRequest where decode = genericDecode options
instance encodeSubmitJobRequest :: Encode SubmitJobRequest where encode = genericEncode options

-- | Constructs SubmitJobRequest from required parameters
newSubmitJobRequest :: String -> String -> String -> SubmitJobRequest
newSubmitJobRequest _jobDefinition _jobName _jobQueue = SubmitJobRequest { "jobDefinition": _jobDefinition, "jobName": _jobName, "jobQueue": _jobQueue, "arrayProperties": Nothing, "containerOverrides": Nothing, "dependsOn": Nothing, "parameters": Nothing, "retryStrategy": Nothing }

-- | Constructs SubmitJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSubmitJobRequest' :: String -> String -> String -> ( { "jobName" :: (String) , "jobQueue" :: (String) , "arrayProperties" :: Maybe (ArrayProperties) , "dependsOn" :: Maybe (JobDependencyList) , "jobDefinition" :: (String) , "parameters" :: Maybe (ParametersMap) , "containerOverrides" :: Maybe (ContainerOverrides) , "retryStrategy" :: Maybe (RetryStrategy) } -> {"jobName" :: (String) , "jobQueue" :: (String) , "arrayProperties" :: Maybe (ArrayProperties) , "dependsOn" :: Maybe (JobDependencyList) , "jobDefinition" :: (String) , "parameters" :: Maybe (ParametersMap) , "containerOverrides" :: Maybe (ContainerOverrides) , "retryStrategy" :: Maybe (RetryStrategy) } ) -> SubmitJobRequest
newSubmitJobRequest' _jobDefinition _jobName _jobQueue customize = (SubmitJobRequest <<< customize) { "jobDefinition": _jobDefinition, "jobName": _jobName, "jobQueue": _jobQueue, "arrayProperties": Nothing, "containerOverrides": Nothing, "dependsOn": Nothing, "parameters": Nothing, "retryStrategy": Nothing }



newtype SubmitJobResponse = SubmitJobResponse 
  { "jobName" :: (String)
  , "jobId" :: (String)
  }
derive instance newtypeSubmitJobResponse :: Newtype SubmitJobResponse _
derive instance repGenericSubmitJobResponse :: Generic SubmitJobResponse _
instance showSubmitJobResponse :: Show SubmitJobResponse where show = genericShow
instance decodeSubmitJobResponse :: Decode SubmitJobResponse where decode = genericDecode options
instance encodeSubmitJobResponse :: Encode SubmitJobResponse where encode = genericEncode options

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
instance showTagsMap :: Show TagsMap where show = genericShow
instance decodeTagsMap :: Decode TagsMap where decode = genericDecode options
instance encodeTagsMap :: Encode TagsMap where encode = genericEncode options



newtype TerminateJobRequest = TerminateJobRequest 
  { "jobId" :: (String)
  , "reason" :: (String)
  }
derive instance newtypeTerminateJobRequest :: Newtype TerminateJobRequest _
derive instance repGenericTerminateJobRequest :: Generic TerminateJobRequest _
instance showTerminateJobRequest :: Show TerminateJobRequest where show = genericShow
instance decodeTerminateJobRequest :: Decode TerminateJobRequest where decode = genericDecode options
instance encodeTerminateJobRequest :: Encode TerminateJobRequest where encode = genericEncode options

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
instance showTerminateJobResponse :: Show TerminateJobResponse where show = genericShow
instance decodeTerminateJobResponse :: Decode TerminateJobResponse where decode = genericDecode options
instance encodeTerminateJobResponse :: Encode TerminateJobResponse where encode = genericEncode options



-- | <p>The <code>ulimit</code> settings to pass to the container.</p>
newtype Ulimit = Ulimit 
  { "hardLimit" :: (Int)
  , "name" :: (String)
  , "softLimit" :: (Int)
  }
derive instance newtypeUlimit :: Newtype Ulimit _
derive instance repGenericUlimit :: Generic Ulimit _
instance showUlimit :: Show Ulimit where show = genericShow
instance decodeUlimit :: Decode Ulimit where decode = genericDecode options
instance encodeUlimit :: Encode Ulimit where encode = genericEncode options

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
instance showUlimits :: Show Ulimits where show = genericShow
instance decodeUlimits :: Decode Ulimits where decode = genericDecode options
instance encodeUlimits :: Encode Ulimits where encode = genericEncode options



newtype UpdateComputeEnvironmentRequest = UpdateComputeEnvironmentRequest 
  { "computeEnvironment" :: (String)
  , "state" :: Maybe (CEState)
  , "computeResources" :: Maybe (ComputeResourceUpdate)
  , "serviceRole" :: Maybe (String)
  }
derive instance newtypeUpdateComputeEnvironmentRequest :: Newtype UpdateComputeEnvironmentRequest _
derive instance repGenericUpdateComputeEnvironmentRequest :: Generic UpdateComputeEnvironmentRequest _
instance showUpdateComputeEnvironmentRequest :: Show UpdateComputeEnvironmentRequest where show = genericShow
instance decodeUpdateComputeEnvironmentRequest :: Decode UpdateComputeEnvironmentRequest where decode = genericDecode options
instance encodeUpdateComputeEnvironmentRequest :: Encode UpdateComputeEnvironmentRequest where encode = genericEncode options

-- | Constructs UpdateComputeEnvironmentRequest from required parameters
newUpdateComputeEnvironmentRequest :: String -> UpdateComputeEnvironmentRequest
newUpdateComputeEnvironmentRequest _computeEnvironment = UpdateComputeEnvironmentRequest { "computeEnvironment": _computeEnvironment, "computeResources": Nothing, "serviceRole": Nothing, "state": Nothing }

-- | Constructs UpdateComputeEnvironmentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateComputeEnvironmentRequest' :: String -> ( { "computeEnvironment" :: (String) , "state" :: Maybe (CEState) , "computeResources" :: Maybe (ComputeResourceUpdate) , "serviceRole" :: Maybe (String) } -> {"computeEnvironment" :: (String) , "state" :: Maybe (CEState) , "computeResources" :: Maybe (ComputeResourceUpdate) , "serviceRole" :: Maybe (String) } ) -> UpdateComputeEnvironmentRequest
newUpdateComputeEnvironmentRequest' _computeEnvironment customize = (UpdateComputeEnvironmentRequest <<< customize) { "computeEnvironment": _computeEnvironment, "computeResources": Nothing, "serviceRole": Nothing, "state": Nothing }



newtype UpdateComputeEnvironmentResponse = UpdateComputeEnvironmentResponse 
  { "computeEnvironmentName" :: Maybe (String)
  , "computeEnvironmentArn" :: Maybe (String)
  }
derive instance newtypeUpdateComputeEnvironmentResponse :: Newtype UpdateComputeEnvironmentResponse _
derive instance repGenericUpdateComputeEnvironmentResponse :: Generic UpdateComputeEnvironmentResponse _
instance showUpdateComputeEnvironmentResponse :: Show UpdateComputeEnvironmentResponse where show = genericShow
instance decodeUpdateComputeEnvironmentResponse :: Decode UpdateComputeEnvironmentResponse where decode = genericDecode options
instance encodeUpdateComputeEnvironmentResponse :: Encode UpdateComputeEnvironmentResponse where encode = genericEncode options

-- | Constructs UpdateComputeEnvironmentResponse from required parameters
newUpdateComputeEnvironmentResponse :: UpdateComputeEnvironmentResponse
newUpdateComputeEnvironmentResponse  = UpdateComputeEnvironmentResponse { "computeEnvironmentArn": Nothing, "computeEnvironmentName": Nothing }

-- | Constructs UpdateComputeEnvironmentResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateComputeEnvironmentResponse' :: ( { "computeEnvironmentName" :: Maybe (String) , "computeEnvironmentArn" :: Maybe (String) } -> {"computeEnvironmentName" :: Maybe (String) , "computeEnvironmentArn" :: Maybe (String) } ) -> UpdateComputeEnvironmentResponse
newUpdateComputeEnvironmentResponse'  customize = (UpdateComputeEnvironmentResponse <<< customize) { "computeEnvironmentArn": Nothing, "computeEnvironmentName": Nothing }



newtype UpdateJobQueueRequest = UpdateJobQueueRequest 
  { "jobQueue" :: (String)
  , "state" :: Maybe (JQState)
  , "priority" :: Maybe (Int)
  , "computeEnvironmentOrder" :: Maybe (ComputeEnvironmentOrders)
  }
derive instance newtypeUpdateJobQueueRequest :: Newtype UpdateJobQueueRequest _
derive instance repGenericUpdateJobQueueRequest :: Generic UpdateJobQueueRequest _
instance showUpdateJobQueueRequest :: Show UpdateJobQueueRequest where show = genericShow
instance decodeUpdateJobQueueRequest :: Decode UpdateJobQueueRequest where decode = genericDecode options
instance encodeUpdateJobQueueRequest :: Encode UpdateJobQueueRequest where encode = genericEncode options

-- | Constructs UpdateJobQueueRequest from required parameters
newUpdateJobQueueRequest :: String -> UpdateJobQueueRequest
newUpdateJobQueueRequest _jobQueue = UpdateJobQueueRequest { "jobQueue": _jobQueue, "computeEnvironmentOrder": Nothing, "priority": Nothing, "state": Nothing }

-- | Constructs UpdateJobQueueRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateJobQueueRequest' :: String -> ( { "jobQueue" :: (String) , "state" :: Maybe (JQState) , "priority" :: Maybe (Int) , "computeEnvironmentOrder" :: Maybe (ComputeEnvironmentOrders) } -> {"jobQueue" :: (String) , "state" :: Maybe (JQState) , "priority" :: Maybe (Int) , "computeEnvironmentOrder" :: Maybe (ComputeEnvironmentOrders) } ) -> UpdateJobQueueRequest
newUpdateJobQueueRequest' _jobQueue customize = (UpdateJobQueueRequest <<< customize) { "jobQueue": _jobQueue, "computeEnvironmentOrder": Nothing, "priority": Nothing, "state": Nothing }



newtype UpdateJobQueueResponse = UpdateJobQueueResponse 
  { "jobQueueName" :: Maybe (String)
  , "jobQueueArn" :: Maybe (String)
  }
derive instance newtypeUpdateJobQueueResponse :: Newtype UpdateJobQueueResponse _
derive instance repGenericUpdateJobQueueResponse :: Generic UpdateJobQueueResponse _
instance showUpdateJobQueueResponse :: Show UpdateJobQueueResponse where show = genericShow
instance decodeUpdateJobQueueResponse :: Decode UpdateJobQueueResponse where decode = genericDecode options
instance encodeUpdateJobQueueResponse :: Encode UpdateJobQueueResponse where encode = genericEncode options

-- | Constructs UpdateJobQueueResponse from required parameters
newUpdateJobQueueResponse :: UpdateJobQueueResponse
newUpdateJobQueueResponse  = UpdateJobQueueResponse { "jobQueueArn": Nothing, "jobQueueName": Nothing }

-- | Constructs UpdateJobQueueResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateJobQueueResponse' :: ( { "jobQueueName" :: Maybe (String) , "jobQueueArn" :: Maybe (String) } -> {"jobQueueName" :: Maybe (String) , "jobQueueArn" :: Maybe (String) } ) -> UpdateJobQueueResponse
newUpdateJobQueueResponse'  customize = (UpdateJobQueueResponse <<< customize) { "jobQueueArn": Nothing, "jobQueueName": Nothing }



-- | <p>A data volume used in a job's container properties.</p>
newtype Volume = Volume 
  { "host" :: Maybe (Host)
  , "name" :: Maybe (String)
  }
derive instance newtypeVolume :: Newtype Volume _
derive instance repGenericVolume :: Generic Volume _
instance showVolume :: Show Volume where show = genericShow
instance decodeVolume :: Decode Volume where decode = genericDecode options
instance encodeVolume :: Encode Volume where encode = genericEncode options

-- | Constructs Volume from required parameters
newVolume :: Volume
newVolume  = Volume { "host": Nothing, "name": Nothing }

-- | Constructs Volume's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVolume' :: ( { "host" :: Maybe (Host) , "name" :: Maybe (String) } -> {"host" :: Maybe (Host) , "name" :: Maybe (String) } ) -> Volume
newVolume'  customize = (Volume <<< customize) { "host": Nothing, "name": Nothing }



newtype Volumes = Volumes (Array Volume)
derive instance newtypeVolumes :: Newtype Volumes _
derive instance repGenericVolumes :: Generic Volumes _
instance showVolumes :: Show Volumes where show = genericShow
instance decodeVolumes :: Decode Volumes where decode = genericDecode options
instance encodeVolumes :: Encode Volumes where encode = genericEncode options

