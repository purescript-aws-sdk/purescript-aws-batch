
module AWS.Batch.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
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
  { "size" :: NullOrUndefined (Int)
  }
derive instance newtypeArrayProperties :: Newtype ArrayProperties _
derive instance repGenericArrayProperties :: Generic ArrayProperties _
instance showArrayProperties :: Show ArrayProperties where show = genericShow
instance decodeArrayProperties :: Decode ArrayProperties where decode = genericDecode options
instance encodeArrayProperties :: Encode ArrayProperties where encode = genericEncode options

-- | Constructs ArrayProperties from required parameters
newArrayProperties :: ArrayProperties
newArrayProperties  = ArrayProperties { "size": (NullOrUndefined Nothing) }

-- | Constructs ArrayProperties's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newArrayProperties' :: ( { "size" :: NullOrUndefined (Int) } -> {"size" :: NullOrUndefined (Int) } ) -> ArrayProperties
newArrayProperties'  customize = (ArrayProperties <<< customize) { "size": (NullOrUndefined Nothing) }



-- | <p>An object representing the array properties of a job.</p>
newtype ArrayPropertiesDetail = ArrayPropertiesDetail 
  { "statusSummary" :: NullOrUndefined (ArrayJobStatusSummary)
  , "size" :: NullOrUndefined (Int)
  , "index" :: NullOrUndefined (Int)
  }
derive instance newtypeArrayPropertiesDetail :: Newtype ArrayPropertiesDetail _
derive instance repGenericArrayPropertiesDetail :: Generic ArrayPropertiesDetail _
instance showArrayPropertiesDetail :: Show ArrayPropertiesDetail where show = genericShow
instance decodeArrayPropertiesDetail :: Decode ArrayPropertiesDetail where decode = genericDecode options
instance encodeArrayPropertiesDetail :: Encode ArrayPropertiesDetail where encode = genericEncode options

-- | Constructs ArrayPropertiesDetail from required parameters
newArrayPropertiesDetail :: ArrayPropertiesDetail
newArrayPropertiesDetail  = ArrayPropertiesDetail { "index": (NullOrUndefined Nothing), "size": (NullOrUndefined Nothing), "statusSummary": (NullOrUndefined Nothing) }

-- | Constructs ArrayPropertiesDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newArrayPropertiesDetail' :: ( { "statusSummary" :: NullOrUndefined (ArrayJobStatusSummary) , "size" :: NullOrUndefined (Int) , "index" :: NullOrUndefined (Int) } -> {"statusSummary" :: NullOrUndefined (ArrayJobStatusSummary) , "size" :: NullOrUndefined (Int) , "index" :: NullOrUndefined (Int) } ) -> ArrayPropertiesDetail
newArrayPropertiesDetail'  customize = (ArrayPropertiesDetail <<< customize) { "index": (NullOrUndefined Nothing), "size": (NullOrUndefined Nothing), "statusSummary": (NullOrUndefined Nothing) }



-- | <p>An object representing the array properties of a job.</p>
newtype ArrayPropertiesSummary = ArrayPropertiesSummary 
  { "size" :: NullOrUndefined (Int)
  , "index" :: NullOrUndefined (Int)
  }
derive instance newtypeArrayPropertiesSummary :: Newtype ArrayPropertiesSummary _
derive instance repGenericArrayPropertiesSummary :: Generic ArrayPropertiesSummary _
instance showArrayPropertiesSummary :: Show ArrayPropertiesSummary where show = genericShow
instance decodeArrayPropertiesSummary :: Decode ArrayPropertiesSummary where decode = genericDecode options
instance encodeArrayPropertiesSummary :: Encode ArrayPropertiesSummary where encode = genericEncode options

-- | Constructs ArrayPropertiesSummary from required parameters
newArrayPropertiesSummary :: ArrayPropertiesSummary
newArrayPropertiesSummary  = ArrayPropertiesSummary { "index": (NullOrUndefined Nothing), "size": (NullOrUndefined Nothing) }

-- | Constructs ArrayPropertiesSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newArrayPropertiesSummary' :: ( { "size" :: NullOrUndefined (Int) , "index" :: NullOrUndefined (Int) } -> {"size" :: NullOrUndefined (Int) , "index" :: NullOrUndefined (Int) } ) -> ArrayPropertiesSummary
newArrayPropertiesSummary'  customize = (ArrayPropertiesSummary <<< customize) { "index": (NullOrUndefined Nothing), "size": (NullOrUndefined Nothing) }



-- | <p>An object representing the details of a container that is part of a job attempt.</p>
newtype AttemptContainerDetail = AttemptContainerDetail 
  { "containerInstanceArn" :: NullOrUndefined (String)
  , "taskArn" :: NullOrUndefined (String)
  , "exitCode" :: NullOrUndefined (Int)
  , "reason" :: NullOrUndefined (String)
  , "logStreamName" :: NullOrUndefined (String)
  }
derive instance newtypeAttemptContainerDetail :: Newtype AttemptContainerDetail _
derive instance repGenericAttemptContainerDetail :: Generic AttemptContainerDetail _
instance showAttemptContainerDetail :: Show AttemptContainerDetail where show = genericShow
instance decodeAttemptContainerDetail :: Decode AttemptContainerDetail where decode = genericDecode options
instance encodeAttemptContainerDetail :: Encode AttemptContainerDetail where encode = genericEncode options

-- | Constructs AttemptContainerDetail from required parameters
newAttemptContainerDetail :: AttemptContainerDetail
newAttemptContainerDetail  = AttemptContainerDetail { "containerInstanceArn": (NullOrUndefined Nothing), "exitCode": (NullOrUndefined Nothing), "logStreamName": (NullOrUndefined Nothing), "reason": (NullOrUndefined Nothing), "taskArn": (NullOrUndefined Nothing) }

-- | Constructs AttemptContainerDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttemptContainerDetail' :: ( { "containerInstanceArn" :: NullOrUndefined (String) , "taskArn" :: NullOrUndefined (String) , "exitCode" :: NullOrUndefined (Int) , "reason" :: NullOrUndefined (String) , "logStreamName" :: NullOrUndefined (String) } -> {"containerInstanceArn" :: NullOrUndefined (String) , "taskArn" :: NullOrUndefined (String) , "exitCode" :: NullOrUndefined (Int) , "reason" :: NullOrUndefined (String) , "logStreamName" :: NullOrUndefined (String) } ) -> AttemptContainerDetail
newAttemptContainerDetail'  customize = (AttemptContainerDetail <<< customize) { "containerInstanceArn": (NullOrUndefined Nothing), "exitCode": (NullOrUndefined Nothing), "logStreamName": (NullOrUndefined Nothing), "reason": (NullOrUndefined Nothing), "taskArn": (NullOrUndefined Nothing) }



-- | <p>An object representing a job attempt.</p>
newtype AttemptDetail = AttemptDetail 
  { "container" :: NullOrUndefined (AttemptContainerDetail)
  , "startedAt" :: NullOrUndefined (Number)
  , "stoppedAt" :: NullOrUndefined (Number)
  , "statusReason" :: NullOrUndefined (String)
  }
derive instance newtypeAttemptDetail :: Newtype AttemptDetail _
derive instance repGenericAttemptDetail :: Generic AttemptDetail _
instance showAttemptDetail :: Show AttemptDetail where show = genericShow
instance decodeAttemptDetail :: Decode AttemptDetail where decode = genericDecode options
instance encodeAttemptDetail :: Encode AttemptDetail where encode = genericEncode options

-- | Constructs AttemptDetail from required parameters
newAttemptDetail :: AttemptDetail
newAttemptDetail  = AttemptDetail { "container": (NullOrUndefined Nothing), "startedAt": (NullOrUndefined Nothing), "statusReason": (NullOrUndefined Nothing), "stoppedAt": (NullOrUndefined Nothing) }

-- | Constructs AttemptDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttemptDetail' :: ( { "container" :: NullOrUndefined (AttemptContainerDetail) , "startedAt" :: NullOrUndefined (Number) , "stoppedAt" :: NullOrUndefined (Number) , "statusReason" :: NullOrUndefined (String) } -> {"container" :: NullOrUndefined (AttemptContainerDetail) , "startedAt" :: NullOrUndefined (Number) , "stoppedAt" :: NullOrUndefined (Number) , "statusReason" :: NullOrUndefined (String) } ) -> AttemptDetail
newAttemptDetail'  customize = (AttemptDetail <<< customize) { "container": (NullOrUndefined Nothing), "startedAt": (NullOrUndefined Nothing), "statusReason": (NullOrUndefined Nothing), "stoppedAt": (NullOrUndefined Nothing) }



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
  { "message" :: NullOrUndefined (String)
  }
derive instance newtypeClientException :: Newtype ClientException _
derive instance repGenericClientException :: Generic ClientException _
instance showClientException :: Show ClientException where show = genericShow
instance decodeClientException :: Decode ClientException where decode = genericDecode options
instance encodeClientException :: Encode ClientException where encode = genericEncode options

-- | Constructs ClientException from required parameters
newClientException :: ClientException
newClientException  = ClientException { "message": (NullOrUndefined Nothing) }

-- | Constructs ClientException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newClientException' :: ( { "message" :: NullOrUndefined (String) } -> {"message" :: NullOrUndefined (String) } ) -> ClientException
newClientException'  customize = (ClientException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>An object representing an AWS Batch compute environment.</p>
newtype ComputeEnvironmentDetail = ComputeEnvironmentDetail 
  { "computeEnvironmentName" :: (String)
  , "computeEnvironmentArn" :: (String)
  , "ecsClusterArn" :: (String)
  , "type" :: NullOrUndefined (CEType)
  , "state" :: NullOrUndefined (CEState)
  , "status" :: NullOrUndefined (CEStatus)
  , "statusReason" :: NullOrUndefined (String)
  , "computeResources" :: NullOrUndefined (ComputeResource)
  , "serviceRole" :: NullOrUndefined (String)
  }
derive instance newtypeComputeEnvironmentDetail :: Newtype ComputeEnvironmentDetail _
derive instance repGenericComputeEnvironmentDetail :: Generic ComputeEnvironmentDetail _
instance showComputeEnvironmentDetail :: Show ComputeEnvironmentDetail where show = genericShow
instance decodeComputeEnvironmentDetail :: Decode ComputeEnvironmentDetail where decode = genericDecode options
instance encodeComputeEnvironmentDetail :: Encode ComputeEnvironmentDetail where encode = genericEncode options

-- | Constructs ComputeEnvironmentDetail from required parameters
newComputeEnvironmentDetail :: String -> String -> String -> ComputeEnvironmentDetail
newComputeEnvironmentDetail _computeEnvironmentArn _computeEnvironmentName _ecsClusterArn = ComputeEnvironmentDetail { "computeEnvironmentArn": _computeEnvironmentArn, "computeEnvironmentName": _computeEnvironmentName, "ecsClusterArn": _ecsClusterArn, "computeResources": (NullOrUndefined Nothing), "serviceRole": (NullOrUndefined Nothing), "state": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing), "statusReason": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }

-- | Constructs ComputeEnvironmentDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newComputeEnvironmentDetail' :: String -> String -> String -> ( { "computeEnvironmentName" :: (String) , "computeEnvironmentArn" :: (String) , "ecsClusterArn" :: (String) , "type" :: NullOrUndefined (CEType) , "state" :: NullOrUndefined (CEState) , "status" :: NullOrUndefined (CEStatus) , "statusReason" :: NullOrUndefined (String) , "computeResources" :: NullOrUndefined (ComputeResource) , "serviceRole" :: NullOrUndefined (String) } -> {"computeEnvironmentName" :: (String) , "computeEnvironmentArn" :: (String) , "ecsClusterArn" :: (String) , "type" :: NullOrUndefined (CEType) , "state" :: NullOrUndefined (CEState) , "status" :: NullOrUndefined (CEStatus) , "statusReason" :: NullOrUndefined (String) , "computeResources" :: NullOrUndefined (ComputeResource) , "serviceRole" :: NullOrUndefined (String) } ) -> ComputeEnvironmentDetail
newComputeEnvironmentDetail' _computeEnvironmentArn _computeEnvironmentName _ecsClusterArn customize = (ComputeEnvironmentDetail <<< customize) { "computeEnvironmentArn": _computeEnvironmentArn, "computeEnvironmentName": _computeEnvironmentName, "ecsClusterArn": _ecsClusterArn, "computeResources": (NullOrUndefined Nothing), "serviceRole": (NullOrUndefined Nothing), "state": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing), "statusReason": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }



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
  , "desiredvCpus" :: NullOrUndefined (Int)
  , "instanceTypes" :: (StringList)
  , "imageId" :: NullOrUndefined (String)
  , "subnets" :: (StringList)
  , "securityGroupIds" :: (StringList)
  , "ec2KeyPair" :: NullOrUndefined (String)
  , "instanceRole" :: (String)
  , "tags" :: NullOrUndefined (TagsMap)
  , "bidPercentage" :: NullOrUndefined (Int)
  , "spotIamFleetRole" :: NullOrUndefined (String)
  }
derive instance newtypeComputeResource :: Newtype ComputeResource _
derive instance repGenericComputeResource :: Generic ComputeResource _
instance showComputeResource :: Show ComputeResource where show = genericShow
instance decodeComputeResource :: Decode ComputeResource where decode = genericDecode options
instance encodeComputeResource :: Encode ComputeResource where encode = genericEncode options

-- | Constructs ComputeResource from required parameters
newComputeResource :: String -> StringList -> Int -> Int -> StringList -> StringList -> CRType -> ComputeResource
newComputeResource _instanceRole _instanceTypes _maxvCpus _minvCpus _securityGroupIds _subnets _type = ComputeResource { "instanceRole": _instanceRole, "instanceTypes": _instanceTypes, "maxvCpus": _maxvCpus, "minvCpus": _minvCpus, "securityGroupIds": _securityGroupIds, "subnets": _subnets, "type": _type, "bidPercentage": (NullOrUndefined Nothing), "desiredvCpus": (NullOrUndefined Nothing), "ec2KeyPair": (NullOrUndefined Nothing), "imageId": (NullOrUndefined Nothing), "spotIamFleetRole": (NullOrUndefined Nothing), "tags": (NullOrUndefined Nothing) }

-- | Constructs ComputeResource's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newComputeResource' :: String -> StringList -> Int -> Int -> StringList -> StringList -> CRType -> ( { "type" :: (CRType) , "minvCpus" :: (Int) , "maxvCpus" :: (Int) , "desiredvCpus" :: NullOrUndefined (Int) , "instanceTypes" :: (StringList) , "imageId" :: NullOrUndefined (String) , "subnets" :: (StringList) , "securityGroupIds" :: (StringList) , "ec2KeyPair" :: NullOrUndefined (String) , "instanceRole" :: (String) , "tags" :: NullOrUndefined (TagsMap) , "bidPercentage" :: NullOrUndefined (Int) , "spotIamFleetRole" :: NullOrUndefined (String) } -> {"type" :: (CRType) , "minvCpus" :: (Int) , "maxvCpus" :: (Int) , "desiredvCpus" :: NullOrUndefined (Int) , "instanceTypes" :: (StringList) , "imageId" :: NullOrUndefined (String) , "subnets" :: (StringList) , "securityGroupIds" :: (StringList) , "ec2KeyPair" :: NullOrUndefined (String) , "instanceRole" :: (String) , "tags" :: NullOrUndefined (TagsMap) , "bidPercentage" :: NullOrUndefined (Int) , "spotIamFleetRole" :: NullOrUndefined (String) } ) -> ComputeResource
newComputeResource' _instanceRole _instanceTypes _maxvCpus _minvCpus _securityGroupIds _subnets _type customize = (ComputeResource <<< customize) { "instanceRole": _instanceRole, "instanceTypes": _instanceTypes, "maxvCpus": _maxvCpus, "minvCpus": _minvCpus, "securityGroupIds": _securityGroupIds, "subnets": _subnets, "type": _type, "bidPercentage": (NullOrUndefined Nothing), "desiredvCpus": (NullOrUndefined Nothing), "ec2KeyPair": (NullOrUndefined Nothing), "imageId": (NullOrUndefined Nothing), "spotIamFleetRole": (NullOrUndefined Nothing), "tags": (NullOrUndefined Nothing) }



-- | <p>An object representing the attributes of a compute environment that can be updated.</p>
newtype ComputeResourceUpdate = ComputeResourceUpdate 
  { "minvCpus" :: NullOrUndefined (Int)
  , "maxvCpus" :: NullOrUndefined (Int)
  , "desiredvCpus" :: NullOrUndefined (Int)
  }
derive instance newtypeComputeResourceUpdate :: Newtype ComputeResourceUpdate _
derive instance repGenericComputeResourceUpdate :: Generic ComputeResourceUpdate _
instance showComputeResourceUpdate :: Show ComputeResourceUpdate where show = genericShow
instance decodeComputeResourceUpdate :: Decode ComputeResourceUpdate where decode = genericDecode options
instance encodeComputeResourceUpdate :: Encode ComputeResourceUpdate where encode = genericEncode options

-- | Constructs ComputeResourceUpdate from required parameters
newComputeResourceUpdate :: ComputeResourceUpdate
newComputeResourceUpdate  = ComputeResourceUpdate { "desiredvCpus": (NullOrUndefined Nothing), "maxvCpus": (NullOrUndefined Nothing), "minvCpus": (NullOrUndefined Nothing) }

-- | Constructs ComputeResourceUpdate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newComputeResourceUpdate' :: ( { "minvCpus" :: NullOrUndefined (Int) , "maxvCpus" :: NullOrUndefined (Int) , "desiredvCpus" :: NullOrUndefined (Int) } -> {"minvCpus" :: NullOrUndefined (Int) , "maxvCpus" :: NullOrUndefined (Int) , "desiredvCpus" :: NullOrUndefined (Int) } ) -> ComputeResourceUpdate
newComputeResourceUpdate'  customize = (ComputeResourceUpdate <<< customize) { "desiredvCpus": (NullOrUndefined Nothing), "maxvCpus": (NullOrUndefined Nothing), "minvCpus": (NullOrUndefined Nothing) }



-- | <p>An object representing the details of a container that is part of a job.</p>
newtype ContainerDetail = ContainerDetail 
  { "image" :: NullOrUndefined (String)
  , "vcpus" :: NullOrUndefined (Int)
  , "memory" :: NullOrUndefined (Int)
  , "command" :: NullOrUndefined (StringList)
  , "jobRoleArn" :: NullOrUndefined (String)
  , "volumes" :: NullOrUndefined (Volumes)
  , "environment" :: NullOrUndefined (EnvironmentVariables)
  , "mountPoints" :: NullOrUndefined (MountPoints)
  , "readonlyRootFilesystem" :: NullOrUndefined (Boolean)
  , "ulimits" :: NullOrUndefined (Ulimits)
  , "privileged" :: NullOrUndefined (Boolean)
  , "user" :: NullOrUndefined (String)
  , "exitCode" :: NullOrUndefined (Int)
  , "reason" :: NullOrUndefined (String)
  , "containerInstanceArn" :: NullOrUndefined (String)
  , "taskArn" :: NullOrUndefined (String)
  , "logStreamName" :: NullOrUndefined (String)
  }
derive instance newtypeContainerDetail :: Newtype ContainerDetail _
derive instance repGenericContainerDetail :: Generic ContainerDetail _
instance showContainerDetail :: Show ContainerDetail where show = genericShow
instance decodeContainerDetail :: Decode ContainerDetail where decode = genericDecode options
instance encodeContainerDetail :: Encode ContainerDetail where encode = genericEncode options

-- | Constructs ContainerDetail from required parameters
newContainerDetail :: ContainerDetail
newContainerDetail  = ContainerDetail { "command": (NullOrUndefined Nothing), "containerInstanceArn": (NullOrUndefined Nothing), "environment": (NullOrUndefined Nothing), "exitCode": (NullOrUndefined Nothing), "image": (NullOrUndefined Nothing), "jobRoleArn": (NullOrUndefined Nothing), "logStreamName": (NullOrUndefined Nothing), "memory": (NullOrUndefined Nothing), "mountPoints": (NullOrUndefined Nothing), "privileged": (NullOrUndefined Nothing), "readonlyRootFilesystem": (NullOrUndefined Nothing), "reason": (NullOrUndefined Nothing), "taskArn": (NullOrUndefined Nothing), "ulimits": (NullOrUndefined Nothing), "user": (NullOrUndefined Nothing), "vcpus": (NullOrUndefined Nothing), "volumes": (NullOrUndefined Nothing) }

-- | Constructs ContainerDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContainerDetail' :: ( { "image" :: NullOrUndefined (String) , "vcpus" :: NullOrUndefined (Int) , "memory" :: NullOrUndefined (Int) , "command" :: NullOrUndefined (StringList) , "jobRoleArn" :: NullOrUndefined (String) , "volumes" :: NullOrUndefined (Volumes) , "environment" :: NullOrUndefined (EnvironmentVariables) , "mountPoints" :: NullOrUndefined (MountPoints) , "readonlyRootFilesystem" :: NullOrUndefined (Boolean) , "ulimits" :: NullOrUndefined (Ulimits) , "privileged" :: NullOrUndefined (Boolean) , "user" :: NullOrUndefined (String) , "exitCode" :: NullOrUndefined (Int) , "reason" :: NullOrUndefined (String) , "containerInstanceArn" :: NullOrUndefined (String) , "taskArn" :: NullOrUndefined (String) , "logStreamName" :: NullOrUndefined (String) } -> {"image" :: NullOrUndefined (String) , "vcpus" :: NullOrUndefined (Int) , "memory" :: NullOrUndefined (Int) , "command" :: NullOrUndefined (StringList) , "jobRoleArn" :: NullOrUndefined (String) , "volumes" :: NullOrUndefined (Volumes) , "environment" :: NullOrUndefined (EnvironmentVariables) , "mountPoints" :: NullOrUndefined (MountPoints) , "readonlyRootFilesystem" :: NullOrUndefined (Boolean) , "ulimits" :: NullOrUndefined (Ulimits) , "privileged" :: NullOrUndefined (Boolean) , "user" :: NullOrUndefined (String) , "exitCode" :: NullOrUndefined (Int) , "reason" :: NullOrUndefined (String) , "containerInstanceArn" :: NullOrUndefined (String) , "taskArn" :: NullOrUndefined (String) , "logStreamName" :: NullOrUndefined (String) } ) -> ContainerDetail
newContainerDetail'  customize = (ContainerDetail <<< customize) { "command": (NullOrUndefined Nothing), "containerInstanceArn": (NullOrUndefined Nothing), "environment": (NullOrUndefined Nothing), "exitCode": (NullOrUndefined Nothing), "image": (NullOrUndefined Nothing), "jobRoleArn": (NullOrUndefined Nothing), "logStreamName": (NullOrUndefined Nothing), "memory": (NullOrUndefined Nothing), "mountPoints": (NullOrUndefined Nothing), "privileged": (NullOrUndefined Nothing), "readonlyRootFilesystem": (NullOrUndefined Nothing), "reason": (NullOrUndefined Nothing), "taskArn": (NullOrUndefined Nothing), "ulimits": (NullOrUndefined Nothing), "user": (NullOrUndefined Nothing), "vcpus": (NullOrUndefined Nothing), "volumes": (NullOrUndefined Nothing) }



-- | <p>The overrides that should be sent to a container.</p>
newtype ContainerOverrides = ContainerOverrides 
  { "vcpus" :: NullOrUndefined (Int)
  , "memory" :: NullOrUndefined (Int)
  , "command" :: NullOrUndefined (StringList)
  , "environment" :: NullOrUndefined (EnvironmentVariables)
  }
derive instance newtypeContainerOverrides :: Newtype ContainerOverrides _
derive instance repGenericContainerOverrides :: Generic ContainerOverrides _
instance showContainerOverrides :: Show ContainerOverrides where show = genericShow
instance decodeContainerOverrides :: Decode ContainerOverrides where decode = genericDecode options
instance encodeContainerOverrides :: Encode ContainerOverrides where encode = genericEncode options

-- | Constructs ContainerOverrides from required parameters
newContainerOverrides :: ContainerOverrides
newContainerOverrides  = ContainerOverrides { "command": (NullOrUndefined Nothing), "environment": (NullOrUndefined Nothing), "memory": (NullOrUndefined Nothing), "vcpus": (NullOrUndefined Nothing) }

-- | Constructs ContainerOverrides's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContainerOverrides' :: ( { "vcpus" :: NullOrUndefined (Int) , "memory" :: NullOrUndefined (Int) , "command" :: NullOrUndefined (StringList) , "environment" :: NullOrUndefined (EnvironmentVariables) } -> {"vcpus" :: NullOrUndefined (Int) , "memory" :: NullOrUndefined (Int) , "command" :: NullOrUndefined (StringList) , "environment" :: NullOrUndefined (EnvironmentVariables) } ) -> ContainerOverrides
newContainerOverrides'  customize = (ContainerOverrides <<< customize) { "command": (NullOrUndefined Nothing), "environment": (NullOrUndefined Nothing), "memory": (NullOrUndefined Nothing), "vcpus": (NullOrUndefined Nothing) }



-- | <p>Container properties are used in job definitions to describe the container that is launched as part of a job.</p>
newtype ContainerProperties = ContainerProperties 
  { "image" :: (String)
  , "vcpus" :: (Int)
  , "memory" :: (Int)
  , "command" :: NullOrUndefined (StringList)
  , "jobRoleArn" :: NullOrUndefined (String)
  , "volumes" :: NullOrUndefined (Volumes)
  , "environment" :: NullOrUndefined (EnvironmentVariables)
  , "mountPoints" :: NullOrUndefined (MountPoints)
  , "readonlyRootFilesystem" :: NullOrUndefined (Boolean)
  , "privileged" :: NullOrUndefined (Boolean)
  , "ulimits" :: NullOrUndefined (Ulimits)
  , "user" :: NullOrUndefined (String)
  }
derive instance newtypeContainerProperties :: Newtype ContainerProperties _
derive instance repGenericContainerProperties :: Generic ContainerProperties _
instance showContainerProperties :: Show ContainerProperties where show = genericShow
instance decodeContainerProperties :: Decode ContainerProperties where decode = genericDecode options
instance encodeContainerProperties :: Encode ContainerProperties where encode = genericEncode options

-- | Constructs ContainerProperties from required parameters
newContainerProperties :: String -> Int -> Int -> ContainerProperties
newContainerProperties _image _memory _vcpus = ContainerProperties { "image": _image, "memory": _memory, "vcpus": _vcpus, "command": (NullOrUndefined Nothing), "environment": (NullOrUndefined Nothing), "jobRoleArn": (NullOrUndefined Nothing), "mountPoints": (NullOrUndefined Nothing), "privileged": (NullOrUndefined Nothing), "readonlyRootFilesystem": (NullOrUndefined Nothing), "ulimits": (NullOrUndefined Nothing), "user": (NullOrUndefined Nothing), "volumes": (NullOrUndefined Nothing) }

-- | Constructs ContainerProperties's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContainerProperties' :: String -> Int -> Int -> ( { "image" :: (String) , "vcpus" :: (Int) , "memory" :: (Int) , "command" :: NullOrUndefined (StringList) , "jobRoleArn" :: NullOrUndefined (String) , "volumes" :: NullOrUndefined (Volumes) , "environment" :: NullOrUndefined (EnvironmentVariables) , "mountPoints" :: NullOrUndefined (MountPoints) , "readonlyRootFilesystem" :: NullOrUndefined (Boolean) , "privileged" :: NullOrUndefined (Boolean) , "ulimits" :: NullOrUndefined (Ulimits) , "user" :: NullOrUndefined (String) } -> {"image" :: (String) , "vcpus" :: (Int) , "memory" :: (Int) , "command" :: NullOrUndefined (StringList) , "jobRoleArn" :: NullOrUndefined (String) , "volumes" :: NullOrUndefined (Volumes) , "environment" :: NullOrUndefined (EnvironmentVariables) , "mountPoints" :: NullOrUndefined (MountPoints) , "readonlyRootFilesystem" :: NullOrUndefined (Boolean) , "privileged" :: NullOrUndefined (Boolean) , "ulimits" :: NullOrUndefined (Ulimits) , "user" :: NullOrUndefined (String) } ) -> ContainerProperties
newContainerProperties' _image _memory _vcpus customize = (ContainerProperties <<< customize) { "image": _image, "memory": _memory, "vcpus": _vcpus, "command": (NullOrUndefined Nothing), "environment": (NullOrUndefined Nothing), "jobRoleArn": (NullOrUndefined Nothing), "mountPoints": (NullOrUndefined Nothing), "privileged": (NullOrUndefined Nothing), "readonlyRootFilesystem": (NullOrUndefined Nothing), "ulimits": (NullOrUndefined Nothing), "user": (NullOrUndefined Nothing), "volumes": (NullOrUndefined Nothing) }



-- | <p>An object representing summary details of a container within a job.</p>
newtype ContainerSummary = ContainerSummary 
  { "exitCode" :: NullOrUndefined (Int)
  , "reason" :: NullOrUndefined (String)
  }
derive instance newtypeContainerSummary :: Newtype ContainerSummary _
derive instance repGenericContainerSummary :: Generic ContainerSummary _
instance showContainerSummary :: Show ContainerSummary where show = genericShow
instance decodeContainerSummary :: Decode ContainerSummary where decode = genericDecode options
instance encodeContainerSummary :: Encode ContainerSummary where encode = genericEncode options

-- | Constructs ContainerSummary from required parameters
newContainerSummary :: ContainerSummary
newContainerSummary  = ContainerSummary { "exitCode": (NullOrUndefined Nothing), "reason": (NullOrUndefined Nothing) }

-- | Constructs ContainerSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContainerSummary' :: ( { "exitCode" :: NullOrUndefined (Int) , "reason" :: NullOrUndefined (String) } -> {"exitCode" :: NullOrUndefined (Int) , "reason" :: NullOrUndefined (String) } ) -> ContainerSummary
newContainerSummary'  customize = (ContainerSummary <<< customize) { "exitCode": (NullOrUndefined Nothing), "reason": (NullOrUndefined Nothing) }



newtype CreateComputeEnvironmentRequest = CreateComputeEnvironmentRequest 
  { "computeEnvironmentName" :: (String)
  , "type" :: (CEType)
  , "state" :: NullOrUndefined (CEState)
  , "computeResources" :: NullOrUndefined (ComputeResource)
  , "serviceRole" :: (String)
  }
derive instance newtypeCreateComputeEnvironmentRequest :: Newtype CreateComputeEnvironmentRequest _
derive instance repGenericCreateComputeEnvironmentRequest :: Generic CreateComputeEnvironmentRequest _
instance showCreateComputeEnvironmentRequest :: Show CreateComputeEnvironmentRequest where show = genericShow
instance decodeCreateComputeEnvironmentRequest :: Decode CreateComputeEnvironmentRequest where decode = genericDecode options
instance encodeCreateComputeEnvironmentRequest :: Encode CreateComputeEnvironmentRequest where encode = genericEncode options

-- | Constructs CreateComputeEnvironmentRequest from required parameters
newCreateComputeEnvironmentRequest :: String -> String -> CEType -> CreateComputeEnvironmentRequest
newCreateComputeEnvironmentRequest _computeEnvironmentName _serviceRole _type = CreateComputeEnvironmentRequest { "computeEnvironmentName": _computeEnvironmentName, "serviceRole": _serviceRole, "type": _type, "computeResources": (NullOrUndefined Nothing), "state": (NullOrUndefined Nothing) }

-- | Constructs CreateComputeEnvironmentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateComputeEnvironmentRequest' :: String -> String -> CEType -> ( { "computeEnvironmentName" :: (String) , "type" :: (CEType) , "state" :: NullOrUndefined (CEState) , "computeResources" :: NullOrUndefined (ComputeResource) , "serviceRole" :: (String) } -> {"computeEnvironmentName" :: (String) , "type" :: (CEType) , "state" :: NullOrUndefined (CEState) , "computeResources" :: NullOrUndefined (ComputeResource) , "serviceRole" :: (String) } ) -> CreateComputeEnvironmentRequest
newCreateComputeEnvironmentRequest' _computeEnvironmentName _serviceRole _type customize = (CreateComputeEnvironmentRequest <<< customize) { "computeEnvironmentName": _computeEnvironmentName, "serviceRole": _serviceRole, "type": _type, "computeResources": (NullOrUndefined Nothing), "state": (NullOrUndefined Nothing) }



newtype CreateComputeEnvironmentResponse = CreateComputeEnvironmentResponse 
  { "computeEnvironmentName" :: NullOrUndefined (String)
  , "computeEnvironmentArn" :: NullOrUndefined (String)
  }
derive instance newtypeCreateComputeEnvironmentResponse :: Newtype CreateComputeEnvironmentResponse _
derive instance repGenericCreateComputeEnvironmentResponse :: Generic CreateComputeEnvironmentResponse _
instance showCreateComputeEnvironmentResponse :: Show CreateComputeEnvironmentResponse where show = genericShow
instance decodeCreateComputeEnvironmentResponse :: Decode CreateComputeEnvironmentResponse where decode = genericDecode options
instance encodeCreateComputeEnvironmentResponse :: Encode CreateComputeEnvironmentResponse where encode = genericEncode options

-- | Constructs CreateComputeEnvironmentResponse from required parameters
newCreateComputeEnvironmentResponse :: CreateComputeEnvironmentResponse
newCreateComputeEnvironmentResponse  = CreateComputeEnvironmentResponse { "computeEnvironmentArn": (NullOrUndefined Nothing), "computeEnvironmentName": (NullOrUndefined Nothing) }

-- | Constructs CreateComputeEnvironmentResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateComputeEnvironmentResponse' :: ( { "computeEnvironmentName" :: NullOrUndefined (String) , "computeEnvironmentArn" :: NullOrUndefined (String) } -> {"computeEnvironmentName" :: NullOrUndefined (String) , "computeEnvironmentArn" :: NullOrUndefined (String) } ) -> CreateComputeEnvironmentResponse
newCreateComputeEnvironmentResponse'  customize = (CreateComputeEnvironmentResponse <<< customize) { "computeEnvironmentArn": (NullOrUndefined Nothing), "computeEnvironmentName": (NullOrUndefined Nothing) }



newtype CreateJobQueueRequest = CreateJobQueueRequest 
  { "jobQueueName" :: (String)
  , "state" :: NullOrUndefined (JQState)
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
newCreateJobQueueRequest _computeEnvironmentOrder _jobQueueName _priority = CreateJobQueueRequest { "computeEnvironmentOrder": _computeEnvironmentOrder, "jobQueueName": _jobQueueName, "priority": _priority, "state": (NullOrUndefined Nothing) }

-- | Constructs CreateJobQueueRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateJobQueueRequest' :: ComputeEnvironmentOrders -> String -> Int -> ( { "jobQueueName" :: (String) , "state" :: NullOrUndefined (JQState) , "priority" :: (Int) , "computeEnvironmentOrder" :: (ComputeEnvironmentOrders) } -> {"jobQueueName" :: (String) , "state" :: NullOrUndefined (JQState) , "priority" :: (Int) , "computeEnvironmentOrder" :: (ComputeEnvironmentOrders) } ) -> CreateJobQueueRequest
newCreateJobQueueRequest' _computeEnvironmentOrder _jobQueueName _priority customize = (CreateJobQueueRequest <<< customize) { "computeEnvironmentOrder": _computeEnvironmentOrder, "jobQueueName": _jobQueueName, "priority": _priority, "state": (NullOrUndefined Nothing) }



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
  { "computeEnvironments" :: NullOrUndefined (StringList)
  , "maxResults" :: NullOrUndefined (Int)
  , "nextToken" :: NullOrUndefined (String)
  }
derive instance newtypeDescribeComputeEnvironmentsRequest :: Newtype DescribeComputeEnvironmentsRequest _
derive instance repGenericDescribeComputeEnvironmentsRequest :: Generic DescribeComputeEnvironmentsRequest _
instance showDescribeComputeEnvironmentsRequest :: Show DescribeComputeEnvironmentsRequest where show = genericShow
instance decodeDescribeComputeEnvironmentsRequest :: Decode DescribeComputeEnvironmentsRequest where decode = genericDecode options
instance encodeDescribeComputeEnvironmentsRequest :: Encode DescribeComputeEnvironmentsRequest where encode = genericEncode options

-- | Constructs DescribeComputeEnvironmentsRequest from required parameters
newDescribeComputeEnvironmentsRequest :: DescribeComputeEnvironmentsRequest
newDescribeComputeEnvironmentsRequest  = DescribeComputeEnvironmentsRequest { "computeEnvironments": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeComputeEnvironmentsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeComputeEnvironmentsRequest' :: ( { "computeEnvironments" :: NullOrUndefined (StringList) , "maxResults" :: NullOrUndefined (Int) , "nextToken" :: NullOrUndefined (String) } -> {"computeEnvironments" :: NullOrUndefined (StringList) , "maxResults" :: NullOrUndefined (Int) , "nextToken" :: NullOrUndefined (String) } ) -> DescribeComputeEnvironmentsRequest
newDescribeComputeEnvironmentsRequest'  customize = (DescribeComputeEnvironmentsRequest <<< customize) { "computeEnvironments": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype DescribeComputeEnvironmentsResponse = DescribeComputeEnvironmentsResponse 
  { "computeEnvironments" :: NullOrUndefined (ComputeEnvironmentDetailList)
  , "nextToken" :: NullOrUndefined (String)
  }
derive instance newtypeDescribeComputeEnvironmentsResponse :: Newtype DescribeComputeEnvironmentsResponse _
derive instance repGenericDescribeComputeEnvironmentsResponse :: Generic DescribeComputeEnvironmentsResponse _
instance showDescribeComputeEnvironmentsResponse :: Show DescribeComputeEnvironmentsResponse where show = genericShow
instance decodeDescribeComputeEnvironmentsResponse :: Decode DescribeComputeEnvironmentsResponse where decode = genericDecode options
instance encodeDescribeComputeEnvironmentsResponse :: Encode DescribeComputeEnvironmentsResponse where encode = genericEncode options

-- | Constructs DescribeComputeEnvironmentsResponse from required parameters
newDescribeComputeEnvironmentsResponse :: DescribeComputeEnvironmentsResponse
newDescribeComputeEnvironmentsResponse  = DescribeComputeEnvironmentsResponse { "computeEnvironments": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeComputeEnvironmentsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeComputeEnvironmentsResponse' :: ( { "computeEnvironments" :: NullOrUndefined (ComputeEnvironmentDetailList) , "nextToken" :: NullOrUndefined (String) } -> {"computeEnvironments" :: NullOrUndefined (ComputeEnvironmentDetailList) , "nextToken" :: NullOrUndefined (String) } ) -> DescribeComputeEnvironmentsResponse
newDescribeComputeEnvironmentsResponse'  customize = (DescribeComputeEnvironmentsResponse <<< customize) { "computeEnvironments": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype DescribeJobDefinitionsRequest = DescribeJobDefinitionsRequest 
  { "jobDefinitions" :: NullOrUndefined (StringList)
  , "maxResults" :: NullOrUndefined (Int)
  , "jobDefinitionName" :: NullOrUndefined (String)
  , "status" :: NullOrUndefined (String)
  , "nextToken" :: NullOrUndefined (String)
  }
derive instance newtypeDescribeJobDefinitionsRequest :: Newtype DescribeJobDefinitionsRequest _
derive instance repGenericDescribeJobDefinitionsRequest :: Generic DescribeJobDefinitionsRequest _
instance showDescribeJobDefinitionsRequest :: Show DescribeJobDefinitionsRequest where show = genericShow
instance decodeDescribeJobDefinitionsRequest :: Decode DescribeJobDefinitionsRequest where decode = genericDecode options
instance encodeDescribeJobDefinitionsRequest :: Encode DescribeJobDefinitionsRequest where encode = genericEncode options

-- | Constructs DescribeJobDefinitionsRequest from required parameters
newDescribeJobDefinitionsRequest :: DescribeJobDefinitionsRequest
newDescribeJobDefinitionsRequest  = DescribeJobDefinitionsRequest { "jobDefinitionName": (NullOrUndefined Nothing), "jobDefinitions": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }

-- | Constructs DescribeJobDefinitionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeJobDefinitionsRequest' :: ( { "jobDefinitions" :: NullOrUndefined (StringList) , "maxResults" :: NullOrUndefined (Int) , "jobDefinitionName" :: NullOrUndefined (String) , "status" :: NullOrUndefined (String) , "nextToken" :: NullOrUndefined (String) } -> {"jobDefinitions" :: NullOrUndefined (StringList) , "maxResults" :: NullOrUndefined (Int) , "jobDefinitionName" :: NullOrUndefined (String) , "status" :: NullOrUndefined (String) , "nextToken" :: NullOrUndefined (String) } ) -> DescribeJobDefinitionsRequest
newDescribeJobDefinitionsRequest'  customize = (DescribeJobDefinitionsRequest <<< customize) { "jobDefinitionName": (NullOrUndefined Nothing), "jobDefinitions": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }



newtype DescribeJobDefinitionsResponse = DescribeJobDefinitionsResponse 
  { "jobDefinitions" :: NullOrUndefined (JobDefinitionList)
  , "nextToken" :: NullOrUndefined (String)
  }
derive instance newtypeDescribeJobDefinitionsResponse :: Newtype DescribeJobDefinitionsResponse _
derive instance repGenericDescribeJobDefinitionsResponse :: Generic DescribeJobDefinitionsResponse _
instance showDescribeJobDefinitionsResponse :: Show DescribeJobDefinitionsResponse where show = genericShow
instance decodeDescribeJobDefinitionsResponse :: Decode DescribeJobDefinitionsResponse where decode = genericDecode options
instance encodeDescribeJobDefinitionsResponse :: Encode DescribeJobDefinitionsResponse where encode = genericEncode options

-- | Constructs DescribeJobDefinitionsResponse from required parameters
newDescribeJobDefinitionsResponse :: DescribeJobDefinitionsResponse
newDescribeJobDefinitionsResponse  = DescribeJobDefinitionsResponse { "jobDefinitions": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeJobDefinitionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeJobDefinitionsResponse' :: ( { "jobDefinitions" :: NullOrUndefined (JobDefinitionList) , "nextToken" :: NullOrUndefined (String) } -> {"jobDefinitions" :: NullOrUndefined (JobDefinitionList) , "nextToken" :: NullOrUndefined (String) } ) -> DescribeJobDefinitionsResponse
newDescribeJobDefinitionsResponse'  customize = (DescribeJobDefinitionsResponse <<< customize) { "jobDefinitions": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype DescribeJobQueuesRequest = DescribeJobQueuesRequest 
  { "jobQueues" :: NullOrUndefined (StringList)
  , "maxResults" :: NullOrUndefined (Int)
  , "nextToken" :: NullOrUndefined (String)
  }
derive instance newtypeDescribeJobQueuesRequest :: Newtype DescribeJobQueuesRequest _
derive instance repGenericDescribeJobQueuesRequest :: Generic DescribeJobQueuesRequest _
instance showDescribeJobQueuesRequest :: Show DescribeJobQueuesRequest where show = genericShow
instance decodeDescribeJobQueuesRequest :: Decode DescribeJobQueuesRequest where decode = genericDecode options
instance encodeDescribeJobQueuesRequest :: Encode DescribeJobQueuesRequest where encode = genericEncode options

-- | Constructs DescribeJobQueuesRequest from required parameters
newDescribeJobQueuesRequest :: DescribeJobQueuesRequest
newDescribeJobQueuesRequest  = DescribeJobQueuesRequest { "jobQueues": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeJobQueuesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeJobQueuesRequest' :: ( { "jobQueues" :: NullOrUndefined (StringList) , "maxResults" :: NullOrUndefined (Int) , "nextToken" :: NullOrUndefined (String) } -> {"jobQueues" :: NullOrUndefined (StringList) , "maxResults" :: NullOrUndefined (Int) , "nextToken" :: NullOrUndefined (String) } ) -> DescribeJobQueuesRequest
newDescribeJobQueuesRequest'  customize = (DescribeJobQueuesRequest <<< customize) { "jobQueues": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype DescribeJobQueuesResponse = DescribeJobQueuesResponse 
  { "jobQueues" :: NullOrUndefined (JobQueueDetailList)
  , "nextToken" :: NullOrUndefined (String)
  }
derive instance newtypeDescribeJobQueuesResponse :: Newtype DescribeJobQueuesResponse _
derive instance repGenericDescribeJobQueuesResponse :: Generic DescribeJobQueuesResponse _
instance showDescribeJobQueuesResponse :: Show DescribeJobQueuesResponse where show = genericShow
instance decodeDescribeJobQueuesResponse :: Decode DescribeJobQueuesResponse where decode = genericDecode options
instance encodeDescribeJobQueuesResponse :: Encode DescribeJobQueuesResponse where encode = genericEncode options

-- | Constructs DescribeJobQueuesResponse from required parameters
newDescribeJobQueuesResponse :: DescribeJobQueuesResponse
newDescribeJobQueuesResponse  = DescribeJobQueuesResponse { "jobQueues": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeJobQueuesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeJobQueuesResponse' :: ( { "jobQueues" :: NullOrUndefined (JobQueueDetailList) , "nextToken" :: NullOrUndefined (String) } -> {"jobQueues" :: NullOrUndefined (JobQueueDetailList) , "nextToken" :: NullOrUndefined (String) } ) -> DescribeJobQueuesResponse
newDescribeJobQueuesResponse'  customize = (DescribeJobQueuesResponse <<< customize) { "jobQueues": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



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
  { "jobs" :: NullOrUndefined (JobDetailList)
  }
derive instance newtypeDescribeJobsResponse :: Newtype DescribeJobsResponse _
derive instance repGenericDescribeJobsResponse :: Generic DescribeJobsResponse _
instance showDescribeJobsResponse :: Show DescribeJobsResponse where show = genericShow
instance decodeDescribeJobsResponse :: Decode DescribeJobsResponse where decode = genericDecode options
instance encodeDescribeJobsResponse :: Encode DescribeJobsResponse where encode = genericEncode options

-- | Constructs DescribeJobsResponse from required parameters
newDescribeJobsResponse :: DescribeJobsResponse
newDescribeJobsResponse  = DescribeJobsResponse { "jobs": (NullOrUndefined Nothing) }

-- | Constructs DescribeJobsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeJobsResponse' :: ( { "jobs" :: NullOrUndefined (JobDetailList) } -> {"jobs" :: NullOrUndefined (JobDetailList) } ) -> DescribeJobsResponse
newDescribeJobsResponse'  customize = (DescribeJobsResponse <<< customize) { "jobs": (NullOrUndefined Nothing) }



newtype EnvironmentVariables = EnvironmentVariables (Array KeyValuePair)
derive instance newtypeEnvironmentVariables :: Newtype EnvironmentVariables _
derive instance repGenericEnvironmentVariables :: Generic EnvironmentVariables _
instance showEnvironmentVariables :: Show EnvironmentVariables where show = genericShow
instance decodeEnvironmentVariables :: Decode EnvironmentVariables where decode = genericDecode options
instance encodeEnvironmentVariables :: Encode EnvironmentVariables where encode = genericEncode options



-- | <p>The contents of the <code>host</code> parameter determine whether your data volume persists on the host container instance and where it is stored. If the host parameter is empty, then the Docker daemon assigns a host path for your data volume, but the data is not guaranteed to persist after the containers associated with it stop running.</p>
newtype Host = Host 
  { "sourcePath" :: NullOrUndefined (String)
  }
derive instance newtypeHost :: Newtype Host _
derive instance repGenericHost :: Generic Host _
instance showHost :: Show Host where show = genericShow
instance decodeHost :: Decode Host where decode = genericDecode options
instance encodeHost :: Encode Host where encode = genericEncode options

-- | Constructs Host from required parameters
newHost :: Host
newHost  = Host { "sourcePath": (NullOrUndefined Nothing) }

-- | Constructs Host's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHost' :: ( { "sourcePath" :: NullOrUndefined (String) } -> {"sourcePath" :: NullOrUndefined (String) } ) -> Host
newHost'  customize = (Host <<< customize) { "sourcePath": (NullOrUndefined Nothing) }



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
  , "status" :: NullOrUndefined (String)
  , "type" :: (String)
  , "parameters" :: NullOrUndefined (ParametersMap)
  , "retryStrategy" :: NullOrUndefined (RetryStrategy)
  , "containerProperties" :: NullOrUndefined (ContainerProperties)
  }
derive instance newtypeJobDefinition :: Newtype JobDefinition _
derive instance repGenericJobDefinition :: Generic JobDefinition _
instance showJobDefinition :: Show JobDefinition where show = genericShow
instance decodeJobDefinition :: Decode JobDefinition where decode = genericDecode options
instance encodeJobDefinition :: Encode JobDefinition where encode = genericEncode options

-- | Constructs JobDefinition from required parameters
newJobDefinition :: String -> String -> Int -> String -> JobDefinition
newJobDefinition _jobDefinitionArn _jobDefinitionName _revision _type = JobDefinition { "jobDefinitionArn": _jobDefinitionArn, "jobDefinitionName": _jobDefinitionName, "revision": _revision, "type": _type, "containerProperties": (NullOrUndefined Nothing), "parameters": (NullOrUndefined Nothing), "retryStrategy": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }

-- | Constructs JobDefinition's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobDefinition' :: String -> String -> Int -> String -> ( { "jobDefinitionName" :: (String) , "jobDefinitionArn" :: (String) , "revision" :: (Int) , "status" :: NullOrUndefined (String) , "type" :: (String) , "parameters" :: NullOrUndefined (ParametersMap) , "retryStrategy" :: NullOrUndefined (RetryStrategy) , "containerProperties" :: NullOrUndefined (ContainerProperties) } -> {"jobDefinitionName" :: (String) , "jobDefinitionArn" :: (String) , "revision" :: (Int) , "status" :: NullOrUndefined (String) , "type" :: (String) , "parameters" :: NullOrUndefined (ParametersMap) , "retryStrategy" :: NullOrUndefined (RetryStrategy) , "containerProperties" :: NullOrUndefined (ContainerProperties) } ) -> JobDefinition
newJobDefinition' _jobDefinitionArn _jobDefinitionName _revision _type customize = (JobDefinition <<< customize) { "jobDefinitionArn": _jobDefinitionArn, "jobDefinitionName": _jobDefinitionName, "revision": _revision, "type": _type, "containerProperties": (NullOrUndefined Nothing), "parameters": (NullOrUndefined Nothing), "retryStrategy": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }



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
  { "jobId" :: NullOrUndefined (String)
  , "type" :: NullOrUndefined (ArrayJobDependency)
  }
derive instance newtypeJobDependency :: Newtype JobDependency _
derive instance repGenericJobDependency :: Generic JobDependency _
instance showJobDependency :: Show JobDependency where show = genericShow
instance decodeJobDependency :: Decode JobDependency where decode = genericDecode options
instance encodeJobDependency :: Encode JobDependency where encode = genericEncode options

-- | Constructs JobDependency from required parameters
newJobDependency :: JobDependency
newJobDependency  = JobDependency { "jobId": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }

-- | Constructs JobDependency's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobDependency' :: ( { "jobId" :: NullOrUndefined (String) , "type" :: NullOrUndefined (ArrayJobDependency) } -> {"jobId" :: NullOrUndefined (String) , "type" :: NullOrUndefined (ArrayJobDependency) } ) -> JobDependency
newJobDependency'  customize = (JobDependency <<< customize) { "jobId": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }



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
  , "attempts" :: NullOrUndefined (AttemptDetails)
  , "statusReason" :: NullOrUndefined (String)
  , "createdAt" :: NullOrUndefined (Number)
  , "retryStrategy" :: NullOrUndefined (RetryStrategy)
  , "startedAt" :: (Number)
  , "stoppedAt" :: NullOrUndefined (Number)
  , "dependsOn" :: NullOrUndefined (JobDependencyList)
  , "jobDefinition" :: (String)
  , "parameters" :: NullOrUndefined (ParametersMap)
  , "container" :: NullOrUndefined (ContainerDetail)
  , "arrayProperties" :: NullOrUndefined (ArrayPropertiesDetail)
  }
derive instance newtypeJobDetail :: Newtype JobDetail _
derive instance repGenericJobDetail :: Generic JobDetail _
instance showJobDetail :: Show JobDetail where show = genericShow
instance decodeJobDetail :: Decode JobDetail where decode = genericDecode options
instance encodeJobDetail :: Encode JobDetail where encode = genericEncode options

-- | Constructs JobDetail from required parameters
newJobDetail :: String -> String -> String -> String -> Number -> JobStatus -> JobDetail
newJobDetail _jobDefinition _jobId _jobName _jobQueue _startedAt _status = JobDetail { "jobDefinition": _jobDefinition, "jobId": _jobId, "jobName": _jobName, "jobQueue": _jobQueue, "startedAt": _startedAt, "status": _status, "arrayProperties": (NullOrUndefined Nothing), "attempts": (NullOrUndefined Nothing), "container": (NullOrUndefined Nothing), "createdAt": (NullOrUndefined Nothing), "dependsOn": (NullOrUndefined Nothing), "parameters": (NullOrUndefined Nothing), "retryStrategy": (NullOrUndefined Nothing), "statusReason": (NullOrUndefined Nothing), "stoppedAt": (NullOrUndefined Nothing) }

-- | Constructs JobDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobDetail' :: String -> String -> String -> String -> Number -> JobStatus -> ( { "jobName" :: (String) , "jobId" :: (String) , "jobQueue" :: (String) , "status" :: (JobStatus) , "attempts" :: NullOrUndefined (AttemptDetails) , "statusReason" :: NullOrUndefined (String) , "createdAt" :: NullOrUndefined (Number) , "retryStrategy" :: NullOrUndefined (RetryStrategy) , "startedAt" :: (Number) , "stoppedAt" :: NullOrUndefined (Number) , "dependsOn" :: NullOrUndefined (JobDependencyList) , "jobDefinition" :: (String) , "parameters" :: NullOrUndefined (ParametersMap) , "container" :: NullOrUndefined (ContainerDetail) , "arrayProperties" :: NullOrUndefined (ArrayPropertiesDetail) } -> {"jobName" :: (String) , "jobId" :: (String) , "jobQueue" :: (String) , "status" :: (JobStatus) , "attempts" :: NullOrUndefined (AttemptDetails) , "statusReason" :: NullOrUndefined (String) , "createdAt" :: NullOrUndefined (Number) , "retryStrategy" :: NullOrUndefined (RetryStrategy) , "startedAt" :: (Number) , "stoppedAt" :: NullOrUndefined (Number) , "dependsOn" :: NullOrUndefined (JobDependencyList) , "jobDefinition" :: (String) , "parameters" :: NullOrUndefined (ParametersMap) , "container" :: NullOrUndefined (ContainerDetail) , "arrayProperties" :: NullOrUndefined (ArrayPropertiesDetail) } ) -> JobDetail
newJobDetail' _jobDefinition _jobId _jobName _jobQueue _startedAt _status customize = (JobDetail <<< customize) { "jobDefinition": _jobDefinition, "jobId": _jobId, "jobName": _jobName, "jobQueue": _jobQueue, "startedAt": _startedAt, "status": _status, "arrayProperties": (NullOrUndefined Nothing), "attempts": (NullOrUndefined Nothing), "container": (NullOrUndefined Nothing), "createdAt": (NullOrUndefined Nothing), "dependsOn": (NullOrUndefined Nothing), "parameters": (NullOrUndefined Nothing), "retryStrategy": (NullOrUndefined Nothing), "statusReason": (NullOrUndefined Nothing), "stoppedAt": (NullOrUndefined Nothing) }



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
  , "status" :: NullOrUndefined (JQStatus)
  , "statusReason" :: NullOrUndefined (String)
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
newJobQueueDetail _computeEnvironmentOrder _jobQueueArn _jobQueueName _priority _state = JobQueueDetail { "computeEnvironmentOrder": _computeEnvironmentOrder, "jobQueueArn": _jobQueueArn, "jobQueueName": _jobQueueName, "priority": _priority, "state": _state, "status": (NullOrUndefined Nothing), "statusReason": (NullOrUndefined Nothing) }

-- | Constructs JobQueueDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobQueueDetail' :: ComputeEnvironmentOrders -> String -> String -> Int -> JQState -> ( { "jobQueueName" :: (String) , "jobQueueArn" :: (String) , "state" :: (JQState) , "status" :: NullOrUndefined (JQStatus) , "statusReason" :: NullOrUndefined (String) , "priority" :: (Int) , "computeEnvironmentOrder" :: (ComputeEnvironmentOrders) } -> {"jobQueueName" :: (String) , "jobQueueArn" :: (String) , "state" :: (JQState) , "status" :: NullOrUndefined (JQStatus) , "statusReason" :: NullOrUndefined (String) , "priority" :: (Int) , "computeEnvironmentOrder" :: (ComputeEnvironmentOrders) } ) -> JobQueueDetail
newJobQueueDetail' _computeEnvironmentOrder _jobQueueArn _jobQueueName _priority _state customize = (JobQueueDetail <<< customize) { "computeEnvironmentOrder": _computeEnvironmentOrder, "jobQueueArn": _jobQueueArn, "jobQueueName": _jobQueueName, "priority": _priority, "state": _state, "status": (NullOrUndefined Nothing), "statusReason": (NullOrUndefined Nothing) }



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
  , "createdAt" :: NullOrUndefined (Number)
  , "status" :: NullOrUndefined (JobStatus)
  , "statusReason" :: NullOrUndefined (String)
  , "startedAt" :: NullOrUndefined (Number)
  , "stoppedAt" :: NullOrUndefined (Number)
  , "container" :: NullOrUndefined (ContainerSummary)
  , "arrayProperties" :: NullOrUndefined (ArrayPropertiesSummary)
  }
derive instance newtypeJobSummary :: Newtype JobSummary _
derive instance repGenericJobSummary :: Generic JobSummary _
instance showJobSummary :: Show JobSummary where show = genericShow
instance decodeJobSummary :: Decode JobSummary where decode = genericDecode options
instance encodeJobSummary :: Encode JobSummary where encode = genericEncode options

-- | Constructs JobSummary from required parameters
newJobSummary :: String -> String -> JobSummary
newJobSummary _jobId _jobName = JobSummary { "jobId": _jobId, "jobName": _jobName, "arrayProperties": (NullOrUndefined Nothing), "container": (NullOrUndefined Nothing), "createdAt": (NullOrUndefined Nothing), "startedAt": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing), "statusReason": (NullOrUndefined Nothing), "stoppedAt": (NullOrUndefined Nothing) }

-- | Constructs JobSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobSummary' :: String -> String -> ( { "jobId" :: (String) , "jobName" :: (String) , "createdAt" :: NullOrUndefined (Number) , "status" :: NullOrUndefined (JobStatus) , "statusReason" :: NullOrUndefined (String) , "startedAt" :: NullOrUndefined (Number) , "stoppedAt" :: NullOrUndefined (Number) , "container" :: NullOrUndefined (ContainerSummary) , "arrayProperties" :: NullOrUndefined (ArrayPropertiesSummary) } -> {"jobId" :: (String) , "jobName" :: (String) , "createdAt" :: NullOrUndefined (Number) , "status" :: NullOrUndefined (JobStatus) , "statusReason" :: NullOrUndefined (String) , "startedAt" :: NullOrUndefined (Number) , "stoppedAt" :: NullOrUndefined (Number) , "container" :: NullOrUndefined (ContainerSummary) , "arrayProperties" :: NullOrUndefined (ArrayPropertiesSummary) } ) -> JobSummary
newJobSummary' _jobId _jobName customize = (JobSummary <<< customize) { "jobId": _jobId, "jobName": _jobName, "arrayProperties": (NullOrUndefined Nothing), "container": (NullOrUndefined Nothing), "createdAt": (NullOrUndefined Nothing), "startedAt": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing), "statusReason": (NullOrUndefined Nothing), "stoppedAt": (NullOrUndefined Nothing) }



newtype JobSummaryList = JobSummaryList (Array JobSummary)
derive instance newtypeJobSummaryList :: Newtype JobSummaryList _
derive instance repGenericJobSummaryList :: Generic JobSummaryList _
instance showJobSummaryList :: Show JobSummaryList where show = genericShow
instance decodeJobSummaryList :: Decode JobSummaryList where decode = genericDecode options
instance encodeJobSummaryList :: Encode JobSummaryList where encode = genericEncode options



-- | <p>A key-value pair object.</p>
newtype KeyValuePair = KeyValuePair 
  { "name" :: NullOrUndefined (String)
  , "value" :: NullOrUndefined (String)
  }
derive instance newtypeKeyValuePair :: Newtype KeyValuePair _
derive instance repGenericKeyValuePair :: Generic KeyValuePair _
instance showKeyValuePair :: Show KeyValuePair where show = genericShow
instance decodeKeyValuePair :: Decode KeyValuePair where decode = genericDecode options
instance encodeKeyValuePair :: Encode KeyValuePair where encode = genericEncode options

-- | Constructs KeyValuePair from required parameters
newKeyValuePair :: KeyValuePair
newKeyValuePair  = KeyValuePair { "name": (NullOrUndefined Nothing), "value": (NullOrUndefined Nothing) }

-- | Constructs KeyValuePair's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKeyValuePair' :: ( { "name" :: NullOrUndefined (String) , "value" :: NullOrUndefined (String) } -> {"name" :: NullOrUndefined (String) , "value" :: NullOrUndefined (String) } ) -> KeyValuePair
newKeyValuePair'  customize = (KeyValuePair <<< customize) { "name": (NullOrUndefined Nothing), "value": (NullOrUndefined Nothing) }



newtype ListJobsRequest = ListJobsRequest 
  { "jobQueue" :: NullOrUndefined (String)
  , "arrayJobId" :: NullOrUndefined (String)
  , "jobStatus" :: NullOrUndefined (JobStatus)
  , "maxResults" :: NullOrUndefined (Int)
  , "nextToken" :: NullOrUndefined (String)
  }
derive instance newtypeListJobsRequest :: Newtype ListJobsRequest _
derive instance repGenericListJobsRequest :: Generic ListJobsRequest _
instance showListJobsRequest :: Show ListJobsRequest where show = genericShow
instance decodeListJobsRequest :: Decode ListJobsRequest where decode = genericDecode options
instance encodeListJobsRequest :: Encode ListJobsRequest where encode = genericEncode options

-- | Constructs ListJobsRequest from required parameters
newListJobsRequest :: ListJobsRequest
newListJobsRequest  = ListJobsRequest { "arrayJobId": (NullOrUndefined Nothing), "jobQueue": (NullOrUndefined Nothing), "jobStatus": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs ListJobsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListJobsRequest' :: ( { "jobQueue" :: NullOrUndefined (String) , "arrayJobId" :: NullOrUndefined (String) , "jobStatus" :: NullOrUndefined (JobStatus) , "maxResults" :: NullOrUndefined (Int) , "nextToken" :: NullOrUndefined (String) } -> {"jobQueue" :: NullOrUndefined (String) , "arrayJobId" :: NullOrUndefined (String) , "jobStatus" :: NullOrUndefined (JobStatus) , "maxResults" :: NullOrUndefined (Int) , "nextToken" :: NullOrUndefined (String) } ) -> ListJobsRequest
newListJobsRequest'  customize = (ListJobsRequest <<< customize) { "arrayJobId": (NullOrUndefined Nothing), "jobQueue": (NullOrUndefined Nothing), "jobStatus": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype ListJobsResponse = ListJobsResponse 
  { "jobSummaryList" :: (JobSummaryList)
  , "nextToken" :: NullOrUndefined (String)
  }
derive instance newtypeListJobsResponse :: Newtype ListJobsResponse _
derive instance repGenericListJobsResponse :: Generic ListJobsResponse _
instance showListJobsResponse :: Show ListJobsResponse where show = genericShow
instance decodeListJobsResponse :: Decode ListJobsResponse where decode = genericDecode options
instance encodeListJobsResponse :: Encode ListJobsResponse where encode = genericEncode options

-- | Constructs ListJobsResponse from required parameters
newListJobsResponse :: JobSummaryList -> ListJobsResponse
newListJobsResponse _jobSummaryList = ListJobsResponse { "jobSummaryList": _jobSummaryList, "nextToken": (NullOrUndefined Nothing) }

-- | Constructs ListJobsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListJobsResponse' :: JobSummaryList -> ( { "jobSummaryList" :: (JobSummaryList) , "nextToken" :: NullOrUndefined (String) } -> {"jobSummaryList" :: (JobSummaryList) , "nextToken" :: NullOrUndefined (String) } ) -> ListJobsResponse
newListJobsResponse' _jobSummaryList customize = (ListJobsResponse <<< customize) { "jobSummaryList": _jobSummaryList, "nextToken": (NullOrUndefined Nothing) }



-- | <p>Details on a Docker volume mount point that is used in a job's container properties.</p>
newtype MountPoint = MountPoint 
  { "containerPath" :: NullOrUndefined (String)
  , "readOnly" :: NullOrUndefined (Boolean)
  , "sourceVolume" :: NullOrUndefined (String)
  }
derive instance newtypeMountPoint :: Newtype MountPoint _
derive instance repGenericMountPoint :: Generic MountPoint _
instance showMountPoint :: Show MountPoint where show = genericShow
instance decodeMountPoint :: Decode MountPoint where decode = genericDecode options
instance encodeMountPoint :: Encode MountPoint where encode = genericEncode options

-- | Constructs MountPoint from required parameters
newMountPoint :: MountPoint
newMountPoint  = MountPoint { "containerPath": (NullOrUndefined Nothing), "readOnly": (NullOrUndefined Nothing), "sourceVolume": (NullOrUndefined Nothing) }

-- | Constructs MountPoint's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMountPoint' :: ( { "containerPath" :: NullOrUndefined (String) , "readOnly" :: NullOrUndefined (Boolean) , "sourceVolume" :: NullOrUndefined (String) } -> {"containerPath" :: NullOrUndefined (String) , "readOnly" :: NullOrUndefined (Boolean) , "sourceVolume" :: NullOrUndefined (String) } ) -> MountPoint
newMountPoint'  customize = (MountPoint <<< customize) { "containerPath": (NullOrUndefined Nothing), "readOnly": (NullOrUndefined Nothing), "sourceVolume": (NullOrUndefined Nothing) }



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
  , "parameters" :: NullOrUndefined (ParametersMap)
  , "containerProperties" :: NullOrUndefined (ContainerProperties)
  , "retryStrategy" :: NullOrUndefined (RetryStrategy)
  }
derive instance newtypeRegisterJobDefinitionRequest :: Newtype RegisterJobDefinitionRequest _
derive instance repGenericRegisterJobDefinitionRequest :: Generic RegisterJobDefinitionRequest _
instance showRegisterJobDefinitionRequest :: Show RegisterJobDefinitionRequest where show = genericShow
instance decodeRegisterJobDefinitionRequest :: Decode RegisterJobDefinitionRequest where decode = genericDecode options
instance encodeRegisterJobDefinitionRequest :: Encode RegisterJobDefinitionRequest where encode = genericEncode options

-- | Constructs RegisterJobDefinitionRequest from required parameters
newRegisterJobDefinitionRequest :: String -> JobDefinitionType -> RegisterJobDefinitionRequest
newRegisterJobDefinitionRequest _jobDefinitionName _type = RegisterJobDefinitionRequest { "jobDefinitionName": _jobDefinitionName, "type": _type, "containerProperties": (NullOrUndefined Nothing), "parameters": (NullOrUndefined Nothing), "retryStrategy": (NullOrUndefined Nothing) }

-- | Constructs RegisterJobDefinitionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterJobDefinitionRequest' :: String -> JobDefinitionType -> ( { "jobDefinitionName" :: (String) , "type" :: (JobDefinitionType) , "parameters" :: NullOrUndefined (ParametersMap) , "containerProperties" :: NullOrUndefined (ContainerProperties) , "retryStrategy" :: NullOrUndefined (RetryStrategy) } -> {"jobDefinitionName" :: (String) , "type" :: (JobDefinitionType) , "parameters" :: NullOrUndefined (ParametersMap) , "containerProperties" :: NullOrUndefined (ContainerProperties) , "retryStrategy" :: NullOrUndefined (RetryStrategy) } ) -> RegisterJobDefinitionRequest
newRegisterJobDefinitionRequest' _jobDefinitionName _type customize = (RegisterJobDefinitionRequest <<< customize) { "jobDefinitionName": _jobDefinitionName, "type": _type, "containerProperties": (NullOrUndefined Nothing), "parameters": (NullOrUndefined Nothing), "retryStrategy": (NullOrUndefined Nothing) }



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
  { "attempts" :: NullOrUndefined (Int)
  }
derive instance newtypeRetryStrategy :: Newtype RetryStrategy _
derive instance repGenericRetryStrategy :: Generic RetryStrategy _
instance showRetryStrategy :: Show RetryStrategy where show = genericShow
instance decodeRetryStrategy :: Decode RetryStrategy where decode = genericDecode options
instance encodeRetryStrategy :: Encode RetryStrategy where encode = genericEncode options

-- | Constructs RetryStrategy from required parameters
newRetryStrategy :: RetryStrategy
newRetryStrategy  = RetryStrategy { "attempts": (NullOrUndefined Nothing) }

-- | Constructs RetryStrategy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRetryStrategy' :: ( { "attempts" :: NullOrUndefined (Int) } -> {"attempts" :: NullOrUndefined (Int) } ) -> RetryStrategy
newRetryStrategy'  customize = (RetryStrategy <<< customize) { "attempts": (NullOrUndefined Nothing) }



-- | <p>These errors are usually caused by a server issue.</p>
newtype ServerException = ServerException 
  { "message" :: NullOrUndefined (String)
  }
derive instance newtypeServerException :: Newtype ServerException _
derive instance repGenericServerException :: Generic ServerException _
instance showServerException :: Show ServerException where show = genericShow
instance decodeServerException :: Decode ServerException where decode = genericDecode options
instance encodeServerException :: Encode ServerException where encode = genericEncode options

-- | Constructs ServerException from required parameters
newServerException :: ServerException
newServerException  = ServerException { "message": (NullOrUndefined Nothing) }

-- | Constructs ServerException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServerException' :: ( { "message" :: NullOrUndefined (String) } -> {"message" :: NullOrUndefined (String) } ) -> ServerException
newServerException'  customize = (ServerException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype StringList = StringList (Array String)
derive instance newtypeStringList :: Newtype StringList _
derive instance repGenericStringList :: Generic StringList _
instance showStringList :: Show StringList where show = genericShow
instance decodeStringList :: Decode StringList where decode = genericDecode options
instance encodeStringList :: Encode StringList where encode = genericEncode options



newtype SubmitJobRequest = SubmitJobRequest 
  { "jobName" :: (String)
  , "jobQueue" :: (String)
  , "arrayProperties" :: NullOrUndefined (ArrayProperties)
  , "dependsOn" :: NullOrUndefined (JobDependencyList)
  , "jobDefinition" :: (String)
  , "parameters" :: NullOrUndefined (ParametersMap)
  , "containerOverrides" :: NullOrUndefined (ContainerOverrides)
  , "retryStrategy" :: NullOrUndefined (RetryStrategy)
  }
derive instance newtypeSubmitJobRequest :: Newtype SubmitJobRequest _
derive instance repGenericSubmitJobRequest :: Generic SubmitJobRequest _
instance showSubmitJobRequest :: Show SubmitJobRequest where show = genericShow
instance decodeSubmitJobRequest :: Decode SubmitJobRequest where decode = genericDecode options
instance encodeSubmitJobRequest :: Encode SubmitJobRequest where encode = genericEncode options

-- | Constructs SubmitJobRequest from required parameters
newSubmitJobRequest :: String -> String -> String -> SubmitJobRequest
newSubmitJobRequest _jobDefinition _jobName _jobQueue = SubmitJobRequest { "jobDefinition": _jobDefinition, "jobName": _jobName, "jobQueue": _jobQueue, "arrayProperties": (NullOrUndefined Nothing), "containerOverrides": (NullOrUndefined Nothing), "dependsOn": (NullOrUndefined Nothing), "parameters": (NullOrUndefined Nothing), "retryStrategy": (NullOrUndefined Nothing) }

-- | Constructs SubmitJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSubmitJobRequest' :: String -> String -> String -> ( { "jobName" :: (String) , "jobQueue" :: (String) , "arrayProperties" :: NullOrUndefined (ArrayProperties) , "dependsOn" :: NullOrUndefined (JobDependencyList) , "jobDefinition" :: (String) , "parameters" :: NullOrUndefined (ParametersMap) , "containerOverrides" :: NullOrUndefined (ContainerOverrides) , "retryStrategy" :: NullOrUndefined (RetryStrategy) } -> {"jobName" :: (String) , "jobQueue" :: (String) , "arrayProperties" :: NullOrUndefined (ArrayProperties) , "dependsOn" :: NullOrUndefined (JobDependencyList) , "jobDefinition" :: (String) , "parameters" :: NullOrUndefined (ParametersMap) , "containerOverrides" :: NullOrUndefined (ContainerOverrides) , "retryStrategy" :: NullOrUndefined (RetryStrategy) } ) -> SubmitJobRequest
newSubmitJobRequest' _jobDefinition _jobName _jobQueue customize = (SubmitJobRequest <<< customize) { "jobDefinition": _jobDefinition, "jobName": _jobName, "jobQueue": _jobQueue, "arrayProperties": (NullOrUndefined Nothing), "containerOverrides": (NullOrUndefined Nothing), "dependsOn": (NullOrUndefined Nothing), "parameters": (NullOrUndefined Nothing), "retryStrategy": (NullOrUndefined Nothing) }



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
  , "state" :: NullOrUndefined (CEState)
  , "computeResources" :: NullOrUndefined (ComputeResourceUpdate)
  , "serviceRole" :: NullOrUndefined (String)
  }
derive instance newtypeUpdateComputeEnvironmentRequest :: Newtype UpdateComputeEnvironmentRequest _
derive instance repGenericUpdateComputeEnvironmentRequest :: Generic UpdateComputeEnvironmentRequest _
instance showUpdateComputeEnvironmentRequest :: Show UpdateComputeEnvironmentRequest where show = genericShow
instance decodeUpdateComputeEnvironmentRequest :: Decode UpdateComputeEnvironmentRequest where decode = genericDecode options
instance encodeUpdateComputeEnvironmentRequest :: Encode UpdateComputeEnvironmentRequest where encode = genericEncode options

-- | Constructs UpdateComputeEnvironmentRequest from required parameters
newUpdateComputeEnvironmentRequest :: String -> UpdateComputeEnvironmentRequest
newUpdateComputeEnvironmentRequest _computeEnvironment = UpdateComputeEnvironmentRequest { "computeEnvironment": _computeEnvironment, "computeResources": (NullOrUndefined Nothing), "serviceRole": (NullOrUndefined Nothing), "state": (NullOrUndefined Nothing) }

-- | Constructs UpdateComputeEnvironmentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateComputeEnvironmentRequest' :: String -> ( { "computeEnvironment" :: (String) , "state" :: NullOrUndefined (CEState) , "computeResources" :: NullOrUndefined (ComputeResourceUpdate) , "serviceRole" :: NullOrUndefined (String) } -> {"computeEnvironment" :: (String) , "state" :: NullOrUndefined (CEState) , "computeResources" :: NullOrUndefined (ComputeResourceUpdate) , "serviceRole" :: NullOrUndefined (String) } ) -> UpdateComputeEnvironmentRequest
newUpdateComputeEnvironmentRequest' _computeEnvironment customize = (UpdateComputeEnvironmentRequest <<< customize) { "computeEnvironment": _computeEnvironment, "computeResources": (NullOrUndefined Nothing), "serviceRole": (NullOrUndefined Nothing), "state": (NullOrUndefined Nothing) }



newtype UpdateComputeEnvironmentResponse = UpdateComputeEnvironmentResponse 
  { "computeEnvironmentName" :: NullOrUndefined (String)
  , "computeEnvironmentArn" :: NullOrUndefined (String)
  }
derive instance newtypeUpdateComputeEnvironmentResponse :: Newtype UpdateComputeEnvironmentResponse _
derive instance repGenericUpdateComputeEnvironmentResponse :: Generic UpdateComputeEnvironmentResponse _
instance showUpdateComputeEnvironmentResponse :: Show UpdateComputeEnvironmentResponse where show = genericShow
instance decodeUpdateComputeEnvironmentResponse :: Decode UpdateComputeEnvironmentResponse where decode = genericDecode options
instance encodeUpdateComputeEnvironmentResponse :: Encode UpdateComputeEnvironmentResponse where encode = genericEncode options

-- | Constructs UpdateComputeEnvironmentResponse from required parameters
newUpdateComputeEnvironmentResponse :: UpdateComputeEnvironmentResponse
newUpdateComputeEnvironmentResponse  = UpdateComputeEnvironmentResponse { "computeEnvironmentArn": (NullOrUndefined Nothing), "computeEnvironmentName": (NullOrUndefined Nothing) }

-- | Constructs UpdateComputeEnvironmentResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateComputeEnvironmentResponse' :: ( { "computeEnvironmentName" :: NullOrUndefined (String) , "computeEnvironmentArn" :: NullOrUndefined (String) } -> {"computeEnvironmentName" :: NullOrUndefined (String) , "computeEnvironmentArn" :: NullOrUndefined (String) } ) -> UpdateComputeEnvironmentResponse
newUpdateComputeEnvironmentResponse'  customize = (UpdateComputeEnvironmentResponse <<< customize) { "computeEnvironmentArn": (NullOrUndefined Nothing), "computeEnvironmentName": (NullOrUndefined Nothing) }



newtype UpdateJobQueueRequest = UpdateJobQueueRequest 
  { "jobQueue" :: (String)
  , "state" :: NullOrUndefined (JQState)
  , "priority" :: NullOrUndefined (Int)
  , "computeEnvironmentOrder" :: NullOrUndefined (ComputeEnvironmentOrders)
  }
derive instance newtypeUpdateJobQueueRequest :: Newtype UpdateJobQueueRequest _
derive instance repGenericUpdateJobQueueRequest :: Generic UpdateJobQueueRequest _
instance showUpdateJobQueueRequest :: Show UpdateJobQueueRequest where show = genericShow
instance decodeUpdateJobQueueRequest :: Decode UpdateJobQueueRequest where decode = genericDecode options
instance encodeUpdateJobQueueRequest :: Encode UpdateJobQueueRequest where encode = genericEncode options

-- | Constructs UpdateJobQueueRequest from required parameters
newUpdateJobQueueRequest :: String -> UpdateJobQueueRequest
newUpdateJobQueueRequest _jobQueue = UpdateJobQueueRequest { "jobQueue": _jobQueue, "computeEnvironmentOrder": (NullOrUndefined Nothing), "priority": (NullOrUndefined Nothing), "state": (NullOrUndefined Nothing) }

-- | Constructs UpdateJobQueueRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateJobQueueRequest' :: String -> ( { "jobQueue" :: (String) , "state" :: NullOrUndefined (JQState) , "priority" :: NullOrUndefined (Int) , "computeEnvironmentOrder" :: NullOrUndefined (ComputeEnvironmentOrders) } -> {"jobQueue" :: (String) , "state" :: NullOrUndefined (JQState) , "priority" :: NullOrUndefined (Int) , "computeEnvironmentOrder" :: NullOrUndefined (ComputeEnvironmentOrders) } ) -> UpdateJobQueueRequest
newUpdateJobQueueRequest' _jobQueue customize = (UpdateJobQueueRequest <<< customize) { "jobQueue": _jobQueue, "computeEnvironmentOrder": (NullOrUndefined Nothing), "priority": (NullOrUndefined Nothing), "state": (NullOrUndefined Nothing) }



newtype UpdateJobQueueResponse = UpdateJobQueueResponse 
  { "jobQueueName" :: NullOrUndefined (String)
  , "jobQueueArn" :: NullOrUndefined (String)
  }
derive instance newtypeUpdateJobQueueResponse :: Newtype UpdateJobQueueResponse _
derive instance repGenericUpdateJobQueueResponse :: Generic UpdateJobQueueResponse _
instance showUpdateJobQueueResponse :: Show UpdateJobQueueResponse where show = genericShow
instance decodeUpdateJobQueueResponse :: Decode UpdateJobQueueResponse where decode = genericDecode options
instance encodeUpdateJobQueueResponse :: Encode UpdateJobQueueResponse where encode = genericEncode options

-- | Constructs UpdateJobQueueResponse from required parameters
newUpdateJobQueueResponse :: UpdateJobQueueResponse
newUpdateJobQueueResponse  = UpdateJobQueueResponse { "jobQueueArn": (NullOrUndefined Nothing), "jobQueueName": (NullOrUndefined Nothing) }

-- | Constructs UpdateJobQueueResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateJobQueueResponse' :: ( { "jobQueueName" :: NullOrUndefined (String) , "jobQueueArn" :: NullOrUndefined (String) } -> {"jobQueueName" :: NullOrUndefined (String) , "jobQueueArn" :: NullOrUndefined (String) } ) -> UpdateJobQueueResponse
newUpdateJobQueueResponse'  customize = (UpdateJobQueueResponse <<< customize) { "jobQueueArn": (NullOrUndefined Nothing), "jobQueueName": (NullOrUndefined Nothing) }



-- | <p>A data volume used in a job's container properties.</p>
newtype Volume = Volume 
  { "host" :: NullOrUndefined (Host)
  , "name" :: NullOrUndefined (String)
  }
derive instance newtypeVolume :: Newtype Volume _
derive instance repGenericVolume :: Generic Volume _
instance showVolume :: Show Volume where show = genericShow
instance decodeVolume :: Decode Volume where decode = genericDecode options
instance encodeVolume :: Encode Volume where encode = genericEncode options

-- | Constructs Volume from required parameters
newVolume :: Volume
newVolume  = Volume { "host": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing) }

-- | Constructs Volume's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVolume' :: ( { "host" :: NullOrUndefined (Host) , "name" :: NullOrUndefined (String) } -> {"host" :: NullOrUndefined (Host) , "name" :: NullOrUndefined (String) } ) -> Volume
newVolume'  customize = (Volume <<< customize) { "host": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing) }



newtype Volumes = Volumes (Array Volume)
derive instance newtypeVolumes :: Newtype Volumes _
derive instance repGenericVolumes :: Generic Volumes _
instance showVolumes :: Show Volumes where show = genericShow
instance decodeVolumes :: Decode Volumes where decode = genericDecode options
instance encodeVolumes :: Encode Volumes where encode = genericEncode options

