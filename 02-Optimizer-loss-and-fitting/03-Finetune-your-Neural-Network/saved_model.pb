??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??
|
dense_176/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_176/kernel
u
$dense_176/kernel/Read/ReadVariableOpReadVariableOpdense_176/kernel*
_output_shapes

:
*
dtype0
t
dense_176/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_176/bias
m
"dense_176/bias/Read/ReadVariableOpReadVariableOpdense_176/bias*
_output_shapes
:
*
dtype0
|
dense_177/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_177/kernel
u
$dense_177/kernel/Read/ReadVariableOpReadVariableOpdense_177/kernel*
_output_shapes

:
*
dtype0
t
dense_177/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_177/bias
m
"dense_177/bias/Read/ReadVariableOpReadVariableOpdense_177/bias*
_output_shapes
:*
dtype0
|
dense_178/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_178/kernel
u
$dense_178/kernel/Read/ReadVariableOpReadVariableOpdense_178/kernel*
_output_shapes

:*
dtype0
t
dense_178/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_178/bias
m
"dense_178/bias/Read/ReadVariableOpReadVariableOpdense_178/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
?
Adam/dense_176/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_176/kernel/m
?
+Adam/dense_176/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_176/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_176/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/dense_176/bias/m
{
)Adam/dense_176/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_176/bias/m*
_output_shapes
:
*
dtype0
?
Adam/dense_177/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_177/kernel/m
?
+Adam/dense_177/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_177/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_177/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_177/bias/m
{
)Adam/dense_177/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_177/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_178/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_178/kernel/m
?
+Adam/dense_178/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_178/kernel/m*
_output_shapes

:*
dtype0
?
Adam/dense_178/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_178/bias/m
{
)Adam/dense_178/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_178/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_176/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_176/kernel/v
?
+Adam/dense_176/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_176/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_176/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/dense_176/bias/v
{
)Adam/dense_176/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_176/bias/v*
_output_shapes
:
*
dtype0
?
Adam/dense_177/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_177/kernel/v
?
+Adam/dense_177/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_177/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_177/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_177/bias/v
{
)Adam/dense_177/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_177/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_178/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_178/kernel/v
?
+Adam/dense_178/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_178/kernel/v*
_output_shapes

:*
dtype0
?
Adam/dense_178/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_178/bias/v
{
)Adam/dense_178/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_178/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?'
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?'
value?'B?& B?&
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
loss
	variables
trainable_variables
regularization_losses
		keras_api


signatures
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
?
iter

beta_1

beta_2
	 decay
!learning_ratemGmHmImJmKmLvMvNvOvPvQvR
 
*
0
1
2
3
4
5
*
0
1
2
3
4
5
 
?
"non_trainable_variables

#layers
$metrics
%layer_regularization_losses
&layer_metrics
	variables
trainable_variables
regularization_losses
 
\Z
VARIABLE_VALUEdense_176/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_176/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
'non_trainable_variables

(layers
)metrics
*layer_regularization_losses
+layer_metrics
	variables
trainable_variables
regularization_losses
\Z
VARIABLE_VALUEdense_177/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_177/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
regularization_losses
\Z
VARIABLE_VALUEdense_178/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_178/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2

60
71
82
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	9total
	:count
;	variables
<	keras_api
D
	=total
	>count
?
_fn_kwargs
@	variables
A	keras_api
D
	Btotal
	Ccount
D
_fn_kwargs
E	variables
F	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

90
:1

;	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

=0
>1

@	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE
 

B0
C1

E	variables
}
VARIABLE_VALUEAdam/dense_176/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_176/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_177/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_177/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_178/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_178/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_176/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_176/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_177/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_177/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_178/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_178/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_dense_176_inputPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_176_inputdense_176/kerneldense_176/biasdense_177/kerneldense_177/biasdense_178/kerneldense_178/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_2090418
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_176/kernel/Read/ReadVariableOp"dense_176/bias/Read/ReadVariableOp$dense_177/kernel/Read/ReadVariableOp"dense_177/bias/Read/ReadVariableOp$dense_178/kernel/Read/ReadVariableOp"dense_178/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp+Adam/dense_176/kernel/m/Read/ReadVariableOp)Adam/dense_176/bias/m/Read/ReadVariableOp+Adam/dense_177/kernel/m/Read/ReadVariableOp)Adam/dense_177/bias/m/Read/ReadVariableOp+Adam/dense_178/kernel/m/Read/ReadVariableOp)Adam/dense_178/bias/m/Read/ReadVariableOp+Adam/dense_176/kernel/v/Read/ReadVariableOp)Adam/dense_176/bias/v/Read/ReadVariableOp+Adam/dense_177/kernel/v/Read/ReadVariableOp)Adam/dense_177/bias/v/Read/ReadVariableOp+Adam/dense_178/kernel/v/Read/ReadVariableOp)Adam/dense_178/bias/v/Read/ReadVariableOpConst**
Tin#
!2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__traced_save_2090669
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_176/kerneldense_176/biasdense_177/kerneldense_177/biasdense_178/kerneldense_178/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1total_2count_2Adam/dense_176/kernel/mAdam/dense_176/bias/mAdam/dense_177/kernel/mAdam/dense_177/bias/mAdam/dense_178/kernel/mAdam/dense_178/bias/mAdam/dense_176/kernel/vAdam/dense_176/bias/vAdam/dense_177/kernel/vAdam/dense_177/bias/vAdam/dense_178/kernel/vAdam/dense_178/bias/v*)
Tin"
 2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference__traced_restore_2090766??
?
?
+__inference_dense_176_layer_call_fn_2090509

inputs
unknown:

	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_176_layer_call_and_return_conditional_losses_2090200o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
F__inference_dense_177_layer_call_and_return_conditional_losses_2090540

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
J__inference_sequential_58_layer_call_and_return_conditional_losses_2090240

inputs#
dense_176_2090201:

dense_176_2090203:
#
dense_177_2090218:

dense_177_2090220:#
dense_178_2090234:
dense_178_2090236:
identity??!dense_176/StatefulPartitionedCall?!dense_177/StatefulPartitionedCall?!dense_178/StatefulPartitionedCall?
!dense_176/StatefulPartitionedCallStatefulPartitionedCallinputsdense_176_2090201dense_176_2090203*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_176_layer_call_and_return_conditional_losses_2090200?
!dense_177/StatefulPartitionedCallStatefulPartitionedCall*dense_176/StatefulPartitionedCall:output:0dense_177_2090218dense_177_2090220*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_177_layer_call_and_return_conditional_losses_2090217?
!dense_178/StatefulPartitionedCallStatefulPartitionedCall*dense_177/StatefulPartitionedCall:output:0dense_178_2090234dense_178_2090236*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_178_layer_call_and_return_conditional_losses_2090233y
IdentityIdentity*dense_178/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_176/StatefulPartitionedCall"^dense_177/StatefulPartitionedCall"^dense_178/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2F
!dense_176/StatefulPartitionedCall!dense_176/StatefulPartitionedCall2F
!dense_177/StatefulPartitionedCall!dense_177/StatefulPartitionedCall2F
!dense_178/StatefulPartitionedCall!dense_178/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?>
?
 __inference__traced_save_2090669
file_prefix/
+savev2_dense_176_kernel_read_readvariableop-
)savev2_dense_176_bias_read_readvariableop/
+savev2_dense_177_kernel_read_readvariableop-
)savev2_dense_177_bias_read_readvariableop/
+savev2_dense_178_kernel_read_readvariableop-
)savev2_dense_178_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop6
2savev2_adam_dense_176_kernel_m_read_readvariableop4
0savev2_adam_dense_176_bias_m_read_readvariableop6
2savev2_adam_dense_177_kernel_m_read_readvariableop4
0savev2_adam_dense_177_bias_m_read_readvariableop6
2savev2_adam_dense_178_kernel_m_read_readvariableop4
0savev2_adam_dense_178_bias_m_read_readvariableop6
2savev2_adam_dense_176_kernel_v_read_readvariableop4
0savev2_adam_dense_176_bias_v_read_readvariableop6
2savev2_adam_dense_177_kernel_v_read_readvariableop4
0savev2_adam_dense_177_bias_v_read_readvariableop6
2savev2_adam_dense_178_kernel_v_read_readvariableop4
0savev2_adam_dense_178_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_176_kernel_read_readvariableop)savev2_dense_176_bias_read_readvariableop+savev2_dense_177_kernel_read_readvariableop)savev2_dense_177_bias_read_readvariableop+savev2_dense_178_kernel_read_readvariableop)savev2_dense_178_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop2savev2_adam_dense_176_kernel_m_read_readvariableop0savev2_adam_dense_176_bias_m_read_readvariableop2savev2_adam_dense_177_kernel_m_read_readvariableop0savev2_adam_dense_177_bias_m_read_readvariableop2savev2_adam_dense_178_kernel_m_read_readvariableop0savev2_adam_dense_178_bias_m_read_readvariableop2savev2_adam_dense_176_kernel_v_read_readvariableop0savev2_adam_dense_176_bias_v_read_readvariableop2savev2_adam_dense_177_kernel_v_read_readvariableop0savev2_adam_dense_177_bias_v_read_readvariableop2savev2_adam_dense_178_kernel_v_read_readvariableop0savev2_adam_dense_178_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *,
dtypes"
 2	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :
:
:
:::: : : : : : : : : : : :
:
:
::::
:
:
:::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:
: 

_output_shapes
:
:$ 

_output_shapes

:
: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
: 

_output_shapes
:
:$ 

_output_shapes

:
: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:
: 

_output_shapes
:
:$ 

_output_shapes

:
: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
?
?
+__inference_dense_178_layer_call_fn_2090549

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_178_layer_call_and_return_conditional_losses_2090233o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
F__inference_dense_178_layer_call_and_return_conditional_losses_2090559

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
/__inference_sequential_58_layer_call_fn_2090355
dense_176_input
unknown:

	unknown_0:

	unknown_1:

	unknown_2:
	unknown_3:
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_176_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_58_layer_call_and_return_conditional_losses_2090323o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:?????????
)
_user_specified_namedense_176_input
?
?
J__inference_sequential_58_layer_call_and_return_conditional_losses_2090323

inputs#
dense_176_2090307:

dense_176_2090309:
#
dense_177_2090312:

dense_177_2090314:#
dense_178_2090317:
dense_178_2090319:
identity??!dense_176/StatefulPartitionedCall?!dense_177/StatefulPartitionedCall?!dense_178/StatefulPartitionedCall?
!dense_176/StatefulPartitionedCallStatefulPartitionedCallinputsdense_176_2090307dense_176_2090309*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_176_layer_call_and_return_conditional_losses_2090200?
!dense_177/StatefulPartitionedCallStatefulPartitionedCall*dense_176/StatefulPartitionedCall:output:0dense_177_2090312dense_177_2090314*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_177_layer_call_and_return_conditional_losses_2090217?
!dense_178/StatefulPartitionedCallStatefulPartitionedCall*dense_177/StatefulPartitionedCall:output:0dense_178_2090317dense_178_2090319*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_178_layer_call_and_return_conditional_losses_2090233y
IdentityIdentity*dense_178/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_176/StatefulPartitionedCall"^dense_177/StatefulPartitionedCall"^dense_178/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2F
!dense_176/StatefulPartitionedCall!dense_176/StatefulPartitionedCall2F
!dense_177/StatefulPartitionedCall!dense_177/StatefulPartitionedCall2F
!dense_178/StatefulPartitionedCall!dense_178/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_sequential_58_layer_call_and_return_conditional_losses_2090393
dense_176_input#
dense_176_2090377:

dense_176_2090379:
#
dense_177_2090382:

dense_177_2090384:#
dense_178_2090387:
dense_178_2090389:
identity??!dense_176/StatefulPartitionedCall?!dense_177/StatefulPartitionedCall?!dense_178/StatefulPartitionedCall?
!dense_176/StatefulPartitionedCallStatefulPartitionedCalldense_176_inputdense_176_2090377dense_176_2090379*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_176_layer_call_and_return_conditional_losses_2090200?
!dense_177/StatefulPartitionedCallStatefulPartitionedCall*dense_176/StatefulPartitionedCall:output:0dense_177_2090382dense_177_2090384*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_177_layer_call_and_return_conditional_losses_2090217?
!dense_178/StatefulPartitionedCallStatefulPartitionedCall*dense_177/StatefulPartitionedCall:output:0dense_178_2090387dense_178_2090389*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_178_layer_call_and_return_conditional_losses_2090233y
IdentityIdentity*dense_178/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_176/StatefulPartitionedCall"^dense_177/StatefulPartitionedCall"^dense_178/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2F
!dense_176/StatefulPartitionedCall!dense_176/StatefulPartitionedCall2F
!dense_177/StatefulPartitionedCall!dense_177/StatefulPartitionedCall2F
!dense_178/StatefulPartitionedCall!dense_178/StatefulPartitionedCall:X T
'
_output_shapes
:?????????
)
_user_specified_namedense_176_input
?	
?
F__inference_dense_178_layer_call_and_return_conditional_losses_2090233

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_sequential_58_layer_call_and_return_conditional_losses_2090374
dense_176_input#
dense_176_2090358:

dense_176_2090360:
#
dense_177_2090363:

dense_177_2090365:#
dense_178_2090368:
dense_178_2090370:
identity??!dense_176/StatefulPartitionedCall?!dense_177/StatefulPartitionedCall?!dense_178/StatefulPartitionedCall?
!dense_176/StatefulPartitionedCallStatefulPartitionedCalldense_176_inputdense_176_2090358dense_176_2090360*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_176_layer_call_and_return_conditional_losses_2090200?
!dense_177/StatefulPartitionedCallStatefulPartitionedCall*dense_176/StatefulPartitionedCall:output:0dense_177_2090363dense_177_2090365*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_177_layer_call_and_return_conditional_losses_2090217?
!dense_178/StatefulPartitionedCallStatefulPartitionedCall*dense_177/StatefulPartitionedCall:output:0dense_178_2090368dense_178_2090370*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_178_layer_call_and_return_conditional_losses_2090233y
IdentityIdentity*dense_178/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_176/StatefulPartitionedCall"^dense_177/StatefulPartitionedCall"^dense_178/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2F
!dense_176/StatefulPartitionedCall!dense_176/StatefulPartitionedCall2F
!dense_177/StatefulPartitionedCall!dense_177/StatefulPartitionedCall2F
!dense_178/StatefulPartitionedCall!dense_178/StatefulPartitionedCall:X T
'
_output_shapes
:?????????
)
_user_specified_namedense_176_input
?	
?
/__inference_sequential_58_layer_call_fn_2090255
dense_176_input
unknown:

	unknown_0:

	unknown_1:

	unknown_2:
	unknown_3:
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_176_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_58_layer_call_and_return_conditional_losses_2090240o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:?????????
)
_user_specified_namedense_176_input
?
?
+__inference_dense_177_layer_call_fn_2090529

inputs
unknown:

	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dense_177_layer_call_and_return_conditional_losses_2090217o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
/__inference_sequential_58_layer_call_fn_2090452

inputs
unknown:

	unknown_0:

	unknown_1:

	unknown_2:
	unknown_3:
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_58_layer_call_and_return_conditional_losses_2090323o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_sequential_58_layer_call_and_return_conditional_losses_2090500

inputs:
(dense_176_matmul_readvariableop_resource:
7
)dense_176_biasadd_readvariableop_resource:
:
(dense_177_matmul_readvariableop_resource:
7
)dense_177_biasadd_readvariableop_resource::
(dense_178_matmul_readvariableop_resource:7
)dense_178_biasadd_readvariableop_resource:
identity?? dense_176/BiasAdd/ReadVariableOp?dense_176/MatMul/ReadVariableOp? dense_177/BiasAdd/ReadVariableOp?dense_177/MatMul/ReadVariableOp? dense_178/BiasAdd/ReadVariableOp?dense_178/MatMul/ReadVariableOp?
dense_176/MatMul/ReadVariableOpReadVariableOp(dense_176_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0}
dense_176/MatMulMatMulinputs'dense_176/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
 dense_176/BiasAdd/ReadVariableOpReadVariableOp)dense_176_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0?
dense_176/BiasAddBiasAdddense_176/MatMul:product:0(dense_176/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
d
dense_176/ReluReludense_176/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
?
dense_177/MatMul/ReadVariableOpReadVariableOp(dense_177_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_177/MatMulMatMuldense_176/Relu:activations:0'dense_177/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_177/BiasAdd/ReadVariableOpReadVariableOp)dense_177_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_177/BiasAddBiasAdddense_177/MatMul:product:0(dense_177/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
dense_177/ReluReludense_177/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_178/MatMul/ReadVariableOpReadVariableOp(dense_178_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_178/MatMulMatMuldense_177/Relu:activations:0'dense_178/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_178/BiasAdd/ReadVariableOpReadVariableOp)dense_178_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_178/BiasAddBiasAdddense_178/MatMul:product:0(dense_178/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_178/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_176/BiasAdd/ReadVariableOp ^dense_176/MatMul/ReadVariableOp!^dense_177/BiasAdd/ReadVariableOp ^dense_177/MatMul/ReadVariableOp!^dense_178/BiasAdd/ReadVariableOp ^dense_178/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2D
 dense_176/BiasAdd/ReadVariableOp dense_176/BiasAdd/ReadVariableOp2B
dense_176/MatMul/ReadVariableOpdense_176/MatMul/ReadVariableOp2D
 dense_177/BiasAdd/ReadVariableOp dense_177/BiasAdd/ReadVariableOp2B
dense_177/MatMul/ReadVariableOpdense_177/MatMul/ReadVariableOp2D
 dense_178/BiasAdd/ReadVariableOp dense_178/BiasAdd/ReadVariableOp2B
dense_178/MatMul/ReadVariableOpdense_178/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?s
?
#__inference__traced_restore_2090766
file_prefix3
!assignvariableop_dense_176_kernel:
/
!assignvariableop_1_dense_176_bias:
5
#assignvariableop_2_dense_177_kernel:
/
!assignvariableop_3_dense_177_bias:5
#assignvariableop_4_dense_178_kernel:/
!assignvariableop_5_dense_178_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: %
assignvariableop_15_total_2: %
assignvariableop_16_count_2: =
+assignvariableop_17_adam_dense_176_kernel_m:
7
)assignvariableop_18_adam_dense_176_bias_m:
=
+assignvariableop_19_adam_dense_177_kernel_m:
7
)assignvariableop_20_adam_dense_177_bias_m:=
+assignvariableop_21_adam_dense_178_kernel_m:7
)assignvariableop_22_adam_dense_178_bias_m:=
+assignvariableop_23_adam_dense_176_kernel_v:
7
)assignvariableop_24_adam_dense_176_bias_v:
=
+assignvariableop_25_adam_dense_177_kernel_v:
7
)assignvariableop_26_adam_dense_177_bias_v:=
+assignvariableop_27_adam_dense_178_kernel_v:7
)assignvariableop_28_adam_dense_178_bias_v:
identity_30??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesz
x::::::::::::::::::::::::::::::*,
dtypes"
 2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp!assignvariableop_dense_176_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_176_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_177_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_177_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_178_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_178_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_2Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp+assignvariableop_17_adam_dense_176_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_dense_176_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_dense_177_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_dense_177_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_dense_178_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_178_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_dense_176_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_176_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_dense_177_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_dense_177_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_dense_178_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_178_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_29Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_30IdentityIdentity_29:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_30Identity_30:output:0*O
_input_shapes>
<: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
%__inference_signature_wrapper_2090418
dense_176_input
unknown:

	unknown_0:

	unknown_1:

	unknown_2:
	unknown_3:
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_176_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_2090182o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:?????????
)
_user_specified_namedense_176_input
?

?
F__inference_dense_177_layer_call_and_return_conditional_losses_2090217

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?

?
F__inference_dense_176_layer_call_and_return_conditional_losses_2090200

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????
a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
F__inference_dense_176_layer_call_and_return_conditional_losses_2090520

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????
a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?"
?
"__inference__wrapped_model_2090182
dense_176_inputH
6sequential_58_dense_176_matmul_readvariableop_resource:
E
7sequential_58_dense_176_biasadd_readvariableop_resource:
H
6sequential_58_dense_177_matmul_readvariableop_resource:
E
7sequential_58_dense_177_biasadd_readvariableop_resource:H
6sequential_58_dense_178_matmul_readvariableop_resource:E
7sequential_58_dense_178_biasadd_readvariableop_resource:
identity??.sequential_58/dense_176/BiasAdd/ReadVariableOp?-sequential_58/dense_176/MatMul/ReadVariableOp?.sequential_58/dense_177/BiasAdd/ReadVariableOp?-sequential_58/dense_177/MatMul/ReadVariableOp?.sequential_58/dense_178/BiasAdd/ReadVariableOp?-sequential_58/dense_178/MatMul/ReadVariableOp?
-sequential_58/dense_176/MatMul/ReadVariableOpReadVariableOp6sequential_58_dense_176_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_58/dense_176/MatMulMatMuldense_176_input5sequential_58/dense_176/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
.sequential_58/dense_176/BiasAdd/ReadVariableOpReadVariableOp7sequential_58_dense_176_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0?
sequential_58/dense_176/BiasAddBiasAdd(sequential_58/dense_176/MatMul:product:06sequential_58/dense_176/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
sequential_58/dense_176/ReluRelu(sequential_58/dense_176/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
?
-sequential_58/dense_177/MatMul/ReadVariableOpReadVariableOp6sequential_58_dense_177_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_58/dense_177/MatMulMatMul*sequential_58/dense_176/Relu:activations:05sequential_58/dense_177/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
.sequential_58/dense_177/BiasAdd/ReadVariableOpReadVariableOp7sequential_58_dense_177_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_58/dense_177/BiasAddBiasAdd(sequential_58/dense_177/MatMul:product:06sequential_58/dense_177/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_58/dense_177/ReluRelu(sequential_58/dense_177/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
-sequential_58/dense_178/MatMul/ReadVariableOpReadVariableOp6sequential_58_dense_178_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
sequential_58/dense_178/MatMulMatMul*sequential_58/dense_177/Relu:activations:05sequential_58/dense_178/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
.sequential_58/dense_178/BiasAdd/ReadVariableOpReadVariableOp7sequential_58_dense_178_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_58/dense_178/BiasAddBiasAdd(sequential_58/dense_178/MatMul:product:06sequential_58/dense_178/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????w
IdentityIdentity(sequential_58/dense_178/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp/^sequential_58/dense_176/BiasAdd/ReadVariableOp.^sequential_58/dense_176/MatMul/ReadVariableOp/^sequential_58/dense_177/BiasAdd/ReadVariableOp.^sequential_58/dense_177/MatMul/ReadVariableOp/^sequential_58/dense_178/BiasAdd/ReadVariableOp.^sequential_58/dense_178/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2`
.sequential_58/dense_176/BiasAdd/ReadVariableOp.sequential_58/dense_176/BiasAdd/ReadVariableOp2^
-sequential_58/dense_176/MatMul/ReadVariableOp-sequential_58/dense_176/MatMul/ReadVariableOp2`
.sequential_58/dense_177/BiasAdd/ReadVariableOp.sequential_58/dense_177/BiasAdd/ReadVariableOp2^
-sequential_58/dense_177/MatMul/ReadVariableOp-sequential_58/dense_177/MatMul/ReadVariableOp2`
.sequential_58/dense_178/BiasAdd/ReadVariableOp.sequential_58/dense_178/BiasAdd/ReadVariableOp2^
-sequential_58/dense_178/MatMul/ReadVariableOp-sequential_58/dense_178/MatMul/ReadVariableOp:X T
'
_output_shapes
:?????????
)
_user_specified_namedense_176_input
?
?
J__inference_sequential_58_layer_call_and_return_conditional_losses_2090476

inputs:
(dense_176_matmul_readvariableop_resource:
7
)dense_176_biasadd_readvariableop_resource:
:
(dense_177_matmul_readvariableop_resource:
7
)dense_177_biasadd_readvariableop_resource::
(dense_178_matmul_readvariableop_resource:7
)dense_178_biasadd_readvariableop_resource:
identity?? dense_176/BiasAdd/ReadVariableOp?dense_176/MatMul/ReadVariableOp? dense_177/BiasAdd/ReadVariableOp?dense_177/MatMul/ReadVariableOp? dense_178/BiasAdd/ReadVariableOp?dense_178/MatMul/ReadVariableOp?
dense_176/MatMul/ReadVariableOpReadVariableOp(dense_176_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0}
dense_176/MatMulMatMulinputs'dense_176/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
 dense_176/BiasAdd/ReadVariableOpReadVariableOp)dense_176_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0?
dense_176/BiasAddBiasAdddense_176/MatMul:product:0(dense_176/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
d
dense_176/ReluReludense_176/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
?
dense_177/MatMul/ReadVariableOpReadVariableOp(dense_177_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_177/MatMulMatMuldense_176/Relu:activations:0'dense_177/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_177/BiasAdd/ReadVariableOpReadVariableOp)dense_177_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_177/BiasAddBiasAdddense_177/MatMul:product:0(dense_177/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
dense_177/ReluReludense_177/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_178/MatMul/ReadVariableOpReadVariableOp(dense_178_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_178/MatMulMatMuldense_177/Relu:activations:0'dense_178/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_178/BiasAdd/ReadVariableOpReadVariableOp)dense_178_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_178/BiasAddBiasAdddense_178/MatMul:product:0(dense_178/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_178/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_176/BiasAdd/ReadVariableOp ^dense_176/MatMul/ReadVariableOp!^dense_177/BiasAdd/ReadVariableOp ^dense_177/MatMul/ReadVariableOp!^dense_178/BiasAdd/ReadVariableOp ^dense_178/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2D
 dense_176/BiasAdd/ReadVariableOp dense_176/BiasAdd/ReadVariableOp2B
dense_176/MatMul/ReadVariableOpdense_176/MatMul/ReadVariableOp2D
 dense_177/BiasAdd/ReadVariableOp dense_177/BiasAdd/ReadVariableOp2B
dense_177/MatMul/ReadVariableOpdense_177/MatMul/ReadVariableOp2D
 dense_178/BiasAdd/ReadVariableOp dense_178/BiasAdd/ReadVariableOp2B
dense_178/MatMul/ReadVariableOpdense_178/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_sequential_58_layer_call_fn_2090435

inputs
unknown:

	unknown_0:

	unknown_1:

	unknown_2:
	unknown_3:
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_58_layer_call_and_return_conditional_losses_2090240o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
K
dense_176_input8
!serving_default_dense_176_input:0?????????=
	dense_1780
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?R
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
loss
	variables
trainable_variables
regularization_losses
		keras_api


signatures
S__call__
*T&call_and_return_all_conditional_losses
U_default_save_signature"
_tf_keras_sequential
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
V__call__
*W&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
X__call__
*Y&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
Z__call__
*[&call_and_return_all_conditional_losses"
_tf_keras_layer
?
iter

beta_1

beta_2
	 decay
!learning_ratemGmHmImJmKmLvMvNvOvPvQvR"
	optimizer
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
?
"non_trainable_variables

#layers
$metrics
%layer_regularization_losses
&layer_metrics
	variables
trainable_variables
regularization_losses
S__call__
U_default_save_signature
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
,
\serving_default"
signature_map
": 
2dense_176/kernel
:
2dense_176/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
'non_trainable_variables

(layers
)metrics
*layer_regularization_losses
+layer_metrics
	variables
trainable_variables
regularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
": 
2dense_177/kernel
:2dense_177/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
regularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
": 2dense_178/kernel
:2dense_178/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
5
60
71
82"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	9total
	:count
;	variables
<	keras_api"
_tf_keras_metric
^
	=total
	>count
?
_fn_kwargs
@	variables
A	keras_api"
_tf_keras_metric
^
	Btotal
	Ccount
D
_fn_kwargs
E	variables
F	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
90
:1"
trackable_list_wrapper
-
;	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
=0
>1"
trackable_list_wrapper
-
@	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
B0
C1"
trackable_list_wrapper
-
E	variables"
_generic_user_object
':%
2Adam/dense_176/kernel/m
!:
2Adam/dense_176/bias/m
':%
2Adam/dense_177/kernel/m
!:2Adam/dense_177/bias/m
':%2Adam/dense_178/kernel/m
!:2Adam/dense_178/bias/m
':%
2Adam/dense_176/kernel/v
!:
2Adam/dense_176/bias/v
':%
2Adam/dense_177/kernel/v
!:2Adam/dense_177/bias/v
':%2Adam/dense_178/kernel/v
!:2Adam/dense_178/bias/v
?2?
/__inference_sequential_58_layer_call_fn_2090255
/__inference_sequential_58_layer_call_fn_2090435
/__inference_sequential_58_layer_call_fn_2090452
/__inference_sequential_58_layer_call_fn_2090355?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
J__inference_sequential_58_layer_call_and_return_conditional_losses_2090476
J__inference_sequential_58_layer_call_and_return_conditional_losses_2090500
J__inference_sequential_58_layer_call_and_return_conditional_losses_2090374
J__inference_sequential_58_layer_call_and_return_conditional_losses_2090393?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
"__inference__wrapped_model_2090182dense_176_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_dense_176_layer_call_fn_2090509?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_dense_176_layer_call_and_return_conditional_losses_2090520?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_dense_177_layer_call_fn_2090529?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_dense_177_layer_call_and_return_conditional_losses_2090540?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_dense_178_layer_call_fn_2090549?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_dense_178_layer_call_and_return_conditional_losses_2090559?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_signature_wrapper_2090418dense_176_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
"__inference__wrapped_model_2090182y8?5
.?+
)?&
dense_176_input?????????
? "5?2
0
	dense_178#? 
	dense_178??????????
F__inference_dense_176_layer_call_and_return_conditional_losses_2090520\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????

? ~
+__inference_dense_176_layer_call_fn_2090509O/?,
%?"
 ?
inputs?????????
? "??????????
?
F__inference_dense_177_layer_call_and_return_conditional_losses_2090540\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_177_layer_call_fn_2090529O/?,
%?"
 ?
inputs?????????

? "???????????
F__inference_dense_178_layer_call_and_return_conditional_losses_2090559\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ~
+__inference_dense_178_layer_call_fn_2090549O/?,
%?"
 ?
inputs?????????
? "???????????
J__inference_sequential_58_layer_call_and_return_conditional_losses_2090374q@?=
6?3
)?&
dense_176_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_58_layer_call_and_return_conditional_losses_2090393q@?=
6?3
)?&
dense_176_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_58_layer_call_and_return_conditional_losses_2090476h7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_58_layer_call_and_return_conditional_losses_2090500h7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
/__inference_sequential_58_layer_call_fn_2090255d@?=
6?3
)?&
dense_176_input?????????
p 

 
? "???????????
/__inference_sequential_58_layer_call_fn_2090355d@?=
6?3
)?&
dense_176_input?????????
p

 
? "???????????
/__inference_sequential_58_layer_call_fn_2090435[7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
/__inference_sequential_58_layer_call_fn_2090452[7?4
-?*
 ?
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_2090418?K?H
? 
A?>
<
dense_176_input)?&
dense_176_input?????????"5?2
0
	dense_178#? 
	dense_178?????????