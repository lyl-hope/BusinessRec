��
��
8
Const
output"dtype"
valuetensor"
dtypetype

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
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

executor_typestring �
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape�"serve*2.0.02unknown8��
�
2dense_features/movieId_embedding/embedding_weightsVarHandleOp*
_output_shapes
: *C
shared_name42dense_features/movieId_embedding/embedding_weights*
shape:	�
*
dtype0
�
Fdense_features/movieId_embedding/embedding_weights/Read/ReadVariableOpReadVariableOp2dense_features/movieId_embedding/embedding_weights*
_output_shapes
:	�
*
dtype0
�
3dense_features_1/userId_embedding/embedding_weightsVarHandleOp*D
shared_name53dense_features_1/userId_embedding/embedding_weights*
_output_shapes
: *
dtype0*
shape:
��

�
Gdense_features_1/userId_embedding/embedding_weights/Read/ReadVariableOpReadVariableOp3dense_features_1/userId_embedding/embedding_weights* 
_output_shapes
:
��
*
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
shape
:
*
dtype0*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:
*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shared_name
dense/bias*
shape:

e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:
*
dtype0
x
dense_1/kernelVarHandleOp*
dtype0*
shape
:

*
shared_namedense_1/kernel*
_output_shapes
: 
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:

*
dtype0
p
dense_1/biasVarHandleOp*
dtype0*
shape:
*
_output_shapes
: *
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:
*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
shared_namedense_2/kernel*
shape
:
*
dtype0
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:
*
dtype0
p
dense_2/biasVarHandleOp*
shape:*
dtype0*
shared_namedense_2/bias*
_output_shapes
: 
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
shape: *
dtype0	*
shared_name	Adam/iter*
_output_shapes
: 
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
shape: *
dtype0*
_output_shapes
: *
shared_name
Adam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
j
Adam/beta_2VarHandleOp*
dtype0*
_output_shapes
: *
shape: *
shared_name
Adam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
h

Adam/decayVarHandleOp*
shape: *
_output_shapes
: *
dtype0*
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
dtype0*
_output_shapes
: 
x
Adam/learning_rateVarHandleOp*
dtype0*
shape: *#
shared_nameAdam/learning_rate*
_output_shapes
: 
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
shape: *
shared_nametotal*
dtype0*
_output_shapes
: 
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
shape: *
shared_namecount*
dtype0
W
count/Read/ReadVariableOpReadVariableOpcount*
dtype0*
_output_shapes
: 
�
9Adam/dense_features/movieId_embedding/embedding_weights/mVarHandleOp*
_output_shapes
: *
shape:	�
*J
shared_name;9Adam/dense_features/movieId_embedding/embedding_weights/m*
dtype0
�
MAdam/dense_features/movieId_embedding/embedding_weights/m/Read/ReadVariableOpReadVariableOp9Adam/dense_features/movieId_embedding/embedding_weights/m*
dtype0*
_output_shapes
:	�

�
:Adam/dense_features_1/userId_embedding/embedding_weights/mVarHandleOp*
shape:
��
*
_output_shapes
: *
dtype0*K
shared_name<:Adam/dense_features_1/userId_embedding/embedding_weights/m
�
NAdam/dense_features_1/userId_embedding/embedding_weights/m/Read/ReadVariableOpReadVariableOp:Adam/dense_features_1/userId_embedding/embedding_weights/m*
dtype0* 
_output_shapes
:
��

�
Adam/dense/kernel/mVarHandleOp*
dtype0*$
shared_nameAdam/dense/kernel/m*
shape
:
*
_output_shapes
: 
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:
*
dtype0
z
Adam/dense/bias/mVarHandleOp*
shape:
*
dtype0*"
shared_nameAdam/dense/bias/m*
_output_shapes
: 
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
dtype0*
_output_shapes
:

�
Adam/dense_1/kernel/mVarHandleOp*
shape
:

*&
shared_nameAdam/dense_1/kernel/m*
_output_shapes
: *
dtype0

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:

*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
shape:
*
dtype0*$
shared_nameAdam/dense_1/bias/m*
_output_shapes
: 
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
dtype0*
_output_shapes
:

�
Adam/dense_2/kernel/mVarHandleOp*
shape
:
*
_output_shapes
: *
dtype0*&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
dtype0*
_output_shapes

:

~
Adam/dense_2/bias/mVarHandleOp*
dtype0*$
shared_nameAdam/dense_2/bias/m*
shape:*
_output_shapes
: 
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:*
dtype0
�
9Adam/dense_features/movieId_embedding/embedding_weights/vVarHandleOp*J
shared_name;9Adam/dense_features/movieId_embedding/embedding_weights/v*
dtype0*
shape:	�
*
_output_shapes
: 
�
MAdam/dense_features/movieId_embedding/embedding_weights/v/Read/ReadVariableOpReadVariableOp9Adam/dense_features/movieId_embedding/embedding_weights/v*
_output_shapes
:	�
*
dtype0
�
:Adam/dense_features_1/userId_embedding/embedding_weights/vVarHandleOp*
shape:
��
*K
shared_name<:Adam/dense_features_1/userId_embedding/embedding_weights/v*
_output_shapes
: *
dtype0
�
NAdam/dense_features_1/userId_embedding/embedding_weights/v/Read/ReadVariableOpReadVariableOp:Adam/dense_features_1/userId_embedding/embedding_weights/v* 
_output_shapes
:
��
*
dtype0
�
Adam/dense/kernel/vVarHandleOp*$
shared_nameAdam/dense/kernel/v*
dtype0*
shape
:
*
_output_shapes
: 
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
dtype0*
_output_shapes

:

z
Adam/dense/bias/vVarHandleOp*
dtype0*
shape:
*"
shared_nameAdam/dense/bias/v*
_output_shapes
: 
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:
*
dtype0
�
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
shape
:

*
dtype0*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:

*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*$
shared_nameAdam/dense_1/bias/v*
shape:

w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
dtype0*
_output_shapes
:

�
Adam/dense_2/kernel/vVarHandleOp*
shape
:
*&
shared_nameAdam/dense_2/kernel/v*
_output_shapes
: *
dtype0

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes

:
*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *$
shared_nameAdam/dense_2/bias/v*
shape:*
dtype0
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
�9
ConstConst"
/device:CPU:0*
_output_shapes
: *�9
value�9B�9 B�9
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7

		optimizer

regularization_losses
trainable_variables

	variables


	keras_api

signatures
R
regularization_losses
trainable_variables

	variables

	keras_api
R
regularization_losses
trainable_variables

	variables

	keras_api
�
_feature_columns

_resources
'#movieId_embedding/embedding_weights
regularization_losses
trainable_variables

	variables

	keras_api
�
_feature_columns

_resources
& "userId_embedding/embedding_weights
!regularization_losses
"trainable_variables

#	variables

$	keras_api
R
%regularization_losses
&trainable_variables

'	variables

(	keras_api
h

)kernel
*bias
+regularization_losses
,trainable_variables

-	variables

.	keras_api
h

/kernel
0bias
1regularization_losses
2trainable_variables

3	variables

4	keras_api
h

5kernel
6bias
7regularization_losses
8trainable_variables

9	variables

:	keras_api
�
;iter

<beta_1

=beta_2
	>decay
?
learning_ratemp mq)mr*ms/mt0mu5mv6mwvx vy)vz*v{/v|0v}5v~6v
 
8
0
 1
)2
*3
/4
05
56
67
8
0
 1
)2
*3
/4
05
56
67
�

regularization_losses
@layer_regularization_losses
trainable_variables

	variables
Anon_trainable_variables
Bmetrics

Clayers
 
 
 
 
�
regularization_losses
Dlayer_regularization_losses
trainable_variables

	variables
Enon_trainable_variables
Fmetrics

Glayers
 
 
 
�
regularization_losses
Hlayer_regularization_losses
trainable_variables

	variables
Inon_trainable_variables
Jmetrics

Klayers
 
 
��
VARIABLE_VALUE2dense_features/movieId_embedding/embedding_weightsTlayer_with_weights-0/movieId_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
�
regularization_losses
Llayer_regularization_losses
trainable_variables

	variables
Mnon_trainable_variables
Nmetrics

Olayers
 
 
��
VARIABLE_VALUE3dense_features_1/userId_embedding/embedding_weightsSlayer_with_weights-1/userId_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUE
 

 0

 0
�
!regularization_losses
Player_regularization_losses
"trainable_variables

#	variables
Qnon_trainable_variables
Rmetrics

Slayers
 
 
 
�
%regularization_losses
Tlayer_regularization_losses
&trainable_variables

'	variables
Unon_trainable_variables
Vmetrics

Wlayers
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

)0
*1

)0
*1
�
+regularization_losses
Xlayer_regularization_losses
,trainable_variables

-	variables
Ynon_trainable_variables
Zmetrics

[layers
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

/0
01

/0
01
�
1regularization_losses
\layer_regularization_losses
2trainable_variables

3	variables
]non_trainable_variables
^metrics

_layers
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

50
61

50
61
�
7regularization_losses
`layer_regularization_losses
8trainable_variables

9	variables
anon_trainable_variables
bmetrics

clayers
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
 

d0
8
0
1
2
3
4
5
6
7
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
x
	etotal
	fcount
g
_fn_kwargs
hregularization_losses
itrainable_variables

j	variables

k	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE
 
 
 

e0
f1
�
hregularization_losses
llayer_regularization_losses
itrainable_variables

j	variables
mnon_trainable_variables
nmetrics

olayers
 

e0
f1
 
 
��
VARIABLE_VALUE9Adam/dense_features/movieId_embedding/embedding_weights/mplayer_with_weights-0/movieId_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE:Adam/dense_features_1/userId_embedding/embedding_weights/molayer_with_weights-1/userId_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE9Adam/dense_features/movieId_embedding/embedding_weights/vplayer_with_weights-0/movieId_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE:Adam/dense_features_1/userId_embedding/embedding_weights/volayer_with_weights-1/userId_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
r
serving_default_movieIdPlaceholder*
dtype0*
shape:
���������*#
_output_shapes
:
���������
q
serving_default_userIdPlaceholder*
shape:
���������*#
_output_shapes
:
���������*
dtype0
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_movieIdserving_default_userId2dense_features/movieId_embedding/embedding_weights3dense_features_1/userId_embedding/embedding_weightsdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*-
_gradient_op_typePartitionedCall-159132*
Tout
2*
Tin
2
**
config_proto

GPU 

CPU2J 8*-
f(R&
$__inference_signature_wrapper_158150*'
_output_shapes
:���������
O
saver_filenamePlaceholder*
shape: *
dtype0*
_output_shapes
: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameFdense_features/movieId_embedding/embedding_weights/Read/ReadVariableOpGdense_features_1/userId_embedding/embedding_weights/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpMAdam/dense_features/movieId_embedding/embedding_weights/m/Read/ReadVariableOpNAdam/dense_features_1/userId_embedding/embedding_weights/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOpMAdam/dense_features/movieId_embedding/embedding_weights/v/Read/ReadVariableOpNAdam/dense_features_1/userId_embedding/embedding_weights/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOpConst*
Tout
2*,
Tin%
#2!	**
config_proto

GPU 

CPU2J 8*-
_gradient_op_typePartitionedCall-159185*(
f#R!
__inference__traced_save_159184*
_output_shapes
: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename2dense_features/movieId_embedding/embedding_weights3dense_features_1/userId_embedding/embedding_weightsdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcount9Adam/dense_features/movieId_embedding/embedding_weights/m:Adam/dense_features_1/userId_embedding/embedding_weights/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/m9Adam/dense_features/movieId_embedding/embedding_weights/v:Adam/dense_features_1/userId_embedding/embedding_weights/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/v*-
_gradient_op_typePartitionedCall-159291*
Tout
2*+
Tin$
"2 **
config_proto

GPU 

CPU2J 8*+
f&R$
"__inference__traced_restore_159290*
_output_shapes
: ׶
�	
�
A__inference_dense_layer_call_and_return_conditional_losses_157964

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:
v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*'
_output_shapes
:���������
*
T0P
ReluReluBiasAdd:output:0*'
_output_shapes
:���������
*
T0�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*.

_input_shapes
:���������::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp:& "
 
_user_specified_nameinputs: : 
�
�
NmovieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_158748=
9assert_movieid_embedding_assert_less_than_num_buckets_all
#
assert_movieid_embedding_values	(
$assert_movieid_embedding_num_buckets	

identity_1
��Assert�
AssertAssert9assert_movieid_embedding_assert_less_than_num_buckets_allassert_movieid_embedding_values$assert_movieid_embedding_num_buckets*
T
2		*
_output_shapes
 y
IdentityIdentity9assert_movieid_embedding_assert_less_than_num_buckets_all^Assert*
_output_shapes
: *
T0
S

Identity_1IdentityIdentity:output:0^Assert*
T0
*
_output_shapes
: "!

identity_1Identity_1:output:0*&

_input_shapes
: :
���������: 2
AssertAssert:  : : 
�
�
^dense_features_1_userId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_158295M
Iassert_dense_features_1_userid_embedding_assert_less_than_num_buckets_all
3
/assert_dense_features_1_userid_embedding_values	8
4assert_dense_features_1_userid_embedding_num_buckets	

identity_1
��Assert�
AssertAssertIassert_dense_features_1_userid_embedding_assert_less_than_num_buckets_all/assert_dense_features_1_userid_embedding_values4assert_dense_features_1_userid_embedding_num_buckets*
_output_shapes
 *
T
2		�
IdentityIdentityIassert_dense_features_1_userid_embedding_assert_less_than_num_buckets_all^Assert*
T0
*
_output_shapes
: S

Identity_1IdentityIdentity:output:0^Assert*
_output_shapes
: *
T0
"!

identity_1Identity_1:output:0*&

_input_shapes
: :
���������: 2
AssertAssert:  : : 
��
�
J__inference_dense_features_layer_call_and_return_conditional_losses_158856
features_movieid
features_useridu
qmovieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource
identity��>movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard�AmovieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard�TmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup�hmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpk
 movieId_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
movieId_embedding/ExpandDims
ExpandDimsfeatures_movieid)movieId_embedding/ExpandDims/dim:output:0*'
_output_shapes
:���������*
T0{
0movieId_embedding/to_sparse_input/ignore_value/xConst*
valueB :
���������*
dtype0*
_output_shapes
: �
*movieId_embedding/to_sparse_input/NotEqualNotEqual%movieId_embedding/ExpandDims:output:09movieId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:����������
)movieId_embedding/to_sparse_input/indicesWhere.movieId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
(movieId_embedding/to_sparse_input/valuesGatherNd%movieId_embedding/ExpandDims:output:01movieId_embedding/to_sparse_input/indices:index:0*#
_output_shapes
:
���������*
Tparams0*
Tindices0	�
-movieId_embedding/to_sparse_input/dense_shapeShape%movieId_embedding/ExpandDims:output:0*
_output_shapes
:*
T0*
out_type0	�
movieId_embedding/valuesCast1movieId_embedding/to_sparse_input/values:output:0*#
_output_shapes
:
���������*

DstT0	*

SrcT0b
movieId_embedding/num_buckets/xConst*
_output_shapes
: *
dtype0*
value
B :�
movieId_embedding/num_bucketsCast(movieId_embedding/num_buckets/x:output:0*

DstT0	*
_output_shapes
: *

SrcT0Z
movieId_embedding/zero/xConst*
value	B : *
dtype0*
_output_shapes
: q
movieId_embedding/zeroCast!movieId_embedding/zero/x:output:0*

SrcT0*

DstT0	*
_output_shapes
: �
3movieId_embedding/assert_less_than_num_buckets/LessLessmovieId_embedding/values:y:0!movieId_embedding/num_buckets:y:0*#
_output_shapes
:
���������*
T0	~
4movieId_embedding/assert_less_than_num_buckets/ConstConst*
value
B: *
_output_shapes
:*
dtype0�
2movieId_embedding/assert_less_than_num_buckets/AllAll7movieId_embedding/assert_less_than_num_buckets/Less:z:0=movieId_embedding/assert_less_than_num_buckets/Const:output:0*
_output_shapes
: �
AmovieId_embedding/assert_less_than_num_buckets/Assert/AssertGuardIf;movieId_embedding/assert_less_than_num_buckets/All:output:0;movieId_embedding/assert_less_than_num_buckets/All:output:0movieId_embedding/values:y:0!movieId_embedding/num_buckets:y:0*a
else_branchRRP
NmovieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_158748*
_output_shapes
: *
Tcond0
*
Tout
2
*`
then_branchQRO
MmovieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_158747*
Tin
2
		*

output_shapes
: *
_lower_using_switch_merge(�
JmovieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard/IdentityIdentityJmovieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard:output:0*
_output_shapes
: *
T0
�
8movieId_embedding/assert_greater_or_equal_0/GreaterEqualGreaterEqualmovieId_embedding/values:y:0movieId_embedding/zero:y:0*
T0	*#
_output_shapes
:
���������{
1movieId_embedding/assert_greater_or_equal_0/ConstConst*
_output_shapes
:*
value
B: *
dtype0�
/movieId_embedding/assert_greater_or_equal_0/AllAll<movieId_embedding/assert_greater_or_equal_0/GreaterEqual:z:0:movieId_embedding/assert_greater_or_equal_0/Const:output:0*
_output_shapes
: �
>movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuardIf8movieId_embedding/assert_greater_or_equal_0/All:output:08movieId_embedding/assert_greater_or_equal_0/All:output:0movieId_embedding/values:y:0B^movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard*]
then_branchNRL
JmovieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_158766*^
else_branchORM
KmovieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_158767*

output_shapes
: *
Tin
2
	*
Tout
2
*
_lower_using_switch_merge(*
Tcond0
*
_output_shapes
: �
GmovieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard/IdentityIdentityGmovieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard:output:0*
_output_shapes
: *
T0
�
movieId_embedding/IdentityIdentitymovieId_embedding/values:y:0H^movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard/IdentityK^movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard/Identity*
T0	*#
_output_shapes
:
����������
7movieId_embedding/movieId_embedding_weights/Slice/beginConst*
dtype0*
_output_shapes
:*
value
B: �
6movieId_embedding/movieId_embedding_weights/Slice/sizeConst*
dtype0*
_output_shapes
:*
value
B:�
1movieId_embedding/movieId_embedding_weights/SliceSlice6movieId_embedding/to_sparse_input/dense_shape:output:0@movieId_embedding/movieId_embedding_weights/Slice/begin:output:0?movieId_embedding/movieId_embedding_weights/Slice/size:output:0*
T0	*
_output_shapes
:*
Index0{
1movieId_embedding/movieId_embedding_weights/ConstConst*
value
B: *
dtype0*
_output_shapes
:�
0movieId_embedding/movieId_embedding_weights/ProdProd:movieId_embedding/movieId_embedding_weights/Slice:output:0:movieId_embedding/movieId_embedding_weights/Const:output:0*
_output_shapes
: *
T0	~
<movieId_embedding/movieId_embedding_weights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: {
9movieId_embedding/movieId_embedding_weights/GatherV2/axisConst*
value	B : *
_output_shapes
: *
dtype0�
4movieId_embedding/movieId_embedding_weights/GatherV2GatherV26movieId_embedding/to_sparse_input/dense_shape:output:0EmovieId_embedding/movieId_embedding_weights/GatherV2/indices:output:0BmovieId_embedding/movieId_embedding_weights/GatherV2/axis:output:0*
Tindices0*
_output_shapes
: *
Tparams0	*
Taxis0�
2movieId_embedding/movieId_embedding_weights/Cast/xPack9movieId_embedding/movieId_embedding_weights/Prod:output:0=movieId_embedding/movieId_embedding_weights/GatherV2:output:0*
_output_shapes
:*
T0	*
N�
9movieId_embedding/movieId_embedding_weights/SparseReshape
SparseReshape1movieId_embedding/to_sparse_input/indices:index:06movieId_embedding/to_sparse_input/dense_shape:output:0;movieId_embedding/movieId_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
BmovieId_embedding/movieId_embedding_weights/SparseReshape/IdentityIdentity#movieId_embedding/Identity:output:0*
T0	*#
_output_shapes
:
���������|
:movieId_embedding/movieId_embedding_weights/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	�
8movieId_embedding/movieId_embedding_weights/GreaterEqualGreaterEqualKmovieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0CmovieId_embedding/movieId_embedding_weights/GreaterEqual/y:output:0*#
_output_shapes
:
���������*
T0	�
1movieId_embedding/movieId_embedding_weights/WhereWhere<movieId_embedding/movieId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
9movieId_embedding/movieId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
valueB:
���������*
dtype0�
3movieId_embedding/movieId_embedding_weights/ReshapeReshape9movieId_embedding/movieId_embedding_weights/Where:index:0BmovieId_embedding/movieId_embedding_weights/Reshape/shape:output:0*#
_output_shapes
:
���������*
T0	}
;movieId_embedding/movieId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
6movieId_embedding/movieId_embedding_weights/GatherV2_1GatherV2JmovieId_embedding/movieId_embedding_weights/SparseReshape:output_indices:0<movieId_embedding/movieId_embedding_weights/Reshape:output:0DmovieId_embedding/movieId_embedding_weights/GatherV2_1/axis:output:0*'
_output_shapes
:���������*
Taxis0*
Tindices0	*
Tparams0	}
;movieId_embedding/movieId_embedding_weights/GatherV2_2/axisConst*
dtype0*
value	B : *
_output_shapes
: �
6movieId_embedding/movieId_embedding_weights/GatherV2_2GatherV2KmovieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0<movieId_embedding/movieId_embedding_weights/Reshape:output:0DmovieId_embedding/movieId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:
����������
4movieId_embedding/movieId_embedding_weights/IdentityIdentityHmovieId_embedding/movieId_embedding_weights/SparseReshape:output_shape:0*
_output_shapes
:*
T0	�
EmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: �
SmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows?movieId_embedding/movieId_embedding_weights/GatherV2_1:output:0?movieId_embedding/movieId_embedding_weights/GatherV2_2:output:0=movieId_embedding/movieId_embedding_weights/Identity:output:0NmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:
���������:
���������:
����������
WmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        �
YmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:�
YmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:�
QmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicedmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0`movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0bmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0bmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*#
_output_shapes
:
���������*
Index0*
T0	*

begin_mask*
end_mask*
shrink_axis_mask�
HmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/CastCastZmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:
����������
JmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/UniqueUniquecmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*2
_output_shapes 
:
���������:
���������*
T0	�
hmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpReadVariableOpqmovieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:	�
�
]movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitypmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp:value:0*
_output_shapes
:	�
*
T0�
TmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherqmovieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resourceNmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique:y:0i^movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*
dtype0*{
_classq
omloc:@movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*'
_output_shapes
:���������
�
_movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identity]movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*{
_classq
omloc:@movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*'
_output_shapes
:���������
�
_movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_2IdentityhmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0*'
_output_shapes
:���������
*
T0�
CmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparseSparseSegmentMeanhmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_2:output:0PmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique:idx:0LmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Cast:y:0*
T0*'
_output_shapes
:���������
�
;movieId_embedding/movieId_embedding_weights/Reshape_1/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:�
5movieId_embedding/movieId_embedding_weights/Reshape_1ReshapeimovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0DmovieId_embedding/movieId_embedding_weights/Reshape_1/shape:output:0*'
_output_shapes
:���������*
T0
�
1movieId_embedding/movieId_embedding_weights/ShapeShapeLmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:�
?movieId_embedding/movieId_embedding_weights/strided_slice/stackConst*
dtype0*
_output_shapes
:*
value
B:�
AmovieId_embedding/movieId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
value
B:�
AmovieId_embedding/movieId_embedding_weights/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
value
B:�
9movieId_embedding/movieId_embedding_weights/strided_sliceStridedSlice:movieId_embedding/movieId_embedding_weights/Shape:output:0HmovieId_embedding/movieId_embedding_weights/strided_slice/stack:output:0JmovieId_embedding/movieId_embedding_weights/strided_slice/stack_1:output:0JmovieId_embedding/movieId_embedding_weights/strided_slice/stack_2:output:0*
T0*
Index0*
shrink_axis_mask*
_output_shapes
: u
3movieId_embedding/movieId_embedding_weights/stack/0Const*
_output_shapes
: *
value	B :*
dtype0�
1movieId_embedding/movieId_embedding_weights/stackPack<movieId_embedding/movieId_embedding_weights/stack/0:output:0BmovieId_embedding/movieId_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:�
0movieId_embedding/movieId_embedding_weights/TileTile>movieId_embedding/movieId_embedding_weights/Reshape_1:output:0:movieId_embedding/movieId_embedding_weights/stack:output:0*
T0
*0
_output_shapes
:�������������������
6movieId_embedding/movieId_embedding_weights/zeros_like	ZerosLikeLmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
+movieId_embedding/movieId_embedding_weightsSelect9movieId_embedding/movieId_embedding_weights/Tile:output:0:movieId_embedding/movieId_embedding_weights/zeros_like:y:0LmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
2movieId_embedding/movieId_embedding_weights/Cast_1Cast6movieId_embedding/to_sparse_input/dense_shape:output:0*
_output_shapes
:*

DstT0*

SrcT0	�
9movieId_embedding/movieId_embedding_weights/Slice_1/beginConst*
dtype0*
_output_shapes
:*
value
B: �
8movieId_embedding/movieId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
value
B:*
dtype0�
3movieId_embedding/movieId_embedding_weights/Slice_1Slice6movieId_embedding/movieId_embedding_weights/Cast_1:y:0BmovieId_embedding/movieId_embedding_weights/Slice_1/begin:output:0AmovieId_embedding/movieId_embedding_weights/Slice_1/size:output:0*
_output_shapes
:*
Index0*
T0�
3movieId_embedding/movieId_embedding_weights/Shape_1Shape4movieId_embedding/movieId_embedding_weights:output:0*
_output_shapes
:*
T0�
9movieId_embedding/movieId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
value
B:�
8movieId_embedding/movieId_embedding_weights/Slice_2/sizeConst*
valueB:
���������*
_output_shapes
:*
dtype0�
3movieId_embedding/movieId_embedding_weights/Slice_2Slice<movieId_embedding/movieId_embedding_weights/Shape_1:output:0BmovieId_embedding/movieId_embedding_weights/Slice_2/begin:output:0AmovieId_embedding/movieId_embedding_weights/Slice_2/size:output:0*
T0*
Index0*
_output_shapes
:y
7movieId_embedding/movieId_embedding_weights/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: �
2movieId_embedding/movieId_embedding_weights/concatConcatV2<movieId_embedding/movieId_embedding_weights/Slice_1:output:0<movieId_embedding/movieId_embedding_weights/Slice_2:output:0@movieId_embedding/movieId_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:�
5movieId_embedding/movieId_embedding_weights/Reshape_2Reshape4movieId_embedding/movieId_embedding_weights:output:0;movieId_embedding/movieId_embedding_weights/concat:output:0*'
_output_shapes
:���������
*
T0�
movieId_embedding/ShapeShape>movieId_embedding/movieId_embedding_weights/Reshape_2:output:0*
_output_shapes
:*
T0o
%movieId_embedding/strided_slice/stackConst*
dtype0*
_output_shapes
:*
value
B: q
'movieId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
value
B:*
dtype0q
'movieId_embedding/strided_slice/stack_2Const*
value
B:*
_output_shapes
:*
dtype0�
movieId_embedding/strided_sliceStridedSlice movieId_embedding/Shape:output:0.movieId_embedding/strided_slice/stack:output:00movieId_embedding/strided_slice/stack_1:output:00movieId_embedding/strided_slice/stack_2:output:0*
shrink_axis_mask*
_output_shapes
: *
Index0*
T0c
!movieId_embedding/Reshape/shape/1Const*
_output_shapes
: *
value	B :
*
dtype0�
movieId_embedding/Reshape/shapePack(movieId_embedding/strided_slice:output:0*movieId_embedding/Reshape/shape/1:output:0*
N*
_output_shapes
:*
T0�
movieId_embedding/ReshapeReshape>movieId_embedding/movieId_embedding_weights/Reshape_2:output:0(movieId_embedding/Reshape/shape:output:0*'
_output_shapes
:���������
*
T0\
concat/concat_dimConst*
_output_shapes
: *
valueB :
���������*
dtype0o

concat/concatIdentity"movieId_embedding/Reshape:output:0*
T0*'
_output_shapes
:���������
�
IdentityIdentityconcat/concat:output:0?^movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuardB^movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuardU^movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupi^movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*'
_output_shapes
:���������
*
T0"
identityIdentity:output:0*5

_input_shapes$
":
���������:
���������:2�
AmovieId_embedding/assert_less_than_num_buckets/Assert/AssertGuardAmovieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard2�
>movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard>movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard2�
hmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOphmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp2�
TmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupTmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup:0 ,
*
_user_specified_namefeatures/productId:/+
)
_user_specified_namefeatures/userId: 
�
�
LuserId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_158882>
:identity_userid_embedding_assert_less_than_num_buckets_all

placeholder	

placeholder_1	

identity_1
"
NoOpNoOp*
_output_shapes
 x
IdentityIdentity:identity_userid_embedding_assert_less_than_num_buckets_all^NoOp*
_output_shapes
: *
T0
J

Identity_1IdentityIdentity:output:0*
_output_shapes
: *
T0
"!

identity_1Identity_1:output:0*&

_input_shapes
: :
���������: :  : : 
��
�
A__inference_model_layer_call_and_return_conditional_losses_158700
inputs_0
inputs_1�
�dense_features_movieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource�
�dense_features_1_userid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�Mdense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard�Pdense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard�cdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup�wdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp�Ndense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard�Qdense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard�cdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup�wdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpz
/dense_features/movieId_embedding/ExpandDims/dimConst*
dtype0*
valueB :
���������*
_output_shapes
: �
+dense_features/movieId_embedding/ExpandDims
ExpandDimsinputs_08dense_features/movieId_embedding/ExpandDims/dim:output:0*'
_output_shapes
:���������*
T0�
?dense_features/movieId_embedding/to_sparse_input/ignore_value/xConst*
dtype0*
_output_shapes
: *
valueB :
����������
9dense_features/movieId_embedding/to_sparse_input/NotEqualNotEqual4dense_features/movieId_embedding/ExpandDims:output:0Hdense_features/movieId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:����������
8dense_features/movieId_embedding/to_sparse_input/indicesWhere=dense_features/movieId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
7dense_features/movieId_embedding/to_sparse_input/valuesGatherNd4dense_features/movieId_embedding/ExpandDims:output:0@dense_features/movieId_embedding/to_sparse_input/indices:index:0*#
_output_shapes
:
���������*
Tparams0*
Tindices0	�
<dense_features/movieId_embedding/to_sparse_input/dense_shapeShape4dense_features/movieId_embedding/ExpandDims:output:0*
T0*
out_type0	*
_output_shapes
:�
'dense_features/movieId_embedding/valuesCast@dense_features/movieId_embedding/to_sparse_input/values:output:0*#
_output_shapes
:
���������*

DstT0	*

SrcT0q
.dense_features/movieId_embedding/num_buckets/xConst*
dtype0*
_output_shapes
: *
value
B :��
,dense_features/movieId_embedding/num_bucketsCast7dense_features/movieId_embedding/num_buckets/x:output:0*

DstT0	*
_output_shapes
: *

SrcT0i
'dense_features/movieId_embedding/zero/xConst*
dtype0*
_output_shapes
: *
value	B : �
%dense_features/movieId_embedding/zeroCast0dense_features/movieId_embedding/zero/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
Bdense_features/movieId_embedding/assert_less_than_num_buckets/LessLess+dense_features/movieId_embedding/values:y:00dense_features/movieId_embedding/num_buckets:y:0*
T0	*#
_output_shapes
:
����������
Cdense_features/movieId_embedding/assert_less_than_num_buckets/ConstConst*
value
B: *
dtype0*
_output_shapes
:�
Adense_features/movieId_embedding/assert_less_than_num_buckets/AllAllFdense_features/movieId_embedding/assert_less_than_num_buckets/Less:z:0Ldense_features/movieId_embedding/assert_less_than_num_buckets/Const:output:0*
_output_shapes
: �
Pdense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuardIfJdense_features/movieId_embedding/assert_less_than_num_buckets/All:output:0Jdense_features/movieId_embedding/assert_less_than_num_buckets/All:output:0+dense_features/movieId_embedding/values:y:00dense_features/movieId_embedding/num_buckets:y:0*
_lower_using_switch_merge(*
Tcond0
*
_output_shapes
: *

output_shapes
: *
Tin
2
		*o
then_branch`R^
\dense_features_movieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_158445*p
else_branchaR_
]dense_features_movieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_158446*
Tout
2
�
Ydense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard/IdentityIdentityYdense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard:output:0*
_output_shapes
: *
T0
�
Gdense_features/movieId_embedding/assert_greater_or_equal_0/GreaterEqualGreaterEqual+dense_features/movieId_embedding/values:y:0)dense_features/movieId_embedding/zero:y:0*
T0	*#
_output_shapes
:
����������
@dense_features/movieId_embedding/assert_greater_or_equal_0/ConstConst*
_output_shapes
:*
value
B: *
dtype0�
>dense_features/movieId_embedding/assert_greater_or_equal_0/AllAllKdense_features/movieId_embedding/assert_greater_or_equal_0/GreaterEqual:z:0Idense_features/movieId_embedding/assert_greater_or_equal_0/Const:output:0*
_output_shapes
: �
Mdense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuardIfGdense_features/movieId_embedding/assert_greater_or_equal_0/All:output:0Gdense_features/movieId_embedding/assert_greater_or_equal_0/All:output:0+dense_features/movieId_embedding/values:y:0Q^dense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard*

output_shapes
: *
Tin
2
	*m
else_branch^R\
Zdense_features_movieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_158465*
_lower_using_switch_merge(*
Tout
2
*
Tcond0
*l
then_branch]R[
Ydense_features_movieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_158464*
_output_shapes
: �
Vdense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard/IdentityIdentityVdense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: �
)dense_features/movieId_embedding/IdentityIdentity+dense_features/movieId_embedding/values:y:0W^dense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard/IdentityZ^dense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard/Identity*
T0	*#
_output_shapes
:
����������
Fdense_features/movieId_embedding/movieId_embedding_weights/Slice/beginConst*
_output_shapes
:*
value
B: *
dtype0�
Edense_features/movieId_embedding/movieId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
value
B:*
dtype0�
@dense_features/movieId_embedding/movieId_embedding_weights/SliceSliceEdense_features/movieId_embedding/to_sparse_input/dense_shape:output:0Odense_features/movieId_embedding/movieId_embedding_weights/Slice/begin:output:0Ndense_features/movieId_embedding/movieId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:�
@dense_features/movieId_embedding/movieId_embedding_weights/ConstConst*
dtype0*
_output_shapes
:*
value
B: �
?dense_features/movieId_embedding/movieId_embedding_weights/ProdProdIdense_features/movieId_embedding/movieId_embedding_weights/Slice:output:0Idense_features/movieId_embedding/movieId_embedding_weights/Const:output:0*
_output_shapes
: *
T0	�
Kdense_features/movieId_embedding/movieId_embedding_weights/GatherV2/indicesConst*
dtype0*
_output_shapes
: *
value	B :�
Hdense_features/movieId_embedding/movieId_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
value	B : *
dtype0�
Cdense_features/movieId_embedding/movieId_embedding_weights/GatherV2GatherV2Edense_features/movieId_embedding/to_sparse_input/dense_shape:output:0Tdense_features/movieId_embedding/movieId_embedding_weights/GatherV2/indices:output:0Qdense_features/movieId_embedding/movieId_embedding_weights/GatherV2/axis:output:0*
Tparams0	*
_output_shapes
: *
Tindices0*
Taxis0�
Adense_features/movieId_embedding/movieId_embedding_weights/Cast/xPackHdense_features/movieId_embedding/movieId_embedding_weights/Prod:output:0Ldense_features/movieId_embedding/movieId_embedding_weights/GatherV2:output:0*
N*
_output_shapes
:*
T0	�
Hdense_features/movieId_embedding/movieId_embedding_weights/SparseReshape
SparseReshape@dense_features/movieId_embedding/to_sparse_input/indices:index:0Edense_features/movieId_embedding/to_sparse_input/dense_shape:output:0Jdense_features/movieId_embedding/movieId_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
Qdense_features/movieId_embedding/movieId_embedding_weights/SparseReshape/IdentityIdentity2dense_features/movieId_embedding/Identity:output:0*#
_output_shapes
:
���������*
T0	�
Idense_features/movieId_embedding/movieId_embedding_weights/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: �
Gdense_features/movieId_embedding/movieId_embedding_weights/GreaterEqualGreaterEqualZdense_features/movieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0Rdense_features/movieId_embedding/movieId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:
����������
@dense_features/movieId_embedding/movieId_embedding_weights/WhereWhereKdense_features/movieId_embedding/movieId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
Hdense_features/movieId_embedding/movieId_embedding_weights/Reshape/shapeConst*
valueB:
���������*
_output_shapes
:*
dtype0�
Bdense_features/movieId_embedding/movieId_embedding_weights/ReshapeReshapeHdense_features/movieId_embedding/movieId_embedding_weights/Where:index:0Qdense_features/movieId_embedding/movieId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:
����������
Jdense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: �
Edense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1GatherV2Ydense_features/movieId_embedding/movieId_embedding_weights/SparseReshape:output_indices:0Kdense_features/movieId_embedding/movieId_embedding_weights/Reshape:output:0Sdense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*'
_output_shapes
:���������*
Tparams0	�
Jdense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2/axisConst*
dtype0*
value	B : *
_output_shapes
: �
Edense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2GatherV2Zdense_features/movieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0Kdense_features/movieId_embedding/movieId_embedding_weights/Reshape:output:0Sdense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2/axis:output:0*
Tindices0	*
Taxis0*#
_output_shapes
:
���������*
Tparams0	�
Cdense_features/movieId_embedding/movieId_embedding_weights/IdentityIdentityWdense_features/movieId_embedding/movieId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
Tdense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: �
bdense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsNdense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1:output:0Ndense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2:output:0Ldense_features/movieId_embedding/movieId_embedding_weights/Identity:output:0]dense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/Const:output:0*T
_output_shapesB
@:���������:
���������:
���������:
���������*
T0	�
fdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        �
hdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:�
hdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      �
`dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicesdense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0odense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0qdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0qdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
T0	*
end_mask*#
_output_shapes
:
���������*

begin_mask*
Index0*
shrink_axis_mask�
Wdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/CastCastidense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*

SrcT0	*#
_output_shapes
:
���������*

DstT0�
Ydense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/UniqueUniquerdense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:
���������:
����������
wdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpReadVariableOp�dense_features_movieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:	�
�
ldense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitydense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
�
cdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGather�dense_features_movieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource]dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique:y:0x^dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*'
_output_shapes
:���������
*
Tindices0	*�
_class�
~|loc:@dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*
dtype0�
ndense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identityldense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*�
_class�
~|loc:@dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*'
_output_shapes
:���������
*
T0�
ndense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_2Identitywdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0*'
_output_shapes
:���������
*
T0�
Rdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparseSparseSegmentMeanwdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_2:output:0_dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique:idx:0[dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Cast:y:0*
T0*'
_output_shapes
:���������
�
Jdense_features/movieId_embedding/movieId_embedding_weights/Reshape_1/shapeConst*
valueB"����   *
_output_shapes
:*
dtype0�
Ddense_features/movieId_embedding/movieId_embedding_weights/Reshape_1Reshapexdense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Sdense_features/movieId_embedding/movieId_embedding_weights/Reshape_1/shape:output:0*'
_output_shapes
:���������*
T0
�
@dense_features/movieId_embedding/movieId_embedding_weights/ShapeShape[dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
_output_shapes
:*
T0�
Ndense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stackConst*
value
B:*
_output_shapes
:*
dtype0�
Pdense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
value
B:�
Pdense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
value
B:*
dtype0�
Hdense_features/movieId_embedding/movieId_embedding_weights/strided_sliceStridedSliceIdense_features/movieId_embedding/movieId_embedding_weights/Shape:output:0Wdense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack:output:0Ydense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_1:output:0Ydense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_2:output:0*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0�
Bdense_features/movieId_embedding/movieId_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :�
@dense_features/movieId_embedding/movieId_embedding_weights/stackPackKdense_features/movieId_embedding/movieId_embedding_weights/stack/0:output:0Qdense_features/movieId_embedding/movieId_embedding_weights/strided_slice:output:0*
T0*
N*
_output_shapes
:�
?dense_features/movieId_embedding/movieId_embedding_weights/TileTileMdense_features/movieId_embedding/movieId_embedding_weights/Reshape_1:output:0Idense_features/movieId_embedding/movieId_embedding_weights/stack:output:0*
T0
*0
_output_shapes
:�������������������
Edense_features/movieId_embedding/movieId_embedding_weights/zeros_like	ZerosLike[dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
:dense_features/movieId_embedding/movieId_embedding_weightsSelectHdense_features/movieId_embedding/movieId_embedding_weights/Tile:output:0Idense_features/movieId_embedding/movieId_embedding_weights/zeros_like:y:0[dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
Adense_features/movieId_embedding/movieId_embedding_weights/Cast_1CastEdense_features/movieId_embedding/to_sparse_input/dense_shape:output:0*

SrcT0	*

DstT0*
_output_shapes
:�
Hdense_features/movieId_embedding/movieId_embedding_weights/Slice_1/beginConst*
dtype0*
_output_shapes
:*
value
B: �
Gdense_features/movieId_embedding/movieId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
value
B:*
dtype0�
Bdense_features/movieId_embedding/movieId_embedding_weights/Slice_1SliceEdense_features/movieId_embedding/movieId_embedding_weights/Cast_1:y:0Qdense_features/movieId_embedding/movieId_embedding_weights/Slice_1/begin:output:0Pdense_features/movieId_embedding/movieId_embedding_weights/Slice_1/size:output:0*
Index0*
_output_shapes
:*
T0�
Bdense_features/movieId_embedding/movieId_embedding_weights/Shape_1ShapeCdense_features/movieId_embedding/movieId_embedding_weights:output:0*
_output_shapes
:*
T0�
Hdense_features/movieId_embedding/movieId_embedding_weights/Slice_2/beginConst*
dtype0*
_output_shapes
:*
value
B:�
Gdense_features/movieId_embedding/movieId_embedding_weights/Slice_2/sizeConst*
dtype0*
_output_shapes
:*
valueB:
����������
Bdense_features/movieId_embedding/movieId_embedding_weights/Slice_2SliceKdense_features/movieId_embedding/movieId_embedding_weights/Shape_1:output:0Qdense_features/movieId_embedding/movieId_embedding_weights/Slice_2/begin:output:0Pdense_features/movieId_embedding/movieId_embedding_weights/Slice_2/size:output:0*
T0*
_output_shapes
:*
Index0�
Fdense_features/movieId_embedding/movieId_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Adense_features/movieId_embedding/movieId_embedding_weights/concatConcatV2Kdense_features/movieId_embedding/movieId_embedding_weights/Slice_1:output:0Kdense_features/movieId_embedding/movieId_embedding_weights/Slice_2:output:0Odense_features/movieId_embedding/movieId_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Ddense_features/movieId_embedding/movieId_embedding_weights/Reshape_2ReshapeCdense_features/movieId_embedding/movieId_embedding_weights:output:0Jdense_features/movieId_embedding/movieId_embedding_weights/concat:output:0*'
_output_shapes
:���������
*
T0�
&dense_features/movieId_embedding/ShapeShapeMdense_features/movieId_embedding/movieId_embedding_weights/Reshape_2:output:0*
_output_shapes
:*
T0~
4dense_features/movieId_embedding/strided_slice/stackConst*
dtype0*
value
B: *
_output_shapes
:�
6dense_features/movieId_embedding/strided_slice/stack_1Const*
value
B:*
dtype0*
_output_shapes
:�
6dense_features/movieId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
value
B:�
.dense_features/movieId_embedding/strided_sliceStridedSlice/dense_features/movieId_embedding/Shape:output:0=dense_features/movieId_embedding/strided_slice/stack:output:0?dense_features/movieId_embedding/strided_slice/stack_1:output:0?dense_features/movieId_embedding/strided_slice/stack_2:output:0*
_output_shapes
: *
T0*
shrink_axis_mask*
Index0r
0dense_features/movieId_embedding/Reshape/shape/1Const*
value	B :
*
dtype0*
_output_shapes
: �
.dense_features/movieId_embedding/Reshape/shapePack7dense_features/movieId_embedding/strided_slice:output:09dense_features/movieId_embedding/Reshape/shape/1:output:0*
N*
_output_shapes
:*
T0�
(dense_features/movieId_embedding/ReshapeReshapeMdense_features/movieId_embedding/movieId_embedding_weights/Reshape_2:output:07dense_features/movieId_embedding/Reshape/shape:output:0*'
_output_shapes
:���������
*
T0k
 dense_features/concat/concat_dimConst*
_output_shapes
: *
valueB :
���������*
dtype0�
dense_features/concat/concatIdentity1dense_features/movieId_embedding/Reshape:output:0*
T0*'
_output_shapes
:���������
{
0dense_features_1/userId_embedding/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: �
,dense_features_1/userId_embedding/ExpandDims
ExpandDimsinputs_19dense_features_1/userId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:����������
@dense_features_1/userId_embedding/to_sparse_input/ignore_value/xConst*
valueB :
���������*
dtype0*
_output_shapes
: �
:dense_features_1/userId_embedding/to_sparse_input/NotEqualNotEqual5dense_features_1/userId_embedding/ExpandDims:output:0Idense_features_1/userId_embedding/to_sparse_input/ignore_value/x:output:0*'
_output_shapes
:���������*
T0�
9dense_features_1/userId_embedding/to_sparse_input/indicesWhere>dense_features_1/userId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
8dense_features_1/userId_embedding/to_sparse_input/valuesGatherNd5dense_features_1/userId_embedding/ExpandDims:output:0Adense_features_1/userId_embedding/to_sparse_input/indices:index:0*#
_output_shapes
:
���������*
Tindices0	*
Tparams0�
=dense_features_1/userId_embedding/to_sparse_input/dense_shapeShape5dense_features_1/userId_embedding/ExpandDims:output:0*
out_type0	*
_output_shapes
:*
T0�
(dense_features_1/userId_embedding/valuesCastAdense_features_1/userId_embedding/to_sparse_input/values:output:0*

DstT0	*#
_output_shapes
:
���������*

SrcT0s
/dense_features_1/userId_embedding/num_buckets/xConst*
dtype0*
_output_shapes
: *
valueB	 :���
-dense_features_1/userId_embedding/num_bucketsCast8dense_features_1/userId_embedding/num_buckets/x:output:0*

SrcT0*
_output_shapes
: *

DstT0	j
(dense_features_1/userId_embedding/zero/xConst*
_output_shapes
: *
value	B : *
dtype0�
&dense_features_1/userId_embedding/zeroCast1dense_features_1/userId_embedding/zero/x:output:0*

DstT0	*
_output_shapes
: *

SrcT0�
Cdense_features_1/userId_embedding/assert_less_than_num_buckets/LessLess,dense_features_1/userId_embedding/values:y:01dense_features_1/userId_embedding/num_buckets:y:0*
T0	*#
_output_shapes
:
����������
Ddense_features_1/userId_embedding/assert_less_than_num_buckets/ConstConst*
_output_shapes
:*
value
B: *
dtype0�
Bdense_features_1/userId_embedding/assert_less_than_num_buckets/AllAllGdense_features_1/userId_embedding/assert_less_than_num_buckets/Less:z:0Mdense_features_1/userId_embedding/assert_less_than_num_buckets/Const:output:0*
_output_shapes
: �
Qdense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuardIfKdense_features_1/userId_embedding/assert_less_than_num_buckets/All:output:0Kdense_features_1/userId_embedding/assert_less_than_num_buckets/All:output:0,dense_features_1/userId_embedding/values:y:01dense_features_1/userId_embedding/num_buckets:y:0N^dense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard*
Tout
2
*
Tin
2
		*
Tcond0
*
_output_shapes
: *

output_shapes
: *
_lower_using_switch_merge(*q
else_branchbR`
^dense_features_1_userId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_158569*p
then_branchaR_
]dense_features_1_userId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_158568�
Zdense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard/IdentityIdentityZdense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: �
Hdense_features_1/userId_embedding/assert_greater_or_equal_0/GreaterEqualGreaterEqual,dense_features_1/userId_embedding/values:y:0*dense_features_1/userId_embedding/zero:y:0*#
_output_shapes
:
���������*
T0	�
Adense_features_1/userId_embedding/assert_greater_or_equal_0/ConstConst*
dtype0*
_output_shapes
:*
value
B: �
?dense_features_1/userId_embedding/assert_greater_or_equal_0/AllAllLdense_features_1/userId_embedding/assert_greater_or_equal_0/GreaterEqual:z:0Jdense_features_1/userId_embedding/assert_greater_or_equal_0/Const:output:0*
_output_shapes
: �
Ndense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuardIfHdense_features_1/userId_embedding/assert_greater_or_equal_0/All:output:0Hdense_features_1/userId_embedding/assert_greater_or_equal_0/All:output:0,dense_features_1/userId_embedding/values:y:0R^dense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard*n
else_branch_R]
[dense_features_1_userId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_158588*
_lower_using_switch_merge(*
Tcond0
*
Tin
2
	*
Tout
2
*m
then_branch^R\
Zdense_features_1_userId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_158587*
_output_shapes
: *

output_shapes
: �
Wdense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard/IdentityIdentityWdense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: �
*dense_features_1/userId_embedding/IdentityIdentity,dense_features_1/userId_embedding/values:y:0X^dense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard/Identity[^dense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard/Identity*
T0	*#
_output_shapes
:
����������
Fdense_features_1/userId_embedding/userId_embedding_weights/Slice/beginConst*
_output_shapes
:*
value
B: *
dtype0�
Edense_features_1/userId_embedding/userId_embedding_weights/Slice/sizeConst*
value
B:*
_output_shapes
:*
dtype0�
@dense_features_1/userId_embedding/userId_embedding_weights/SliceSliceFdense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Odense_features_1/userId_embedding/userId_embedding_weights/Slice/begin:output:0Ndense_features_1/userId_embedding/userId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:�
@dense_features_1/userId_embedding/userId_embedding_weights/ConstConst*
value
B: *
_output_shapes
:*
dtype0�
?dense_features_1/userId_embedding/userId_embedding_weights/ProdProdIdense_features_1/userId_embedding/userId_embedding_weights/Slice:output:0Idense_features_1/userId_embedding/userId_embedding_weights/Const:output:0*
_output_shapes
: *
T0	�
Kdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
value	B :*
dtype0�
Hdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/axisConst*
dtype0*
value	B : *
_output_shapes
: �
Cdense_features_1/userId_embedding/userId_embedding_weights/GatherV2GatherV2Fdense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Tdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/indices:output:0Qdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/axis:output:0*
Tindices0*
_output_shapes
: *
Tparams0	*
Taxis0�
Adense_features_1/userId_embedding/userId_embedding_weights/Cast/xPackHdense_features_1/userId_embedding/userId_embedding_weights/Prod:output:0Ldense_features_1/userId_embedding/userId_embedding_weights/GatherV2:output:0*
T0	*
N*
_output_shapes
:�
Hdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape
SparseReshapeAdense_features_1/userId_embedding/to_sparse_input/indices:index:0Fdense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Jdense_features_1/userId_embedding/userId_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
Qdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/IdentityIdentity3dense_features_1/userId_embedding/Identity:output:0*#
_output_shapes
:
���������*
T0	�
Idense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: �
Gdense_features_1/userId_embedding/userId_embedding_weights/GreaterEqualGreaterEqualZdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0Rdense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual/y:output:0*#
_output_shapes
:
���������*
T0	�
@dense_features_1/userId_embedding/userId_embedding_weights/WhereWhereKdense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
Hdense_features_1/userId_embedding/userId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
Bdense_features_1/userId_embedding/userId_embedding_weights/ReshapeReshapeHdense_features_1/userId_embedding/userId_embedding_weights/Where:index:0Qdense_features_1/userId_embedding/userId_embedding_weights/Reshape/shape:output:0*#
_output_shapes
:
���������*
T0	�
Jdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Edense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1GatherV2Ydense_features_1/userId_embedding/userId_embedding_weights/SparseReshape:output_indices:0Kdense_features_1/userId_embedding/userId_embedding_weights/Reshape:output:0Sdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1/axis:output:0*'
_output_shapes
:���������*
Tindices0	*
Tparams0	*
Taxis0�
Jdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2/axisConst*
value	B : *
_output_shapes
: *
dtype0�
Edense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2GatherV2Zdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0Kdense_features_1/userId_embedding/userId_embedding_weights/Reshape:output:0Sdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2/axis:output:0*
Tindices0	*#
_output_shapes
:
���������*
Taxis0*
Tparams0	�
Cdense_features_1/userId_embedding/userId_embedding_weights/IdentityIdentityWdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
Tdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R �
bdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsNdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1:output:0Ndense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2:output:0Ldense_features_1/userId_embedding/userId_embedding_weights/Identity:output:0]dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:
���������:
���������:
����������
fdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        �
hdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:�
hdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0�
`dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicesdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0odense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0qdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0qdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*

begin_mask*
shrink_axis_mask*
end_mask*
T0	*
Index0*#
_output_shapes
:
����������
Wdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/CastCastidense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*#
_output_shapes
:
���������*

SrcT0	*

DstT0�
Ydense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/UniqueUniquerdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:
���������:
����������
wdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpReadVariableOp�dense_features_1_userid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0* 
_output_shapes
:
��
�
ldense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitydense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
�
cdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGather�dense_features_1_userid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource]dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:y:0x^dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*
dtype0*�
_class�
~|loc:@dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*'
_output_shapes
:���������
�
ndense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identityldense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*�
_class�
~|loc:@dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*'
_output_shapes
:���������
�
ndense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_2Identitywdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0*'
_output_shapes
:���������
*
T0�
Rdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparseSparseSegmentMeanwdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_2:output:0_dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:idx:0[dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/Cast:y:0*'
_output_shapes
:���������
*
T0�
Jdense_features_1/userId_embedding/userId_embedding_weights/Reshape_1/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:�
Ddense_features_1/userId_embedding/userId_embedding_weights/Reshape_1Reshapexdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Sdense_features_1/userId_embedding/userId_embedding_weights/Reshape_1/shape:output:0*'
_output_shapes
:���������*
T0
�
@dense_features_1/userId_embedding/userId_embedding_weights/ShapeShape[dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:�
Ndense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
value
B:�
Pdense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
value
B:�
Pdense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
value
B:*
dtype0�
Hdense_features_1/userId_embedding/userId_embedding_weights/strided_sliceStridedSliceIdense_features_1/userId_embedding/userId_embedding_weights/Shape:output:0Wdense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack:output:0Ydense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_1:output:0Ydense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_2:output:0*
Index0*
_output_shapes
: *
shrink_axis_mask*
T0�
Bdense_features_1/userId_embedding/userId_embedding_weights/stack/0Const*
value	B :*
_output_shapes
: *
dtype0�
@dense_features_1/userId_embedding/userId_embedding_weights/stackPackKdense_features_1/userId_embedding/userId_embedding_weights/stack/0:output:0Qdense_features_1/userId_embedding/userId_embedding_weights/strided_slice:output:0*
_output_shapes
:*
T0*
N�
?dense_features_1/userId_embedding/userId_embedding_weights/TileTileMdense_features_1/userId_embedding/userId_embedding_weights/Reshape_1:output:0Idense_features_1/userId_embedding/userId_embedding_weights/stack:output:0*
T0
*0
_output_shapes
:�������������������
Edense_features_1/userId_embedding/userId_embedding_weights/zeros_like	ZerosLike[dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
:dense_features_1/userId_embedding/userId_embedding_weightsSelectHdense_features_1/userId_embedding/userId_embedding_weights/Tile:output:0Idense_features_1/userId_embedding/userId_embedding_weights/zeros_like:y:0[dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*'
_output_shapes
:���������
*
T0�
Adense_features_1/userId_embedding/userId_embedding_weights/Cast_1CastFdense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0*
_output_shapes
:*

SrcT0	*

DstT0�
Hdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/beginConst*
dtype0*
_output_shapes
:*
value
B: �
Gdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
value
B:�
Bdense_features_1/userId_embedding/userId_embedding_weights/Slice_1SliceEdense_features_1/userId_embedding/userId_embedding_weights/Cast_1:y:0Qdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/begin:output:0Pdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
Bdense_features_1/userId_embedding/userId_embedding_weights/Shape_1ShapeCdense_features_1/userId_embedding/userId_embedding_weights:output:0*
_output_shapes
:*
T0�
Hdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/beginConst*
value
B:*
dtype0*
_output_shapes
:�
Gdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
����������
Bdense_features_1/userId_embedding/userId_embedding_weights/Slice_2SliceKdense_features_1/userId_embedding/userId_embedding_weights/Shape_1:output:0Qdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/begin:output:0Pdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/size:output:0*
Index0*
_output_shapes
:*
T0�
Fdense_features_1/userId_embedding/userId_embedding_weights/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: �
Adense_features_1/userId_embedding/userId_embedding_weights/concatConcatV2Kdense_features_1/userId_embedding/userId_embedding_weights/Slice_1:output:0Kdense_features_1/userId_embedding/userId_embedding_weights/Slice_2:output:0Odense_features_1/userId_embedding/userId_embedding_weights/concat/axis:output:0*
T0*
N*
_output_shapes
:�
Ddense_features_1/userId_embedding/userId_embedding_weights/Reshape_2ReshapeCdense_features_1/userId_embedding/userId_embedding_weights:output:0Jdense_features_1/userId_embedding/userId_embedding_weights/concat:output:0*'
_output_shapes
:���������
*
T0�
'dense_features_1/userId_embedding/ShapeShapeMdense_features_1/userId_embedding/userId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:
5dense_features_1/userId_embedding/strided_slice/stackConst*
value
B: *
_output_shapes
:*
dtype0�
7dense_features_1/userId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
value
B:�
7dense_features_1/userId_embedding/strided_slice/stack_2Const*
dtype0*
value
B:*
_output_shapes
:�
/dense_features_1/userId_embedding/strided_sliceStridedSlice0dense_features_1/userId_embedding/Shape:output:0>dense_features_1/userId_embedding/strided_slice/stack:output:0@dense_features_1/userId_embedding/strided_slice/stack_1:output:0@dense_features_1/userId_embedding/strided_slice/stack_2:output:0*
shrink_axis_mask*
Index0*
_output_shapes
: *
T0s
1dense_features_1/userId_embedding/Reshape/shape/1Const*
value	B :
*
_output_shapes
: *
dtype0�
/dense_features_1/userId_embedding/Reshape/shapePack8dense_features_1/userId_embedding/strided_slice:output:0:dense_features_1/userId_embedding/Reshape/shape/1:output:0*
T0*
_output_shapes
:*
N�
)dense_features_1/userId_embedding/ReshapeReshapeMdense_features_1/userId_embedding/userId_embedding_weights/Reshape_2:output:08dense_features_1/userId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������
m
"dense_features_1/concat/concat_dimConst*
valueB :
���������*
_output_shapes
: *
dtype0�
dense_features_1/concat/concatIdentity2dense_features_1/userId_embedding/Reshape:output:0*'
_output_shapes
:���������
*
T0Y
concatenate/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0�
concatenate/concatConcatV2%dense_features/concat/concat:output:0'dense_features_1/concat/concat:output:0 concatenate/concat/axis:output:0*'
_output_shapes
:���������*
N*
T0�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes

:
*
dtype0�
dense/MatMulMatMulconcatenate/concat:output:0#dense/MatMul/ReadVariableOp:value:0*'
_output_shapes
:���������
*
T0�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:
*
dtype0�

dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*'
_output_shapes
:���������
*
T0\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:���������
�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes

:

�
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*'
_output_shapes
:���������
*
T0�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:
*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
`
dense_1/ReluReludense_1/BiasAdd:output:0*'
_output_shapes
:���������
*
T0�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes

:
*
dtype0�
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*'
_output_shapes
:���������*
T0�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:*
dtype0�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:����������
IdentityIdentitydense_2/Sigmoid:y:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOpN^dense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuardQ^dense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuardd^dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupx^dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpO^dense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuardR^dense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuardd^dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupx^dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*Q

_input_shapes@
>:
���������:
���������::::::::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2�
cdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupcdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup2�
cdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupcdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2�
wdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpwdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp2�
Ndense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuardNdense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard2�
Pdense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuardPdense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard2�
Mdense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuardMdense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard2�
wdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpwdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp2�
Qdense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuardQdense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp: : : : : : : :	 :( $
"
_user_specified_name
inputs/0:($
"
_user_specified_name
inputs/1
�
�
(__inference_dense_2_layer_call_fn_159065

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2**
config_proto

GPU 

CPU2J 8*
Tin
2*L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_158020*
Tout
2*'
_output_shapes
:���������*-
_gradient_op_typePartitionedCall-158026�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*.

_input_shapes
:���������
::22
StatefulPartitionedCallStatefulPartitionedCall: : :& "
 
_user_specified_nameinputs
�
�
]dense_features_1_userId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_158568O
Kidentity_dense_features_1_userid_embedding_assert_less_than_num_buckets_all

placeholder	

placeholder_1	

identity_1
"
NoOpNoOp*
_output_shapes
 �
IdentityIdentityKidentity_dense_features_1_userid_embedding_assert_less_than_num_buckets_all^NoOp*
T0
*
_output_shapes
: J

Identity_1IdentityIdentity:output:0*
T0
*
_output_shapes
: "!

identity_1Identity_1:output:0*&

_input_shapes
: :
���������: :  : : 
�
�
cmodel_dense_features_1_userId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_157505U
Qidentity_model_dense_features_1_userid_embedding_assert_less_than_num_buckets_all

placeholder	

placeholder_1	

identity_1
"
NoOpNoOp*
_output_shapes
 �
IdentityIdentityQidentity_model_dense_features_1_userid_embedding_assert_less_than_num_buckets_all^NoOp*
_output_shapes
: *
T0
J

Identity_1IdentityIdentity:output:0*
_output_shapes
: *
T0
"!

identity_1Identity_1:output:0*&

_input_shapes
: :
���������: : :  : 
ݶ
�
!__inference__wrapped_model_157637
movieid

userid�
�model_dense_features_movieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource�
�model_dense_features_1_userid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource.
*model_dense_matmul_readvariableop_resource/
+model_dense_biasadd_readvariableop_resource0
,model_dense_1_matmul_readvariableop_resource1
-model_dense_1_biasadd_readvariableop_resource0
,model_dense_2_matmul_readvariableop_resource1
-model_dense_2_biasadd_readvariableop_resource
identity��"model/dense/BiasAdd/ReadVariableOp�!model/dense/MatMul/ReadVariableOp�$model/dense_1/BiasAdd/ReadVariableOp�#model/dense_1/MatMul/ReadVariableOp�$model/dense_2/BiasAdd/ReadVariableOp�#model/dense_2/MatMul/ReadVariableOp�Smodel/dense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard�Vmodel/dense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard�imodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup�}model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp�Tmodel/dense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard�Wmodel/dense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard�imodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup�}model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp�
5model/dense_features/movieId_embedding/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: �
1model/dense_features/movieId_embedding/ExpandDims
ExpandDimsmovieid>model/dense_features/movieId_embedding/ExpandDims/dim:output:0*'
_output_shapes
:���������*
T0�
Emodel/dense_features/movieId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
����������
?model/dense_features/movieId_embedding/to_sparse_input/NotEqualNotEqual:model/dense_features/movieId_embedding/ExpandDims:output:0Nmodel/dense_features/movieId_embedding/to_sparse_input/ignore_value/x:output:0*'
_output_shapes
:���������*
T0�
>model/dense_features/movieId_embedding/to_sparse_input/indicesWhereCmodel/dense_features/movieId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
=model/dense_features/movieId_embedding/to_sparse_input/valuesGatherNd:model/dense_features/movieId_embedding/ExpandDims:output:0Fmodel/dense_features/movieId_embedding/to_sparse_input/indices:index:0*#
_output_shapes
:
���������*
Tparams0*
Tindices0	�
Bmodel/dense_features/movieId_embedding/to_sparse_input/dense_shapeShape:model/dense_features/movieId_embedding/ExpandDims:output:0*
_output_shapes
:*
T0*
out_type0	�
-model/dense_features/movieId_embedding/valuesCastFmodel/dense_features/movieId_embedding/to_sparse_input/values:output:0*

DstT0	*

SrcT0*#
_output_shapes
:
���������w
4model/dense_features/movieId_embedding/num_buckets/xConst*
value
B :�*
dtype0*
_output_shapes
: �
2model/dense_features/movieId_embedding/num_bucketsCast=model/dense_features/movieId_embedding/num_buckets/x:output:0*

DstT0	*
_output_shapes
: *

SrcT0o
-model/dense_features/movieId_embedding/zero/xConst*
_output_shapes
: *
dtype0*
value	B : �
+model/dense_features/movieId_embedding/zeroCast6model/dense_features/movieId_embedding/zero/x:output:0*

SrcT0*

DstT0	*
_output_shapes
: �
Hmodel/dense_features/movieId_embedding/assert_less_than_num_buckets/LessLess1model/dense_features/movieId_embedding/values:y:06model/dense_features/movieId_embedding/num_buckets:y:0*#
_output_shapes
:
���������*
T0	�
Imodel/dense_features/movieId_embedding/assert_less_than_num_buckets/ConstConst*
value
B: *
_output_shapes
:*
dtype0�
Gmodel/dense_features/movieId_embedding/assert_less_than_num_buckets/AllAllLmodel/dense_features/movieId_embedding/assert_less_than_num_buckets/Less:z:0Rmodel/dense_features/movieId_embedding/assert_less_than_num_buckets/Const:output:0*
_output_shapes
: �
Vmodel/dense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuardIfPmodel/dense_features/movieId_embedding/assert_less_than_num_buckets/All:output:0Pmodel/dense_features/movieId_embedding/assert_less_than_num_buckets/All:output:01model/dense_features/movieId_embedding/values:y:06model/dense_features/movieId_embedding/num_buckets:y:0*

output_shapes
: *
Tcond0
*u
then_branchfRd
bmodel_dense_features_movieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_157382*
_output_shapes
: *
Tin
2
		*v
else_branchgRe
cmodel_dense_features_movieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_157383*
Tout
2
*
_lower_using_switch_merge(�
_model/dense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard/IdentityIdentity_model/dense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: �
Mmodel/dense_features/movieId_embedding/assert_greater_or_equal_0/GreaterEqualGreaterEqual1model/dense_features/movieId_embedding/values:y:0/model/dense_features/movieId_embedding/zero:y:0*
T0	*#
_output_shapes
:
����������
Fmodel/dense_features/movieId_embedding/assert_greater_or_equal_0/ConstConst*
_output_shapes
:*
value
B: *
dtype0�
Dmodel/dense_features/movieId_embedding/assert_greater_or_equal_0/AllAllQmodel/dense_features/movieId_embedding/assert_greater_or_equal_0/GreaterEqual:z:0Omodel/dense_features/movieId_embedding/assert_greater_or_equal_0/Const:output:0*
_output_shapes
: �
Smodel/dense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuardIfMmodel/dense_features/movieId_embedding/assert_greater_or_equal_0/All:output:0Mmodel/dense_features/movieId_embedding/assert_greater_or_equal_0/All:output:01model/dense_features/movieId_embedding/values:y:0W^model/dense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard*
_lower_using_switch_merge(*
Tcond0
*s
else_branchdRb
`model_dense_features_movieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_157402*
_output_shapes
: *
Tin
2
	*
Tout
2
*

output_shapes
: *r
then_branchcRa
_model_dense_features_movieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_157401�
\model/dense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard/IdentityIdentity\model/dense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard:output:0*
_output_shapes
: *
T0
�
/model/dense_features/movieId_embedding/IdentityIdentity1model/dense_features/movieId_embedding/values:y:0]^model/dense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard/Identity`^model/dense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard/Identity*
T0	*#
_output_shapes
:
����������
Lmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
value
B: �
Kmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice/sizeConst*
dtype0*
_output_shapes
:*
value
B:�
Fmodel/dense_features/movieId_embedding/movieId_embedding_weights/SliceSliceKmodel/dense_features/movieId_embedding/to_sparse_input/dense_shape:output:0Umodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice/begin:output:0Tmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:�
Fmodel/dense_features/movieId_embedding/movieId_embedding_weights/ConstConst*
dtype0*
_output_shapes
:*
value
B: �
Emodel/dense_features/movieId_embedding/movieId_embedding_weights/ProdProdOmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice:output:0Omodel/dense_features/movieId_embedding/movieId_embedding_weights/Const:output:0*
_output_shapes
: *
T0	�
Qmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
value	B :*
dtype0�
Nmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2/axisConst*
dtype0*
value	B : *
_output_shapes
: �
Imodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2GatherV2Kmodel/dense_features/movieId_embedding/to_sparse_input/dense_shape:output:0Zmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2/indices:output:0Wmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2/axis:output:0*
Tparams0	*
Taxis0*
_output_shapes
: *
Tindices0�
Gmodel/dense_features/movieId_embedding/movieId_embedding_weights/Cast/xPackNmodel/dense_features/movieId_embedding/movieId_embedding_weights/Prod:output:0Rmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2:output:0*
N*
_output_shapes
:*
T0	�
Nmodel/dense_features/movieId_embedding/movieId_embedding_weights/SparseReshape
SparseReshapeFmodel/dense_features/movieId_embedding/to_sparse_input/indices:index:0Kmodel/dense_features/movieId_embedding/to_sparse_input/dense_shape:output:0Pmodel/dense_features/movieId_embedding/movieId_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
Wmodel/dense_features/movieId_embedding/movieId_embedding_weights/SparseReshape/IdentityIdentity8model/dense_features/movieId_embedding/Identity:output:0*
T0	*#
_output_shapes
:
����������
Omodel/dense_features/movieId_embedding/movieId_embedding_weights/GreaterEqual/yConst*
dtype0	*
_output_shapes
: *
value	B	 R �
Mmodel/dense_features/movieId_embedding/movieId_embedding_weights/GreaterEqualGreaterEqual`model/dense_features/movieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0Xmodel/dense_features/movieId_embedding/movieId_embedding_weights/GreaterEqual/y:output:0*#
_output_shapes
:
���������*
T0	�
Fmodel/dense_features/movieId_embedding/movieId_embedding_weights/WhereWhereQmodel/dense_features/movieId_embedding/movieId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
Nmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:�
Hmodel/dense_features/movieId_embedding/movieId_embedding_weights/ReshapeReshapeNmodel/dense_features/movieId_embedding/movieId_embedding_weights/Where:index:0Wmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape/shape:output:0*#
_output_shapes
:
���������*
T0	�
Pmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1/axisConst*
value	B : *
_output_shapes
: *
dtype0�
Kmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1GatherV2_model/dense_features/movieId_embedding/movieId_embedding_weights/SparseReshape:output_indices:0Qmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape:output:0Ymodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1/axis:output:0*'
_output_shapes
:���������*
Taxis0*
Tindices0	*
Tparams0	�
Pmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2/axisConst*
dtype0*
value	B : *
_output_shapes
: �
Kmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2GatherV2`model/dense_features/movieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0Qmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape:output:0Ymodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:
����������
Imodel/dense_features/movieId_embedding/movieId_embedding_weights/IdentityIdentity]model/dense_features/movieId_embedding/movieId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
Zmodel/dense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: �
hmodel/dense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsTmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1:output:0Tmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2:output:0Rmodel/dense_features/movieId_embedding/movieId_embedding_weights/Identity:output:0cmodel/dense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/Const:output:0*T
_output_shapesB
@:���������:
���������:
���������:
���������*
T0	�
lmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
valueB"        *
dtype0�
nmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0�
nmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:�
fmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceymodel/dense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0umodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0wmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0wmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
shrink_axis_mask*#
_output_shapes
:
���������*
end_mask*

begin_mask*
T0	�
]model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/CastCastomodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*

DstT0*#
_output_shapes
:
���������*

SrcT0	�
_model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/UniqueUniquexmodel/dense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:
���������:
����������
}model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpReadVariableOp�model_dense_features_movieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:	�
*
dtype0�
rmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity�model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
�
imodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGather�model_dense_features_movieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resourcecmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique:y:0~^model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*'
_output_shapes
:���������
*
Tindices0	*�
_class�
��loc:@model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*
dtype0�
tmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identityrmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_output_shapes
:���������
*�
_class�
��loc:@model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp�
tmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_2Identity}model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0*'
_output_shapes
:���������
*
T0�
Xmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparseSparseSegmentMean}model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_2:output:0emodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique:idx:0amodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Cast:y:0*
T0*'
_output_shapes
:���������
�
Pmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"����   �
Jmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape_1Reshape~model/dense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Ymodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
Fmodel/dense_features/movieId_embedding/movieId_embedding_weights/ShapeShapeamodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:�
Tmodel/dense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
value
B:�
Vmodel/dense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_1Const*
dtype0*
value
B:*
_output_shapes
:�
Vmodel/dense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_2Const*
dtype0*
value
B:*
_output_shapes
:�
Nmodel/dense_features/movieId_embedding/movieId_embedding_weights/strided_sliceStridedSliceOmodel/dense_features/movieId_embedding/movieId_embedding_weights/Shape:output:0]model/dense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack:output:0_model/dense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_1:output:0_model/dense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_2:output:0*
T0*
shrink_axis_mask*
_output_shapes
: *
Index0�
Hmodel/dense_features/movieId_embedding/movieId_embedding_weights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: �
Fmodel/dense_features/movieId_embedding/movieId_embedding_weights/stackPackQmodel/dense_features/movieId_embedding/movieId_embedding_weights/stack/0:output:0Wmodel/dense_features/movieId_embedding/movieId_embedding_weights/strided_slice:output:0*
N*
_output_shapes
:*
T0�
Emodel/dense_features/movieId_embedding/movieId_embedding_weights/TileTileSmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape_1:output:0Omodel/dense_features/movieId_embedding/movieId_embedding_weights/stack:output:0*
T0
*0
_output_shapes
:�������������������
Kmodel/dense_features/movieId_embedding/movieId_embedding_weights/zeros_like	ZerosLikeamodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*'
_output_shapes
:���������
*
T0�
@model/dense_features/movieId_embedding/movieId_embedding_weightsSelectNmodel/dense_features/movieId_embedding/movieId_embedding_weights/Tile:output:0Omodel/dense_features/movieId_embedding/movieId_embedding_weights/zeros_like:y:0amodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
Gmodel/dense_features/movieId_embedding/movieId_embedding_weights/Cast_1CastKmodel/dense_features/movieId_embedding/to_sparse_input/dense_shape:output:0*
_output_shapes
:*

SrcT0	*

DstT0�
Nmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_1/beginConst*
dtype0*
value
B: *
_output_shapes
:�
Mmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
value
B:�
Hmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_1SliceKmodel/dense_features/movieId_embedding/movieId_embedding_weights/Cast_1:y:0Wmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_1/begin:output:0Vmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
Hmodel/dense_features/movieId_embedding/movieId_embedding_weights/Shape_1ShapeImodel/dense_features/movieId_embedding/movieId_embedding_weights:output:0*
_output_shapes
:*
T0�
Nmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_2/beginConst*
dtype0*
value
B:*
_output_shapes
:�
Mmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_2/sizeConst*
dtype0*
_output_shapes
:*
valueB:
����������
Hmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_2SliceQmodel/dense_features/movieId_embedding/movieId_embedding_weights/Shape_1:output:0Wmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_2/begin:output:0Vmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_2/size:output:0*
T0*
_output_shapes
:*
Index0�
Lmodel/dense_features/movieId_embedding/movieId_embedding_weights/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : �
Gmodel/dense_features/movieId_embedding/movieId_embedding_weights/concatConcatV2Qmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_1:output:0Qmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_2:output:0Umodel/dense_features/movieId_embedding/movieId_embedding_weights/concat/axis:output:0*
T0*
_output_shapes
:*
N�
Jmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape_2ReshapeImodel/dense_features/movieId_embedding/movieId_embedding_weights:output:0Pmodel/dense_features/movieId_embedding/movieId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:���������
�
,model/dense_features/movieId_embedding/ShapeShapeSmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:�
:model/dense_features/movieId_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
value
B: �
<model/dense_features/movieId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
value
B:�
<model/dense_features/movieId_embedding/strided_slice/stack_2Const*
value
B:*
_output_shapes
:*
dtype0�
4model/dense_features/movieId_embedding/strided_sliceStridedSlice5model/dense_features/movieId_embedding/Shape:output:0Cmodel/dense_features/movieId_embedding/strided_slice/stack:output:0Emodel/dense_features/movieId_embedding/strided_slice/stack_1:output:0Emodel/dense_features/movieId_embedding/strided_slice/stack_2:output:0*
T0*
_output_shapes
: *
shrink_axis_mask*
Index0x
6model/dense_features/movieId_embedding/Reshape/shape/1Const*
value	B :
*
dtype0*
_output_shapes
: �
4model/dense_features/movieId_embedding/Reshape/shapePack=model/dense_features/movieId_embedding/strided_slice:output:0?model/dense_features/movieId_embedding/Reshape/shape/1:output:0*
_output_shapes
:*
T0*
N�
.model/dense_features/movieId_embedding/ReshapeReshapeSmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape_2:output:0=model/dense_features/movieId_embedding/Reshape/shape:output:0*'
_output_shapes
:���������
*
T0q
&model/dense_features/concat/concat_dimConst*
dtype0*
valueB :
���������*
_output_shapes
: �
"model/dense_features/concat/concatIdentity7model/dense_features/movieId_embedding/Reshape:output:0*
T0*'
_output_shapes
:���������
�
6model/dense_features_1/userId_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
2model/dense_features_1/userId_embedding/ExpandDims
ExpandDimsuserid?model/dense_features_1/userId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:����������
Fmodel/dense_features_1/userId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
valueB :
���������*
dtype0�
@model/dense_features_1/userId_embedding/to_sparse_input/NotEqualNotEqual;model/dense_features_1/userId_embedding/ExpandDims:output:0Omodel/dense_features_1/userId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:����������
?model/dense_features_1/userId_embedding/to_sparse_input/indicesWhereDmodel/dense_features_1/userId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
>model/dense_features_1/userId_embedding/to_sparse_input/valuesGatherNd;model/dense_features_1/userId_embedding/ExpandDims:output:0Gmodel/dense_features_1/userId_embedding/to_sparse_input/indices:index:0*#
_output_shapes
:
���������*
Tparams0*
Tindices0	�
Cmodel/dense_features_1/userId_embedding/to_sparse_input/dense_shapeShape;model/dense_features_1/userId_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	�
.model/dense_features_1/userId_embedding/valuesCastGmodel/dense_features_1/userId_embedding/to_sparse_input/values:output:0*#
_output_shapes
:
���������*

SrcT0*

DstT0	y
5model/dense_features_1/userId_embedding/num_buckets/xConst*
valueB	 :��*
_output_shapes
: *
dtype0�
3model/dense_features_1/userId_embedding/num_bucketsCast>model/dense_features_1/userId_embedding/num_buckets/x:output:0*

DstT0	*
_output_shapes
: *

SrcT0p
.model/dense_features_1/userId_embedding/zero/xConst*
dtype0*
value	B : *
_output_shapes
: �
,model/dense_features_1/userId_embedding/zeroCast7model/dense_features_1/userId_embedding/zero/x:output:0*

SrcT0*
_output_shapes
: *

DstT0	�
Imodel/dense_features_1/userId_embedding/assert_less_than_num_buckets/LessLess2model/dense_features_1/userId_embedding/values:y:07model/dense_features_1/userId_embedding/num_buckets:y:0*
T0	*#
_output_shapes
:
����������
Jmodel/dense_features_1/userId_embedding/assert_less_than_num_buckets/ConstConst*
dtype0*
_output_shapes
:*
value
B: �
Hmodel/dense_features_1/userId_embedding/assert_less_than_num_buckets/AllAllMmodel/dense_features_1/userId_embedding/assert_less_than_num_buckets/Less:z:0Smodel/dense_features_1/userId_embedding/assert_less_than_num_buckets/Const:output:0*
_output_shapes
: �
Wmodel/dense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuardIfQmodel/dense_features_1/userId_embedding/assert_less_than_num_buckets/All:output:0Qmodel/dense_features_1/userId_embedding/assert_less_than_num_buckets/All:output:02model/dense_features_1/userId_embedding/values:y:07model/dense_features_1/userId_embedding/num_buckets:y:0T^model/dense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard*
Tout
2
*
Tcond0
*
_lower_using_switch_merge(*w
else_branchhRf
dmodel_dense_features_1_userId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_157506*v
then_branchgRe
cmodel_dense_features_1_userId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_157505*
Tin
2
		*
_output_shapes
: *

output_shapes
: �
`model/dense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard/IdentityIdentity`model/dense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: �
Nmodel/dense_features_1/userId_embedding/assert_greater_or_equal_0/GreaterEqualGreaterEqual2model/dense_features_1/userId_embedding/values:y:00model/dense_features_1/userId_embedding/zero:y:0*#
_output_shapes
:
���������*
T0	�
Gmodel/dense_features_1/userId_embedding/assert_greater_or_equal_0/ConstConst*
dtype0*
_output_shapes
:*
value
B: �
Emodel/dense_features_1/userId_embedding/assert_greater_or_equal_0/AllAllRmodel/dense_features_1/userId_embedding/assert_greater_or_equal_0/GreaterEqual:z:0Pmodel/dense_features_1/userId_embedding/assert_greater_or_equal_0/Const:output:0*
_output_shapes
: �
Tmodel/dense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuardIfNmodel/dense_features_1/userId_embedding/assert_greater_or_equal_0/All:output:0Nmodel/dense_features_1/userId_embedding/assert_greater_or_equal_0/All:output:02model/dense_features_1/userId_embedding/values:y:0X^model/dense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard*t
else_brancheRc
amodel_dense_features_1_userId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_157525*
_lower_using_switch_merge(*

output_shapes
: *
Tin
2
	*
Tcond0
*
Tout
2
*s
then_branchdRb
`model_dense_features_1_userId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_157524*
_output_shapes
: �
]model/dense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard/IdentityIdentity]model/dense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard:output:0*
_output_shapes
: *
T0
�
0model/dense_features_1/userId_embedding/IdentityIdentity2model/dense_features_1/userId_embedding/values:y:0^^model/dense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard/Identitya^model/dense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard/Identity*#
_output_shapes
:
���������*
T0	�
Lmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice/beginConst*
dtype0*
_output_shapes
:*
value
B: �
Kmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice/sizeConst*
value
B:*
dtype0*
_output_shapes
:�
Fmodel/dense_features_1/userId_embedding/userId_embedding_weights/SliceSliceLmodel/dense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Umodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice/begin:output:0Tmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice/size:output:0*
Index0*
_output_shapes
:*
T0	�
Fmodel/dense_features_1/userId_embedding/userId_embedding_weights/ConstConst*
value
B: *
_output_shapes
:*
dtype0�
Emodel/dense_features_1/userId_embedding/userId_embedding_weights/ProdProdOmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice:output:0Omodel/dense_features_1/userId_embedding/userId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: �
Qmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2/indicesConst*
value	B :*
_output_shapes
: *
dtype0�
Nmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2/axisConst*
dtype0*
value	B : *
_output_shapes
: �
Imodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2GatherV2Lmodel/dense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Zmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2/indices:output:0Wmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
_output_shapes
: *
Tindices0*
Tparams0	�
Gmodel/dense_features_1/userId_embedding/userId_embedding_weights/Cast/xPackNmodel/dense_features_1/userId_embedding/userId_embedding_weights/Prod:output:0Rmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:�
Nmodel/dense_features_1/userId_embedding/userId_embedding_weights/SparseReshape
SparseReshapeGmodel/dense_features_1/userId_embedding/to_sparse_input/indices:index:0Lmodel/dense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Pmodel/dense_features_1/userId_embedding/userId_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
Wmodel/dense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/IdentityIdentity9model/dense_features_1/userId_embedding/Identity:output:0*#
_output_shapes
:
���������*
T0	�
Omodel/dense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: �
Mmodel/dense_features_1/userId_embedding/userId_embedding_weights/GreaterEqualGreaterEqual`model/dense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0Xmodel/dense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:
����������
Fmodel/dense_features_1/userId_embedding/userId_embedding_weights/WhereWhereQmodel/dense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
Nmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape/shapeConst*
dtype0*
valueB:
���������*
_output_shapes
:�
Hmodel/dense_features_1/userId_embedding/userId_embedding_weights/ReshapeReshapeNmodel/dense_features_1/userId_embedding/userId_embedding_weights/Where:index:0Wmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:
����������
Pmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Kmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1GatherV2_model/dense_features_1/userId_embedding/userId_embedding_weights/SparseReshape:output_indices:0Qmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape:output:0Ymodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*'
_output_shapes
:���������*
Tparams0	*
Tindices0	�
Pmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2/axisConst*
value	B : *
_output_shapes
: *
dtype0�
Kmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2GatherV2`model/dense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0Qmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape:output:0Ymodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2/axis:output:0*#
_output_shapes
:
���������*
Tparams0	*
Taxis0*
Tindices0	�
Imodel/dense_features_1/userId_embedding/userId_embedding_weights/IdentityIdentity]model/dense_features_1/userId_embedding/userId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
Zmodel/dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: �
hmodel/dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsTmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1:output:0Tmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2:output:0Rmodel/dense_features_1/userId_embedding/userId_embedding_weights/Identity:output:0cmodel/dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:
���������:
���������:
����������
lmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
nmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       �
nmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:�
fmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceymodel/dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0umodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0wmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0wmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
shrink_axis_mask*
Index0*

begin_mask*
end_mask*
T0	*#
_output_shapes
:
����������
]model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/CastCastomodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*

DstT0*#
_output_shapes
:
���������*

SrcT0	�
_model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/UniqueUniquexmodel/dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*2
_output_shapes 
:
���������:
���������*
T0	�
}model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpReadVariableOp�model_dense_features_1_userid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0* 
_output_shapes
:
��
*
dtype0�
rmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity�model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp:value:0* 
_output_shapes
:
��
*
T0�
imodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGather�model_dense_features_1_userid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resourcecmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:y:0~^model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*�
_class�
��loc:@model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*
Tindices0	*'
_output_shapes
:���������
*
dtype0�
tmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identityrmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*�
_class�
��loc:@model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*'
_output_shapes
:���������
*
T0�
tmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_2Identity}model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:���������
�
Xmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparseSparseSegmentMean}model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_2:output:0emodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:idx:0amodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/Cast:y:0*'
_output_shapes
:���������
*
T0�
Pmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape_1/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:�
Jmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape_1Reshape~model/dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Ymodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
Fmodel/dense_features_1/userId_embedding/userId_embedding_weights/ShapeShapeamodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
_output_shapes
:*
T0�
Tmodel/dense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
value
B:*
dtype0�
Vmodel/dense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
value
B:�
Vmodel/dense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
value
B:*
dtype0�
Nmodel/dense_features_1/userId_embedding/userId_embedding_weights/strided_sliceStridedSliceOmodel/dense_features_1/userId_embedding/userId_embedding_weights/Shape:output:0]model/dense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack:output:0_model/dense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_1:output:0_model/dense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_2:output:0*
shrink_axis_mask*
Index0*
_output_shapes
: *
T0�
Hmodel/dense_features_1/userId_embedding/userId_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :�
Fmodel/dense_features_1/userId_embedding/userId_embedding_weights/stackPackQmodel/dense_features_1/userId_embedding/userId_embedding_weights/stack/0:output:0Wmodel/dense_features_1/userId_embedding/userId_embedding_weights/strided_slice:output:0*
T0*
_output_shapes
:*
N�
Emodel/dense_features_1/userId_embedding/userId_embedding_weights/TileTileSmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape_1:output:0Omodel/dense_features_1/userId_embedding/userId_embedding_weights/stack:output:0*0
_output_shapes
:������������������*
T0
�
Kmodel/dense_features_1/userId_embedding/userId_embedding_weights/zeros_like	ZerosLikeamodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*'
_output_shapes
:���������
*
T0�
@model/dense_features_1/userId_embedding/userId_embedding_weightsSelectNmodel/dense_features_1/userId_embedding/userId_embedding_weights/Tile:output:0Omodel/dense_features_1/userId_embedding/userId_embedding_weights/zeros_like:y:0amodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
Gmodel/dense_features_1/userId_embedding/userId_embedding_weights/Cast_1CastLmodel/dense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*
_output_shapes
:*

SrcT0	�
Nmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_1/beginConst*
value
B: *
_output_shapes
:*
dtype0�
Mmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
value
B:�
Hmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_1SliceKmodel/dense_features_1/userId_embedding/userId_embedding_weights/Cast_1:y:0Wmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_1/begin:output:0Vmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_1/size:output:0*
Index0*
_output_shapes
:*
T0�
Hmodel/dense_features_1/userId_embedding/userId_embedding_weights/Shape_1ShapeImodel/dense_features_1/userId_embedding/userId_embedding_weights:output:0*
T0*
_output_shapes
:�
Nmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_2/beginConst*
value
B:*
_output_shapes
:*
dtype0�
Mmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_2/sizeConst*
valueB:
���������*
dtype0*
_output_shapes
:�
Hmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_2SliceQmodel/dense_features_1/userId_embedding/userId_embedding_weights/Shape_1:output:0Wmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_2/begin:output:0Vmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_2/size:output:0*
_output_shapes
:*
Index0*
T0�
Lmodel/dense_features_1/userId_embedding/userId_embedding_weights/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: �
Gmodel/dense_features_1/userId_embedding/userId_embedding_weights/concatConcatV2Qmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_1:output:0Qmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_2:output:0Umodel/dense_features_1/userId_embedding/userId_embedding_weights/concat/axis:output:0*
_output_shapes
:*
N*
T0�
Jmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape_2ReshapeImodel/dense_features_1/userId_embedding/userId_embedding_weights:output:0Pmodel/dense_features_1/userId_embedding/userId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:���������
�
-model/dense_features_1/userId_embedding/ShapeShapeSmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:�
;model/dense_features_1/userId_embedding/strided_slice/stackConst*
dtype0*
_output_shapes
:*
value
B: �
=model/dense_features_1/userId_embedding/strided_slice/stack_1Const*
value
B:*
_output_shapes
:*
dtype0�
=model/dense_features_1/userId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
value
B:*
dtype0�
5model/dense_features_1/userId_embedding/strided_sliceStridedSlice6model/dense_features_1/userId_embedding/Shape:output:0Dmodel/dense_features_1/userId_embedding/strided_slice/stack:output:0Fmodel/dense_features_1/userId_embedding/strided_slice/stack_1:output:0Fmodel/dense_features_1/userId_embedding/strided_slice/stack_2:output:0*
shrink_axis_mask*
T0*
_output_shapes
: *
Index0y
7model/dense_features_1/userId_embedding/Reshape/shape/1Const*
_output_shapes
: *
value	B :
*
dtype0�
5model/dense_features_1/userId_embedding/Reshape/shapePack>model/dense_features_1/userId_embedding/strided_slice:output:0@model/dense_features_1/userId_embedding/Reshape/shape/1:output:0*
T0*
N*
_output_shapes
:�
/model/dense_features_1/userId_embedding/ReshapeReshapeSmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape_2:output:0>model/dense_features_1/userId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������
s
(model/dense_features_1/concat/concat_dimConst*
valueB :
���������*
_output_shapes
: *
dtype0�
$model/dense_features_1/concat/concatIdentity8model/dense_features_1/userId_embedding/Reshape:output:0*
T0*'
_output_shapes
:���������
_
model/concatenate/concat/axisConst*
dtype0*
value	B :*
_output_shapes
: �
model/concatenate/concatConcatV2+model/dense_features/concat/concat:output:0-model/dense_features_1/concat/concat:output:0&model/concatenate/concat/axis:output:0*
T0*
N*'
_output_shapes
:����������
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes

:
*
dtype0�
model/dense/MatMulMatMul!model/concatenate/concat:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:
*
dtype0�
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*'
_output_shapes
:���������
*
T0h
model/dense/ReluRelumodel/dense/BiasAdd:output:0*'
_output_shapes
:���������
*
T0�
#model/dense_1/MatMul/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes

:

*
dtype0�
model/dense_1/MatMulMatMulmodel/dense/Relu:activations:0+model/dense_1/MatMul/ReadVariableOp:value:0*'
_output_shapes
:���������
*
T0�
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:
�
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
l
model/dense_1/ReluRelumodel/dense_1/BiasAdd:output:0*'
_output_shapes
:���������
*
T0�
#model/dense_2/MatMul/ReadVariableOpReadVariableOp,model_dense_2_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes

:
�
model/dense_2/MatMulMatMul model/dense_1/Relu:activations:0+model/dense_2/MatMul/ReadVariableOp:value:0*'
_output_shapes
:���������*
T0�
$model/dense_2/BiasAdd/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:*
dtype0�
model/dense_2/BiasAddBiasAddmodel/dense_2/MatMul:product:0,model/dense_2/BiasAdd/ReadVariableOp:value:0*'
_output_shapes
:���������*
T0r
model/dense_2/SigmoidSigmoidmodel/dense_2/BiasAdd:output:0*'
_output_shapes
:���������*
T0�
IdentityIdentitymodel/dense_2/Sigmoid:y:0#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp%^model/dense_2/BiasAdd/ReadVariableOp$^model/dense_2/MatMul/ReadVariableOpT^model/dense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuardW^model/dense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuardj^model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup~^model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpU^model/dense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuardX^model/dense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuardj^model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup~^model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*'
_output_shapes
:���������*
T0"
identityIdentity:output:0*Q

_input_shapes@
>:
���������:
���������::::::::2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2L
$model/dense_2/BiasAdd/ReadVariableOp$model/dense_2/BiasAdd/ReadVariableOp2�
Tmodel/dense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuardTmodel/dense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard2�
imodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupimodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup2�
Vmodel/dense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuardVmodel/dense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard2�
imodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupimodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2J
#model/dense_1/MatMul/ReadVariableOp#model/dense_1/MatMul/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2�
}model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp}model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp2�
Smodel/dense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuardSmodel/dense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard2�
}model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp}model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp2�
Wmodel/dense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuardWmodel/dense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard2J
#model/dense_2/MatMul/ReadVariableOp#model/dense_2/MatMul/ReadVariableOp:' #
!
_user_specified_name	movieId:&"
 
_user_specified_nameuserId: : : : : : : :	 
�
�
Zdense_features_1_userId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_158587L
Hidentity_dense_features_1_userid_embedding_assert_greater_or_equal_0_all

placeholder	

identity_1
"
NoOpNoOp*
_output_shapes
 �
IdentityIdentityHidentity_dense_features_1_userid_embedding_assert_greater_or_equal_0_all^NoOp*
_output_shapes
: *
T0
J

Identity_1IdentityIdentity:output:0*
_output_shapes
: *
T0
"!

identity_1Identity_1:output:0*$

_input_shapes
: :
���������:  : 
�

�
&__inference_model_layer_call_fn_158130
movieid

userid"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8"
statefulpartitionedcall_args_9
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallmovieiduseridstatefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8statefulpartitionedcall_args_9*'
_output_shapes
:���������**
config_proto

GPU 

CPU2J 8*-
_gradient_op_typePartitionedCall-158119*
Tin
2
*J
fERC
A__inference_model_layer_call_and_return_conditional_losses_158118*
Tout
2�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*Q

_input_shapes@
>:
���������:
���������::::::::22
StatefulPartitionedCallStatefulPartitionedCall: : : : : : :	 :' #
!
_user_specified_name	movieId:&"
 
_user_specified_nameuserId: 
�
�
MuserId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_158883<
8assert_userid_embedding_assert_less_than_num_buckets_all
"
assert_userid_embedding_values	'
#assert_userid_embedding_num_buckets	

identity_1
��Assert�
AssertAssert8assert_userid_embedding_assert_less_than_num_buckets_allassert_userid_embedding_values#assert_userid_embedding_num_buckets*
_output_shapes
 *
T
2		x
IdentityIdentity8assert_userid_embedding_assert_less_than_num_buckets_all^Assert*
T0
*
_output_shapes
: S

Identity_1IdentityIdentity:output:0^Assert*
T0
*
_output_shapes
: "!

identity_1Identity_1:output:0*&

_input_shapes
: :
���������: 2
AssertAssert:  : : 
�
�
A__inference_model_layer_call_and_return_conditional_losses_158082

inputs
inputs_11
-dense_features_statefulpartitionedcall_args_23
/dense_features_1_statefulpartitionedcall_args_2(
$dense_statefulpartitionedcall_args_1(
$dense_statefulpartitionedcall_args_2*
&dense_1_statefulpartitionedcall_args_1*
&dense_1_statefulpartitionedcall_args_2*
&dense_2_statefulpartitionedcall_args_1*
&dense_2_statefulpartitionedcall_args_2
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�&dense_features/StatefulPartitionedCall�(dense_features_1/StatefulPartitionedCall�
&dense_features/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1-dense_features_statefulpartitionedcall_args_2*'
_output_shapes
:���������
*
Tin
2*S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_157772*
Tout
2**
config_proto

GPU 

CPU2J 8*-
_gradient_op_typePartitionedCall-157779�
(dense_features_1/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1/dense_features_1_statefulpartitionedcall_args_2*
Tout
2*
Tin
2*U
fPRN
L__inference_dense_features_1_layer_call_and_return_conditional_losses_157916*'
_output_shapes
:���������
**
config_proto

GPU 

CPU2J 8*-
_gradient_op_typePartitionedCall-157923�
concatenate/PartitionedCallPartitionedCall/dense_features/StatefulPartitionedCall:output:01dense_features_1/StatefulPartitionedCall:output:0*'
_output_shapes
:���������*-
_gradient_op_typePartitionedCall-157946*
Tout
2*
Tin
2*P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_157939**
config_proto

GPU 

CPU2J 8�
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0$dense_statefulpartitionedcall_args_1$dense_statefulpartitionedcall_args_2*-
_gradient_op_typePartitionedCall-157970*'
_output_shapes
:���������
*
Tin
2*
Tout
2*J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_157964**
config_proto

GPU 

CPU2J 8�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0&dense_1_statefulpartitionedcall_args_1&dense_1_statefulpartitionedcall_args_2*
Tout
2*
Tin
2*L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_157992**
config_proto

GPU 

CPU2J 8*-
_gradient_op_typePartitionedCall-157998*'
_output_shapes
:���������
�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0&dense_2_statefulpartitionedcall_args_1&dense_2_statefulpartitionedcall_args_2*
Tin
2*-
_gradient_op_typePartitionedCall-158026*L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_158020*
Tout
2**
config_proto

GPU 

CPU2J 8*'
_output_shapes
:����������
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall)^dense_features_1/StatefulPartitionedCall*'
_output_shapes
:���������*
T0"
identityIdentity:output:0*Q

_input_shapes@
>:
���������:
���������::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2T
(dense_features_1/StatefulPartitionedCall(dense_features_1/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall: :	 :& "
 
_user_specified_nameinputs:&"
 
_user_specified_nameinputs: : : : : : 
�
�
Zdense_features_1_userId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_158313L
Hidentity_dense_features_1_userid_embedding_assert_greater_or_equal_0_all

placeholder	

identity_1
"
NoOpNoOp*
_output_shapes
 �
IdentityIdentityHidentity_dense_features_1_userid_embedding_assert_greater_or_equal_0_all^NoOp*
_output_shapes
: *
T0
J

Identity_1IdentityIdentity:output:0*
T0
*
_output_shapes
: "!

identity_1Identity_1:output:0*$

_input_shapes
: :
���������:  : 
�	
�
A__inference_dense_layer_call_and_return_conditional_losses_159022

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*'
_output_shapes
:���������
*
T0P
ReluReluBiasAdd:output:0*'
_output_shapes
:���������
*
T0�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*'
_output_shapes
:���������
*
T0"
identityIdentity:output:0*.

_input_shapes
:���������::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: : :& "
 
_user_specified_nameinputs
�
�
KmovieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_158767:
6assert_movieid_embedding_assert_greater_or_equal_0_all
#
assert_movieid_embedding_values	

identity_1
��Assert�
AssertAssert6assert_movieid_embedding_assert_greater_or_equal_0_allassert_movieid_embedding_values*
_output_shapes
 *

T
2	v
IdentityIdentity6assert_movieid_embedding_assert_greater_or_equal_0_all^Assert*
_output_shapes
: *
T0
S

Identity_1IdentityIdentity:output:0^Assert*
T0
*
_output_shapes
: "!

identity_1Identity_1:output:0*$

_input_shapes
: :
���������2
AssertAssert:  : 
�	
�
C__inference_dense_2_layer_call_and_return_conditional_losses_158020

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:����������
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*'
_output_shapes
:���������*
T0"
identityIdentity:output:0*.

_input_shapes
:���������
::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: : :& "
 
_user_specified_nameinputs
�
�
A__inference_model_layer_call_and_return_conditional_losses_158038
movieid

userid1
-dense_features_statefulpartitionedcall_args_23
/dense_features_1_statefulpartitionedcall_args_2(
$dense_statefulpartitionedcall_args_1(
$dense_statefulpartitionedcall_args_2*
&dense_1_statefulpartitionedcall_args_1*
&dense_1_statefulpartitionedcall_args_2*
&dense_2_statefulpartitionedcall_args_1*
&dense_2_statefulpartitionedcall_args_2
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�&dense_features/StatefulPartitionedCall�(dense_features_1/StatefulPartitionedCall�
&dense_features/StatefulPartitionedCallStatefulPartitionedCallmovieiduserid-dense_features_statefulpartitionedcall_args_2*S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_157772*-
_gradient_op_typePartitionedCall-157779*
Tin
2*
Tout
2**
config_proto

GPU 

CPU2J 8*'
_output_shapes
:���������
�
(dense_features_1/StatefulPartitionedCallStatefulPartitionedCallmovieiduserid/dense_features_1_statefulpartitionedcall_args_2**
config_proto

GPU 

CPU2J 8*
Tin
2*
Tout
2*U
fPRN
L__inference_dense_features_1_layer_call_and_return_conditional_losses_157916*'
_output_shapes
:���������
*-
_gradient_op_typePartitionedCall-157923�
concatenate/PartitionedCallPartitionedCall/dense_features/StatefulPartitionedCall:output:01dense_features_1/StatefulPartitionedCall:output:0*'
_output_shapes
:���������*
Tout
2*P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_157939*
Tin
2**
config_proto

GPU 

CPU2J 8*-
_gradient_op_typePartitionedCall-157946�
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0$dense_statefulpartitionedcall_args_1$dense_statefulpartitionedcall_args_2*-
_gradient_op_typePartitionedCall-157970*'
_output_shapes
:���������
*J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_157964**
config_proto

GPU 

CPU2J 8*
Tout
2*
Tin
2�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0&dense_1_statefulpartitionedcall_args_1&dense_1_statefulpartitionedcall_args_2*
Tout
2*L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_157992*
Tin
2**
config_proto

GPU 

CPU2J 8*-
_gradient_op_typePartitionedCall-157998*'
_output_shapes
:���������
�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0&dense_2_statefulpartitionedcall_args_1&dense_2_statefulpartitionedcall_args_2**
config_proto

GPU 

CPU2J 8*
Tout
2*'
_output_shapes
:���������*L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_158020*-
_gradient_op_typePartitionedCall-158026*
Tin
2�
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall)^dense_features_1/StatefulPartitionedCall*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*Q

_input_shapes@
>:
���������:
���������::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2T
(dense_features_1/StatefulPartitionedCall(dense_features_1/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall:' #
!
_user_specified_name	movieId:&"
 
_user_specified_nameuserId: : : : : : : :	 
�
�
`model_dense_features_1_userId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_157524R
Nidentity_model_dense_features_1_userid_embedding_assert_greater_or_equal_0_all

placeholder	

identity_1
"
NoOpNoOp*
_output_shapes
 �
IdentityIdentityNidentity_model_dense_features_1_userid_embedding_assert_greater_or_equal_0_all^NoOp*
_output_shapes
: *
T0
J

Identity_1IdentityIdentity:output:0*
T0
*
_output_shapes
: "!

identity_1Identity_1:output:0*$

_input_shapes
: :
���������:  : 
�
�
A__inference_model_layer_call_and_return_conditional_losses_158118

inputs
inputs_11
-dense_features_statefulpartitionedcall_args_23
/dense_features_1_statefulpartitionedcall_args_2(
$dense_statefulpartitionedcall_args_1(
$dense_statefulpartitionedcall_args_2*
&dense_1_statefulpartitionedcall_args_1*
&dense_1_statefulpartitionedcall_args_2*
&dense_2_statefulpartitionedcall_args_1*
&dense_2_statefulpartitionedcall_args_2
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�&dense_features/StatefulPartitionedCall�(dense_features_1/StatefulPartitionedCall�
&dense_features/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1-dense_features_statefulpartitionedcall_args_2*
Tout
2*-
_gradient_op_typePartitionedCall-157779*
Tin
2**
config_proto

GPU 

CPU2J 8*S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_157772*'
_output_shapes
:���������
�
(dense_features_1/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1/dense_features_1_statefulpartitionedcall_args_2**
config_proto

GPU 

CPU2J 8*'
_output_shapes
:���������
*-
_gradient_op_typePartitionedCall-157923*
Tout
2*U
fPRN
L__inference_dense_features_1_layer_call_and_return_conditional_losses_157916*
Tin
2�
concatenate/PartitionedCallPartitionedCall/dense_features/StatefulPartitionedCall:output:01dense_features_1/StatefulPartitionedCall:output:0*'
_output_shapes
:���������**
config_proto

GPU 

CPU2J 8*
Tout
2*
Tin
2*P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_157939*-
_gradient_op_typePartitionedCall-157946�
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0$dense_statefulpartitionedcall_args_1$dense_statefulpartitionedcall_args_2**
config_proto

GPU 

CPU2J 8*J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_157964*
Tout
2*'
_output_shapes
:���������
*-
_gradient_op_typePartitionedCall-157970*
Tin
2�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0&dense_1_statefulpartitionedcall_args_1&dense_1_statefulpartitionedcall_args_2*-
_gradient_op_typePartitionedCall-157998**
config_proto

GPU 

CPU2J 8*L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_157992*
Tin
2*
Tout
2*'
_output_shapes
:���������
�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0&dense_2_statefulpartitionedcall_args_1&dense_2_statefulpartitionedcall_args_2*L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_158020**
config_proto

GPU 

CPU2J 8*
Tin
2*
Tout
2*-
_gradient_op_typePartitionedCall-158026*'
_output_shapes
:����������
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall)^dense_features_1/StatefulPartitionedCall*'
_output_shapes
:���������*
T0"
identityIdentity:output:0*Q

_input_shapes@
>:
���������:
���������::::::::2T
(dense_features_1/StatefulPartitionedCall(dense_features_1/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:	 :& "
 
_user_specified_nameinputs:&"
 
_user_specified_nameinputs: : : : : : : 
�
�
\dense_features_movieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_158171N
Jidentity_dense_features_movieid_embedding_assert_less_than_num_buckets_all

placeholder	

placeholder_1	

identity_1
"
NoOpNoOp*
_output_shapes
 �
IdentityIdentityJidentity_dense_features_movieid_embedding_assert_less_than_num_buckets_all^NoOp*
_output_shapes
: *
T0
J

Identity_1IdentityIdentity:output:0*
_output_shapes
: *
T0
"!

identity_1Identity_1:output:0*&

_input_shapes
: :
���������: : : :  
�
�
]dense_features_movieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_158172L
Hassert_dense_features_movieid_embedding_assert_less_than_num_buckets_all
2
.assert_dense_features_movieid_embedding_values	7
3assert_dense_features_movieid_embedding_num_buckets	

identity_1
��Assert�
AssertAssertHassert_dense_features_movieid_embedding_assert_less_than_num_buckets_all.assert_dense_features_movieid_embedding_values3assert_dense_features_movieid_embedding_num_buckets*
T
2		*
_output_shapes
 �
IdentityIdentityHassert_dense_features_movieid_embedding_assert_less_than_num_buckets_all^Assert*
_output_shapes
: *
T0
S

Identity_1IdentityIdentity:output:0^Assert*
T0
*
_output_shapes
: "!

identity_1Identity_1:output:0*&

_input_shapes
: :
���������: 2
AssertAssert:  : : 
�
�
IuserId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_157826;
7identity_userid_embedding_assert_greater_or_equal_0_all

placeholder	

identity_1
"
NoOpNoOp*
_output_shapes
 u
IdentityIdentity7identity_userid_embedding_assert_greater_or_equal_0_all^NoOp*
T0
*
_output_shapes
: J

Identity_1IdentityIdentity:output:0*
T0
*
_output_shapes
: "!

identity_1Identity_1:output:0*$

_input_shapes
: :
���������:  : 
�
�
1__inference_dense_features_1_layer_call_fn_158998
features_movieid
features_userid"
statefulpartitionedcall_args_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallfeatures_movieidfeatures_useridstatefulpartitionedcall_args_2*U
fPRN
L__inference_dense_features_1_layer_call_and_return_conditional_losses_157916*-
_gradient_op_typePartitionedCall-157923**
config_proto

GPU 

CPU2J 8*'
_output_shapes
:���������
*
Tin
2*
Tout
2�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*5

_input_shapes$
":
���������:
���������:22
StatefulPartitionedCallStatefulPartitionedCall:0 ,
*
_user_specified_namefeatures/productId:/+
)
_user_specified_namefeatures/userId: 
�
�
Zdense_features_movieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_158191I
Eassert_dense_features_movieid_embedding_assert_greater_or_equal_0_all
2
.assert_dense_features_movieid_embedding_values	

identity_1
��Assert�
AssertAssertEassert_dense_features_movieid_embedding_assert_greater_or_equal_0_all.assert_dense_features_movieid_embedding_values*

T
2	*
_output_shapes
 �
IdentityIdentityEassert_dense_features_movieid_embedding_assert_greater_or_equal_0_all^Assert*
_output_shapes
: *
T0
S

Identity_1IdentityIdentity:output:0^Assert*
_output_shapes
: *
T0
"!

identity_1Identity_1:output:0*$

_input_shapes
: :
���������2
AssertAssert:  : 
�
�
JuserId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_1589029
5assert_userid_embedding_assert_greater_or_equal_0_all
"
assert_userid_embedding_values	

identity_1
��Assert�
AssertAssert5assert_userid_embedding_assert_greater_or_equal_0_allassert_userid_embedding_values*

T
2	*
_output_shapes
 u
IdentityIdentity5assert_userid_embedding_assert_greater_or_equal_0_all^Assert*
_output_shapes
: *
T0
S

Identity_1IdentityIdentity:output:0^Assert*
T0
*
_output_shapes
: "!

identity_1Identity_1:output:0*$

_input_shapes
: :
���������2
AssertAssert:  : 
�	
�
C__inference_dense_1_layer_call_and_return_conditional_losses_159040

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes

:

*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:
v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*'
_output_shapes
:���������
*
T0P
ReluReluBiasAdd:output:0*'
_output_shapes
:���������
*
T0�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*'
_output_shapes
:���������
*
T0"
identityIdentity:output:0*.

_input_shapes
:���������
::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp:& "
 
_user_specified_nameinputs: : 
�
�
(__inference_dense_1_layer_call_fn_159047

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*'
_output_shapes
:���������
*
Tin
2*L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_157992**
config_proto

GPU 

CPU2J 8*
Tout
2*-
_gradient_op_typePartitionedCall-157998�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*.

_input_shapes
:���������
::22
StatefulPartitionedCallStatefulPartitionedCall: : :& "
 
_user_specified_nameinputs
�
�
bmodel_dense_features_movieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_157382T
Pidentity_model_dense_features_movieid_embedding_assert_less_than_num_buckets_all

placeholder	

placeholder_1	

identity_1
"
NoOpNoOp*
_output_shapes
 �
IdentityIdentityPidentity_model_dense_features_movieid_embedding_assert_less_than_num_buckets_all^NoOp*
_output_shapes
: *
T0
J

Identity_1IdentityIdentity:output:0*
T0
*
_output_shapes
: "!

identity_1Identity_1:output:0*&

_input_shapes
: :
���������: :  : : 
�
�
MmovieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_158747?
;identity_movieid_embedding_assert_less_than_num_buckets_all

placeholder	

placeholder_1	

identity_1
"
NoOpNoOp*
_output_shapes
 y
IdentityIdentity;identity_movieid_embedding_assert_less_than_num_buckets_all^NoOp*
T0
*
_output_shapes
: J

Identity_1IdentityIdentity:output:0*
T0
*
_output_shapes
: "!

identity_1Identity_1:output:0*&

_input_shapes
: :
���������: :  : : 
�
�
A__inference_model_layer_call_and_return_conditional_losses_158059
movieid

userid1
-dense_features_statefulpartitionedcall_args_23
/dense_features_1_statefulpartitionedcall_args_2(
$dense_statefulpartitionedcall_args_1(
$dense_statefulpartitionedcall_args_2*
&dense_1_statefulpartitionedcall_args_1*
&dense_1_statefulpartitionedcall_args_2*
&dense_2_statefulpartitionedcall_args_1*
&dense_2_statefulpartitionedcall_args_2
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�&dense_features/StatefulPartitionedCall�(dense_features_1/StatefulPartitionedCall�
&dense_features/StatefulPartitionedCallStatefulPartitionedCallmovieiduserid-dense_features_statefulpartitionedcall_args_2*
Tin
2*-
_gradient_op_typePartitionedCall-157779**
config_proto

GPU 

CPU2J 8*'
_output_shapes
:���������
*
Tout
2*S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_157772�
(dense_features_1/StatefulPartitionedCallStatefulPartitionedCallmovieiduserid/dense_features_1_statefulpartitionedcall_args_2*U
fPRN
L__inference_dense_features_1_layer_call_and_return_conditional_losses_157916*
Tout
2*
Tin
2**
config_proto

GPU 

CPU2J 8*-
_gradient_op_typePartitionedCall-157923*'
_output_shapes
:���������
�
concatenate/PartitionedCallPartitionedCall/dense_features/StatefulPartitionedCall:output:01dense_features_1/StatefulPartitionedCall:output:0*
Tout
2*
Tin
2*'
_output_shapes
:���������**
config_proto

GPU 

CPU2J 8*P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_157939*-
_gradient_op_typePartitionedCall-157946�
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0$dense_statefulpartitionedcall_args_1$dense_statefulpartitionedcall_args_2*'
_output_shapes
:���������
*J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_157964*
Tout
2**
config_proto

GPU 

CPU2J 8*
Tin
2*-
_gradient_op_typePartitionedCall-157970�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0&dense_1_statefulpartitionedcall_args_1&dense_1_statefulpartitionedcall_args_2*-
_gradient_op_typePartitionedCall-157998*L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_157992*'
_output_shapes
:���������
*
Tin
2*
Tout
2**
config_proto

GPU 

CPU2J 8�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0&dense_2_statefulpartitionedcall_args_1&dense_2_statefulpartitionedcall_args_2*'
_output_shapes
:���������**
config_proto

GPU 

CPU2J 8*
Tout
2*
Tin
2*L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_158020*-
_gradient_op_typePartitionedCall-158026�
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall)^dense_features_1/StatefulPartitionedCall*'
_output_shapes
:���������*
T0"
identityIdentity:output:0*Q

_input_shapes@
>:
���������:
���������::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2T
(dense_features_1/StatefulPartitionedCall(dense_features_1/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall:&"
 
_user_specified_nameuserId: : : : : : : :	 :' #
!
_user_specified_name	movieId
�
�
Ydense_features_movieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_158190K
Gidentity_dense_features_movieid_embedding_assert_greater_or_equal_0_all

placeholder	

identity_1
"
NoOpNoOp*
_output_shapes
 �
IdentityIdentityGidentity_dense_features_movieid_embedding_assert_greater_or_equal_0_all^NoOp*
T0
*
_output_shapes
: J

Identity_1IdentityIdentity:output:0*
T0
*
_output_shapes
: "!

identity_1Identity_1:output:0*$

_input_shapes
: :
���������:  : 
�
�
&__inference_model_layer_call_fn_158714
inputs_0
inputs_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8"
statefulpartitionedcall_args_9
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8statefulpartitionedcall_args_9*'
_output_shapes
:���������**
config_proto

GPU 

CPU2J 8*-
_gradient_op_typePartitionedCall-158083*
Tout
2*J
fERC
A__inference_model_layer_call_and_return_conditional_losses_158082*
Tin
2
�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*'
_output_shapes
:���������*
T0"
identityIdentity:output:0*Q

_input_shapes@
>:
���������:
���������::::::::22
StatefulPartitionedCallStatefulPartitionedCall: : : : :	 :( $
"
_user_specified_name
inputs/0:($
"
_user_specified_name
inputs/1: : : 
��
�
A__inference_model_layer_call_and_return_conditional_losses_158426
inputs_0
inputs_1�
�dense_features_movieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource�
�dense_features_1_userid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�Mdense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard�Pdense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard�cdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup�wdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp�Ndense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard�Qdense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard�cdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup�wdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpz
/dense_features/movieId_embedding/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0�
+dense_features/movieId_embedding/ExpandDims
ExpandDimsinputs_08dense_features/movieId_embedding/ExpandDims/dim:output:0*'
_output_shapes
:���������*
T0�
?dense_features/movieId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
����������
9dense_features/movieId_embedding/to_sparse_input/NotEqualNotEqual4dense_features/movieId_embedding/ExpandDims:output:0Hdense_features/movieId_embedding/to_sparse_input/ignore_value/x:output:0*'
_output_shapes
:���������*
T0�
8dense_features/movieId_embedding/to_sparse_input/indicesWhere=dense_features/movieId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
7dense_features/movieId_embedding/to_sparse_input/valuesGatherNd4dense_features/movieId_embedding/ExpandDims:output:0@dense_features/movieId_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:
����������
<dense_features/movieId_embedding/to_sparse_input/dense_shapeShape4dense_features/movieId_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	�
'dense_features/movieId_embedding/valuesCast@dense_features/movieId_embedding/to_sparse_input/values:output:0*#
_output_shapes
:
���������*

DstT0	*

SrcT0q
.dense_features/movieId_embedding/num_buckets/xConst*
value
B :�*
_output_shapes
: *
dtype0�
,dense_features/movieId_embedding/num_bucketsCast7dense_features/movieId_embedding/num_buckets/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: i
'dense_features/movieId_embedding/zero/xConst*
value	B : *
_output_shapes
: *
dtype0�
%dense_features/movieId_embedding/zeroCast0dense_features/movieId_embedding/zero/x:output:0*

SrcT0*

DstT0	*
_output_shapes
: �
Bdense_features/movieId_embedding/assert_less_than_num_buckets/LessLess+dense_features/movieId_embedding/values:y:00dense_features/movieId_embedding/num_buckets:y:0*
T0	*#
_output_shapes
:
����������
Cdense_features/movieId_embedding/assert_less_than_num_buckets/ConstConst*
value
B: *
dtype0*
_output_shapes
:�
Adense_features/movieId_embedding/assert_less_than_num_buckets/AllAllFdense_features/movieId_embedding/assert_less_than_num_buckets/Less:z:0Ldense_features/movieId_embedding/assert_less_than_num_buckets/Const:output:0*
_output_shapes
: �
Pdense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuardIfJdense_features/movieId_embedding/assert_less_than_num_buckets/All:output:0Jdense_features/movieId_embedding/assert_less_than_num_buckets/All:output:0+dense_features/movieId_embedding/values:y:00dense_features/movieId_embedding/num_buckets:y:0*

output_shapes
: *o
then_branch`R^
\dense_features_movieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_158171*
Tcond0
*
_lower_using_switch_merge(*p
else_branchaR_
]dense_features_movieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_158172*
Tin
2
		*
_output_shapes
: *
Tout
2
�
Ydense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard/IdentityIdentityYdense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard:output:0*
_output_shapes
: *
T0
�
Gdense_features/movieId_embedding/assert_greater_or_equal_0/GreaterEqualGreaterEqual+dense_features/movieId_embedding/values:y:0)dense_features/movieId_embedding/zero:y:0*#
_output_shapes
:
���������*
T0	�
@dense_features/movieId_embedding/assert_greater_or_equal_0/ConstConst*
dtype0*
value
B: *
_output_shapes
:�
>dense_features/movieId_embedding/assert_greater_or_equal_0/AllAllKdense_features/movieId_embedding/assert_greater_or_equal_0/GreaterEqual:z:0Idense_features/movieId_embedding/assert_greater_or_equal_0/Const:output:0*
_output_shapes
: �
Mdense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuardIfGdense_features/movieId_embedding/assert_greater_or_equal_0/All:output:0Gdense_features/movieId_embedding/assert_greater_or_equal_0/All:output:0+dense_features/movieId_embedding/values:y:0Q^dense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard*
Tout
2
*
Tcond0
*
Tin
2
	*l
then_branch]R[
Ydense_features_movieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_158190*

output_shapes
: *
_lower_using_switch_merge(*m
else_branch^R\
Zdense_features_movieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_158191*
_output_shapes
: �
Vdense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard/IdentityIdentityVdense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard:output:0*
_output_shapes
: *
T0
�
)dense_features/movieId_embedding/IdentityIdentity+dense_features/movieId_embedding/values:y:0W^dense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard/IdentityZ^dense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard/Identity*
T0	*#
_output_shapes
:
����������
Fdense_features/movieId_embedding/movieId_embedding_weights/Slice/beginConst*
dtype0*
_output_shapes
:*
value
B: �
Edense_features/movieId_embedding/movieId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
value
B:�
@dense_features/movieId_embedding/movieId_embedding_weights/SliceSliceEdense_features/movieId_embedding/to_sparse_input/dense_shape:output:0Odense_features/movieId_embedding/movieId_embedding_weights/Slice/begin:output:0Ndense_features/movieId_embedding/movieId_embedding_weights/Slice/size:output:0*
T0	*
Index0*
_output_shapes
:�
@dense_features/movieId_embedding/movieId_embedding_weights/ConstConst*
_output_shapes
:*
value
B: *
dtype0�
?dense_features/movieId_embedding/movieId_embedding_weights/ProdProdIdense_features/movieId_embedding/movieId_embedding_weights/Slice:output:0Idense_features/movieId_embedding/movieId_embedding_weights/Const:output:0*
_output_shapes
: *
T0	�
Kdense_features/movieId_embedding/movieId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
value	B :*
dtype0�
Hdense_features/movieId_embedding/movieId_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
value	B : *
dtype0�
Cdense_features/movieId_embedding/movieId_embedding_weights/GatherV2GatherV2Edense_features/movieId_embedding/to_sparse_input/dense_shape:output:0Tdense_features/movieId_embedding/movieId_embedding_weights/GatherV2/indices:output:0Qdense_features/movieId_embedding/movieId_embedding_weights/GatherV2/axis:output:0*
_output_shapes
: *
Taxis0*
Tparams0	*
Tindices0�
Adense_features/movieId_embedding/movieId_embedding_weights/Cast/xPackHdense_features/movieId_embedding/movieId_embedding_weights/Prod:output:0Ldense_features/movieId_embedding/movieId_embedding_weights/GatherV2:output:0*
_output_shapes
:*
T0	*
N�
Hdense_features/movieId_embedding/movieId_embedding_weights/SparseReshape
SparseReshape@dense_features/movieId_embedding/to_sparse_input/indices:index:0Edense_features/movieId_embedding/to_sparse_input/dense_shape:output:0Jdense_features/movieId_embedding/movieId_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
Qdense_features/movieId_embedding/movieId_embedding_weights/SparseReshape/IdentityIdentity2dense_features/movieId_embedding/Identity:output:0*
T0	*#
_output_shapes
:
����������
Idense_features/movieId_embedding/movieId_embedding_weights/GreaterEqual/yConst*
dtype0	*
_output_shapes
: *
value	B	 R �
Gdense_features/movieId_embedding/movieId_embedding_weights/GreaterEqualGreaterEqualZdense_features/movieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0Rdense_features/movieId_embedding/movieId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:
����������
@dense_features/movieId_embedding/movieId_embedding_weights/WhereWhereKdense_features/movieId_embedding/movieId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
Hdense_features/movieId_embedding/movieId_embedding_weights/Reshape/shapeConst*
dtype0*
valueB:
���������*
_output_shapes
:�
Bdense_features/movieId_embedding/movieId_embedding_weights/ReshapeReshapeHdense_features/movieId_embedding/movieId_embedding_weights/Where:index:0Qdense_features/movieId_embedding/movieId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:
����������
Jdense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Edense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1GatherV2Ydense_features/movieId_embedding/movieId_embedding_weights/SparseReshape:output_indices:0Kdense_features/movieId_embedding/movieId_embedding_weights/Reshape:output:0Sdense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*'
_output_shapes
:���������*
Tparams0	*
Tindices0	�
Jdense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2/axisConst*
dtype0*
value	B : *
_output_shapes
: �
Edense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2GatherV2Zdense_features/movieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0Kdense_features/movieId_embedding/movieId_embedding_weights/Reshape:output:0Sdense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2/axis:output:0*
Tparams0	*#
_output_shapes
:
���������*
Tindices0	*
Taxis0�
Cdense_features/movieId_embedding/movieId_embedding_weights/IdentityIdentityWdense_features/movieId_embedding/movieId_embedding_weights/SparseReshape:output_shape:0*
_output_shapes
:*
T0	�
Tdense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R �
bdense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsNdense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1:output:0Ndense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2:output:0Ldense_features/movieId_embedding/movieId_embedding_weights/Identity:output:0]dense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:
���������:
���������:
����������
fdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0�
hdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:�
hdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
`dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicesdense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0odense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0qdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0qdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
end_mask*
shrink_axis_mask*
T0	*#
_output_shapes
:
���������*

begin_mask�
Wdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/CastCastidense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*

SrcT0	*

DstT0*#
_output_shapes
:
����������
Ydense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/UniqueUniquerdense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*2
_output_shapes 
:
���������:
���������*
T0	�
wdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpReadVariableOp�dense_features_movieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:	�
*
dtype0�
ldense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitydense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp:value:0*
_output_shapes
:	�
*
T0�
cdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGather�dense_features_movieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource]dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique:y:0x^dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*�
_class�
~|loc:@dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*
Tindices0	*
dtype0*'
_output_shapes
:���������
�
ndense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identityldense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*�
_class�
~|loc:@dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*'
_output_shapes
:���������
*
T0�
ndense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_2Identitywdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:���������
�
Rdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparseSparseSegmentMeanwdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_2:output:0_dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique:idx:0[dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Cast:y:0*'
_output_shapes
:���������
*
T0�
Jdense_features/movieId_embedding/movieId_embedding_weights/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"����   �
Ddense_features/movieId_embedding/movieId_embedding_weights/Reshape_1Reshapexdense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Sdense_features/movieId_embedding/movieId_embedding_weights/Reshape_1/shape:output:0*'
_output_shapes
:���������*
T0
�
@dense_features/movieId_embedding/movieId_embedding_weights/ShapeShape[dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:�
Ndense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stackConst*
value
B:*
dtype0*
_output_shapes
:�
Pdense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
value
B:�
Pdense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
value
B:*
dtype0�
Hdense_features/movieId_embedding/movieId_embedding_weights/strided_sliceStridedSliceIdense_features/movieId_embedding/movieId_embedding_weights/Shape:output:0Wdense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack:output:0Ydense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_1:output:0Ydense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_2:output:0*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0�
Bdense_features/movieId_embedding/movieId_embedding_weights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: �
@dense_features/movieId_embedding/movieId_embedding_weights/stackPackKdense_features/movieId_embedding/movieId_embedding_weights/stack/0:output:0Qdense_features/movieId_embedding/movieId_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:�
?dense_features/movieId_embedding/movieId_embedding_weights/TileTileMdense_features/movieId_embedding/movieId_embedding_weights/Reshape_1:output:0Idense_features/movieId_embedding/movieId_embedding_weights/stack:output:0*0
_output_shapes
:������������������*
T0
�
Edense_features/movieId_embedding/movieId_embedding_weights/zeros_like	ZerosLike[dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*'
_output_shapes
:���������
*
T0�
:dense_features/movieId_embedding/movieId_embedding_weightsSelectHdense_features/movieId_embedding/movieId_embedding_weights/Tile:output:0Idense_features/movieId_embedding/movieId_embedding_weights/zeros_like:y:0[dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
Adense_features/movieId_embedding/movieId_embedding_weights/Cast_1CastEdense_features/movieId_embedding/to_sparse_input/dense_shape:output:0*
_output_shapes
:*

SrcT0	*

DstT0�
Hdense_features/movieId_embedding/movieId_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
value
B: �
Gdense_features/movieId_embedding/movieId_embedding_weights/Slice_1/sizeConst*
value
B:*
_output_shapes
:*
dtype0�
Bdense_features/movieId_embedding/movieId_embedding_weights/Slice_1SliceEdense_features/movieId_embedding/movieId_embedding_weights/Cast_1:y:0Qdense_features/movieId_embedding/movieId_embedding_weights/Slice_1/begin:output:0Pdense_features/movieId_embedding/movieId_embedding_weights/Slice_1/size:output:0*
_output_shapes
:*
T0*
Index0�
Bdense_features/movieId_embedding/movieId_embedding_weights/Shape_1ShapeCdense_features/movieId_embedding/movieId_embedding_weights:output:0*
T0*
_output_shapes
:�
Hdense_features/movieId_embedding/movieId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
value
B:*
dtype0�
Gdense_features/movieId_embedding/movieId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
valueB:
���������*
dtype0�
Bdense_features/movieId_embedding/movieId_embedding_weights/Slice_2SliceKdense_features/movieId_embedding/movieId_embedding_weights/Shape_1:output:0Qdense_features/movieId_embedding/movieId_embedding_weights/Slice_2/begin:output:0Pdense_features/movieId_embedding/movieId_embedding_weights/Slice_2/size:output:0*
_output_shapes
:*
Index0*
T0�
Fdense_features/movieId_embedding/movieId_embedding_weights/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : �
Adense_features/movieId_embedding/movieId_embedding_weights/concatConcatV2Kdense_features/movieId_embedding/movieId_embedding_weights/Slice_1:output:0Kdense_features/movieId_embedding/movieId_embedding_weights/Slice_2:output:0Odense_features/movieId_embedding/movieId_embedding_weights/concat/axis:output:0*
T0*
_output_shapes
:*
N�
Ddense_features/movieId_embedding/movieId_embedding_weights/Reshape_2ReshapeCdense_features/movieId_embedding/movieId_embedding_weights:output:0Jdense_features/movieId_embedding/movieId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:���������
�
&dense_features/movieId_embedding/ShapeShapeMdense_features/movieId_embedding/movieId_embedding_weights/Reshape_2:output:0*
_output_shapes
:*
T0~
4dense_features/movieId_embedding/strided_slice/stackConst*
_output_shapes
:*
value
B: *
dtype0�
6dense_features/movieId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
value
B:�
6dense_features/movieId_embedding/strided_slice/stack_2Const*
value
B:*
dtype0*
_output_shapes
:�
.dense_features/movieId_embedding/strided_sliceStridedSlice/dense_features/movieId_embedding/Shape:output:0=dense_features/movieId_embedding/strided_slice/stack:output:0?dense_features/movieId_embedding/strided_slice/stack_1:output:0?dense_features/movieId_embedding/strided_slice/stack_2:output:0*
T0*
shrink_axis_mask*
Index0*
_output_shapes
: r
0dense_features/movieId_embedding/Reshape/shape/1Const*
_output_shapes
: *
value	B :
*
dtype0�
.dense_features/movieId_embedding/Reshape/shapePack7dense_features/movieId_embedding/strided_slice:output:09dense_features/movieId_embedding/Reshape/shape/1:output:0*
T0*
_output_shapes
:*
N�
(dense_features/movieId_embedding/ReshapeReshapeMdense_features/movieId_embedding/movieId_embedding_weights/Reshape_2:output:07dense_features/movieId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������
k
 dense_features/concat/concat_dimConst*
dtype0*
_output_shapes
: *
valueB :
����������
dense_features/concat/concatIdentity1dense_features/movieId_embedding/Reshape:output:0*
T0*'
_output_shapes
:���������
{
0dense_features_1/userId_embedding/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
����������
,dense_features_1/userId_embedding/ExpandDims
ExpandDimsinputs_19dense_features_1/userId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:����������
@dense_features_1/userId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
valueB :
���������*
dtype0�
:dense_features_1/userId_embedding/to_sparse_input/NotEqualNotEqual5dense_features_1/userId_embedding/ExpandDims:output:0Idense_features_1/userId_embedding/to_sparse_input/ignore_value/x:output:0*'
_output_shapes
:���������*
T0�
9dense_features_1/userId_embedding/to_sparse_input/indicesWhere>dense_features_1/userId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
8dense_features_1/userId_embedding/to_sparse_input/valuesGatherNd5dense_features_1/userId_embedding/ExpandDims:output:0Adense_features_1/userId_embedding/to_sparse_input/indices:index:0*
Tparams0*
Tindices0	*#
_output_shapes
:
����������
=dense_features_1/userId_embedding/to_sparse_input/dense_shapeShape5dense_features_1/userId_embedding/ExpandDims:output:0*
T0*
out_type0	*
_output_shapes
:�
(dense_features_1/userId_embedding/valuesCastAdense_features_1/userId_embedding/to_sparse_input/values:output:0*

SrcT0*

DstT0	*#
_output_shapes
:
���������s
/dense_features_1/userId_embedding/num_buckets/xConst*
valueB	 :��*
dtype0*
_output_shapes
: �
-dense_features_1/userId_embedding/num_bucketsCast8dense_features_1/userId_embedding/num_buckets/x:output:0*

DstT0	*
_output_shapes
: *

SrcT0j
(dense_features_1/userId_embedding/zero/xConst*
value	B : *
_output_shapes
: *
dtype0�
&dense_features_1/userId_embedding/zeroCast1dense_features_1/userId_embedding/zero/x:output:0*

DstT0	*
_output_shapes
: *

SrcT0�
Cdense_features_1/userId_embedding/assert_less_than_num_buckets/LessLess,dense_features_1/userId_embedding/values:y:01dense_features_1/userId_embedding/num_buckets:y:0*#
_output_shapes
:
���������*
T0	�
Ddense_features_1/userId_embedding/assert_less_than_num_buckets/ConstConst*
value
B: *
dtype0*
_output_shapes
:�
Bdense_features_1/userId_embedding/assert_less_than_num_buckets/AllAllGdense_features_1/userId_embedding/assert_less_than_num_buckets/Less:z:0Mdense_features_1/userId_embedding/assert_less_than_num_buckets/Const:output:0*
_output_shapes
: �
Qdense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuardIfKdense_features_1/userId_embedding/assert_less_than_num_buckets/All:output:0Kdense_features_1/userId_embedding/assert_less_than_num_buckets/All:output:0,dense_features_1/userId_embedding/values:y:01dense_features_1/userId_embedding/num_buckets:y:0N^dense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard*
Tcond0
*
_output_shapes
: *

output_shapes
: *q
else_branchbR`
^dense_features_1_userId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_158295*
Tin
2
		*
Tout
2
*p
then_branchaR_
]dense_features_1_userId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_158294*
_lower_using_switch_merge(�
Zdense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard/IdentityIdentityZdense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard:output:0*
_output_shapes
: *
T0
�
Hdense_features_1/userId_embedding/assert_greater_or_equal_0/GreaterEqualGreaterEqual,dense_features_1/userId_embedding/values:y:0*dense_features_1/userId_embedding/zero:y:0*
T0	*#
_output_shapes
:
����������
Adense_features_1/userId_embedding/assert_greater_or_equal_0/ConstConst*
dtype0*
_output_shapes
:*
value
B: �
?dense_features_1/userId_embedding/assert_greater_or_equal_0/AllAllLdense_features_1/userId_embedding/assert_greater_or_equal_0/GreaterEqual:z:0Jdense_features_1/userId_embedding/assert_greater_or_equal_0/Const:output:0*
_output_shapes
: �
Ndense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuardIfHdense_features_1/userId_embedding/assert_greater_or_equal_0/All:output:0Hdense_features_1/userId_embedding/assert_greater_or_equal_0/All:output:0,dense_features_1/userId_embedding/values:y:0R^dense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard*
Tout
2
*
Tcond0
*

output_shapes
: *n
else_branch_R]
[dense_features_1_userId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_158314*
Tin
2
	*
_output_shapes
: *
_lower_using_switch_merge(*m
then_branch^R\
Zdense_features_1_userId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_158313�
Wdense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard/IdentityIdentityWdense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard:output:0*
_output_shapes
: *
T0
�
*dense_features_1/userId_embedding/IdentityIdentity,dense_features_1/userId_embedding/values:y:0X^dense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard/Identity[^dense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard/Identity*
T0	*#
_output_shapes
:
����������
Fdense_features_1/userId_embedding/userId_embedding_weights/Slice/beginConst*
dtype0*
_output_shapes
:*
value
B: �
Edense_features_1/userId_embedding/userId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
value
B:�
@dense_features_1/userId_embedding/userId_embedding_weights/SliceSliceFdense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Odense_features_1/userId_embedding/userId_embedding_weights/Slice/begin:output:0Ndense_features_1/userId_embedding/userId_embedding_weights/Slice/size:output:0*
T0	*
_output_shapes
:*
Index0�
@dense_features_1/userId_embedding/userId_embedding_weights/ConstConst*
dtype0*
_output_shapes
:*
value
B: �
?dense_features_1/userId_embedding/userId_embedding_weights/ProdProdIdense_features_1/userId_embedding/userId_embedding_weights/Slice:output:0Idense_features_1/userId_embedding/userId_embedding_weights/Const:output:0*
_output_shapes
: *
T0	�
Kdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :�
Hdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: �
Cdense_features_1/userId_embedding/userId_embedding_weights/GatherV2GatherV2Fdense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Tdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/indices:output:0Qdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
_output_shapes
: *
Tindices0*
Tparams0	�
Adense_features_1/userId_embedding/userId_embedding_weights/Cast/xPackHdense_features_1/userId_embedding/userId_embedding_weights/Prod:output:0Ldense_features_1/userId_embedding/userId_embedding_weights/GatherV2:output:0*
T0	*
N*
_output_shapes
:�
Hdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape
SparseReshapeAdense_features_1/userId_embedding/to_sparse_input/indices:index:0Fdense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Jdense_features_1/userId_embedding/userId_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
Qdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/IdentityIdentity3dense_features_1/userId_embedding/Identity:output:0*
T0	*#
_output_shapes
:
����������
Idense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual/yConst*
dtype0	*
_output_shapes
: *
value	B	 R �
Gdense_features_1/userId_embedding/userId_embedding_weights/GreaterEqualGreaterEqualZdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0Rdense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual/y:output:0*#
_output_shapes
:
���������*
T0	�
@dense_features_1/userId_embedding/userId_embedding_weights/WhereWhereKdense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
Hdense_features_1/userId_embedding/userId_embedding_weights/Reshape/shapeConst*
dtype0*
valueB:
���������*
_output_shapes
:�
Bdense_features_1/userId_embedding/userId_embedding_weights/ReshapeReshapeHdense_features_1/userId_embedding/userId_embedding_weights/Where:index:0Qdense_features_1/userId_embedding/userId_embedding_weights/Reshape/shape:output:0*#
_output_shapes
:
���������*
T0	�
Jdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1/axisConst*
value	B : *
_output_shapes
: *
dtype0�
Edense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1GatherV2Ydense_features_1/userId_embedding/userId_embedding_weights/SparseReshape:output_indices:0Kdense_features_1/userId_embedding/userId_embedding_weights/Reshape:output:0Sdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1/axis:output:0*
Tparams0	*
Taxis0*'
_output_shapes
:���������*
Tindices0	�
Jdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: �
Edense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2GatherV2Zdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0Kdense_features_1/userId_embedding/userId_embedding_weights/Reshape:output:0Sdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2/axis:output:0*
Tindices0	*
Taxis0*#
_output_shapes
:
���������*
Tparams0	�
Cdense_features_1/userId_embedding/userId_embedding_weights/IdentityIdentityWdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
Tdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
value	B	 R *
dtype0	�
bdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsNdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1:output:0Ndense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2:output:0Ldense_features_1/userId_embedding/userId_embedding_weights/Identity:output:0]dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/Const:output:0*T
_output_shapesB
@:���������:
���������:
���������:
���������*
T0	�
fdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
valueB"        *
dtype0�
hdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
valueB"       *
dtype0�
hdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:�
`dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicesdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0odense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0qdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0qdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
T0	*
Index0*
shrink_axis_mask*#
_output_shapes
:
���������*
end_mask*

begin_mask�
Wdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/CastCastidense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*#
_output_shapes
:
���������*

SrcT0	*

DstT0�
Ydense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/UniqueUniquerdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:
���������:
����������
wdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpReadVariableOp�dense_features_1_userid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0* 
_output_shapes
:
��
*
dtype0�
ldense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitydense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp:value:0* 
_output_shapes
:
��
*
T0�
cdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGather�dense_features_1_userid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource]dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:y:0x^dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*'
_output_shapes
:���������
*
Tindices0	*�
_class�
~|loc:@dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*
dtype0�
ndense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identityldense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*'
_output_shapes
:���������
*�
_class�
~|loc:@dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*
T0�
ndense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_2Identitywdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:���������
�
Rdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparseSparseSegmentMeanwdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_2:output:0_dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:idx:0[dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/Cast:y:0*
T0*'
_output_shapes
:���������
�
Jdense_features_1/userId_embedding/userId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
valueB"����   *
dtype0�
Ddense_features_1/userId_embedding/userId_embedding_weights/Reshape_1Reshapexdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Sdense_features_1/userId_embedding/userId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
@dense_features_1/userId_embedding/userId_embedding_weights/ShapeShape[dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
_output_shapes
:*
T0�
Ndense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
value
B:�
Pdense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
value
B:�
Pdense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_2Const*
value
B:*
_output_shapes
:*
dtype0�
Hdense_features_1/userId_embedding/userId_embedding_weights/strided_sliceStridedSliceIdense_features_1/userId_embedding/userId_embedding_weights/Shape:output:0Wdense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack:output:0Ydense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_1:output:0Ydense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_2:output:0*
shrink_axis_mask*
Index0*
_output_shapes
: *
T0�
Bdense_features_1/userId_embedding/userId_embedding_weights/stack/0Const*
value	B :*
_output_shapes
: *
dtype0�
@dense_features_1/userId_embedding/userId_embedding_weights/stackPackKdense_features_1/userId_embedding/userId_embedding_weights/stack/0:output:0Qdense_features_1/userId_embedding/userId_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:�
?dense_features_1/userId_embedding/userId_embedding_weights/TileTileMdense_features_1/userId_embedding/userId_embedding_weights/Reshape_1:output:0Idense_features_1/userId_embedding/userId_embedding_weights/stack:output:0*
T0
*0
_output_shapes
:�������������������
Edense_features_1/userId_embedding/userId_embedding_weights/zeros_like	ZerosLike[dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*'
_output_shapes
:���������
*
T0�
:dense_features_1/userId_embedding/userId_embedding_weightsSelectHdense_features_1/userId_embedding/userId_embedding_weights/Tile:output:0Idense_features_1/userId_embedding/userId_embedding_weights/zeros_like:y:0[dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*'
_output_shapes
:���������
*
T0�
Adense_features_1/userId_embedding/userId_embedding_weights/Cast_1CastFdense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0*
_output_shapes
:*

SrcT0	*

DstT0�
Hdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/beginConst*
value
B: *
dtype0*
_output_shapes
:�
Gdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/sizeConst*
value
B:*
dtype0*
_output_shapes
:�
Bdense_features_1/userId_embedding/userId_embedding_weights/Slice_1SliceEdense_features_1/userId_embedding/userId_embedding_weights/Cast_1:y:0Qdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/begin:output:0Pdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/size:output:0*
T0*
_output_shapes
:*
Index0�
Bdense_features_1/userId_embedding/userId_embedding_weights/Shape_1ShapeCdense_features_1/userId_embedding/userId_embedding_weights:output:0*
T0*
_output_shapes
:�
Hdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/beginConst*
dtype0*
_output_shapes
:*
value
B:�
Gdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/sizeConst*
valueB:
���������*
_output_shapes
:*
dtype0�
Bdense_features_1/userId_embedding/userId_embedding_weights/Slice_2SliceKdense_features_1/userId_embedding/userId_embedding_weights/Shape_1:output:0Qdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/begin:output:0Pdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/size:output:0*
Index0*
_output_shapes
:*
T0�
Fdense_features_1/userId_embedding/userId_embedding_weights/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: �
Adense_features_1/userId_embedding/userId_embedding_weights/concatConcatV2Kdense_features_1/userId_embedding/userId_embedding_weights/Slice_1:output:0Kdense_features_1/userId_embedding/userId_embedding_weights/Slice_2:output:0Odense_features_1/userId_embedding/userId_embedding_weights/concat/axis:output:0*
T0*
_output_shapes
:*
N�
Ddense_features_1/userId_embedding/userId_embedding_weights/Reshape_2ReshapeCdense_features_1/userId_embedding/userId_embedding_weights:output:0Jdense_features_1/userId_embedding/userId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:���������
�
'dense_features_1/userId_embedding/ShapeShapeMdense_features_1/userId_embedding/userId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:
5dense_features_1/userId_embedding/strided_slice/stackConst*
value
B: *
dtype0*
_output_shapes
:�
7dense_features_1/userId_embedding/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
value
B:�
7dense_features_1/userId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
value
B:*
dtype0�
/dense_features_1/userId_embedding/strided_sliceStridedSlice0dense_features_1/userId_embedding/Shape:output:0>dense_features_1/userId_embedding/strided_slice/stack:output:0@dense_features_1/userId_embedding/strided_slice/stack_1:output:0@dense_features_1/userId_embedding/strided_slice/stack_2:output:0*
Index0*
_output_shapes
: *
shrink_axis_mask*
T0s
1dense_features_1/userId_embedding/Reshape/shape/1Const*
dtype0*
value	B :
*
_output_shapes
: �
/dense_features_1/userId_embedding/Reshape/shapePack8dense_features_1/userId_embedding/strided_slice:output:0:dense_features_1/userId_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
)dense_features_1/userId_embedding/ReshapeReshapeMdense_features_1/userId_embedding/userId_embedding_weights/Reshape_2:output:08dense_features_1/userId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������
m
"dense_features_1/concat/concat_dimConst*
dtype0*
valueB :
���������*
_output_shapes
: �
dense_features_1/concat/concatIdentity2dense_features_1/userId_embedding/Reshape:output:0*'
_output_shapes
:���������
*
T0Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate/concatConcatV2%dense_features/concat/concat:output:0'dense_features_1/concat/concat:output:0 concatenate/concat/axis:output:0*'
_output_shapes
:���������*
T0*
N�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes

:
�
dense/MatMulMatMulconcatenate/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:
*
dtype0�

dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*'
_output_shapes
:���������
*
T0\

dense/ReluReludense/BiasAdd:output:0*'
_output_shapes
:���������
*
T0�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes

:

�
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*'
_output_shapes
:���������
*
T0�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:
�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*'
_output_shapes
:���������
*
T0`
dense_1/ReluReludense_1/BiasAdd:output:0*'
_output_shapes
:���������
*
T0�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes

:
*
dtype0�
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*'
_output_shapes
:���������*
T0�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*'
_output_shapes
:���������*
T0f
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:����������
IdentityIdentitydense_2/Sigmoid:y:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOpN^dense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuardQ^dense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuardd^dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupx^dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpO^dense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuardR^dense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuardd^dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupx^dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*'
_output_shapes
:���������*
T0"
identityIdentity:output:0*Q

_input_shapes@
>:
���������:
���������::::::::2�
cdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupcdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2�
Ndense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuardNdense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard2�
wdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpwdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp2�
Mdense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuardMdense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard2�
Pdense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuardPdense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard2�
wdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpwdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp2�
Qdense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuardQdense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2�
cdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupcdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:( $
"
_user_specified_name
inputs/0:($
"
_user_specified_name
inputs/1: : : : : : : :	 
�
�
&__inference_dense_layer_call_fn_159029

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2*'
_output_shapes
:���������
*
Tout
2**
config_proto

GPU 

CPU2J 8*-
_gradient_op_typePartitionedCall-157970*J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_157964�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*'
_output_shapes
:���������
*
T0"
identityIdentity:output:0*.

_input_shapes
:���������::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs: : 
�
�
JuserId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_1578279
5assert_userid_embedding_assert_greater_or_equal_0_all
"
assert_userid_embedding_values	

identity_1
��Assert�
AssertAssert5assert_userid_embedding_assert_greater_or_equal_0_allassert_userid_embedding_values*
_output_shapes
 *

T
2	u
IdentityIdentity5assert_userid_embedding_assert_greater_or_equal_0_all^Assert*
T0
*
_output_shapes
: S

Identity_1IdentityIdentity:output:0^Assert*
_output_shapes
: *
T0
"!

identity_1Identity_1:output:0*$

_input_shapes
: :
���������2
AssertAssert:  : 
�
�
cmodel_dense_features_movieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_157383R
Nassert_model_dense_features_movieid_embedding_assert_less_than_num_buckets_all
8
4assert_model_dense_features_movieid_embedding_values	=
9assert_model_dense_features_movieid_embedding_num_buckets	

identity_1
��Assert�
AssertAssertNassert_model_dense_features_movieid_embedding_assert_less_than_num_buckets_all4assert_model_dense_features_movieid_embedding_values9assert_model_dense_features_movieid_embedding_num_buckets*
T
2		*
_output_shapes
 �
IdentityIdentityNassert_model_dense_features_movieid_embedding_assert_less_than_num_buckets_all^Assert*
T0
*
_output_shapes
: S

Identity_1IdentityIdentity:output:0^Assert*
_output_shapes
: *
T0
"!

identity_1Identity_1:output:0*&

_input_shapes
: :
���������: 2
AssertAssert:  : : 
�
�
^dense_features_1_userId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_158569M
Iassert_dense_features_1_userid_embedding_assert_less_than_num_buckets_all
3
/assert_dense_features_1_userid_embedding_values	8
4assert_dense_features_1_userid_embedding_num_buckets	

identity_1
��Assert�
AssertAssertIassert_dense_features_1_userid_embedding_assert_less_than_num_buckets_all/assert_dense_features_1_userid_embedding_values4assert_dense_features_1_userid_embedding_num_buckets*
T
2		*
_output_shapes
 �
IdentityIdentityIassert_dense_features_1_userid_embedding_assert_less_than_num_buckets_all^Assert*
_output_shapes
: *
T0
S

Identity_1IdentityIdentity:output:0^Assert*
_output_shapes
: *
T0
"!

identity_1Identity_1:output:0*&

_input_shapes
: :
���������: 2
AssertAssert: : :  
�D
�
__inference__traced_save_159184
file_prefixQ
Msavev2_dense_features_movieid_embedding_embedding_weights_read_readvariableopR
Nsavev2_dense_features_1_userid_embedding_embedding_weights_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableopX
Tsavev2_adam_dense_features_movieid_embedding_embedding_weights_m_read_readvariableopY
Usavev2_adam_dense_features_1_userid_embedding_embedding_weights_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableopX
Tsavev2_adam_dense_features_movieid_embedding_embedding_weights_v_read_readvariableopY
Usavev2_adam_dense_features_1_userid_embedding_embedding_weights_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop
savev2_1_const

identity_1��MergeV2Checkpoints�SaveV2�SaveV2_1�
StringJoin/inputs_1Const"
/device:CPU:0*<
value3B1 B+_temp_c06d099d8d5248b3ad65a8498c49bd25/part*
dtype0*
_output_shapes
: s

StringJoin
StringJoinfile_prefixStringJoin/inputs_1:output:0"
/device:CPU:0*
_output_shapes
: *
NL

num_shardsConst*
_output_shapes
: *
value	B :*
dtype0f
ShardedFilename/shardConst"
/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"
/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"
/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�BTlayer_with_weights-0/movieId_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-1/userId_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-0/movieId_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBolayer_with_weights-1/userId_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-0/movieId_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBolayer_with_weights-1/userId_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE�
SaveV2/shape_and_slicesConst"
/device:CPU:0*
dtype0*
_output_shapes
:*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Msavev2_dense_features_movieid_embedding_embedding_weights_read_readvariableopNsavev2_dense_features_1_userid_embedding_embedding_weights_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopTsavev2_adam_dense_features_movieid_embedding_embedding_weights_m_read_readvariableopUsavev2_adam_dense_features_1_userid_embedding_embedding_weights_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableopTsavev2_adam_dense_features_movieid_embedding_embedding_weights_v_read_readvariableopUsavev2_adam_dense_features_1_userid_embedding_embedding_weights_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop"
/device:CPU:0*-
dtypes#
!2	*
_output_shapes
 h
ShardedFilename_1/shardConst"
/device:CPU:0*
_output_shapes
: *
dtype0*
value	B :�
ShardedFilename_1ShardedFilenameStringJoin:output:0 ShardedFilename_1/shard:output:0num_shards:output:0"
/device:CPU:0*
_output_shapes
: �
SaveV2_1/tensor_namesConst"
/device:CPU:0*
dtype0*
_output_shapes
:*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPHq
SaveV2_1/shape_and_slicesConst"
/device:CPU:0*
valueB
B *
_output_shapes
:*
dtype0�
SaveV2_1SaveV2ShardedFilename_1:filename:0SaveV2_1/tensor_names:output:0"SaveV2_1/shape_and_slices:output:0savev2_1_const^SaveV2"
/device:CPU:0*
_output_shapes
 *
dtypes
2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0ShardedFilename_1:filename:0^SaveV2	^SaveV2_1"
/device:CPU:0*
N*
_output_shapes
:*
T0�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix	^SaveV2_1"
/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"
/device:CPU:0*
T0*
_output_shapes
: s

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints^SaveV2	^SaveV2_1*
_output_shapes
: *
T0"!

identity_1Identity_1:output:0*�

_input_shapes�
�: :	�
:
��
:
:
:

:
:
:: : : : : : : :	�
:
��
:
:
:

:
:
::	�
:
��
:
:
:

:
:
:: 2
SaveV2SaveV22(
MergeV2CheckpointsMergeV2Checkpoints2
SaveV2_1SaveV2_1:+ '
%
_user_specified_name
file_prefix: : : : : : : : :	 :
 : : :
 : : : : : : : : : : : : : : : : : : :  
�
�
amodel_dense_features_1_userId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_157525P
Lassert_model_dense_features_1_userid_embedding_assert_greater_or_equal_0_all
9
5assert_model_dense_features_1_userid_embedding_values	

identity_1
��Assert�
AssertAssertLassert_model_dense_features_1_userid_embedding_assert_greater_or_equal_0_all5assert_model_dense_features_1_userid_embedding_values*
_output_shapes
 *

T
2	�
IdentityIdentityLassert_model_dense_features_1_userid_embedding_assert_greater_or_equal_0_all^Assert*
T0
*
_output_shapes
: S

Identity_1IdentityIdentity:output:0^Assert*
T0
*
_output_shapes
: "!

identity_1Identity_1:output:0*$

_input_shapes
: :
���������2
AssertAssert:  : 
�	
�
C__inference_dense_2_layer_call_and_return_conditional_losses_159058

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*'
_output_shapes
:���������*
T0�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*'
_output_shapes
:���������*
T0�
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*'
_output_shapes
:���������*
T0"
identityIdentity:output:0*.

_input_shapes
:���������
::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: : :& "
 
_user_specified_nameinputs
�
�
_model_dense_features_movieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_157401Q
Midentity_model_dense_features_movieid_embedding_assert_greater_or_equal_0_all

placeholder	

identity_1
"
NoOpNoOp*
_output_shapes
 �
IdentityIdentityMidentity_model_dense_features_movieid_embedding_assert_greater_or_equal_0_all^NoOp*
_output_shapes
: *
T0
J

Identity_1IdentityIdentity:output:0*
T0
*
_output_shapes
: "!

identity_1Identity_1:output:0*$

_input_shapes
: :
���������:  : 
�
�
JmovieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_158766<
8identity_movieid_embedding_assert_greater_or_equal_0_all

placeholder	

identity_1
"
NoOpNoOp*
_output_shapes
 v
IdentityIdentity8identity_movieid_embedding_assert_greater_or_equal_0_all^NoOp*
_output_shapes
: *
T0
J

Identity_1IdentityIdentity:output:0*
_output_shapes
: *
T0
"!

identity_1Identity_1:output:0*$

_input_shapes
: :
���������:  : 
�
�
MmovieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_157663?
;identity_movieid_embedding_assert_less_than_num_buckets_all

placeholder	

placeholder_1	

identity_1
"
NoOpNoOp*
_output_shapes
 y
IdentityIdentity;identity_movieid_embedding_assert_less_than_num_buckets_all^NoOp*
_output_shapes
: *
T0
J

Identity_1IdentityIdentity:output:0*
T0
*
_output_shapes
: "!

identity_1Identity_1:output:0*&

_input_shapes
: :
���������: :  : : 
�
�
]dense_features_movieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_158446L
Hassert_dense_features_movieid_embedding_assert_less_than_num_buckets_all
2
.assert_dense_features_movieid_embedding_values	7
3assert_dense_features_movieid_embedding_num_buckets	

identity_1
��Assert�
AssertAssertHassert_dense_features_movieid_embedding_assert_less_than_num_buckets_all.assert_dense_features_movieid_embedding_values3assert_dense_features_movieid_embedding_num_buckets*
T
2		*
_output_shapes
 �
IdentityIdentityHassert_dense_features_movieid_embedding_assert_less_than_num_buckets_all^Assert*
_output_shapes
: *
T0
S

Identity_1IdentityIdentity:output:0^Assert*
_output_shapes
: *
T0
"!

identity_1Identity_1:output:0*&

_input_shapes
: :
���������: 2
AssertAssert: :  : 
�
�
NmovieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_157664=
9assert_movieid_embedding_assert_less_than_num_buckets_all
#
assert_movieid_embedding_values	(
$assert_movieid_embedding_num_buckets	

identity_1
��Assert�
AssertAssert9assert_movieid_embedding_assert_less_than_num_buckets_allassert_movieid_embedding_values$assert_movieid_embedding_num_buckets*
_output_shapes
 *
T
2		y
IdentityIdentity9assert_movieid_embedding_assert_less_than_num_buckets_all^Assert*
_output_shapes
: *
T0
S

Identity_1IdentityIdentity:output:0^Assert*
T0
*
_output_shapes
: "!

identity_1Identity_1:output:0*&

_input_shapes
: :
���������: 2
AssertAssert:  : : 
�
�
JmovieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_157682<
8identity_movieid_embedding_assert_greater_or_equal_0_all

placeholder	

identity_1
"
NoOpNoOp*
_output_shapes
 v
IdentityIdentity8identity_movieid_embedding_assert_greater_or_equal_0_all^NoOp*
_output_shapes
: *
T0
J

Identity_1IdentityIdentity:output:0*
_output_shapes
: *
T0
"!

identity_1Identity_1:output:0*$

_input_shapes
: :
���������:  : 
�
s
G__inference_concatenate_layer_call_and_return_conditional_losses_159005
inputs_0
inputs_1
identityM
concat/axisConst*
dtype0*
_output_shapes
: *
value	B :w
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*'
_output_shapes
:���������*
T0W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*9

_input_shapes(
&:���������
:���������
:( $
"
_user_specified_name
inputs/0:($
"
_user_specified_name
inputs/1
�
�
dmodel_dense_features_1_userId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_157506S
Oassert_model_dense_features_1_userid_embedding_assert_less_than_num_buckets_all
9
5assert_model_dense_features_1_userid_embedding_values	>
:assert_model_dense_features_1_userid_embedding_num_buckets	

identity_1
��Assert�
AssertAssertOassert_model_dense_features_1_userid_embedding_assert_less_than_num_buckets_all5assert_model_dense_features_1_userid_embedding_values:assert_model_dense_features_1_userid_embedding_num_buckets*
T
2		*
_output_shapes
 �
IdentityIdentityOassert_model_dense_features_1_userid_embedding_assert_less_than_num_buckets_all^Assert*
_output_shapes
: *
T0
S

Identity_1IdentityIdentity:output:0^Assert*
_output_shapes
: *
T0
"!

identity_1Identity_1:output:0*&

_input_shapes
: :
���������: 2
AssertAssert: : :  
�
�
[dense_features_1_userId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_158314J
Fassert_dense_features_1_userid_embedding_assert_greater_or_equal_0_all
3
/assert_dense_features_1_userid_embedding_values	

identity_1
��Assert�
AssertAssertFassert_dense_features_1_userid_embedding_assert_greater_or_equal_0_all/assert_dense_features_1_userid_embedding_values*
_output_shapes
 *

T
2	�
IdentityIdentityFassert_dense_features_1_userid_embedding_assert_greater_or_equal_0_all^Assert*
_output_shapes
: *
T0
S

Identity_1IdentityIdentity:output:0^Assert*
_output_shapes
: *
T0
"!

identity_1Identity_1:output:0*$

_input_shapes
: :
���������2
AssertAssert:  : 
�
�
J__inference_dense_features_layer_call_and_return_conditional_losses_157772
features

features_1u
qmovieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource
identity��>movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard�AmovieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard�TmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup�hmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpk
 movieId_embedding/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
����������
movieId_embedding/ExpandDims
ExpandDimsfeatures)movieId_embedding/ExpandDims/dim:output:0*'
_output_shapes
:���������*
T0{
0movieId_embedding/to_sparse_input/ignore_value/xConst*
valueB :
���������*
dtype0*
_output_shapes
: �
*movieId_embedding/to_sparse_input/NotEqualNotEqual%movieId_embedding/ExpandDims:output:09movieId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:����������
)movieId_embedding/to_sparse_input/indicesWhere.movieId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
(movieId_embedding/to_sparse_input/valuesGatherNd%movieId_embedding/ExpandDims:output:01movieId_embedding/to_sparse_input/indices:index:0*#
_output_shapes
:
���������*
Tindices0	*
Tparams0�
-movieId_embedding/to_sparse_input/dense_shapeShape%movieId_embedding/ExpandDims:output:0*
_output_shapes
:*
out_type0	*
T0�
movieId_embedding/valuesCast1movieId_embedding/to_sparse_input/values:output:0*#
_output_shapes
:
���������*

DstT0	*

SrcT0b
movieId_embedding/num_buckets/xConst*
dtype0*
value
B :�*
_output_shapes
: 
movieId_embedding/num_bucketsCast(movieId_embedding/num_buckets/x:output:0*

SrcT0*
_output_shapes
: *

DstT0	Z
movieId_embedding/zero/xConst*
value	B : *
_output_shapes
: *
dtype0q
movieId_embedding/zeroCast!movieId_embedding/zero/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
3movieId_embedding/assert_less_than_num_buckets/LessLessmovieId_embedding/values:y:0!movieId_embedding/num_buckets:y:0*#
_output_shapes
:
���������*
T0	~
4movieId_embedding/assert_less_than_num_buckets/ConstConst*
dtype0*
_output_shapes
:*
value
B: �
2movieId_embedding/assert_less_than_num_buckets/AllAll7movieId_embedding/assert_less_than_num_buckets/Less:z:0=movieId_embedding/assert_less_than_num_buckets/Const:output:0*
_output_shapes
: �
AmovieId_embedding/assert_less_than_num_buckets/Assert/AssertGuardIf;movieId_embedding/assert_less_than_num_buckets/All:output:0;movieId_embedding/assert_less_than_num_buckets/All:output:0movieId_embedding/values:y:0!movieId_embedding/num_buckets:y:0*
_lower_using_switch_merge(*a
else_branchRRP
NmovieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_157664*
Tin
2
		*
Tout
2
*
Tcond0
*`
then_branchQRO
MmovieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_157663*

output_shapes
: *
_output_shapes
: �
JmovieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard/IdentityIdentityJmovieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: �
8movieId_embedding/assert_greater_or_equal_0/GreaterEqualGreaterEqualmovieId_embedding/values:y:0movieId_embedding/zero:y:0*
T0	*#
_output_shapes
:
���������{
1movieId_embedding/assert_greater_or_equal_0/ConstConst*
_output_shapes
:*
dtype0*
value
B: �
/movieId_embedding/assert_greater_or_equal_0/AllAll<movieId_embedding/assert_greater_or_equal_0/GreaterEqual:z:0:movieId_embedding/assert_greater_or_equal_0/Const:output:0*
_output_shapes
: �
>movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuardIf8movieId_embedding/assert_greater_or_equal_0/All:output:08movieId_embedding/assert_greater_or_equal_0/All:output:0movieId_embedding/values:y:0B^movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard*
_output_shapes
: *]
then_branchNRL
JmovieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_157682*
_lower_using_switch_merge(*
Tin
2
	*
Tcond0
*
Tout
2
*

output_shapes
: *^
else_branchORM
KmovieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_157683�
GmovieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard/IdentityIdentityGmovieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard:output:0*
_output_shapes
: *
T0
�
movieId_embedding/IdentityIdentitymovieId_embedding/values:y:0H^movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard/IdentityK^movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard/Identity*
T0	*#
_output_shapes
:
����������
7movieId_embedding/movieId_embedding_weights/Slice/beginConst*
dtype0*
value
B: *
_output_shapes
:�
6movieId_embedding/movieId_embedding_weights/Slice/sizeConst*
value
B:*
dtype0*
_output_shapes
:�
1movieId_embedding/movieId_embedding_weights/SliceSlice6movieId_embedding/to_sparse_input/dense_shape:output:0@movieId_embedding/movieId_embedding_weights/Slice/begin:output:0?movieId_embedding/movieId_embedding_weights/Slice/size:output:0*
_output_shapes
:*
Index0*
T0	{
1movieId_embedding/movieId_embedding_weights/ConstConst*
_output_shapes
:*
value
B: *
dtype0�
0movieId_embedding/movieId_embedding_weights/ProdProd:movieId_embedding/movieId_embedding_weights/Slice:output:0:movieId_embedding/movieId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: ~
<movieId_embedding/movieId_embedding_weights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: {
9movieId_embedding/movieId_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4movieId_embedding/movieId_embedding_weights/GatherV2GatherV26movieId_embedding/to_sparse_input/dense_shape:output:0EmovieId_embedding/movieId_embedding_weights/GatherV2/indices:output:0BmovieId_embedding/movieId_embedding_weights/GatherV2/axis:output:0*
Tindices0*
Taxis0*
Tparams0	*
_output_shapes
: �
2movieId_embedding/movieId_embedding_weights/Cast/xPack9movieId_embedding/movieId_embedding_weights/Prod:output:0=movieId_embedding/movieId_embedding_weights/GatherV2:output:0*
_output_shapes
:*
N*
T0	�
9movieId_embedding/movieId_embedding_weights/SparseReshape
SparseReshape1movieId_embedding/to_sparse_input/indices:index:06movieId_embedding/to_sparse_input/dense_shape:output:0;movieId_embedding/movieId_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
BmovieId_embedding/movieId_embedding_weights/SparseReshape/IdentityIdentity#movieId_embedding/Identity:output:0*#
_output_shapes
:
���������*
T0	|
:movieId_embedding/movieId_embedding_weights/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	�
8movieId_embedding/movieId_embedding_weights/GreaterEqualGreaterEqualKmovieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0CmovieId_embedding/movieId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:
����������
1movieId_embedding/movieId_embedding_weights/WhereWhere<movieId_embedding/movieId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
9movieId_embedding/movieId_embedding_weights/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
����������
3movieId_embedding/movieId_embedding_weights/ReshapeReshape9movieId_embedding/movieId_embedding_weights/Where:index:0BmovieId_embedding/movieId_embedding_weights/Reshape/shape:output:0*#
_output_shapes
:
���������*
T0	}
;movieId_embedding/movieId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
value	B : *
dtype0�
6movieId_embedding/movieId_embedding_weights/GatherV2_1GatherV2JmovieId_embedding/movieId_embedding_weights/SparseReshape:output_indices:0<movieId_embedding/movieId_embedding_weights/Reshape:output:0DmovieId_embedding/movieId_embedding_weights/GatherV2_1/axis:output:0*
Tparams0	*
Taxis0*
Tindices0	*'
_output_shapes
:���������}
;movieId_embedding/movieId_embedding_weights/GatherV2_2/axisConst*
dtype0*
value	B : *
_output_shapes
: �
6movieId_embedding/movieId_embedding_weights/GatherV2_2GatherV2KmovieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0<movieId_embedding/movieId_embedding_weights/Reshape:output:0DmovieId_embedding/movieId_embedding_weights/GatherV2_2/axis:output:0*
Tparams0	*
Taxis0*#
_output_shapes
:
���������*
Tindices0	�
4movieId_embedding/movieId_embedding_weights/IdentityIdentityHmovieId_embedding/movieId_embedding_weights/SparseReshape:output_shape:0*
_output_shapes
:*
T0	�
EmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	�
SmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows?movieId_embedding/movieId_embedding_weights/GatherV2_1:output:0?movieId_embedding/movieId_embedding_weights/GatherV2_2:output:0=movieId_embedding/movieId_embedding_weights/Identity:output:0NmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:
���������:
���������:
����������
WmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:�
YmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       �
YmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:�
QmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicedmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0`movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0bmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0bmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
T0	*
end_mask*
shrink_axis_mask*
Index0*

begin_mask*#
_output_shapes
:
����������
HmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/CastCastZmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*#
_output_shapes
:
���������*

SrcT0	*

DstT0�
JmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/UniqueUniquecmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:
���������:
����������
hmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpReadVariableOpqmovieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:	�
*
dtype0�
]movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitypmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
�
TmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherqmovieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resourceNmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique:y:0i^movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*'
_output_shapes
:���������
*{
_classq
omloc:@movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*
dtype0*
Tindices0	�
_movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identity]movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*'
_output_shapes
:���������
*
T0*{
_classq
omloc:@movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp�
_movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_2IdentityhmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:���������
�
CmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparseSparseSegmentMeanhmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_2:output:0PmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique:idx:0LmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Cast:y:0*'
_output_shapes
:���������
*
T0�
;movieId_embedding/movieId_embedding_weights/Reshape_1/shapeConst*
valueB"����   *
_output_shapes
:*
dtype0�
5movieId_embedding/movieId_embedding_weights/Reshape_1ReshapeimovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0DmovieId_embedding/movieId_embedding_weights/Reshape_1/shape:output:0*'
_output_shapes
:���������*
T0
�
1movieId_embedding/movieId_embedding_weights/ShapeShapeLmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
_output_shapes
:*
T0�
?movieId_embedding/movieId_embedding_weights/strided_slice/stackConst*
value
B:*
dtype0*
_output_shapes
:�
AmovieId_embedding/movieId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
value
B:*
dtype0�
AmovieId_embedding/movieId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
value
B:�
9movieId_embedding/movieId_embedding_weights/strided_sliceStridedSlice:movieId_embedding/movieId_embedding_weights/Shape:output:0HmovieId_embedding/movieId_embedding_weights/strided_slice/stack:output:0JmovieId_embedding/movieId_embedding_weights/strided_slice/stack_1:output:0JmovieId_embedding/movieId_embedding_weights/strided_slice/stack_2:output:0*
T0*
shrink_axis_mask*
_output_shapes
: *
Index0u
3movieId_embedding/movieId_embedding_weights/stack/0Const*
value	B :*
dtype0*
_output_shapes
: �
1movieId_embedding/movieId_embedding_weights/stackPack<movieId_embedding/movieId_embedding_weights/stack/0:output:0BmovieId_embedding/movieId_embedding_weights/strided_slice:output:0*
T0*
_output_shapes
:*
N�
0movieId_embedding/movieId_embedding_weights/TileTile>movieId_embedding/movieId_embedding_weights/Reshape_1:output:0:movieId_embedding/movieId_embedding_weights/stack:output:0*
T0
*0
_output_shapes
:�������������������
6movieId_embedding/movieId_embedding_weights/zeros_like	ZerosLikeLmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
+movieId_embedding/movieId_embedding_weightsSelect9movieId_embedding/movieId_embedding_weights/Tile:output:0:movieId_embedding/movieId_embedding_weights/zeros_like:y:0LmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*'
_output_shapes
:���������
*
T0�
2movieId_embedding/movieId_embedding_weights/Cast_1Cast6movieId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:�
9movieId_embedding/movieId_embedding_weights/Slice_1/beginConst*
dtype0*
_output_shapes
:*
value
B: �
8movieId_embedding/movieId_embedding_weights/Slice_1/sizeConst*
value
B:*
dtype0*
_output_shapes
:�
3movieId_embedding/movieId_embedding_weights/Slice_1Slice6movieId_embedding/movieId_embedding_weights/Cast_1:y:0BmovieId_embedding/movieId_embedding_weights/Slice_1/begin:output:0AmovieId_embedding/movieId_embedding_weights/Slice_1/size:output:0*
T0*
Index0*
_output_shapes
:�
3movieId_embedding/movieId_embedding_weights/Shape_1Shape4movieId_embedding/movieId_embedding_weights:output:0*
T0*
_output_shapes
:�
9movieId_embedding/movieId_embedding_weights/Slice_2/beginConst*
value
B:*
dtype0*
_output_shapes
:�
8movieId_embedding/movieId_embedding_weights/Slice_2/sizeConst*
dtype0*
_output_shapes
:*
valueB:
����������
3movieId_embedding/movieId_embedding_weights/Slice_2Slice<movieId_embedding/movieId_embedding_weights/Shape_1:output:0BmovieId_embedding/movieId_embedding_weights/Slice_2/begin:output:0AmovieId_embedding/movieId_embedding_weights/Slice_2/size:output:0*
Index0*
_output_shapes
:*
T0y
7movieId_embedding/movieId_embedding_weights/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0�
2movieId_embedding/movieId_embedding_weights/concatConcatV2<movieId_embedding/movieId_embedding_weights/Slice_1:output:0<movieId_embedding/movieId_embedding_weights/Slice_2:output:0@movieId_embedding/movieId_embedding_weights/concat/axis:output:0*
_output_shapes
:*
N*
T0�
5movieId_embedding/movieId_embedding_weights/Reshape_2Reshape4movieId_embedding/movieId_embedding_weights:output:0;movieId_embedding/movieId_embedding_weights/concat:output:0*'
_output_shapes
:���������
*
T0�
movieId_embedding/ShapeShape>movieId_embedding/movieId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:o
%movieId_embedding/strided_slice/stackConst*
_output_shapes
:*
value
B: *
dtype0q
'movieId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
value
B:q
'movieId_embedding/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
value
B:�
movieId_embedding/strided_sliceStridedSlice movieId_embedding/Shape:output:0.movieId_embedding/strided_slice/stack:output:00movieId_embedding/strided_slice/stack_1:output:00movieId_embedding/strided_slice/stack_2:output:0*
T0*
Index0*
shrink_axis_mask*
_output_shapes
: c
!movieId_embedding/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
�
movieId_embedding/Reshape/shapePack(movieId_embedding/strided_slice:output:0*movieId_embedding/Reshape/shape/1:output:0*
T0*
N*
_output_shapes
:�
movieId_embedding/ReshapeReshape>movieId_embedding/movieId_embedding_weights/Reshape_2:output:0(movieId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������
\
concat/concat_dimConst*
valueB :
���������*
dtype0*
_output_shapes
: o

concat/concatIdentity"movieId_embedding/Reshape:output:0*'
_output_shapes
:���������
*
T0�
IdentityIdentityconcat/concat:output:0?^movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuardB^movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuardU^movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupi^movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*5

_input_shapes$
":
���������:
���������:2�
>movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard>movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard2�
AmovieId_embedding/assert_less_than_num_buckets/Assert/AssertGuardAmovieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard2�
hmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOphmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp2�
TmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupTmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup:($
"
_user_specified_name
features: :( $
"
_user_specified_name
features
��
�
L__inference_dense_features_1_layer_call_and_return_conditional_losses_157916
features

features_1s
ouserid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource
identity��=userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard�@userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard�RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup�fuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpj
userId_embedding/ExpandDims/dimConst*
dtype0*
valueB :
���������*
_output_shapes
: �
userId_embedding/ExpandDims
ExpandDims
features_1(userId_embedding/ExpandDims/dim:output:0*'
_output_shapes
:���������*
T0z
/userId_embedding/to_sparse_input/ignore_value/xConst*
valueB :
���������*
dtype0*
_output_shapes
: �
)userId_embedding/to_sparse_input/NotEqualNotEqual$userId_embedding/ExpandDims:output:08userId_embedding/to_sparse_input/ignore_value/x:output:0*'
_output_shapes
:���������*
T0�
(userId_embedding/to_sparse_input/indicesWhere-userId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
'userId_embedding/to_sparse_input/valuesGatherNd$userId_embedding/ExpandDims:output:00userId_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:
����������
,userId_embedding/to_sparse_input/dense_shapeShape$userId_embedding/ExpandDims:output:0*
T0*
out_type0	*
_output_shapes
:�
userId_embedding/valuesCast0userId_embedding/to_sparse_input/values:output:0*

DstT0	*#
_output_shapes
:
���������*

SrcT0b
userId_embedding/num_buckets/xConst*
dtype0*
valueB	 :��*
_output_shapes
: }
userId_embedding/num_bucketsCast'userId_embedding/num_buckets/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: Y
userId_embedding/zero/xConst*
_output_shapes
: *
dtype0*
value	B : o
userId_embedding/zeroCast userId_embedding/zero/x:output:0*
_output_shapes
: *

DstT0	*

SrcT0�
2userId_embedding/assert_less_than_num_buckets/LessLessuserId_embedding/values:y:0 userId_embedding/num_buckets:y:0*#
_output_shapes
:
���������*
T0	}
3userId_embedding/assert_less_than_num_buckets/ConstConst*
dtype0*
value
B: *
_output_shapes
:�
1userId_embedding/assert_less_than_num_buckets/AllAll6userId_embedding/assert_less_than_num_buckets/Less:z:0<userId_embedding/assert_less_than_num_buckets/Const:output:0*
_output_shapes
: �
@userId_embedding/assert_less_than_num_buckets/Assert/AssertGuardIf:userId_embedding/assert_less_than_num_buckets/All:output:0:userId_embedding/assert_less_than_num_buckets/All:output:0userId_embedding/values:y:0 userId_embedding/num_buckets:y:0*
Tin
2
		*_
then_branchPRN
LuserId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_157807*

output_shapes
: *
_lower_using_switch_merge(*
_output_shapes
: *
Tcond0
*`
else_branchQRO
MuserId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_157808*
Tout
2
�
IuserId_embedding/assert_less_than_num_buckets/Assert/AssertGuard/IdentityIdentityIuserId_embedding/assert_less_than_num_buckets/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: �
7userId_embedding/assert_greater_or_equal_0/GreaterEqualGreaterEqualuserId_embedding/values:y:0userId_embedding/zero:y:0*
T0	*#
_output_shapes
:
���������z
0userId_embedding/assert_greater_or_equal_0/ConstConst*
_output_shapes
:*
dtype0*
value
B: �
.userId_embedding/assert_greater_or_equal_0/AllAll;userId_embedding/assert_greater_or_equal_0/GreaterEqual:z:09userId_embedding/assert_greater_or_equal_0/Const:output:0*
_output_shapes
: �
=userId_embedding/assert_greater_or_equal_0/Assert/AssertGuardIf7userId_embedding/assert_greater_or_equal_0/All:output:07userId_embedding/assert_greater_or_equal_0/All:output:0userId_embedding/values:y:0A^userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard*

output_shapes
: *
Tcond0
*
Tin
2
	*
Tout
2
*\
then_branchMRK
IuserId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_157826*
_lower_using_switch_merge(*]
else_branchNRL
JuserId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_157827*
_output_shapes
: �
FuserId_embedding/assert_greater_or_equal_0/Assert/AssertGuard/IdentityIdentityFuserId_embedding/assert_greater_or_equal_0/Assert/AssertGuard:output:0*
_output_shapes
: *
T0
�
userId_embedding/IdentityIdentityuserId_embedding/values:y:0G^userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard/IdentityJ^userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard/Identity*
T0	*#
_output_shapes
:
���������
5userId_embedding/userId_embedding_weights/Slice/beginConst*
dtype0*
_output_shapes
:*
value
B: ~
4userId_embedding/userId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
value
B:*
dtype0�
/userId_embedding/userId_embedding_weights/SliceSlice5userId_embedding/to_sparse_input/dense_shape:output:0>userId_embedding/userId_embedding_weights/Slice/begin:output:0=userId_embedding/userId_embedding_weights/Slice/size:output:0*
T0	*
Index0*
_output_shapes
:y
/userId_embedding/userId_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
value
B: �
.userId_embedding/userId_embedding_weights/ProdProd8userId_embedding/userId_embedding_weights/Slice:output:08userId_embedding/userId_embedding_weights/Const:output:0*
_output_shapes
: *
T0	|
:userId_embedding/userId_embedding_weights/GatherV2/indicesConst*
value	B :*
_output_shapes
: *
dtype0y
7userId_embedding/userId_embedding_weights/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: �
2userId_embedding/userId_embedding_weights/GatherV2GatherV25userId_embedding/to_sparse_input/dense_shape:output:0CuserId_embedding/userId_embedding_weights/GatherV2/indices:output:0@userId_embedding/userId_embedding_weights/GatherV2/axis:output:0*
Tindices0*
_output_shapes
: *
Tparams0	*
Taxis0�
0userId_embedding/userId_embedding_weights/Cast/xPack7userId_embedding/userId_embedding_weights/Prod:output:0;userId_embedding/userId_embedding_weights/GatherV2:output:0*
_output_shapes
:*
N*
T0	�
7userId_embedding/userId_embedding_weights/SparseReshape
SparseReshape0userId_embedding/to_sparse_input/indices:index:05userId_embedding/to_sparse_input/dense_shape:output:09userId_embedding/userId_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
@userId_embedding/userId_embedding_weights/SparseReshape/IdentityIdentity"userId_embedding/Identity:output:0*#
_output_shapes
:
���������*
T0	z
8userId_embedding/userId_embedding_weights/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	�
6userId_embedding/userId_embedding_weights/GreaterEqualGreaterEqualIuserId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0AuserId_embedding/userId_embedding_weights/GreaterEqual/y:output:0*#
_output_shapes
:
���������*
T0	�
/userId_embedding/userId_embedding_weights/WhereWhere:userId_embedding/userId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
7userId_embedding/userId_embedding_weights/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
����������
1userId_embedding/userId_embedding_weights/ReshapeReshape7userId_embedding/userId_embedding_weights/Where:index:0@userId_embedding/userId_embedding_weights/Reshape/shape:output:0*#
_output_shapes
:
���������*
T0	{
9userId_embedding/userId_embedding_weights/GatherV2_1/axisConst*
value	B : *
_output_shapes
: *
dtype0�
4userId_embedding/userId_embedding_weights/GatherV2_1GatherV2HuserId_embedding/userId_embedding_weights/SparseReshape:output_indices:0:userId_embedding/userId_embedding_weights/Reshape:output:0BuserId_embedding/userId_embedding_weights/GatherV2_1/axis:output:0*
Tindices0	*'
_output_shapes
:���������*
Tparams0	*
Taxis0{
9userId_embedding/userId_embedding_weights/GatherV2_2/axisConst*
dtype0*
value	B : *
_output_shapes
: �
4userId_embedding/userId_embedding_weights/GatherV2_2GatherV2IuserId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0:userId_embedding/userId_embedding_weights/Reshape:output:0BuserId_embedding/userId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tparams0	*
Tindices0	*#
_output_shapes
:
����������
2userId_embedding/userId_embedding_weights/IdentityIdentityFuserId_embedding/userId_embedding_weights/SparseReshape:output_shape:0*
_output_shapes
:*
T0	�
CuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
QuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows=userId_embedding/userId_embedding_weights/GatherV2_1:output:0=userId_embedding/userId_embedding_weights/GatherV2_2:output:0;userId_embedding/userId_embedding_weights/Identity:output:0LuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/Const:output:0*T
_output_shapesB
@:���������:
���������:
���������:
���������*
T0	�
UuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0�
WuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
WuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:�
OuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicebuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0^userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0`userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0`userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*

begin_mask*
shrink_axis_mask*
T0	*
end_mask*
Index0*#
_output_shapes
:
����������
FuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/CastCastXuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*

DstT0*#
_output_shapes
:
���������*

SrcT0	�
HuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/UniqueUniqueauserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:
���������:
����������
fuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpReadVariableOpouserid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0* 
_output_shapes
:
��
*
dtype0�
[userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitynuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp:value:0* 
_output_shapes
:
��
*
T0�
RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherouserid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resourceLuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:y:0g^userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*'
_output_shapes
:���������
*
dtype0*y
_classo
mkloc:@userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*
Tindices0	�
]userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identity[userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*y
_classo
mkloc:@userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*'
_output_shapes
:���������
�
]userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_2IdentityfuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:���������
�
AuserId_embedding/userId_embedding_weights/embedding_lookup_sparseSparseSegmentMeanfuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_2:output:0NuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:idx:0JuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/Cast:y:0*'
_output_shapes
:���������
*
T0�
9userId_embedding/userId_embedding_weights/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"����   �
3userId_embedding/userId_embedding_weights/Reshape_1ReshapeguserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0BuserId_embedding/userId_embedding_weights/Reshape_1/shape:output:0*'
_output_shapes
:���������*
T0
�
/userId_embedding/userId_embedding_weights/ShapeShapeJuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
_output_shapes
:*
T0�
=userId_embedding/userId_embedding_weights/strided_slice/stackConst*
dtype0*
value
B:*
_output_shapes
:�
?userId_embedding/userId_embedding_weights/strided_slice/stack_1Const*
value
B:*
_output_shapes
:*
dtype0�
?userId_embedding/userId_embedding_weights/strided_slice/stack_2Const*
value
B:*
dtype0*
_output_shapes
:�
7userId_embedding/userId_embedding_weights/strided_sliceStridedSlice8userId_embedding/userId_embedding_weights/Shape:output:0FuserId_embedding/userId_embedding_weights/strided_slice/stack:output:0HuserId_embedding/userId_embedding_weights/strided_slice/stack_1:output:0HuserId_embedding/userId_embedding_weights/strided_slice/stack_2:output:0*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0s
1userId_embedding/userId_embedding_weights/stack/0Const*
_output_shapes
: *
value	B :*
dtype0�
/userId_embedding/userId_embedding_weights/stackPack:userId_embedding/userId_embedding_weights/stack/0:output:0@userId_embedding/userId_embedding_weights/strided_slice:output:0*
T0*
N*
_output_shapes
:�
.userId_embedding/userId_embedding_weights/TileTile<userId_embedding/userId_embedding_weights/Reshape_1:output:08userId_embedding/userId_embedding_weights/stack:output:0*
T0
*0
_output_shapes
:�������������������
4userId_embedding/userId_embedding_weights/zeros_like	ZerosLikeJuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
)userId_embedding/userId_embedding_weightsSelect7userId_embedding/userId_embedding_weights/Tile:output:08userId_embedding/userId_embedding_weights/zeros_like:y:0JuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
0userId_embedding/userId_embedding_weights/Cast_1Cast5userId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:�
7userId_embedding/userId_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
value
B: �
6userId_embedding/userId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
value
B:*
dtype0�
1userId_embedding/userId_embedding_weights/Slice_1Slice4userId_embedding/userId_embedding_weights/Cast_1:y:0@userId_embedding/userId_embedding_weights/Slice_1/begin:output:0?userId_embedding/userId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
1userId_embedding/userId_embedding_weights/Shape_1Shape2userId_embedding/userId_embedding_weights:output:0*
T0*
_output_shapes
:�
7userId_embedding/userId_embedding_weights/Slice_2/beginConst*
dtype0*
_output_shapes
:*
value
B:�
6userId_embedding/userId_embedding_weights/Slice_2/sizeConst*
valueB:
���������*
_output_shapes
:*
dtype0�
1userId_embedding/userId_embedding_weights/Slice_2Slice:userId_embedding/userId_embedding_weights/Shape_1:output:0@userId_embedding/userId_embedding_weights/Slice_2/begin:output:0?userId_embedding/userId_embedding_weights/Slice_2/size:output:0*
_output_shapes
:*
T0*
Index0w
5userId_embedding/userId_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
0userId_embedding/userId_embedding_weights/concatConcatV2:userId_embedding/userId_embedding_weights/Slice_1:output:0:userId_embedding/userId_embedding_weights/Slice_2:output:0>userId_embedding/userId_embedding_weights/concat/axis:output:0*
N*
_output_shapes
:*
T0�
3userId_embedding/userId_embedding_weights/Reshape_2Reshape2userId_embedding/userId_embedding_weights:output:09userId_embedding/userId_embedding_weights/concat:output:0*'
_output_shapes
:���������
*
T0�
userId_embedding/ShapeShape<userId_embedding/userId_embedding_weights/Reshape_2:output:0*
_output_shapes
:*
T0n
$userId_embedding/strided_slice/stackConst*
value
B: *
_output_shapes
:*
dtype0p
&userId_embedding/strided_slice/stack_1Const*
value
B:*
_output_shapes
:*
dtype0p
&userId_embedding/strided_slice/stack_2Const*
dtype0*
value
B:*
_output_shapes
:�
userId_embedding/strided_sliceStridedSliceuserId_embedding/Shape:output:0-userId_embedding/strided_slice/stack:output:0/userId_embedding/strided_slice/stack_1:output:0/userId_embedding/strided_slice/stack_2:output:0*
T0*
Index0*
_output_shapes
: *
shrink_axis_maskb
 userId_embedding/Reshape/shape/1Const*
value	B :
*
dtype0*
_output_shapes
: �
userId_embedding/Reshape/shapePack'userId_embedding/strided_slice:output:0)userId_embedding/Reshape/shape/1:output:0*
N*
_output_shapes
:*
T0�
userId_embedding/ReshapeReshape<userId_embedding/userId_embedding_weights/Reshape_2:output:0'userId_embedding/Reshape/shape:output:0*'
_output_shapes
:���������
*
T0\
concat/concat_dimConst*
dtype0*
valueB :
���������*
_output_shapes
: n

concat/concatIdentity!userId_embedding/Reshape:output:0*'
_output_shapes
:���������
*
T0�
IdentityIdentityconcat/concat:output:0>^userId_embedding/assert_greater_or_equal_0/Assert/AssertGuardA^userId_embedding/assert_less_than_num_buckets/Assert/AssertGuardS^userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupg^userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*'
_output_shapes
:���������
*
T0"
identityIdentity:output:0*5

_input_shapes$
":
���������:
���������:2�
@userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard@userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard2~
=userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard=userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard2�
fuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpfuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp2�
RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupRuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:( $
"
_user_specified_name
features:($
"
_user_specified_name
features: 
�
q
G__inference_concatenate_layer_call_and_return_conditional_losses_157939

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :u
concatConcatV2inputsinputs_1concat/axis:output:0*'
_output_shapes
:���������*
N*
T0W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*9

_input_shapes(
&:���������
:���������
:& "
 
_user_specified_nameinputs:&"
 
_user_specified_nameinputs
�
X
,__inference_concatenate_layer_call_fn_159011
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*-
_gradient_op_typePartitionedCall-157946**
config_proto

GPU 

CPU2J 8*
Tout
2*'
_output_shapes
:���������*P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_157939`
IdentityIdentityPartitionedCall:output:0*'
_output_shapes
:���������*
T0"
identityIdentity:output:0*9

_input_shapes(
&:���������
:���������
:( $
"
_user_specified_name
inputs/0:($
"
_user_specified_name
inputs/1
�
�
\dense_features_movieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_158445N
Jidentity_dense_features_movieid_embedding_assert_less_than_num_buckets_all

placeholder	

placeholder_1	

identity_1
"
NoOpNoOp*
_output_shapes
 �
IdentityIdentityJidentity_dense_features_movieid_embedding_assert_less_than_num_buckets_all^NoOp*
_output_shapes
: *
T0
J

Identity_1IdentityIdentity:output:0*
_output_shapes
: *
T0
"!

identity_1Identity_1:output:0*&

_input_shapes
: :
���������: :  : : 
�

�
&__inference_model_layer_call_fn_158094
movieid

userid"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8"
statefulpartitionedcall_args_9
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallmovieiduseridstatefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8statefulpartitionedcall_args_9*'
_output_shapes
:���������*
Tout
2*J
fERC
A__inference_model_layer_call_and_return_conditional_losses_158082**
config_proto

GPU 

CPU2J 8*-
_gradient_op_typePartitionedCall-158083*
Tin
2
�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*'
_output_shapes
:���������*
T0"
identityIdentity:output:0*Q

_input_shapes@
>:
���������:
���������::::::::22
StatefulPartitionedCallStatefulPartitionedCall:' #
!
_user_specified_name	movieId:&"
 
_user_specified_nameuserId: : : : : : : :	 
�
�
Ydense_features_movieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_158464K
Gidentity_dense_features_movieid_embedding_assert_greater_or_equal_0_all

placeholder	

identity_1
"
NoOpNoOp*
_output_shapes
 �
IdentityIdentityGidentity_dense_features_movieid_embedding_assert_greater_or_equal_0_all^NoOp*
T0
*
_output_shapes
: J

Identity_1IdentityIdentity:output:0*
T0
*
_output_shapes
: "!

identity_1Identity_1:output:0*$

_input_shapes
: :
���������:  : 
�
�
]dense_features_1_userId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_158294O
Kidentity_dense_features_1_userid_embedding_assert_less_than_num_buckets_all

placeholder	

placeholder_1	

identity_1
"
NoOpNoOp*
_output_shapes
 �
IdentityIdentityKidentity_dense_features_1_userid_embedding_assert_less_than_num_buckets_all^NoOp*
T0
*
_output_shapes
: J

Identity_1IdentityIdentity:output:0*
_output_shapes
: *
T0
"!

identity_1Identity_1:output:0*&

_input_shapes
: :
���������: :  : : 
�
�
[dense_features_1_userId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_158588J
Fassert_dense_features_1_userid_embedding_assert_greater_or_equal_0_all
3
/assert_dense_features_1_userid_embedding_values	

identity_1
��Assert�
AssertAssertFassert_dense_features_1_userid_embedding_assert_greater_or_equal_0_all/assert_dense_features_1_userid_embedding_values*

T
2	*
_output_shapes
 �
IdentityIdentityFassert_dense_features_1_userid_embedding_assert_greater_or_equal_0_all^Assert*
_output_shapes
: *
T0
S

Identity_1IdentityIdentity:output:0^Assert*
_output_shapes
: *
T0
"!

identity_1Identity_1:output:0*$

_input_shapes
: :
���������2
AssertAssert:  : 
�	
�
C__inference_dense_1_layer_call_and_return_conditional_losses_157992

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes

:

i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*'
_output_shapes
:���������
*
T0P
ReluReluBiasAdd:output:0*'
_output_shapes
:���������
*
T0�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*'
_output_shapes
:���������
*
T0"
identityIdentity:output:0*.

_input_shapes
:���������
::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp:& "
 
_user_specified_nameinputs: : 
�
�
&__inference_model_layer_call_fn_158728
inputs_0
inputs_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8"
statefulpartitionedcall_args_9
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8statefulpartitionedcall_args_9*-
_gradient_op_typePartitionedCall-158119*J
fERC
A__inference_model_layer_call_and_return_conditional_losses_158118*'
_output_shapes
:���������*
Tin
2
*
Tout
2**
config_proto

GPU 

CPU2J 8�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*'
_output_shapes
:���������*
T0"
identityIdentity:output:0*Q

_input_shapes@
>:
���������:
���������::::::::22
StatefulPartitionedCallStatefulPartitionedCall:( $
"
_user_specified_name
inputs/0:($
"
_user_specified_name
inputs/1: : : : : : : :	 
�
�
`model_dense_features_movieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_157402O
Kassert_model_dense_features_movieid_embedding_assert_greater_or_equal_0_all
8
4assert_model_dense_features_movieid_embedding_values	

identity_1
��Assert�
AssertAssertKassert_model_dense_features_movieid_embedding_assert_greater_or_equal_0_all4assert_model_dense_features_movieid_embedding_values*
_output_shapes
 *

T
2	�
IdentityIdentityKassert_model_dense_features_movieid_embedding_assert_greater_or_equal_0_all^Assert*
_output_shapes
: *
T0
S

Identity_1IdentityIdentity:output:0^Assert*
_output_shapes
: *
T0
"!

identity_1Identity_1:output:0*$

_input_shapes
: :
���������2
AssertAssert:  : 
�
�
KmovieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_157683:
6assert_movieid_embedding_assert_greater_or_equal_0_all
#
assert_movieid_embedding_values	

identity_1
��Assert�
AssertAssert6assert_movieid_embedding_assert_greater_or_equal_0_allassert_movieid_embedding_values*
_output_shapes
 *

T
2	v
IdentityIdentity6assert_movieid_embedding_assert_greater_or_equal_0_all^Assert*
T0
*
_output_shapes
: S

Identity_1IdentityIdentity:output:0^Assert*
T0
*
_output_shapes
: "!

identity_1Identity_1:output:0*$

_input_shapes
: :
���������2
AssertAssert:  : 
�
�
IuserId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_158901;
7identity_userid_embedding_assert_greater_or_equal_0_all

placeholder	

identity_1
"
NoOpNoOp*
_output_shapes
 u
IdentityIdentity7identity_userid_embedding_assert_greater_or_equal_0_all^NoOp*
_output_shapes
: *
T0
J

Identity_1IdentityIdentity:output:0*
_output_shapes
: *
T0
"!

identity_1Identity_1:output:0*$

_input_shapes
: :
���������: :  
�
�
MuserId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_157808<
8assert_userid_embedding_assert_less_than_num_buckets_all
"
assert_userid_embedding_values	'
#assert_userid_embedding_num_buckets	

identity_1
��Assert�
AssertAssert8assert_userid_embedding_assert_less_than_num_buckets_allassert_userid_embedding_values#assert_userid_embedding_num_buckets*
T
2		*
_output_shapes
 x
IdentityIdentity8assert_userid_embedding_assert_less_than_num_buckets_all^Assert*
_output_shapes
: *
T0
S

Identity_1IdentityIdentity:output:0^Assert*
_output_shapes
: *
T0
"!

identity_1Identity_1:output:0*&

_input_shapes
: :
���������: 2
AssertAssert:  : : 
�
�
Zdense_features_movieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_158465I
Eassert_dense_features_movieid_embedding_assert_greater_or_equal_0_all
2
.assert_dense_features_movieid_embedding_values	

identity_1
��Assert�
AssertAssertEassert_dense_features_movieid_embedding_assert_greater_or_equal_0_all.assert_dense_features_movieid_embedding_values*

T
2	*
_output_shapes
 �
IdentityIdentityEassert_dense_features_movieid_embedding_assert_greater_or_equal_0_all^Assert*
T0
*
_output_shapes
: S

Identity_1IdentityIdentity:output:0^Assert*
_output_shapes
: *
T0
"!

identity_1Identity_1:output:0*$

_input_shapes
: :
���������2
AssertAssert:  : 
�
�
LuserId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_157807>
:identity_userid_embedding_assert_less_than_num_buckets_all

placeholder	

placeholder_1	

identity_1
"
NoOpNoOp*
_output_shapes
 x
IdentityIdentity:identity_userid_embedding_assert_less_than_num_buckets_all^NoOp*
T0
*
_output_shapes
: J

Identity_1IdentityIdentity:output:0*
_output_shapes
: *
T0
"!

identity_1Identity_1:output:0*&

_input_shapes
: :
���������: :  : : 
��
�
L__inference_dense_features_1_layer_call_and_return_conditional_losses_158991
features_movieid
features_userids
ouserid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource
identity��=userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard�@userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard�RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup�fuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpj
userId_embedding/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0�
userId_embedding/ExpandDims
ExpandDimsfeatures_userid(userId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:���������z
/userId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
valueB :
���������*
dtype0�
)userId_embedding/to_sparse_input/NotEqualNotEqual$userId_embedding/ExpandDims:output:08userId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:����������
(userId_embedding/to_sparse_input/indicesWhere-userId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
'userId_embedding/to_sparse_input/valuesGatherNd$userId_embedding/ExpandDims:output:00userId_embedding/to_sparse_input/indices:index:0*
Tparams0*
Tindices0	*#
_output_shapes
:
����������
,userId_embedding/to_sparse_input/dense_shapeShape$userId_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	�
userId_embedding/valuesCast0userId_embedding/to_sparse_input/values:output:0*

DstT0	*

SrcT0*#
_output_shapes
:
���������b
userId_embedding/num_buckets/xConst*
dtype0*
_output_shapes
: *
valueB	 :��}
userId_embedding/num_bucketsCast'userId_embedding/num_buckets/x:output:0*

SrcT0*

DstT0	*
_output_shapes
: Y
userId_embedding/zero/xConst*
dtype0*
_output_shapes
: *
value	B : o
userId_embedding/zeroCast userId_embedding/zero/x:output:0*

SrcT0*

DstT0	*
_output_shapes
: �
2userId_embedding/assert_less_than_num_buckets/LessLessuserId_embedding/values:y:0 userId_embedding/num_buckets:y:0*#
_output_shapes
:
���������*
T0	}
3userId_embedding/assert_less_than_num_buckets/ConstConst*
value
B: *
dtype0*
_output_shapes
:�
1userId_embedding/assert_less_than_num_buckets/AllAll6userId_embedding/assert_less_than_num_buckets/Less:z:0<userId_embedding/assert_less_than_num_buckets/Const:output:0*
_output_shapes
: �
@userId_embedding/assert_less_than_num_buckets/Assert/AssertGuardIf:userId_embedding/assert_less_than_num_buckets/All:output:0:userId_embedding/assert_less_than_num_buckets/All:output:0userId_embedding/values:y:0 userId_embedding/num_buckets:y:0*_
then_branchPRN
LuserId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_158882*
Tin
2
		*
Tout
2
*`
else_branchQRO
MuserId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_158883*
Tcond0
*
_output_shapes
: *

output_shapes
: *
_lower_using_switch_merge(�
IuserId_embedding/assert_less_than_num_buckets/Assert/AssertGuard/IdentityIdentityIuserId_embedding/assert_less_than_num_buckets/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: �
7userId_embedding/assert_greater_or_equal_0/GreaterEqualGreaterEqualuserId_embedding/values:y:0userId_embedding/zero:y:0*
T0	*#
_output_shapes
:
���������z
0userId_embedding/assert_greater_or_equal_0/ConstConst*
_output_shapes
:*
dtype0*
value
B: �
.userId_embedding/assert_greater_or_equal_0/AllAll;userId_embedding/assert_greater_or_equal_0/GreaterEqual:z:09userId_embedding/assert_greater_or_equal_0/Const:output:0*
_output_shapes
: �
=userId_embedding/assert_greater_or_equal_0/Assert/AssertGuardIf7userId_embedding/assert_greater_or_equal_0/All:output:07userId_embedding/assert_greater_or_equal_0/All:output:0userId_embedding/values:y:0A^userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard*
Tout
2
*]
else_branchNRL
JuserId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_158902*

output_shapes
: *
_output_shapes
: *
Tin
2
	*\
then_branchMRK
IuserId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_158901*
Tcond0
*
_lower_using_switch_merge(�
FuserId_embedding/assert_greater_or_equal_0/Assert/AssertGuard/IdentityIdentityFuserId_embedding/assert_greater_or_equal_0/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: �
userId_embedding/IdentityIdentityuserId_embedding/values:y:0G^userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard/IdentityJ^userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard/Identity*#
_output_shapes
:
���������*
T0	
5userId_embedding/userId_embedding_weights/Slice/beginConst*
dtype0*
_output_shapes
:*
value
B: ~
4userId_embedding/userId_embedding_weights/Slice/sizeConst*
value
B:*
_output_shapes
:*
dtype0�
/userId_embedding/userId_embedding_weights/SliceSlice5userId_embedding/to_sparse_input/dense_shape:output:0>userId_embedding/userId_embedding_weights/Slice/begin:output:0=userId_embedding/userId_embedding_weights/Slice/size:output:0*
Index0*
_output_shapes
:*
T0	y
/userId_embedding/userId_embedding_weights/ConstConst*
_output_shapes
:*
value
B: *
dtype0�
.userId_embedding/userId_embedding_weights/ProdProd8userId_embedding/userId_embedding_weights/Slice:output:08userId_embedding/userId_embedding_weights/Const:output:0*
_output_shapes
: *
T0	|
:userId_embedding/userId_embedding_weights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: y
7userId_embedding/userId_embedding_weights/GatherV2/axisConst*
dtype0*
value	B : *
_output_shapes
: �
2userId_embedding/userId_embedding_weights/GatherV2GatherV25userId_embedding/to_sparse_input/dense_shape:output:0CuserId_embedding/userId_embedding_weights/GatherV2/indices:output:0@userId_embedding/userId_embedding_weights/GatherV2/axis:output:0*
_output_shapes
: *
Tindices0*
Taxis0*
Tparams0	�
0userId_embedding/userId_embedding_weights/Cast/xPack7userId_embedding/userId_embedding_weights/Prod:output:0;userId_embedding/userId_embedding_weights/GatherV2:output:0*
T0	*
N*
_output_shapes
:�
7userId_embedding/userId_embedding_weights/SparseReshape
SparseReshape0userId_embedding/to_sparse_input/indices:index:05userId_embedding/to_sparse_input/dense_shape:output:09userId_embedding/userId_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
@userId_embedding/userId_embedding_weights/SparseReshape/IdentityIdentity"userId_embedding/Identity:output:0*#
_output_shapes
:
���������*
T0	z
8userId_embedding/userId_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
6userId_embedding/userId_embedding_weights/GreaterEqualGreaterEqualIuserId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0AuserId_embedding/userId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:
����������
/userId_embedding/userId_embedding_weights/WhereWhere:userId_embedding/userId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
7userId_embedding/userId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
1userId_embedding/userId_embedding_weights/ReshapeReshape7userId_embedding/userId_embedding_weights/Where:index:0@userId_embedding/userId_embedding_weights/Reshape/shape:output:0*#
_output_shapes
:
���������*
T0	{
9userId_embedding/userId_embedding_weights/GatherV2_1/axisConst*
dtype0*
value	B : *
_output_shapes
: �
4userId_embedding/userId_embedding_weights/GatherV2_1GatherV2HuserId_embedding/userId_embedding_weights/SparseReshape:output_indices:0:userId_embedding/userId_embedding_weights/Reshape:output:0BuserId_embedding/userId_embedding_weights/GatherV2_1/axis:output:0*'
_output_shapes
:���������*
Tindices0	*
Tparams0	*
Taxis0{
9userId_embedding/userId_embedding_weights/GatherV2_2/axisConst*
dtype0*
value	B : *
_output_shapes
: �
4userId_embedding/userId_embedding_weights/GatherV2_2GatherV2IuserId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0:userId_embedding/userId_embedding_weights/Reshape:output:0BuserId_embedding/userId_embedding_weights/GatherV2_2/axis:output:0*
Tindices0	*
Taxis0*
Tparams0	*#
_output_shapes
:
����������
2userId_embedding/userId_embedding_weights/IdentityIdentityFuserId_embedding/userId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
CuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	�
QuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows=userId_embedding/userId_embedding_weights/GatherV2_1:output:0=userId_embedding/userId_embedding_weights/GatherV2_2:output:0;userId_embedding/userId_embedding_weights/Identity:output:0LuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/Const:output:0*T
_output_shapesB
@:���������:
���������:
���������:
���������*
T0	�
UuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0�
WuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
WuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0�
OuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicebuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0^userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0`userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0`userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
shrink_axis_mask*
end_mask*
Index0*

begin_mask*
T0	*#
_output_shapes
:
����������
FuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/CastCastXuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*

DstT0*#
_output_shapes
:
���������*

SrcT0	�
HuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/UniqueUniqueauserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:
���������:
����������
fuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpReadVariableOpouserid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0* 
_output_shapes
:
��
�
[userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitynuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp:value:0* 
_output_shapes
:
��
*
T0�
RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherouserid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resourceLuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:y:0g^userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*y
_classo
mkloc:@userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*
Tindices0	*
dtype0*'
_output_shapes
:���������
�
]userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identity[userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*y
_classo
mkloc:@userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*'
_output_shapes
:���������
*
T0�
]userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_2IdentityfuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:���������
�
AuserId_embedding/userId_embedding_weights/embedding_lookup_sparseSparseSegmentMeanfuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_2:output:0NuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:idx:0JuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/Cast:y:0*
T0*'
_output_shapes
:���������
�
9userId_embedding/userId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
valueB"����   *
dtype0�
3userId_embedding/userId_embedding_weights/Reshape_1ReshapeguserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0BuserId_embedding/userId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
/userId_embedding/userId_embedding_weights/ShapeShapeJuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:�
=userId_embedding/userId_embedding_weights/strided_slice/stackConst*
value
B:*
dtype0*
_output_shapes
:�
?userId_embedding/userId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
value
B:*
dtype0�
?userId_embedding/userId_embedding_weights/strided_slice/stack_2Const*
value
B:*
_output_shapes
:*
dtype0�
7userId_embedding/userId_embedding_weights/strided_sliceStridedSlice8userId_embedding/userId_embedding_weights/Shape:output:0FuserId_embedding/userId_embedding_weights/strided_slice/stack:output:0HuserId_embedding/userId_embedding_weights/strided_slice/stack_1:output:0HuserId_embedding/userId_embedding_weights/strided_slice/stack_2:output:0*
T0*
_output_shapes
: *
Index0*
shrink_axis_masks
1userId_embedding/userId_embedding_weights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: �
/userId_embedding/userId_embedding_weights/stackPack:userId_embedding/userId_embedding_weights/stack/0:output:0@userId_embedding/userId_embedding_weights/strided_slice:output:0*
_output_shapes
:*
T0*
N�
.userId_embedding/userId_embedding_weights/TileTile<userId_embedding/userId_embedding_weights/Reshape_1:output:08userId_embedding/userId_embedding_weights/stack:output:0*
T0
*0
_output_shapes
:�������������������
4userId_embedding/userId_embedding_weights/zeros_like	ZerosLikeJuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*'
_output_shapes
:���������
*
T0�
)userId_embedding/userId_embedding_weightsSelect7userId_embedding/userId_embedding_weights/Tile:output:08userId_embedding/userId_embedding_weights/zeros_like:y:0JuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*'
_output_shapes
:���������
*
T0�
0userId_embedding/userId_embedding_weights/Cast_1Cast5userId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:�
7userId_embedding/userId_embedding_weights/Slice_1/beginConst*
value
B: *
dtype0*
_output_shapes
:�
6userId_embedding/userId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
value
B:*
dtype0�
1userId_embedding/userId_embedding_weights/Slice_1Slice4userId_embedding/userId_embedding_weights/Cast_1:y:0@userId_embedding/userId_embedding_weights/Slice_1/begin:output:0?userId_embedding/userId_embedding_weights/Slice_1/size:output:0*
_output_shapes
:*
T0*
Index0�
1userId_embedding/userId_embedding_weights/Shape_1Shape2userId_embedding/userId_embedding_weights:output:0*
_output_shapes
:*
T0�
7userId_embedding/userId_embedding_weights/Slice_2/beginConst*
value
B:*
_output_shapes
:*
dtype0�
6userId_embedding/userId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
valueB:
���������*
dtype0�
1userId_embedding/userId_embedding_weights/Slice_2Slice:userId_embedding/userId_embedding_weights/Shape_1:output:0@userId_embedding/userId_embedding_weights/Slice_2/begin:output:0?userId_embedding/userId_embedding_weights/Slice_2/size:output:0*
T0*
_output_shapes
:*
Index0w
5userId_embedding/userId_embedding_weights/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: �
0userId_embedding/userId_embedding_weights/concatConcatV2:userId_embedding/userId_embedding_weights/Slice_1:output:0:userId_embedding/userId_embedding_weights/Slice_2:output:0>userId_embedding/userId_embedding_weights/concat/axis:output:0*
_output_shapes
:*
T0*
N�
3userId_embedding/userId_embedding_weights/Reshape_2Reshape2userId_embedding/userId_embedding_weights:output:09userId_embedding/userId_embedding_weights/concat:output:0*'
_output_shapes
:���������
*
T0�
userId_embedding/ShapeShape<userId_embedding/userId_embedding_weights/Reshape_2:output:0*
_output_shapes
:*
T0n
$userId_embedding/strided_slice/stackConst*
value
B: *
_output_shapes
:*
dtype0p
&userId_embedding/strided_slice/stack_1Const*
value
B:*
dtype0*
_output_shapes
:p
&userId_embedding/strided_slice/stack_2Const*
dtype0*
value
B:*
_output_shapes
:�
userId_embedding/strided_sliceStridedSliceuserId_embedding/Shape:output:0-userId_embedding/strided_slice/stack:output:0/userId_embedding/strided_slice/stack_1:output:0/userId_embedding/strided_slice/stack_2:output:0*
T0*
shrink_axis_mask*
_output_shapes
: *
Index0b
 userId_embedding/Reshape/shape/1Const*
value	B :
*
dtype0*
_output_shapes
: �
userId_embedding/Reshape/shapePack'userId_embedding/strided_slice:output:0)userId_embedding/Reshape/shape/1:output:0*
T0*
N*
_output_shapes
:�
userId_embedding/ReshapeReshape<userId_embedding/userId_embedding_weights/Reshape_2:output:0'userId_embedding/Reshape/shape:output:0*'
_output_shapes
:���������
*
T0\
concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������n

concat/concatIdentity!userId_embedding/Reshape:output:0*
T0*'
_output_shapes
:���������
�
IdentityIdentityconcat/concat:output:0>^userId_embedding/assert_greater_or_equal_0/Assert/AssertGuardA^userId_embedding/assert_less_than_num_buckets/Assert/AssertGuardS^userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupg^userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*'
_output_shapes
:���������
*
T0"
identityIdentity:output:0*5

_input_shapes$
":
���������:
���������:2�
@userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard@userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard2�
fuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpfuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp2~
=userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard=userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard2�
RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupRuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup: :0 ,
*
_user_specified_namefeatures/productId:/+
)
_user_specified_namefeatures/userId
�|
�
"__inference__traced_restore_159290
file_prefixG
Cassignvariableop_dense_features_movieid_embedding_embedding_weightsJ
Fassignvariableop_1_dense_features_1_userid_embedding_embedding_weights#
assignvariableop_2_dense_kernel!
assignvariableop_3_dense_bias%
!assignvariableop_4_dense_1_kernel#
assignvariableop_5_dense_1_bias%
!assignvariableop_6_dense_2_kernel#
assignvariableop_7_dense_2_bias 
assignvariableop_8_adam_iter"
assignvariableop_9_adam_beta_1#
assignvariableop_10_adam_beta_2"
assignvariableop_11_adam_decay*
&assignvariableop_12_adam_learning_rate
assignvariableop_13_total
assignvariableop_14_countQ
Massignvariableop_15_adam_dense_features_movieid_embedding_embedding_weights_mR
Nassignvariableop_16_adam_dense_features_1_userid_embedding_embedding_weights_m+
'assignvariableop_17_adam_dense_kernel_m)
%assignvariableop_18_adam_dense_bias_m-
)assignvariableop_19_adam_dense_1_kernel_m+
'assignvariableop_20_adam_dense_1_bias_m-
)assignvariableop_21_adam_dense_2_kernel_m+
'assignvariableop_22_adam_dense_2_bias_mQ
Massignvariableop_23_adam_dense_features_movieid_embedding_embedding_weights_vR
Nassignvariableop_24_adam_dense_features_1_userid_embedding_embedding_weights_v+
'assignvariableop_25_adam_dense_kernel_v)
%assignvariableop_26_adam_dense_bias_v-
)assignvariableop_27_adam_dense_1_kernel_v+
'assignvariableop_28_adam_dense_1_bias_v-
)assignvariableop_29_adam_dense_2_kernel_v+
'assignvariableop_30_adam_dense_2_bias_v
identity_32��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�	RestoreV2�RestoreV2_1�
RestoreV2/tensor_namesConst"
/device:CPU:0*�
value�B�BTlayer_with_weights-0/movieId_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-1/userId_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-0/movieId_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBolayer_with_weights-1/userId_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-0/movieId_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBolayer_with_weights-1/userId_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:�
RestoreV2/shape_and_slicesConst"
/device:CPU:0*
_output_shapes
:*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"
/device:CPU:0*�
_output_shapes~
|:::::::::::::::::::::::::::::::*-
dtypes#
!2	L
IdentityIdentityRestoreV2:tensors:0*
_output_shapes
:*
T0�
AssignVariableOpAssignVariableOpCassignvariableop_dense_features_movieid_embedding_embedding_weightsIdentity:output:0*
dtype0*
_output_shapes
 N

Identity_1IdentityRestoreV2:tensors:1*
_output_shapes
:*
T0�
AssignVariableOp_1AssignVariableOpFassignvariableop_1_dense_features_1_userid_embedding_embedding_weightsIdentity_1:output:0*
dtype0*
_output_shapes
 N

Identity_2IdentityRestoreV2:tensors:2*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_kernelIdentity_2:output:0*
dtype0*
_output_shapes
 N

Identity_3IdentityRestoreV2:tensors:3*
T0*
_output_shapes
:}
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_biasIdentity_3:output:0*
dtype0*
_output_shapes
 N

Identity_4IdentityRestoreV2:tensors:4*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_1_kernelIdentity_4:output:0*
dtype0*
_output_shapes
 N

Identity_5IdentityRestoreV2:tensors:5*
_output_shapes
:*
T0
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_1_biasIdentity_5:output:0*
_output_shapes
 *
dtype0N

Identity_6IdentityRestoreV2:tensors:6*
_output_shapes
:*
T0�
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_2_kernelIdentity_6:output:0*
_output_shapes
 *
dtype0N

Identity_7IdentityRestoreV2:tensors:7*
_output_shapes
:*
T0
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_2_biasIdentity_7:output:0*
dtype0*
_output_shapes
 N

Identity_8IdentityRestoreV2:tensors:8*
_output_shapes
:*
T0	|
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0*
_output_shapes
 *
dtype0	N

Identity_9IdentityRestoreV2:tensors:9*
_output_shapes
:*
T0~
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0*
dtype0*
_output_shapes
 P
Identity_10IdentityRestoreV2:tensors:10*
_output_shapes
:*
T0�
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0*
dtype0*
_output_shapes
 P
Identity_11IdentityRestoreV2:tensors:11*
_output_shapes
:*
T0�
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0*
_output_shapes
 *
dtype0P
Identity_12IdentityRestoreV2:tensors:12*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0*
_output_shapes
 *
dtype0P
Identity_13IdentityRestoreV2:tensors:13*
_output_shapes
:*
T0{
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0*
_output_shapes
 *
dtype0P
Identity_14IdentityRestoreV2:tensors:14*
_output_shapes
:*
T0{
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0*
_output_shapes
 *
dtype0P
Identity_15IdentityRestoreV2:tensors:15*
_output_shapes
:*
T0�
AssignVariableOp_15AssignVariableOpMassignvariableop_15_adam_dense_features_movieid_embedding_embedding_weights_mIdentity_15:output:0*
dtype0*
_output_shapes
 P
Identity_16IdentityRestoreV2:tensors:16*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpNassignvariableop_16_adam_dense_features_1_userid_embedding_embedding_weights_mIdentity_16:output:0*
_output_shapes
 *
dtype0P
Identity_17IdentityRestoreV2:tensors:17*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp'assignvariableop_17_adam_dense_kernel_mIdentity_17:output:0*
dtype0*
_output_shapes
 P
Identity_18IdentityRestoreV2:tensors:18*
_output_shapes
:*
T0�
AssignVariableOp_18AssignVariableOp%assignvariableop_18_adam_dense_bias_mIdentity_18:output:0*
dtype0*
_output_shapes
 P
Identity_19IdentityRestoreV2:tensors:19*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_1_kernel_mIdentity_19:output:0*
dtype0*
_output_shapes
 P
Identity_20IdentityRestoreV2:tensors:20*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_dense_1_bias_mIdentity_20:output:0*
dtype0*
_output_shapes
 P
Identity_21IdentityRestoreV2:tensors:21*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_dense_2_kernel_mIdentity_21:output:0*
_output_shapes
 *
dtype0P
Identity_22IdentityRestoreV2:tensors:22*
_output_shapes
:*
T0�
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_dense_2_bias_mIdentity_22:output:0*
dtype0*
_output_shapes
 P
Identity_23IdentityRestoreV2:tensors:23*
_output_shapes
:*
T0�
AssignVariableOp_23AssignVariableOpMassignvariableop_23_adam_dense_features_movieid_embedding_embedding_weights_vIdentity_23:output:0*
_output_shapes
 *
dtype0P
Identity_24IdentityRestoreV2:tensors:24*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpNassignvariableop_24_adam_dense_features_1_userid_embedding_embedding_weights_vIdentity_24:output:0*
_output_shapes
 *
dtype0P
Identity_25IdentityRestoreV2:tensors:25*
_output_shapes
:*
T0�
AssignVariableOp_25AssignVariableOp'assignvariableop_25_adam_dense_kernel_vIdentity_25:output:0*
_output_shapes
 *
dtype0P
Identity_26IdentityRestoreV2:tensors:26*
_output_shapes
:*
T0�
AssignVariableOp_26AssignVariableOp%assignvariableop_26_adam_dense_bias_vIdentity_26:output:0*
dtype0*
_output_shapes
 P
Identity_27IdentityRestoreV2:tensors:27*
_output_shapes
:*
T0�
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_1_kernel_vIdentity_27:output:0*
_output_shapes
 *
dtype0P
Identity_28IdentityRestoreV2:tensors:28*
_output_shapes
:*
T0�
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_dense_1_bias_vIdentity_28:output:0*
dtype0*
_output_shapes
 P
Identity_29IdentityRestoreV2:tensors:29*
_output_shapes
:*
T0�
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_dense_2_kernel_vIdentity_29:output:0*
_output_shapes
 *
dtype0P
Identity_30IdentityRestoreV2:tensors:30*
_output_shapes
:*
T0�
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_dense_2_bias_vIdentity_30:output:0*
dtype0*
_output_shapes
 �
RestoreV2_1/tensor_namesConst"
/device:CPU:0*
_output_shapes
:*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH*
dtype0t
RestoreV2_1/shape_and_slicesConst"
/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B �
RestoreV2_1	RestoreV2file_prefix!RestoreV2_1/tensor_names:output:0%RestoreV2_1/shape_and_slices:output:0
^RestoreV2"
/device:CPU:0*
_output_shapes
:*
dtypes
21
NoOpNoOp"
/device:CPU:0*
_output_shapes
 �
Identity_31Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"
/device:CPU:0*
T0*
_output_shapes
: �
Identity_32IdentityIdentity_31:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9
^RestoreV2^RestoreV2_1*
_output_shapes
: *
T0"#
identity_32Identity_32:output:0*�

_input_shapes�
~: :::::::::::::::::::::::::::::::2*
AssignVariableOp_11AssignVariableOp_112
RestoreV2_1RestoreV2_12*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_19AssignVariableOp_192*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_26AssignVariableOp_262$
AssignVariableOpAssignVariableOp2*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92
	RestoreV2	RestoreV22*
AssignVariableOp_10AssignVariableOp_10:+ '
%
_user_specified_name
file_prefix: : : : : : : : :	 :
 : : :
 : : : : : : : : : : : : : : : : : : 
�

�
$__inference_signature_wrapper_158150
movieid

userid"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6"
statefulpartitionedcall_args_7"
statefulpartitionedcall_args_8"
statefulpartitionedcall_args_9
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallmovieiduseridstatefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8statefulpartitionedcall_args_9*
Tin
2
**
f%R#
!__inference__wrapped_model_157637**
config_proto

GPU 

CPU2J 8*'
_output_shapes
:���������*
Tout
2*-
_gradient_op_typePartitionedCall-158139�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*Q

_input_shapes@
>:
���������:
���������::::::::22
StatefulPartitionedCallStatefulPartitionedCall:' #
!
_user_specified_name	movieId:&"
 
_user_specified_nameuserId: : : : : : : :	 
�
�
/__inference_dense_features_layer_call_fn_158863
features_movieid
features_userid"
statefulpartitionedcall_args_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallfeatures_movieidfeatures_useridstatefulpartitionedcall_args_2*
Tin
2*S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_157772**
config_proto

GPU 

CPU2J 8*-
_gradient_op_typePartitionedCall-157779*'
_output_shapes
:���������
*
Tout
2�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*'
_output_shapes
:���������
*
T0"
identityIdentity:output:0*5

_input_shapes$
":
���������:
���������:22
StatefulPartitionedCallStatefulPartitionedCall:0 ,
*
_user_specified_namefeatures/productId:/+
)
_user_specified_namefeatures/userId: "wL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
7
movieId,
serving_default_movieId:0
���������
5
userId+
serving_default_userId:0
���������;
dense_20
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�@
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7

		optimizer

regularization_losses
trainable_variables

	variables


	keras_api

signatures

�__call__
+�&call_and_return_all_conditional_losses
�_default_save_signature"�=
_tf_keras_model�<{"class_name": "Model", "name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null], "dtype": "int32", "sparse": false, "name": "productId"}, "name": "productId", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": [null], "dtype": "int32", "sparse": false, "name": "userId"}, "name": "userId", "inbound_nodes": []}, {"class_name": "DenseFeatures", "config": {"name": "dense_features", "trainable": true, "dtype": "float32", "feature_columns": [{"class_name": "EmbeddingColumn", "config": {"categorical_column": {"class_name": "IdentityCategoricalColumn", "config": {"key": "productId", "number_buckets": 1001, "default_value": null}}, "dimension": 10, "combiner": "mean", "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.31622776601683794, "seed": null, "dtype": "float32"}}, "ckpt_to_load_from": null, "tensor_name_in_ckpt": null, "max_norm": null, "trainable": true}}]}, "name": "dense_features", "inbound_nodes": [{"productId": ["productId", 0, 0, {}], "userId": ["userId", 0, 0, {}]}]}, {"class_name": "DenseFeatures", "config": {"name": "dense_features_1", "trainable": true, "dtype": "float32", "feature_columns": [{"class_name": "EmbeddingColumn", "config": {"categorical_column": {"class_name": "IdentityCategoricalColumn", "config": {"key": "userId", "number_buckets": 30001, "default_value": null}}, "dimension": 10, "combiner": "mean", "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.31622776601683794, "seed": null, "dtype": "float32"}}, "ckpt_to_load_from": null, "tensor_name_in_ckpt": null, "max_norm": null, "trainable": true}}]}, "name": "dense_features_1", "inbound_nodes": [{"productId": ["productId", 0, 0, {}], "userId": ["userId", 0, 0, {}]}]}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate", "inbound_nodes": [[["dense_features", 0, 0, {}], ["dense_features_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["concatenate", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["dense", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["dense_1", 0, 0, {}]]]}], "input_layers": {"productId": ["productId", 0, 0], "userId": ["userId", 0, 0]}, "output_layers": [["dense_2", 0, 0]]}, "input_spec": [null, null], "keras_version": "2.2.4-tf", "backend": "tensorflow", "model_config": {"class_name": "Model", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null], "dtype": "int32", "sparse": false, "name": "productId"}, "name": "productId", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": [null], "dtype": "int32", "sparse": false, "name": "userId"}, "name": "userId", "inbound_nodes": []}, {"class_name": "DenseFeatures", "config": {"name": "dense_features", "trainable": true, "dtype": "float32", "feature_columns": [{"class_name": "EmbeddingColumn", "config": {"categorical_column": {"class_name": "IdentityCategoricalColumn", "config": {"key": "productId", "number_buckets": 1001, "default_value": null}}, "dimension": 10, "combiner": "mean", "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.31622776601683794, "seed": null, "dtype": "float32"}}, "ckpt_to_load_from": null, "tensor_name_in_ckpt": null, "max_norm": null, "trainable": true}}]}, "name": "dense_features", "inbound_nodes": [{"productId": ["productId", 0, 0, {}], "userId": ["userId", 0, 0, {}]}]}, {"class_name": "DenseFeatures", "config": {"name": "dense_features_1", "trainable": true, "dtype": "float32", "feature_columns": [{"class_name": "EmbeddingColumn", "config": {"categorical_column": {"class_name": "IdentityCategoricalColumn", "config": {"key": "userId", "number_buckets": 30001, "default_value": null}}, "dimension": 10, "combiner": "mean", "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.31622776601683794, "seed": null, "dtype": "float32"}}, "ckpt_to_load_from": null, "tensor_name_in_ckpt": null, "max_norm": null, "trainable": true}}]}, "name": "dense_features_1", "inbound_nodes": [{"productId": ["productId", 0, 0, {}], "userId": ["userId", 0, 0, {}]}]}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate", "inbound_nodes": [[["dense_features", 0, 0, {}], ["dense_features_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["concatenate", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["dense", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["dense_1", 0, 0, {}]]]}], "input_layers": {"productId": ["productId", 0, 0], "userId": ["userId", 0, 0]}, "output_layers": [["dense_2", 0, 0]]}}, "training_config": {"loss": "binary_crossentropy", "metrics": ["accuracy"], "weighted_metrics": null, "sample_weight_mode": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
�
regularization_losses
trainable_variables

	variables

	keras_api

�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "InputLayer", "name": "productId", "trainable": true, "expects_training_arg": true, "dtype": "int32", "batch_input_shape": [null], "config": {"batch_input_shape": [null], "dtype": "int32", "sparse": false, "name": "productId"}}
�
regularization_losses
trainable_variables

	variables

	keras_api

�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "InputLayer", "name": "userId", "trainable": true, "expects_training_arg": true, "dtype": "int32", "batch_input_shape": [null], "config": {"batch_input_shape": [null], "dtype": "int32", "sparse": false, "name": "userId"}}
�
_feature_columns

_resources
'#movieId_embedding/embedding_weights
regularization_losses
trainable_variables

	variables

	keras_api

�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "DenseFeatures", "name": "dense_features", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_features", "trainable": true, "dtype": "float32", "feature_columns": [{"class_name": "EmbeddingColumn", "config": {"categorical_column": {"class_name": "IdentityCategoricalColumn", "config": {"key": "productId", "number_buckets": 1001, "default_value": null}}, "dimension": 10, "combiner": "mean", "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.31622776601683794, "seed": null, "dtype": "float32"}}, "ckpt_to_load_from": null, "tensor_name_in_ckpt": null, "max_norm": null, "trainable": true}}]}, "_is_feature_layer": true}
�
_feature_columns

_resources
& "userId_embedding/embedding_weights
!regularization_losses
"trainable_variables

#	variables

$	keras_api

�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "DenseFeatures", "name": "dense_features_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_features_1", "trainable": true, "dtype": "float32", "feature_columns": [{"class_name": "EmbeddingColumn", "config": {"categorical_column": {"class_name": "IdentityCategoricalColumn", "config": {"key": "userId", "number_buckets": 30001, "default_value": null}}, "dimension": 10, "combiner": "mean", "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.31622776601683794, "seed": null, "dtype": "float32"}}, "ckpt_to_load_from": null, "tensor_name_in_ckpt": null, "max_norm": null, "trainable": true}}]}, "_is_feature_layer": true}
�
%regularization_losses
&trainable_variables

'	variables

(	keras_api

�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Concatenate", "name": "concatenate", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}}
�

)kernel
*bias
+regularization_losses
,trainable_variables

-	variables

.	keras_api

�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 20}}}}
�

/kernel
0bias
1regularization_losses
2trainable_variables

3	variables

4	keras_api

�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}}
�

5kernel
6bias
7regularization_losses
8trainable_variables

9	variables

:	keras_api

�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}}
�
;iter

<beta_1

=beta_2
	>decay
?
learning_ratemp mq)mr*ms/mt0mu5mv6mwvx vy)vz*v{/v|0v}5v~6v"
	optimizer
 "
trackable_list_wrapper
X
0
 1
)2
*3
/4
05
56
67"
trackable_list_wrapper
X
0
 1
)2
*3
/4
05
56
67"
trackable_list_wrapper
�

regularization_losses
@layer_regularization_losses
trainable_variables

	variables
Anon_trainable_variables
Bmetrics

Clayers

�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"

signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
regularization_losses
Dlayer_regularization_losses
trainable_variables

	variables
Enon_trainable_variables
Fmetrics

Glayers

�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
regularization_losses
Hlayer_regularization_losses
trainable_variables

	variables
Inon_trainable_variables
Jmetrics

Klayers

�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
E:C	�
22dense_features/movieId_embedding/embedding_weights
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
�
regularization_losses
Llayer_regularization_losses
trainable_variables

	variables
Mnon_trainable_variables
Nmetrics

Olayers

�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
G:E
��
23dense_features_1/userId_embedding/embedding_weights
 "
trackable_list_wrapper
'
 0"
trackable_list_wrapper
'
 0"
trackable_list_wrapper
�
!regularization_losses
Player_regularization_losses
"trainable_variables

#	variables
Qnon_trainable_variables
Rmetrics

Slayers

�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
%regularization_losses
Tlayer_regularization_losses
&trainable_variables

'	variables
Unon_trainable_variables
Vmetrics

Wlayers

�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:
2dense/kernel
:
2
dense/bias
 "
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
�
+regularization_losses
Xlayer_regularization_losses
,trainable_variables

-	variables
Ynon_trainable_variables
Zmetrics

[layers

�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 :

2dense_1/kernel
:
2dense_1/bias
 "
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
�
1regularization_losses
\layer_regularization_losses
2trainable_variables

3	variables
]non_trainable_variables
^metrics

_layers

�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 :
2dense_2/kernel
:2dense_2/bias
 "
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
�
7regularization_losses
`layer_regularization_losses
8trainable_variables

9	variables
anon_trainable_variables
bmetrics

clayers

�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
d0"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
	etotal
	fcount
g
_fn_kwargs
hregularization_losses
itrainable_variables

j	variables

k	keras_api

�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "MeanMetricWrapper", "name": "accuracy", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "accuracy", "dtype": "float32"}}
:  (2total
:  (2count
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
�
hregularization_losses
llayer_regularization_losses
itrainable_variables

j	variables
mnon_trainable_variables
nmetrics

olayers

�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
J:H	�
29Adam/dense_features/movieId_embedding/embedding_weights/m
L:J
��
2:Adam/dense_features_1/userId_embedding/embedding_weights/m
#:!
2Adam/dense/kernel/m
:
2Adam/dense/bias/m
%:#

2Adam/dense_1/kernel/m
:
2Adam/dense_1/bias/m
%:#
2Adam/dense_2/kernel/m
:2Adam/dense_2/bias/m
J:H	�
29Adam/dense_features/movieId_embedding/embedding_weights/v
L:J
��
2:Adam/dense_features_1/userId_embedding/embedding_weights/v
#:!
2Adam/dense/kernel/v
:
2Adam/dense/bias/v
%:#

2Adam/dense_1/kernel/v
:
2Adam/dense_1/bias/v
%:#
2Adam/dense_2/kernel/v
:2Adam/dense_2/bias/v
�2�
&__inference_model_layer_call_fn_158094
&__inference_model_layer_call_fn_158130
&__inference_model_layer_call_fn_158728
&__inference_model_layer_call_fn_158714�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
A__inference_model_layer_call_and_return_conditional_losses_158700
A__inference_model_layer_call_and_return_conditional_losses_158038
A__inference_model_layer_call_and_return_conditional_losses_158059
A__inference_model_layer_call_and_return_conditional_losses_158426�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
!__inference__wrapped_model_157637�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *E�B
@�=
�
movieId
���������
�
userId
���������
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkwjkwargs
defaults� 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkwjkwargs
defaults� 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkwjkwargs
defaults� 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkwjkwargs
defaults� 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�2�
/__inference_dense_features_layer_call_fn_158863�
���
FullArgSpec9
args1�.
jself

jfeatures
jcols_to_output_tensors
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_dense_features_layer_call_and_return_conditional_losses_158856�
���
FullArgSpec9
args1�.
jself

jfeatures
jcols_to_output_tensors
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
1__inference_dense_features_1_layer_call_fn_158998�
���
FullArgSpec9
args1�.
jself

jfeatures
jcols_to_output_tensors
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
L__inference_dense_features_1_layer_call_and_return_conditional_losses_158991�
���
FullArgSpec9
args1�.
jself

jfeatures
jcols_to_output_tensors
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
,__inference_concatenate_layer_call_fn_159011�
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
�2�
G__inference_concatenate_layer_call_and_return_conditional_losses_159005�
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
�2�
&__inference_dense_layer_call_fn_159029�
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
�2�
A__inference_dense_layer_call_and_return_conditional_losses_159022�
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
�2�
(__inference_dense_1_layer_call_fn_159047�
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
�2�
C__inference_dense_1_layer_call_and_return_conditional_losses_159040�
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
�2�
(__inference_dense_2_layer_call_fn_159065�
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
�2�
C__inference_dense_2_layer_call_and_return_conditional_losses_159058�
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
9B7
$__inference_signature_wrapper_158150movieIduserId
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkwjkwargs
defaults� 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkwjkwargs
defaults� 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 {
(__inference_dense_2_layer_call_fn_159065O56/�,
%�"
 �
inputs���������

� "�����������
C__inference_dense_2_layer_call_and_return_conditional_losses_159058\56/�,
%�"
 �
inputs���������

� "%�"
�
0���������
� �
!__inference__wrapped_model_157637� )*/056O�L
E�B
@�=
�
movieId
���������
�
userId
���������
� "1�.
,
dense_2!�
dense_2����������
G__inference_concatenate_layer_call_and_return_conditional_losses_159005�Z�W
P�M
K�H
"�
inputs/0���������

"�
inputs/1���������

� "%�"
�
0���������
� �
&__inference_model_layer_call_fn_158714� )*/056Z�W
P�M
C�@
�
inputs/0
���������
�
inputs/1
���������
p

 
� "�����������
/__inference_dense_features_layer_call_fn_158863�z�w
p�m
g�d
/
userId%�"
features/userId
���������
1
movieId&�#
features/movieId
���������

 
� "����������
�
&__inference_model_layer_call_fn_158130} )*/056W�T
M�J
@�=
�
movieId
���������
�
userId
���������
p 

 
� "�����������
$__inference_signature_wrapper_158150� )*/056_�\
� 
U�R
&
userId�
userId
���������
(
movieId�
movieId
���������"1�.
,
dense_2!�
dense_2����������
A__inference_model_layer_call_and_return_conditional_losses_158038� )*/056W�T
M�J
@�=
�
movieId
���������
�
userId
���������
p

 
� "%�"
�
0���������
� �
A__inference_dense_layer_call_and_return_conditional_losses_159022\)*/�,
%�"
 �
inputs���������
� "%�"
�
0���������

� �
L__inference_dense_features_1_layer_call_and_return_conditional_losses_158991� z�w
p�m
g�d
/
userId%�"
features/userId
���������
1
movieId&�#
features/movieId
���������

 
� "%�"
�
0���������

� �
A__inference_model_layer_call_and_return_conditional_losses_158059� )*/056W�T
M�J
@�=
�
movieId
���������
�
userId
���������
p 

 
� "%�"
�
0���������
� �
A__inference_model_layer_call_and_return_conditional_losses_158700� )*/056Z�W
P�M
C�@
�
inputs/0
���������
�
inputs/1
���������
p 

 
� "%�"
�
0���������
� �
,__inference_concatenate_layer_call_fn_159011vZ�W
P�M
K�H
"�
inputs/0���������

"�
inputs/1���������

� "�����������
A__inference_model_layer_call_and_return_conditional_losses_158426� )*/056Z�W
P�M
C�@
�
inputs/0
���������
�
inputs/1
���������
p

 
� "%�"
�
0���������
� �
&__inference_model_layer_call_fn_158728� )*/056Z�W
P�M
C�@
�
inputs/0
���������
�
inputs/1
���������
p 

 
� "�����������
C__inference_dense_1_layer_call_and_return_conditional_losses_159040\/0/�,
%�"
 �
inputs���������

� "%�"
�
0���������

� �
1__inference_dense_features_1_layer_call_fn_158998� z�w
p�m
g�d
/
userId%�"
features/userId
���������
1
movieId&�#
features/movieId
���������

 
� "����������
�
J__inference_dense_features_layer_call_and_return_conditional_losses_158856�z�w
p�m
g�d
1
movieId&�#
features/movieId
���������
/
userId%�"
features/userId
���������

 
� "%�"
�
0���������

� {
(__inference_dense_1_layer_call_fn_159047O/0/�,
%�"
 �
inputs���������

� "����������
y
&__inference_dense_layer_call_fn_159029O)*/�,
%�"
 �
inputs���������
� "����������
�
&__inference_model_layer_call_fn_158094} )*/056W�T
M�J
@�=
�
movieId
���������
�
userId
���������
p

 
� "����������