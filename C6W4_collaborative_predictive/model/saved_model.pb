��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
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
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
�
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.11.02v2.11.0-rc2-15-g6290819256d8�
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
�
+Adam/v/recommender_net/item_bias/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:~*<
shared_name-+Adam/v/recommender_net/item_bias/embeddings
�
?Adam/v/recommender_net/item_bias/embeddings/Read/ReadVariableOpReadVariableOp+Adam/v/recommender_net/item_bias/embeddings*
_output_shapes

:~*
dtype0
�
+Adam/m/recommender_net/item_bias/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:~*<
shared_name-+Adam/m/recommender_net/item_bias/embeddings
�
?Adam/m/recommender_net/item_bias/embeddings/Read/ReadVariableOpReadVariableOp+Adam/m/recommender_net/item_bias/embeddings*
_output_shapes

:~*
dtype0
�
6Adam/v/recommender_net/item_embedding_layer/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:~*G
shared_name86Adam/v/recommender_net/item_embedding_layer/embeddings
�
JAdam/v/recommender_net/item_embedding_layer/embeddings/Read/ReadVariableOpReadVariableOp6Adam/v/recommender_net/item_embedding_layer/embeddings*
_output_shapes

:~*
dtype0
�
6Adam/m/recommender_net/item_embedding_layer/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:~*G
shared_name86Adam/m/recommender_net/item_embedding_layer/embeddings
�
JAdam/m/recommender_net/item_embedding_layer/embeddings/Read/ReadVariableOpReadVariableOp6Adam/m/recommender_net/item_embedding_layer/embeddings*
_output_shapes

:~*
dtype0
�
+Adam/v/recommender_net/user_bias/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�*<
shared_name-+Adam/v/recommender_net/user_bias/embeddings
�
?Adam/v/recommender_net/user_bias/embeddings/Read/ReadVariableOpReadVariableOp+Adam/v/recommender_net/user_bias/embeddings* 
_output_shapes
:
�*
dtype0
�
+Adam/m/recommender_net/user_bias/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�*<
shared_name-+Adam/m/recommender_net/user_bias/embeddings
�
?Adam/m/recommender_net/user_bias/embeddings/Read/ReadVariableOpReadVariableOp+Adam/m/recommender_net/user_bias/embeddings* 
_output_shapes
:
�*
dtype0
�
6Adam/v/recommender_net/user_embedding_layer/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�*G
shared_name86Adam/v/recommender_net/user_embedding_layer/embeddings
�
JAdam/v/recommender_net/user_embedding_layer/embeddings/Read/ReadVariableOpReadVariableOp6Adam/v/recommender_net/user_embedding_layer/embeddings* 
_output_shapes
:
�*
dtype0
�
6Adam/m/recommender_net/user_embedding_layer/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�*G
shared_name86Adam/m/recommender_net/user_embedding_layer/embeddings
�
JAdam/m/recommender_net/user_embedding_layer/embeddings/Read/ReadVariableOpReadVariableOp6Adam/m/recommender_net/user_embedding_layer/embeddings* 
_output_shapes
:
�*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
�
$recommender_net/item_bias/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:~*5
shared_name&$recommender_net/item_bias/embeddings
�
8recommender_net/item_bias/embeddings/Read/ReadVariableOpReadVariableOp$recommender_net/item_bias/embeddings*
_output_shapes

:~*
dtype0
�
/recommender_net/item_embedding_layer/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:~*@
shared_name1/recommender_net/item_embedding_layer/embeddings
�
Crecommender_net/item_embedding_layer/embeddings/Read/ReadVariableOpReadVariableOp/recommender_net/item_embedding_layer/embeddings*
_output_shapes

:~*
dtype0
�
$recommender_net/user_bias/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�*5
shared_name&$recommender_net/user_bias/embeddings
�
8recommender_net/user_bias/embeddings/Read/ReadVariableOpReadVariableOp$recommender_net/user_bias/embeddings* 
_output_shapes
:
�*
dtype0
�
/recommender_net/user_embedding_layer/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�*@
shared_name1/recommender_net/user_embedding_layer/embeddings
�
Crecommender_net/user_embedding_layer/embeddings/Read/ReadVariableOpReadVariableOp/recommender_net/user_embedding_layer/embeddings* 
_output_shapes
:
�*
dtype0
z
serving_default_input_1Placeholder*'
_output_shapes
:���������*
dtype0	*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1/recommender_net/user_embedding_layer/embeddings$recommender_net/user_bias/embeddings/recommender_net/item_embedding_layer/embeddings$recommender_net/item_bias/embeddings*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_133349

NoOpNoOp
�+
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�+
value�*B�* B�*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
user_embedding_layer
		user_bias

item_embedding_layer
	item_bias
	optimizer

signatures*
 
0
1
2
3*
 
0
1
2
3*

0
1* 
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
* 
�
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

embeddings*
�
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses

embeddings*
�
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

embeddings*
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

embeddings*
�
5
_variables
6_iterations
7_learning_rate
8_index_dict
9
_momentums
:_velocities
;_update_step_xla*

<serving_default* 
oi
VARIABLE_VALUE/recommender_net/user_embedding_layer/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE$recommender_net/user_bias/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE/recommender_net/item_embedding_layer/embeddings&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE$recommender_net/item_bias/embeddings&variables/3/.ATTRIBUTES/VARIABLE_VALUE*

=trace_0* 

>trace_0* 
* 
 
0
	1

2
3*

?0
@1*
* 
* 
* 
* 
* 
* 

0*

0*
	
0* 
�
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*

Ftrace_0* 

Gtrace_0* 

0*

0*
* 
�
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*

Mtrace_0* 

Ntrace_0* 

0*

0*
	
0* 
�
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*

Ttrace_0* 

Utrace_0* 

0*

0*
* 
�
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*

[trace_0* 

\trace_0* 
C
60
]1
^2
_3
`4
a5
b6
c7
d8*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
]0
_1
a2
c3*
 
^0
`1
b2
d3*
* 
* 
* 
* 
8
e	variables
f	keras_api
	gtotal
	hcount*
8
i	variables
j	keras_api
	ktotal
	lcount*
* 
* 
* 
	
0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
	
0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
�{
VARIABLE_VALUE6Adam/m/recommender_net/user_embedding_layer/embeddings1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUE6Adam/v/recommender_net/user_embedding_layer/embeddings1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE+Adam/m/recommender_net/user_bias/embeddings1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE+Adam/v/recommender_net/user_bias/embeddings1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUE6Adam/m/recommender_net/item_embedding_layer/embeddings1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUE6Adam/v/recommender_net/item_embedding_layer/embeddings1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE+Adam/m/recommender_net/item_bias/embeddings1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE+Adam/v/recommender_net/item_bias/embeddings1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*

g0
h1*

e	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

k0
l1*

i	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameCrecommender_net/user_embedding_layer/embeddings/Read/ReadVariableOp8recommender_net/user_bias/embeddings/Read/ReadVariableOpCrecommender_net/item_embedding_layer/embeddings/Read/ReadVariableOp8recommender_net/item_bias/embeddings/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpJAdam/m/recommender_net/user_embedding_layer/embeddings/Read/ReadVariableOpJAdam/v/recommender_net/user_embedding_layer/embeddings/Read/ReadVariableOp?Adam/m/recommender_net/user_bias/embeddings/Read/ReadVariableOp?Adam/v/recommender_net/user_bias/embeddings/Read/ReadVariableOpJAdam/m/recommender_net/item_embedding_layer/embeddings/Read/ReadVariableOpJAdam/v/recommender_net/item_embedding_layer/embeddings/Read/ReadVariableOp?Adam/m/recommender_net/item_bias/embeddings/Read/ReadVariableOp?Adam/v/recommender_net/item_bias/embeddings/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*
Tin
2	*
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
GPU 2J 8� *(
f#R!
__inference__traced_save_133624
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename/recommender_net/user_embedding_layer/embeddings$recommender_net/user_bias/embeddings/recommender_net/item_embedding_layer/embeddings$recommender_net/item_bias/embeddings	iterationlearning_rate6Adam/m/recommender_net/user_embedding_layer/embeddings6Adam/v/recommender_net/user_embedding_layer/embeddings+Adam/m/recommender_net/user_bias/embeddings+Adam/v/recommender_net/user_bias/embeddings6Adam/m/recommender_net/item_embedding_layer/embeddings6Adam/v/recommender_net/item_embedding_layer/embeddings+Adam/m/recommender_net/item_bias/embeddings+Adam/v/recommender_net/item_bias/embeddingstotal_1count_1totalcount*
Tin
2*
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
GPU 2J 8� *+
f&R$
"__inference__traced_restore_133688��
�f
�
K__inference_recommender_net_layer_call_and_return_conditional_losses_133449

inputs	@
,user_embedding_layer_embedding_lookup_133369:
�5
!user_bias_embedding_lookup_133378:
�>
,item_embedding_layer_embedding_lookup_133387:~3
!item_bias_embedding_lookup_133396:~
identity��item_bias/embedding_lookup�%item_embedding_layer/embedding_lookup�Qrecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp�Qrecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp�user_bias/embedding_lookup�%user_embedding_layer/embedding_lookupd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
%user_embedding_layer/embedding_lookupResourceGather,user_embedding_layer_embedding_lookup_133369strided_slice:output:0*
Tindices0	*?
_class5
31loc:@user_embedding_layer/embedding_lookup/133369*'
_output_shapes
:���������*
dtype0�
.user_embedding_layer/embedding_lookup/IdentityIdentity.user_embedding_layer/embedding_lookup:output:0*
T0*?
_class5
31loc:@user_embedding_layer/embedding_lookup/133369*'
_output_shapes
:����������
0user_embedding_layer/embedding_lookup/Identity_1Identity7user_embedding_layer/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
user_bias/embedding_lookupResourceGather!user_bias_embedding_lookup_133378strided_slice_1:output:0*
Tindices0	*4
_class*
(&loc:@user_bias/embedding_lookup/133378*'
_output_shapes
:���������*
dtype0�
#user_bias/embedding_lookup/IdentityIdentity#user_bias/embedding_lookup:output:0*
T0*4
_class*
(&loc:@user_bias/embedding_lookup/133378*'
_output_shapes
:����������
%user_bias/embedding_lookup/Identity_1Identity,user_bias/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
%item_embedding_layer/embedding_lookupResourceGather,item_embedding_layer_embedding_lookup_133387strided_slice_2:output:0*
Tindices0	*?
_class5
31loc:@item_embedding_layer/embedding_lookup/133387*'
_output_shapes
:���������*
dtype0�
.item_embedding_layer/embedding_lookup/IdentityIdentity.item_embedding_layer/embedding_lookup:output:0*
T0*?
_class5
31loc:@item_embedding_layer/embedding_lookup/133387*'
_output_shapes
:����������
0item_embedding_layer/embedding_lookup/Identity_1Identity7item_embedding_layer/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceinputsstrided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
item_bias/embedding_lookupResourceGather!item_bias_embedding_lookup_133396strided_slice_3:output:0*
Tindices0	*4
_class*
(&loc:@item_bias/embedding_lookup/133396*'
_output_shapes
:���������*
dtype0�
#item_bias/embedding_lookup/IdentityIdentity#item_bias/embedding_lookup:output:0*
T0*4
_class*
(&loc:@item_bias/embedding_lookup/133396*'
_output_shapes
:����������
%item_bias/embedding_lookup/Identity_1Identity,item_bias/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������_
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       Q
Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB x
Tensordot/ShapeShape9user_embedding_layer/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Tensordot/transpose	Transpose9user_embedding_layer/embedding_lookup/Identity_1:output:0Tensordot/concat:output:0*
T0*'
_output_shapes
:����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������a
Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB z
Tensordot/Shape_1Shape9item_embedding_layer/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:[
Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_2GatherV2Tensordot/Shape_1:output:0Tensordot/free_1:output:0"Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_3GatherV2Tensordot/Shape_1:output:0Tensordot/axes_1:output:0"Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_2ProdTensordot/GatherV2_2:output:0Tensordot/Const_2:output:0*
T0*
_output_shapes
: [
Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_3ProdTensordot/GatherV2_3:output:0Tensordot/Const_3:output:0*
T0*
_output_shapes
: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/axes_1:output:0Tensordot/free_1:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:}
Tensordot/stack_1PackTensordot/Prod_3:output:0Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:�
Tensordot/transpose_1	Transpose9item_embedding_layer/embedding_lookup/Identity_1:output:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:����������
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0Tensordot/stack_1:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:������������������Y
Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_2ConcatV2Tensordot/GatherV2:output:0Tensordot/GatherV2_2:output:0 Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: n
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_2:output:0*
T0*
_output_shapes
: �
addAddV2Tensordot:output:0.user_bias/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:���������y
add_1AddV2add:z:0.item_bias/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:���������I
ReluRelu	add_1:z:0*
T0*'
_output_shapes
:����������
Qrecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOp,user_embedding_layer_embedding_lookup_133369* 
_output_shapes
:
�*
dtype0�
Brecommender_net/user_embedding_layer/embeddings/Regularizer/L2LossL2LossYrecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: �
Arecommender_net/user_embedding_layer/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
?recommender_net/user_embedding_layer/embeddings/Regularizer/mulMulJrecommender_net/user_embedding_layer/embeddings/Regularizer/mul/x:output:0Krecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
Qrecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOp,item_embedding_layer_embedding_lookup_133387*
_output_shapes

:~*
dtype0�
Brecommender_net/item_embedding_layer/embeddings/Regularizer/L2LossL2LossYrecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: �
Arecommender_net/item_embedding_layer/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
?recommender_net/item_embedding_layer/embeddings/Regularizer/mulMulJrecommender_net/item_embedding_layer/embeddings/Regularizer/mul/x:output:0Krecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^item_bias/embedding_lookup&^item_embedding_layer/embedding_lookupR^recommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOpR^recommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp^user_bias/embedding_lookup&^user_embedding_layer/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 28
item_bias/embedding_lookupitem_bias/embedding_lookup2N
%item_embedding_layer/embedding_lookup%item_embedding_layer/embedding_lookup2�
Qrecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOpQrecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp2�
Qrecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOpQrecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp28
user_bias/embedding_lookupuser_bias/embedding_lookup2N
%user_embedding_layer/embedding_lookup%user_embedding_layer/embedding_lookup:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_133349
input_1	
unknown:
�
	unknown_0:
�
	unknown_1:~
	unknown_2:~
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_133058o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
P__inference_item_embedding_layer_layer_call_and_return_conditional_losses_133531

inputs	)
embedding_lookup_133521:~
identity��embedding_lookup�Qrecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp�
embedding_lookupResourceGatherembedding_lookup_133521inputs*
Tindices0	**
_class 
loc:@embedding_lookup/133521*'
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/133521*'
_output_shapes
:���������}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:����������
Qrecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_133521*
_output_shapes

:~*
dtype0�
Brecommender_net/item_embedding_layer/embeddings/Regularizer/L2LossL2LossYrecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: �
Arecommender_net/item_embedding_layer/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
?recommender_net/item_embedding_layer/embeddings/Regularizer/mulMulJrecommender_net/item_embedding_layer/embeddings/Regularizer/mul/x:output:0Krecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^embedding_lookupR^recommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup2�
Qrecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOpQrecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
E__inference_item_bias_layer_call_and_return_conditional_losses_133547

inputs	)
embedding_lookup_133541:~
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_133541inputs*
Tindices0	**
_class 
loc:@embedding_lookup/133541*'
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/133541*'
_output_shapes
:���������}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
E__inference_user_bias_layer_call_and_return_conditional_losses_133511

inputs	+
embedding_lookup_133505:
�
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_133505inputs*
Tindices0	**
_class 
loc:@embedding_lookup/133505*'
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/133505*'
_output_shapes
:���������}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
5__inference_user_embedding_layer_layer_call_fn_133482

inputs	
unknown:
�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_user_embedding_layer_layer_call_and_return_conditional_losses_133082o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�j
�
!__inference__wrapped_model_133058
input_1	P
<recommender_net_user_embedding_layer_embedding_lookup_132986:
�E
1recommender_net_user_bias_embedding_lookup_132995:
�N
<recommender_net_item_embedding_layer_embedding_lookup_133004:~C
1recommender_net_item_bias_embedding_lookup_133013:~
identity��*recommender_net/item_bias/embedding_lookup�5recommender_net/item_embedding_layer/embedding_lookup�*recommender_net/user_bias/embedding_lookup�5recommender_net/user_embedding_layer/embedding_lookupt
#recommender_net/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%recommender_net/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       v
%recommender_net/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
recommender_net/strided_sliceStridedSliceinput_1,recommender_net/strided_slice/stack:output:0.recommender_net/strided_slice/stack_1:output:0.recommender_net/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
5recommender_net/user_embedding_layer/embedding_lookupResourceGather<recommender_net_user_embedding_layer_embedding_lookup_132986&recommender_net/strided_slice:output:0*
Tindices0	*O
_classE
CAloc:@recommender_net/user_embedding_layer/embedding_lookup/132986*'
_output_shapes
:���������*
dtype0�
>recommender_net/user_embedding_layer/embedding_lookup/IdentityIdentity>recommender_net/user_embedding_layer/embedding_lookup:output:0*
T0*O
_classE
CAloc:@recommender_net/user_embedding_layer/embedding_lookup/132986*'
_output_shapes
:����������
@recommender_net/user_embedding_layer/embedding_lookup/Identity_1IdentityGrecommender_net/user_embedding_layer/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������v
%recommender_net/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'recommender_net/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'recommender_net/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
recommender_net/strided_slice_1StridedSliceinput_1.recommender_net/strided_slice_1/stack:output:00recommender_net/strided_slice_1/stack_1:output:00recommender_net/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
*recommender_net/user_bias/embedding_lookupResourceGather1recommender_net_user_bias_embedding_lookup_132995(recommender_net/strided_slice_1:output:0*
Tindices0	*D
_class:
86loc:@recommender_net/user_bias/embedding_lookup/132995*'
_output_shapes
:���������*
dtype0�
3recommender_net/user_bias/embedding_lookup/IdentityIdentity3recommender_net/user_bias/embedding_lookup:output:0*
T0*D
_class:
86loc:@recommender_net/user_bias/embedding_lookup/132995*'
_output_shapes
:����������
5recommender_net/user_bias/embedding_lookup/Identity_1Identity<recommender_net/user_bias/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������v
%recommender_net/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'recommender_net/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'recommender_net/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
recommender_net/strided_slice_2StridedSliceinput_1.recommender_net/strided_slice_2/stack:output:00recommender_net/strided_slice_2/stack_1:output:00recommender_net/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
5recommender_net/item_embedding_layer/embedding_lookupResourceGather<recommender_net_item_embedding_layer_embedding_lookup_133004(recommender_net/strided_slice_2:output:0*
Tindices0	*O
_classE
CAloc:@recommender_net/item_embedding_layer/embedding_lookup/133004*'
_output_shapes
:���������*
dtype0�
>recommender_net/item_embedding_layer/embedding_lookup/IdentityIdentity>recommender_net/item_embedding_layer/embedding_lookup:output:0*
T0*O
_classE
CAloc:@recommender_net/item_embedding_layer/embedding_lookup/133004*'
_output_shapes
:����������
@recommender_net/item_embedding_layer/embedding_lookup/Identity_1IdentityGrecommender_net/item_embedding_layer/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������v
%recommender_net/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'recommender_net/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'recommender_net/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
recommender_net/strided_slice_3StridedSliceinput_1.recommender_net/strided_slice_3/stack:output:00recommender_net/strided_slice_3/stack_1:output:00recommender_net/strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
*recommender_net/item_bias/embedding_lookupResourceGather1recommender_net_item_bias_embedding_lookup_133013(recommender_net/strided_slice_3:output:0*
Tindices0	*D
_class:
86loc:@recommender_net/item_bias/embedding_lookup/133013*'
_output_shapes
:���������*
dtype0�
3recommender_net/item_bias/embedding_lookup/IdentityIdentity3recommender_net/item_bias/embedding_lookup:output:0*
T0*D
_class:
86loc:@recommender_net/item_bias/embedding_lookup/133013*'
_output_shapes
:����������
5recommender_net/item_bias/embedding_lookup/Identity_1Identity<recommender_net/item_bias/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������o
recommender_net/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       a
recommender_net/Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB �
recommender_net/Tensordot/ShapeShapeIrecommender_net/user_embedding_layer/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:i
'recommender_net/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"recommender_net/Tensordot/GatherV2GatherV2(recommender_net/Tensordot/Shape:output:0'recommender_net/Tensordot/free:output:00recommender_net/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: k
)recommender_net/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$recommender_net/Tensordot/GatherV2_1GatherV2(recommender_net/Tensordot/Shape:output:0'recommender_net/Tensordot/axes:output:02recommender_net/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
recommender_net/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
recommender_net/Tensordot/ProdProd+recommender_net/Tensordot/GatherV2:output:0(recommender_net/Tensordot/Const:output:0*
T0*
_output_shapes
: k
!recommender_net/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
 recommender_net/Tensordot/Prod_1Prod-recommender_net/Tensordot/GatherV2_1:output:0*recommender_net/Tensordot/Const_1:output:0*
T0*
_output_shapes
: g
%recommender_net/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
 recommender_net/Tensordot/concatConcatV2'recommender_net/Tensordot/free:output:0'recommender_net/Tensordot/axes:output:0.recommender_net/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
recommender_net/Tensordot/stackPack'recommender_net/Tensordot/Prod:output:0)recommender_net/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
#recommender_net/Tensordot/transpose	TransposeIrecommender_net/user_embedding_layer/embedding_lookup/Identity_1:output:0)recommender_net/Tensordot/concat:output:0*
T0*'
_output_shapes
:����������
!recommender_net/Tensordot/ReshapeReshape'recommender_net/Tensordot/transpose:y:0(recommender_net/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������q
 recommender_net/Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       c
 recommender_net/Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB �
!recommender_net/Tensordot/Shape_1ShapeIrecommender_net/item_embedding_layer/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:k
)recommender_net/Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$recommender_net/Tensordot/GatherV2_2GatherV2*recommender_net/Tensordot/Shape_1:output:0)recommender_net/Tensordot/free_1:output:02recommender_net/Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: k
)recommender_net/Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$recommender_net/Tensordot/GatherV2_3GatherV2*recommender_net/Tensordot/Shape_1:output:0)recommender_net/Tensordot/axes_1:output:02recommender_net/Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
!recommender_net/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: �
 recommender_net/Tensordot/Prod_2Prod-recommender_net/Tensordot/GatherV2_2:output:0*recommender_net/Tensordot/Const_2:output:0*
T0*
_output_shapes
: k
!recommender_net/Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: �
 recommender_net/Tensordot/Prod_3Prod-recommender_net/Tensordot/GatherV2_3:output:0*recommender_net/Tensordot/Const_3:output:0*
T0*
_output_shapes
: i
'recommender_net/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"recommender_net/Tensordot/concat_1ConcatV2)recommender_net/Tensordot/axes_1:output:0)recommender_net/Tensordot/free_1:output:00recommender_net/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
!recommender_net/Tensordot/stack_1Pack)recommender_net/Tensordot/Prod_3:output:0)recommender_net/Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:�
%recommender_net/Tensordot/transpose_1	TransposeIrecommender_net/item_embedding_layer/embedding_lookup/Identity_1:output:0+recommender_net/Tensordot/concat_1:output:0*
T0*'
_output_shapes
:����������
#recommender_net/Tensordot/Reshape_1Reshape)recommender_net/Tensordot/transpose_1:y:0*recommender_net/Tensordot/stack_1:output:0*
T0*0
_output_shapes
:�������������������
 recommender_net/Tensordot/MatMulMatMul*recommender_net/Tensordot/Reshape:output:0,recommender_net/Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:������������������i
'recommender_net/Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"recommender_net/Tensordot/concat_2ConcatV2+recommender_net/Tensordot/GatherV2:output:0-recommender_net/Tensordot/GatherV2_2:output:00recommender_net/Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: �
recommender_net/TensordotReshape*recommender_net/Tensordot/MatMul:product:0+recommender_net/Tensordot/concat_2:output:0*
T0*
_output_shapes
: �
recommender_net/addAddV2"recommender_net/Tensordot:output:0>recommender_net/user_bias/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:����������
recommender_net/add_1AddV2recommender_net/add:z:0>recommender_net/item_bias/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:���������i
recommender_net/ReluRelurecommender_net/add_1:z:0*
T0*'
_output_shapes
:���������q
IdentityIdentity"recommender_net/Relu:activations:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp+^recommender_net/item_bias/embedding_lookup6^recommender_net/item_embedding_layer/embedding_lookup+^recommender_net/user_bias/embedding_lookup6^recommender_net/user_embedding_layer/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2X
*recommender_net/item_bias/embedding_lookup*recommender_net/item_bias/embedding_lookup2n
5recommender_net/item_embedding_layer/embedding_lookup5recommender_net/item_embedding_layer/embedding_lookup2X
*recommender_net/user_bias/embedding_lookup*recommender_net/user_bias/embedding_lookup2n
5recommender_net/user_embedding_layer/embedding_lookup5recommender_net/user_embedding_layer/embedding_lookup:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
*__inference_user_bias_layer_call_fn_133502

inputs	
unknown:
�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_user_bias_layer_call_and_return_conditional_losses_133099o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
5__inference_item_embedding_layer_layer_call_fn_133518

inputs	
unknown:~
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_item_embedding_layer_layer_call_and_return_conditional_losses_133120o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_0_133466n
Zrecommender_net_user_embedding_layer_embeddings_regularizer_l2loss_readvariableop_resource:
�
identity��Qrecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp�
Qrecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpZrecommender_net_user_embedding_layer_embeddings_regularizer_l2loss_readvariableop_resource* 
_output_shapes
:
�*
dtype0�
Brecommender_net/user_embedding_layer/embeddings/Regularizer/L2LossL2LossYrecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: �
Arecommender_net/user_embedding_layer/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
?recommender_net/user_embedding_layer/embeddings/Regularizer/mulMulJrecommender_net/user_embedding_layer/embeddings/Regularizer/mul/x:output:0Krecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
IdentityIdentityCrecommender_net/user_embedding_layer/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOpR^recommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2�
Qrecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOpQrecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp
�
�
P__inference_user_embedding_layer_layer_call_and_return_conditional_losses_133495

inputs	+
embedding_lookup_133485:
�
identity��embedding_lookup�Qrecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp�
embedding_lookupResourceGatherembedding_lookup_133485inputs*
Tindices0	**
_class 
loc:@embedding_lookup/133485*'
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/133485*'
_output_shapes
:���������}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:����������
Qrecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_133485* 
_output_shapes
:
�*
dtype0�
Brecommender_net/user_embedding_layer/embeddings/Regularizer/L2LossL2LossYrecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: �
Arecommender_net/user_embedding_layer/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
?recommender_net/user_embedding_layer/embeddings/Regularizer/mulMulJrecommender_net/user_embedding_layer/embeddings/Regularizer/mul/x:output:0Krecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^embedding_lookupR^recommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup2�
Qrecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOpQrecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
P__inference_user_embedding_layer_layer_call_and_return_conditional_losses_133082

inputs	+
embedding_lookup_133072:
�
identity��embedding_lookup�Qrecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp�
embedding_lookupResourceGatherembedding_lookup_133072inputs*
Tindices0	**
_class 
loc:@embedding_lookup/133072*'
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/133072*'
_output_shapes
:���������}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:����������
Qrecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_133072* 
_output_shapes
:
�*
dtype0�
Brecommender_net/user_embedding_layer/embeddings/Regularizer/L2LossL2LossYrecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: �
Arecommender_net/user_embedding_layer/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
?recommender_net/user_embedding_layer/embeddings/Regularizer/mulMulJrecommender_net/user_embedding_layer/embeddings/Regularizer/mul/x:output:0Krecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^embedding_lookupR^recommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup2�
Qrecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOpQrecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
~
*__inference_item_bias_layer_call_fn_133538

inputs	
unknown:~
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_item_bias_layer_call_and_return_conditional_losses_133137o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
0__inference_recommender_net_layer_call_fn_133362

inputs	
unknown:
�
	unknown_0:
�
	unknown_1:~
	unknown_2:~
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_recommender_net_layer_call_and_return_conditional_losses_133189o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
E__inference_item_bias_layer_call_and_return_conditional_losses_133137

inputs	)
embedding_lookup_133131:~
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_133131inputs*
Tindices0	**
_class 
loc:@embedding_lookup/133131*'
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/133131*'
_output_shapes
:���������}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�_
�
K__inference_recommender_net_layer_call_and_return_conditional_losses_133189

inputs	/
user_embedding_layer_133083:
�$
user_bias_133100:
�-
item_embedding_layer_133121:~"
item_bias_133138:~
identity��!item_bias/StatefulPartitionedCall�,item_embedding_layer/StatefulPartitionedCall�Qrecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp�Qrecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp�!user_bias/StatefulPartitionedCall�,user_embedding_layer/StatefulPartitionedCalld
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
,user_embedding_layer/StatefulPartitionedCallStatefulPartitionedCallstrided_slice:output:0user_embedding_layer_133083*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_user_embedding_layer_layer_call_and_return_conditional_losses_133082f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
!user_bias/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0user_bias_133100*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_user_bias_layer_call_and_return_conditional_losses_133099f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
,item_embedding_layer/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0item_embedding_layer_133121*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_item_embedding_layer_layer_call_and_return_conditional_losses_133120f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceinputsstrided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
!item_bias/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_3:output:0item_bias_133138*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_item_bias_layer_call_and_return_conditional_losses_133137_
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       Q
Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB t
Tensordot/ShapeShape5user_embedding_layer/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Tensordot/transpose	Transpose5user_embedding_layer/StatefulPartitionedCall:output:0Tensordot/concat:output:0*
T0*'
_output_shapes
:����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������a
Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB v
Tensordot/Shape_1Shape5item_embedding_layer/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:[
Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_2GatherV2Tensordot/Shape_1:output:0Tensordot/free_1:output:0"Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_3GatherV2Tensordot/Shape_1:output:0Tensordot/axes_1:output:0"Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_2ProdTensordot/GatherV2_2:output:0Tensordot/Const_2:output:0*
T0*
_output_shapes
: [
Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_3ProdTensordot/GatherV2_3:output:0Tensordot/Const_3:output:0*
T0*
_output_shapes
: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/axes_1:output:0Tensordot/free_1:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:}
Tensordot/stack_1PackTensordot/Prod_3:output:0Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:�
Tensordot/transpose_1	Transpose5item_embedding_layer/StatefulPartitionedCall:output:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:����������
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0Tensordot/stack_1:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:������������������Y
Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_2ConcatV2Tensordot/GatherV2:output:0Tensordot/GatherV2_2:output:0 Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: n
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_2:output:0*
T0*
_output_shapes
: ~
addAddV2Tensordot:output:0*user_bias/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:���������u
add_1AddV2add:z:0*item_bias/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:���������I
ReluRelu	add_1:z:0*
T0*'
_output_shapes
:����������
Qrecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpuser_embedding_layer_133083* 
_output_shapes
:
�*
dtype0�
Brecommender_net/user_embedding_layer/embeddings/Regularizer/L2LossL2LossYrecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: �
Arecommender_net/user_embedding_layer/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
?recommender_net/user_embedding_layer/embeddings/Regularizer/mulMulJrecommender_net/user_embedding_layer/embeddings/Regularizer/mul/x:output:0Krecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
Qrecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpitem_embedding_layer_133121*
_output_shapes

:~*
dtype0�
Brecommender_net/item_embedding_layer/embeddings/Regularizer/L2LossL2LossYrecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: �
Arecommender_net/item_embedding_layer/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
?recommender_net/item_embedding_layer/embeddings/Regularizer/mulMulJrecommender_net/item_embedding_layer/embeddings/Regularizer/mul/x:output:0Krecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^item_bias/StatefulPartitionedCall-^item_embedding_layer/StatefulPartitionedCallR^recommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOpR^recommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp"^user_bias/StatefulPartitionedCall-^user_embedding_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2F
!item_bias/StatefulPartitionedCall!item_bias/StatefulPartitionedCall2\
,item_embedding_layer/StatefulPartitionedCall,item_embedding_layer/StatefulPartitionedCall2�
Qrecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOpQrecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp2�
Qrecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOpQrecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp2F
!user_bias/StatefulPartitionedCall!user_bias/StatefulPartitionedCall2\
,user_embedding_layer/StatefulPartitionedCall,user_embedding_layer/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�_
�
K__inference_recommender_net_layer_call_and_return_conditional_losses_133324
input_1	/
user_embedding_layer_133252:
�$
user_bias_133259:
�-
item_embedding_layer_133266:~"
item_bias_133273:~
identity��!item_bias/StatefulPartitionedCall�,item_embedding_layer/StatefulPartitionedCall�Qrecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp�Qrecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp�!user_bias/StatefulPartitionedCall�,user_embedding_layer/StatefulPartitionedCalld
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceinput_1strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
,user_embedding_layer/StatefulPartitionedCallStatefulPartitionedCallstrided_slice:output:0user_embedding_layer_133252*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_user_embedding_layer_layer_call_and_return_conditional_losses_133082f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceinput_1strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
!user_bias/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0user_bias_133259*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_user_bias_layer_call_and_return_conditional_losses_133099f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceinput_1strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
,item_embedding_layer/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0item_embedding_layer_133266*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_item_embedding_layer_layer_call_and_return_conditional_losses_133120f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceinput_1strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
!item_bias/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_3:output:0item_bias_133273*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_item_bias_layer_call_and_return_conditional_losses_133137_
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       Q
Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB t
Tensordot/ShapeShape5user_embedding_layer/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Tensordot/transpose	Transpose5user_embedding_layer/StatefulPartitionedCall:output:0Tensordot/concat:output:0*
T0*'
_output_shapes
:����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������a
Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB v
Tensordot/Shape_1Shape5item_embedding_layer/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:[
Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_2GatherV2Tensordot/Shape_1:output:0Tensordot/free_1:output:0"Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_3GatherV2Tensordot/Shape_1:output:0Tensordot/axes_1:output:0"Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_2ProdTensordot/GatherV2_2:output:0Tensordot/Const_2:output:0*
T0*
_output_shapes
: [
Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_3ProdTensordot/GatherV2_3:output:0Tensordot/Const_3:output:0*
T0*
_output_shapes
: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/axes_1:output:0Tensordot/free_1:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:}
Tensordot/stack_1PackTensordot/Prod_3:output:0Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:�
Tensordot/transpose_1	Transpose5item_embedding_layer/StatefulPartitionedCall:output:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:����������
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0Tensordot/stack_1:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:������������������Y
Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_2ConcatV2Tensordot/GatherV2:output:0Tensordot/GatherV2_2:output:0 Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: n
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_2:output:0*
T0*
_output_shapes
: ~
addAddV2Tensordot:output:0*user_bias/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:���������u
add_1AddV2add:z:0*item_bias/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:���������I
ReluRelu	add_1:z:0*
T0*'
_output_shapes
:����������
Qrecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpuser_embedding_layer_133252* 
_output_shapes
:
�*
dtype0�
Brecommender_net/user_embedding_layer/embeddings/Regularizer/L2LossL2LossYrecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: �
Arecommender_net/user_embedding_layer/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
?recommender_net/user_embedding_layer/embeddings/Regularizer/mulMulJrecommender_net/user_embedding_layer/embeddings/Regularizer/mul/x:output:0Krecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
Qrecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpitem_embedding_layer_133266*
_output_shapes

:~*
dtype0�
Brecommender_net/item_embedding_layer/embeddings/Regularizer/L2LossL2LossYrecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: �
Arecommender_net/item_embedding_layer/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
?recommender_net/item_embedding_layer/embeddings/Regularizer/mulMulJrecommender_net/item_embedding_layer/embeddings/Regularizer/mul/x:output:0Krecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^item_bias/StatefulPartitionedCall-^item_embedding_layer/StatefulPartitionedCallR^recommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOpR^recommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp"^user_bias/StatefulPartitionedCall-^user_embedding_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2F
!item_bias/StatefulPartitionedCall!item_bias/StatefulPartitionedCall2\
,item_embedding_layer/StatefulPartitionedCall,item_embedding_layer/StatefulPartitionedCall2�
Qrecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOpQrecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp2�
Qrecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOpQrecommender_net/user_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp2F
!user_bias/StatefulPartitionedCall!user_bias/StatefulPartitionedCall2\
,user_embedding_layer/StatefulPartitionedCall,user_embedding_layer/StatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
P__inference_item_embedding_layer_layer_call_and_return_conditional_losses_133120

inputs	)
embedding_lookup_133110:~
identity��embedding_lookup�Qrecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp�
embedding_lookupResourceGatherembedding_lookup_133110inputs*
Tindices0	**
_class 
loc:@embedding_lookup/133110*'
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/133110*'
_output_shapes
:���������}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:����������
Qrecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_133110*
_output_shapes

:~*
dtype0�
Brecommender_net/item_embedding_layer/embeddings/Regularizer/L2LossL2LossYrecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: �
Arecommender_net/item_embedding_layer/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
?recommender_net/item_embedding_layer/embeddings/Regularizer/mulMulJrecommender_net/item_embedding_layer/embeddings/Regularizer/mul/x:output:0Krecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^embedding_lookupR^recommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup2�
Qrecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOpQrecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
E__inference_user_bias_layer_call_and_return_conditional_losses_133099

inputs	+
embedding_lookup_133093:
�
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_133093inputs*
Tindices0	**
_class 
loc:@embedding_lookup/133093*'
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/133093*'
_output_shapes
:���������}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
0__inference_recommender_net_layer_call_fn_133200
input_1	
unknown:
�
	unknown_0:
�
	unknown_1:~
	unknown_2:~
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_recommender_net_layer_call_and_return_conditional_losses_133189o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
__inference_loss_fn_1_133475l
Zrecommender_net_item_embedding_layer_embeddings_regularizer_l2loss_readvariableop_resource:~
identity��Qrecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp�
Qrecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpZrecommender_net_item_embedding_layer_embeddings_regularizer_l2loss_readvariableop_resource*
_output_shapes

:~*
dtype0�
Brecommender_net/item_embedding_layer/embeddings/Regularizer/L2LossL2LossYrecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: �
Arecommender_net/item_embedding_layer/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
?recommender_net/item_embedding_layer/embeddings/Regularizer/mulMulJrecommender_net/item_embedding_layer/embeddings/Regularizer/mul/x:output:0Krecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
IdentityIdentityCrecommender_net/item_embedding_layer/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOpR^recommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2�
Qrecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOpQrecommender_net/item_embedding_layer/embeddings/Regularizer/L2Loss/ReadVariableOp
�1
�

__inference__traced_save_133624
file_prefixN
Jsavev2_recommender_net_user_embedding_layer_embeddings_read_readvariableopC
?savev2_recommender_net_user_bias_embeddings_read_readvariableopN
Jsavev2_recommender_net_item_embedding_layer_embeddings_read_readvariableopC
?savev2_recommender_net_item_bias_embeddings_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableopU
Qsavev2_adam_m_recommender_net_user_embedding_layer_embeddings_read_readvariableopU
Qsavev2_adam_v_recommender_net_user_embedding_layer_embeddings_read_readvariableopJ
Fsavev2_adam_m_recommender_net_user_bias_embeddings_read_readvariableopJ
Fsavev2_adam_v_recommender_net_user_bias_embeddings_read_readvariableopU
Qsavev2_adam_m_recommender_net_item_embedding_layer_embeddings_read_readvariableopU
Qsavev2_adam_v_recommender_net_item_embedding_layer_embeddings_read_readvariableopJ
Fsavev2_adam_m_recommender_net_item_bias_embeddings_read_readvariableopJ
Fsavev2_adam_v_recommender_net_item_bias_embeddings_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B B B B B B B B B B B B B B B B B B B �

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Jsavev2_recommender_net_user_embedding_layer_embeddings_read_readvariableop?savev2_recommender_net_user_bias_embeddings_read_readvariableopJsavev2_recommender_net_item_embedding_layer_embeddings_read_readvariableop?savev2_recommender_net_item_bias_embeddings_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableopQsavev2_adam_m_recommender_net_user_embedding_layer_embeddings_read_readvariableopQsavev2_adam_v_recommender_net_user_embedding_layer_embeddings_read_readvariableopFsavev2_adam_m_recommender_net_user_bias_embeddings_read_readvariableopFsavev2_adam_v_recommender_net_user_bias_embeddings_read_readvariableopQsavev2_adam_m_recommender_net_item_embedding_layer_embeddings_read_readvariableopQsavev2_adam_v_recommender_net_item_embedding_layer_embeddings_read_readvariableopFsavev2_adam_m_recommender_net_item_bias_embeddings_read_readvariableopFsavev2_adam_v_recommender_net_item_bias_embeddings_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *!
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :
�:
�:~:~: : :
�:
�:
�:
�:~:~:~:~: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
�:&"
 
_output_shapes
:
�:$ 

_output_shapes

:~:$ 

_output_shapes

:~:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
�:&"
 
_output_shapes
:
�:&	"
 
_output_shapes
:
�:&
"
 
_output_shapes
:
�:$ 

_output_shapes

:~:$ 

_output_shapes

:~:$ 

_output_shapes

:~:$ 

_output_shapes

:~:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�S
�
"__inference__traced_restore_133688
file_prefixT
@assignvariableop_recommender_net_user_embedding_layer_embeddings:
�K
7assignvariableop_1_recommender_net_user_bias_embeddings:
�T
Bassignvariableop_2_recommender_net_item_embedding_layer_embeddings:~I
7assignvariableop_3_recommender_net_item_bias_embeddings:~&
assignvariableop_4_iteration:	 *
 assignvariableop_5_learning_rate: ]
Iassignvariableop_6_adam_m_recommender_net_user_embedding_layer_embeddings:
�]
Iassignvariableop_7_adam_v_recommender_net_user_embedding_layer_embeddings:
�R
>assignvariableop_8_adam_m_recommender_net_user_bias_embeddings:
�R
>assignvariableop_9_adam_v_recommender_net_user_bias_embeddings:
�\
Jassignvariableop_10_adam_m_recommender_net_item_embedding_layer_embeddings:~\
Jassignvariableop_11_adam_v_recommender_net_item_embedding_layer_embeddings:~Q
?assignvariableop_12_adam_m_recommender_net_item_bias_embeddings:~Q
?assignvariableop_13_adam_v_recommender_net_item_bias_embeddings:~%
assignvariableop_14_total_1: %
assignvariableop_15_count_1: #
assignvariableop_16_total: #
assignvariableop_17_count: 
identity_19��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*`
_output_shapesN
L:::::::::::::::::::*!
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp@assignvariableop_recommender_net_user_embedding_layer_embeddingsIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp7assignvariableop_1_recommender_net_user_bias_embeddingsIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpBassignvariableop_2_recommender_net_item_embedding_layer_embeddingsIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp7assignvariableop_3_recommender_net_item_bias_embeddingsIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_iterationIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp assignvariableop_5_learning_rateIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpIassignvariableop_6_adam_m_recommender_net_user_embedding_layer_embeddingsIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpIassignvariableop_7_adam_v_recommender_net_user_embedding_layer_embeddingsIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp>assignvariableop_8_adam_m_recommender_net_user_bias_embeddingsIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp>assignvariableop_9_adam_v_recommender_net_user_bias_embeddingsIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpJassignvariableop_10_adam_m_recommender_net_item_embedding_layer_embeddingsIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpJassignvariableop_11_adam_v_recommender_net_item_embedding_layer_embeddingsIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp?assignvariableop_12_adam_m_recommender_net_item_bias_embeddingsIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp?assignvariableop_13_adam_v_recommender_net_item_bias_embeddingsIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_1Identity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_1Identity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_18Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_19IdentityIdentity_18:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_19Identity_19:output:0*9
_input_shapes(
&: : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172(
AssignVariableOp_2AssignVariableOp_22(
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
_user_specified_namefile_prefix"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
;
input_10
serving_default_input_1:0	���������<
output_10
StatefulPartitionedCall:0���������tensorflow/serving/predict:�w
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
user_embedding_layer
		user_bias

item_embedding_layer
	item_bias
	optimizer

signatures"
_tf_keras_model
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
trace_0
trace_12�
0__inference_recommender_net_layer_call_fn_133200
0__inference_recommender_net_layer_call_fn_133362�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0ztrace_1
�
trace_0
trace_12�
K__inference_recommender_net_layer_call_and_return_conditional_losses_133449
K__inference_recommender_net_layer_call_and_return_conditional_losses_133324�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0ztrace_1
�B�
!__inference__wrapped_model_133058input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
�
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
�
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
�
5
_variables
6_iterations
7_learning_rate
8_index_dict
9
_momentums
:_velocities
;_update_step_xla"
experimentalOptimizer
,
<serving_default"
signature_map
C:A
�2/recommender_net/user_embedding_layer/embeddings
8:6
�2$recommender_net/user_bias/embeddings
A:?~2/recommender_net/item_embedding_layer/embeddings
6:4~2$recommender_net/item_bias/embeddings
�
=trace_02�
__inference_loss_fn_0_133466�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z=trace_0
�
>trace_02�
__inference_loss_fn_1_133475�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z>trace_0
 "
trackable_list_wrapper
<
0
	1

2
3"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
0__inference_recommender_net_layer_call_fn_133200input_1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
0__inference_recommender_net_layer_call_fn_133362inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_recommender_net_layer_call_and_return_conditional_losses_133449inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_recommender_net_layer_call_and_return_conditional_losses_133324input_1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
�
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
�
Ftrace_02�
5__inference_user_embedding_layer_layer_call_fn_133482�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zFtrace_0
�
Gtrace_02�
P__inference_user_embedding_layer_layer_call_and_return_conditional_losses_133495�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zGtrace_0
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
�
Mtrace_02�
*__inference_user_bias_layer_call_fn_133502�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zMtrace_0
�
Ntrace_02�
E__inference_user_bias_layer_call_and_return_conditional_losses_133511�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zNtrace_0
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
�
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
�
Ttrace_02�
5__inference_item_embedding_layer_layer_call_fn_133518�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zTtrace_0
�
Utrace_02�
P__inference_item_embedding_layer_layer_call_and_return_conditional_losses_133531�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zUtrace_0
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
�
[trace_02�
*__inference_item_bias_layer_call_fn_133538�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z[trace_0
�
\trace_02�
E__inference_item_bias_layer_call_and_return_conditional_losses_133547�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z\trace_0
_
60
]1
^2
_3
`4
a5
b6
c7
d8"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
<
]0
_1
a2
c3"
trackable_list_wrapper
<
^0
`1
b2
d3"
trackable_list_wrapper
�2��
���
FullArgSpec2
args*�'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
$__inference_signature_wrapper_133349input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_loss_fn_0_133466"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_1_133475"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
N
e	variables
f	keras_api
	gtotal
	hcount"
_tf_keras_metric
N
i	variables
j	keras_api
	ktotal
	lcount"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
5__inference_user_embedding_layer_layer_call_fn_133482inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_user_embedding_layer_layer_call_and_return_conditional_losses_133495inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_user_bias_layer_call_fn_133502inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_user_bias_layer_call_and_return_conditional_losses_133511inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
5__inference_item_embedding_layer_layer_call_fn_133518inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_item_embedding_layer_layer_call_and_return_conditional_losses_133531inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_item_bias_layer_call_fn_133538inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_item_bias_layer_call_and_return_conditional_losses_133547inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
H:F
�26Adam/m/recommender_net/user_embedding_layer/embeddings
H:F
�26Adam/v/recommender_net/user_embedding_layer/embeddings
=:;
�2+Adam/m/recommender_net/user_bias/embeddings
=:;
�2+Adam/v/recommender_net/user_bias/embeddings
F:D~26Adam/m/recommender_net/item_embedding_layer/embeddings
F:D~26Adam/v/recommender_net/item_embedding_layer/embeddings
;:9~2+Adam/m/recommender_net/item_bias/embeddings
;:9~2+Adam/v/recommender_net/item_bias/embeddings
.
g0
h1"
trackable_list_wrapper
-
e	variables"
_generic_user_object
:  (2total
:  (2count
.
k0
l1"
trackable_list_wrapper
-
i	variables"
_generic_user_object
:  (2total
:  (2count�
!__inference__wrapped_model_133058m0�-
&�#
!�
input_1���������	
� "3�0
.
output_1"�
output_1����������
E__inference_item_bias_layer_call_and_return_conditional_losses_133547^+�(
!�
�
inputs���������	
� ",�)
"�
tensor_0���������
� �
*__inference_item_bias_layer_call_fn_133538S+�(
!�
�
inputs���������	
� "!�
unknown����������
P__inference_item_embedding_layer_layer_call_and_return_conditional_losses_133531^+�(
!�
�
inputs���������	
� ",�)
"�
tensor_0���������
� �
5__inference_item_embedding_layer_layer_call_fn_133518S+�(
!�
�
inputs���������	
� "!�
unknown���������D
__inference_loss_fn_0_133466$�

� 
� "�
unknown D
__inference_loss_fn_1_133475$�

� 
� "�
unknown �
K__inference_recommender_net_layer_call_and_return_conditional_losses_133324f0�-
&�#
!�
input_1���������	
� ",�)
"�
tensor_0���������
� �
K__inference_recommender_net_layer_call_and_return_conditional_losses_133449e/�,
%�"
 �
inputs���������	
� ",�)
"�
tensor_0���������
� �
0__inference_recommender_net_layer_call_fn_133200[0�-
&�#
!�
input_1���������	
� "!�
unknown����������
0__inference_recommender_net_layer_call_fn_133362Z/�,
%�"
 �
inputs���������	
� "!�
unknown����������
$__inference_signature_wrapper_133349x;�8
� 
1�.
,
input_1!�
input_1���������	"3�0
.
output_1"�
output_1����������
E__inference_user_bias_layer_call_and_return_conditional_losses_133511^+�(
!�
�
inputs���������	
� ",�)
"�
tensor_0���������
� �
*__inference_user_bias_layer_call_fn_133502S+�(
!�
�
inputs���������	
� "!�
unknown����������
P__inference_user_embedding_layer_layer_call_and_return_conditional_losses_133495^+�(
!�
�
inputs���������	
� ",�)
"�
tensor_0���������
� �
5__inference_user_embedding_layer_layer_call_fn_133482S+�(
!�
�
inputs���������	
� "!�
unknown���������