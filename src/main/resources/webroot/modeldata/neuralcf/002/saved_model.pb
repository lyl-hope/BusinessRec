�
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
shapeshape�"serve*2.0.02unknown8֓
�
2dense_features/movieId_embedding/embedding_weightsVarHandleOp*
shape:	�
*
dtype0*
_output_shapes
: *C
shared_name42dense_features/movieId_embedding/embedding_weights
�
Fdense_features/movieId_embedding/embedding_weights/Read/ReadVariableOpReadVariableOp2dense_features/movieId_embedding/embedding_weights*
_output_shapes
:	�
*
dtype0
�
3dense_features_1/userId_embedding/embedding_weightsVarHandleOp*
_output_shapes
: *
dtype0*D
shared_name53dense_features_1/userId_embedding/embedding_weights*
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
dense/kernelVarHandleOp*
dtype0*
shape
:
*
shared_namedense/kernel*
_output_shapes
: 
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:
*
dtype0
l

dense/biasVarHandleOp*
shape:
*
dtype0*
_output_shapes
: *
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes
:

x
dense_1/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shape
:

*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:

*
dtype0
p
dense_1/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense_1/bias*
shape:

i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:

x
dense_2/kernelVarHandleOp*
shared_namedense_2/kernel*
dtype0*
shape
:
*
_output_shapes
: 
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:
*
dtype0
p
dense_2/biasVarHandleOp*
shape:*
shared_namedense_2/bias*
dtype0*
_output_shapes
: 
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shared_name	Adam/iter*
shape: 
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
dtype0	*
_output_shapes
: 
j
Adam/beta_1VarHandleOp*
dtype0*
shape: *
shared_name
Adam/beta_1*
_output_shapes
: 
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
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
shape: *
_output_shapes
: *
shared_name
Adam/decay*
dtype0
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
shape: *
dtype0*#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
dtype0*
_output_shapes
: *
shared_nametotal*
shape: 
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
shared_namecount*
dtype0*
_output_shapes
: *
shape: 
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
u
true_positivesVarHandleOp*
shared_nametrue_positives*
dtype0*
_output_shapes
: *
shape:�
n
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes	
:�*
dtype0
u
true_negativesVarHandleOp*
dtype0*
_output_shapes
: *
shared_nametrue_negatives*
shape:�
n
"true_negatives/Read/ReadVariableOpReadVariableOptrue_negatives*
dtype0*
_output_shapes	
:�
w
false_positivesVarHandleOp* 
shared_namefalse_positives*
shape:�*
_output_shapes
: *
dtype0
p
#false_positives/Read/ReadVariableOpReadVariableOpfalse_positives*
dtype0*
_output_shapes	
:�
w
false_negativesVarHandleOp*
dtype0*
shape:�*
_output_shapes
: * 
shared_namefalse_negatives
p
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
dtype0*
_output_shapes	
:�
y
true_positives_1VarHandleOp*!
shared_nametrue_positives_1*
_output_shapes
: *
dtype0*
shape:�
r
$true_positives_1/Read/ReadVariableOpReadVariableOptrue_positives_1*
_output_shapes	
:�*
dtype0
y
true_negatives_1VarHandleOp*!
shared_nametrue_negatives_1*
dtype0*
shape:�*
_output_shapes
: 
r
$true_negatives_1/Read/ReadVariableOpReadVariableOptrue_negatives_1*
_output_shapes	
:�*
dtype0
{
false_positives_1VarHandleOp*
shape:�*
dtype0*"
shared_namefalse_positives_1*
_output_shapes
: 
t
%false_positives_1/Read/ReadVariableOpReadVariableOpfalse_positives_1*
_output_shapes	
:�*
dtype0
{
false_negatives_1VarHandleOp*"
shared_namefalse_negatives_1*
_output_shapes
: *
dtype0*
shape:�
t
%false_negatives_1/Read/ReadVariableOpReadVariableOpfalse_negatives_1*
_output_shapes	
:�*
dtype0
�
9Adam/dense_features/movieId_embedding/embedding_weights/mVarHandleOp*
shape:	�
*
_output_shapes
: *
dtype0*J
shared_name;9Adam/dense_features/movieId_embedding/embedding_weights/m
�
MAdam/dense_features/movieId_embedding/embedding_weights/m/Read/ReadVariableOpReadVariableOp9Adam/dense_features/movieId_embedding/embedding_weights/m*
_output_shapes
:	�
*
dtype0
�
:Adam/dense_features_1/userId_embedding/embedding_weights/mVarHandleOp*
_output_shapes
: *
dtype0*K
shared_name<:Adam/dense_features_1/userId_embedding/embedding_weights/m*
shape:
��

�
NAdam/dense_features_1/userId_embedding/embedding_weights/m/Read/ReadVariableOpReadVariableOp:Adam/dense_features_1/userId_embedding/embedding_weights/m*
dtype0* 
_output_shapes
:
��

�
Adam/dense/kernel/mVarHandleOp*$
shared_nameAdam/dense/kernel/m*
_output_shapes
: *
shape
:
*
dtype0
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
dtype0*
_output_shapes

:

z
Adam/dense/bias/mVarHandleOp*"
shared_nameAdam/dense/bias/m*
shape:
*
_output_shapes
: *
dtype0
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:
*
dtype0
�
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*&
shared_nameAdam/dense_1/kernel/m
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
*$
shared_nameAdam/dense_1/bias/m*
dtype0*
_output_shapes
: 
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
dtype0*
_output_shapes
:

�
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
shape
:
*&
shared_nameAdam/dense_2/kernel/m*
dtype0

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes

:
*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
shape:*$
shared_nameAdam/dense_2/bias/m*
_output_shapes
: *
dtype0
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:*
dtype0
�
9Adam/dense_features/movieId_embedding/embedding_weights/vVarHandleOp*
shape:	�
*J
shared_name;9Adam/dense_features/movieId_embedding/embedding_weights/v*
dtype0*
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
dtype0* 
_output_shapes
:
��

�
Adam/dense/kernel/vVarHandleOp*
dtype0*
shape
:
*$
shared_nameAdam/dense/kernel/v*
_output_shapes
: 
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
dtype0*
_output_shapes

:

z
Adam/dense/bias/vVarHandleOp*"
shared_nameAdam/dense/bias/v*
dtype0*
_output_shapes
: *
shape:

s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
dtype0*
_output_shapes
:

�
Adam/dense_1/kernel/vVarHandleOp*&
shared_nameAdam/dense_1/kernel/v*
_output_shapes
: *
dtype0*
shape
:



)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
dtype0*
_output_shapes

:


~
Adam/dense_1/bias/vVarHandleOp*
dtype0*
shape:
*
_output_shapes
: *$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
dtype0*
_output_shapes
:

�
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*&
shared_nameAdam/dense_2/kernel/v*
shape
:


)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
dtype0*
_output_shapes

:

~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*$
shared_nameAdam/dense_2/bias/v*
shape:
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
dtype0*
_output_shapes
:

NoOpNoOp
�F
ConstConst"
/device:CPU:0*�F
value�FB�F B�F
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

trainable_variables
regularization_losses

	variables


	keras_api

signatures
R
trainable_variables
regularization_losses

	variables

	keras_api
R
trainable_variables
regularization_losses

	variables

	keras_api
�
_feature_columns

_resources
'#movieId_embedding/embedding_weights
trainable_variables
regularization_losses

	variables

	keras_api
�
_feature_columns

_resources
& "userId_embedding/embedding_weights
!trainable_variables
"regularization_losses

#	variables

$	keras_api
R
%trainable_variables
&regularization_losses

'	variables

(	keras_api
h

)kernel
*bias
+trainable_variables
,regularization_losses

-	variables

.	keras_api
h

/kernel
0bias
1trainable_variables
2regularization_losses

3	variables

4	keras_api
h

5kernel
6bias
7trainable_variables
8regularization_losses

9	variables

:	keras_api
�
;iter

<beta_1

=beta_2
	>decay
?
learning_ratem� m�)m�*m�/m�0m�5m�6m�v� v�)v�*v�/v�0v�5v�6v�
8
0
 1
)2
*3
/4
05
56
67
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
�
@non_trainable_variables
Ametrics
Blayer_regularization_losses

Clayers

trainable_variables
regularization_losses

	variables
 
 
 
 
�
Dnon_trainable_variables
Emetrics
Flayer_regularization_losses

Glayers
trainable_variables
regularization_losses

	variables
 
 
 
�
Hnon_trainable_variables
Imetrics
Jlayer_regularization_losses

Klayers
trainable_variables
regularization_losses

	variables
 
 
��
VARIABLE_VALUE2dense_features/movieId_embedding/embedding_weightsTlayer_with_weights-0/movieId_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
�
Lnon_trainable_variables
Mmetrics
Nlayer_regularization_losses

Olayers
trainable_variables
regularization_losses

	variables
 
 
��
VARIABLE_VALUE3dense_features_1/userId_embedding/embedding_weightsSlayer_with_weights-1/userId_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUE

 0
 

 0
�
Pnon_trainable_variables
Qmetrics
Rlayer_regularization_losses

Slayers
!trainable_variables
"regularization_losses

#	variables
 
 
 
�
Tnon_trainable_variables
Umetrics
Vlayer_regularization_losses

Wlayers
%trainable_variables
&regularization_losses

'	variables
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

)0
*1
 

)0
*1
�
Xnon_trainable_variables
Ymetrics
Zlayer_regularization_losses

[layers
+trainable_variables
,regularization_losses

-	variables
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

/0
01
 

/0
01
�
\non_trainable_variables
]metrics
^layer_regularization_losses

_layers
1trainable_variables
2regularization_losses

3	variables
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

50
61
 

50
61
�
`non_trainable_variables
ametrics
blayer_regularization_losses

clayers
7trainable_variables
8regularization_losses

9	variables
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
d0
e1
f2
 
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
	gtotal
	hcount
i
_fn_kwargs
jtrainable_variables
kregularization_losses

l	variables

m	keras_api
�
n
thresholds
otrue_positives
ptrue_negatives
qfalse_positives
rfalse_negatives
strainable_variables
tregularization_losses

u	variables

v	keras_api
�
w
thresholds
xtrue_positives
ytrue_negatives
zfalse_positives
{false_negatives
|trainable_variables
}regularization_losses

~	variables

	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE
 
 
 

g0
h1
�
�non_trainable_variables
�metrics
 �layer_regularization_losses
�layers
jtrainable_variables
kregularization_losses

l	variables
 
a_
VARIABLE_VALUEtrue_positives=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEtrue_negatives=keras_api/metrics/1/true_negatives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_positives>keras_api/metrics/1/false_positives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_negatives>keras_api/metrics/1/false_negatives/.ATTRIBUTES/VARIABLE_VALUE
 
 

o0
p1
q2
r3
�
�non_trainable_variables
�metrics
 �layer_regularization_losses
�layers
strainable_variables
tregularization_losses

u	variables
 
ca
VARIABLE_VALUEtrue_positives_1=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEtrue_negatives_1=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEfalse_positives_1>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEfalse_negatives_1>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUE
 
 

x0
y1
z2
{3
�
�non_trainable_variables
�metrics
 �layer_regularization_losses
�layers
|trainable_variables
}regularization_losses

~	variables

g0
h1
 
 
 

o0
p1
q2
r3
 
 
 

x0
y1
z2
{3
 
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
dtype0*
_output_shapes
: 
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
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias**
config_proto

GPU 

CPU2J 8*
Tin
2
*
Tout
2*'
_output_shapes
:���������*-
_gradient_op_typePartitionedCall-252894*-
f(R&
$__inference_signature_wrapper_251896
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameFdense_features/movieId_embedding/embedding_weights/Read/ReadVariableOpGdense_features_1/userId_embedding/embedding_weights/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp"true_positives/Read/ReadVariableOp"true_negatives/Read/ReadVariableOp#false_positives/Read/ReadVariableOp#false_negatives/Read/ReadVariableOp$true_positives_1/Read/ReadVariableOp$true_negatives_1/Read/ReadVariableOp%false_positives_1/Read/ReadVariableOp%false_negatives_1/Read/ReadVariableOpMAdam/dense_features/movieId_embedding/embedding_weights/m/Read/ReadVariableOpNAdam/dense_features_1/userId_embedding/embedding_weights/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOpMAdam/dense_features/movieId_embedding/embedding_weights/v/Read/ReadVariableOpNAdam/dense_features_1/userId_embedding/embedding_weights/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOpConst*(
f#R!
__inference__traced_save_252954*
Tout
2**
config_proto

GPU 

CPU2J 8*-
_gradient_op_typePartitionedCall-252955*
_output_shapes
: *4
Tin-
+2)	
�	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename2dense_features/movieId_embedding/embedding_weights3dense_features_1/userId_embedding/embedding_weightsdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttrue_positivestrue_negativesfalse_positivesfalse_negativestrue_positives_1true_negatives_1false_positives_1false_negatives_19Adam/dense_features/movieId_embedding/embedding_weights/m:Adam/dense_features_1/userId_embedding/embedding_weights/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/m9Adam/dense_features/movieId_embedding/embedding_weights/v:Adam/dense_features_1/userId_embedding/embedding_weights/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/v**
config_proto

GPU 

CPU2J 8*3
Tin,
*2(*
_output_shapes
: *
Tout
2*-
_gradient_op_typePartitionedCall-253085*+
f&R$
"__inference__traced_restore_253084��
�
�
^dense_features_1_userId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_252315M
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
IdentityIdentityIassert_dense_features_1_userid_embedding_assert_less_than_num_buckets_all^Assert*
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
�
�
JuserId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_2526489
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
�
�
\dense_features_movieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_251917N
Jidentity_dense_features_movieid_embedding_assert_less_than_num_buckets_all

placeholder	

placeholder_1	

identity_1
"
NoOpNoOp*
_output_shapes
 �
IdentityIdentityJidentity_dense_features_movieid_embedding_assert_less_than_num_buckets_all^NoOp*
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
���������: : : :  
�
�
[dense_features_1_userId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_252334J
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
JmovieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_252512<
8identity_movieid_embedding_assert_greater_or_equal_0_all

placeholder	

identity_1
"
NoOpNoOp*
_output_shapes
 v
IdentityIdentity8identity_movieid_embedding_assert_greater_or_equal_0_all^NoOp*
T0
*
_output_shapes
: J

Identity_1IdentityIdentity:output:0*
_output_shapes
: *
T0
"!

identity_1Identity_1:output:0*$

_input_shapes
: :
���������:  : 
�
�
[dense_features_1_userId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_252060J
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
�
�
Zdense_features_1_userId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_252333L
Hidentity_dense_features_1_userid_embedding_assert_greater_or_equal_0_all

placeholder	

identity_1
"
NoOpNoOp*
_output_shapes
 �
IdentityIdentityHidentity_dense_features_1_userid_embedding_assert_greater_or_equal_0_all^NoOp*
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
�
�
(__inference_dense_2_layer_call_fn_252811

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*'
_output_shapes
:���������*L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_251766*
Tin
2*-
_gradient_op_typePartitionedCall-251772**
config_proto

GPU 

CPU2J 8*
Tout
2�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*.

_input_shapes
:���������
::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs: : 
��
�
L__inference_dense_features_1_layer_call_and_return_conditional_losses_252737
features_movieid
features_userids
ouserid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource
identity��=userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard�@userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard�RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup�fuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpj
userId_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
userId_embedding/ExpandDims
ExpandDimsfeatures_userid(userId_embedding/ExpandDims/dim:output:0*'
_output_shapes
:���������*
T0z
/userId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
valueB :
���������*
dtype0�
)userId_embedding/to_sparse_input/NotEqualNotEqual$userId_embedding/ExpandDims:output:08userId_embedding/to_sparse_input/ignore_value/x:output:0*'
_output_shapes
:���������*
T0�
(userId_embedding/to_sparse_input/indicesWhere-userId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
'userId_embedding/to_sparse_input/valuesGatherNd$userId_embedding/ExpandDims:output:00userId_embedding/to_sparse_input/indices:index:0*
Tparams0*
Tindices0	*#
_output_shapes
:
����������
,userId_embedding/to_sparse_input/dense_shapeShape$userId_embedding/ExpandDims:output:0*
out_type0	*
_output_shapes
:*
T0�
userId_embedding/valuesCast0userId_embedding/to_sparse_input/values:output:0*

SrcT0*#
_output_shapes
:
���������*

DstT0	b
userId_embedding/num_buckets/xConst*
dtype0*
valueB	 :��*
_output_shapes
: }
userId_embedding/num_bucketsCast'userId_embedding/num_buckets/x:output:0*

DstT0	*
_output_shapes
: *

SrcT0Y
userId_embedding/zero/xConst*
value	B : *
dtype0*
_output_shapes
: o
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
3userId_embedding/assert_less_than_num_buckets/ConstConst*
dtype0*
value
B: *
_output_shapes
:�
1userId_embedding/assert_less_than_num_buckets/AllAll6userId_embedding/assert_less_than_num_buckets/Less:z:0<userId_embedding/assert_less_than_num_buckets/Const:output:0*
_output_shapes
: �
@userId_embedding/assert_less_than_num_buckets/Assert/AssertGuardIf:userId_embedding/assert_less_than_num_buckets/All:output:0:userId_embedding/assert_less_than_num_buckets/All:output:0userId_embedding/values:y:0 userId_embedding/num_buckets:y:0*`
else_branchQRO
MuserId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_252629*
Tcond0
*
Tout
2
*
Tin
2
		*
_output_shapes
: *_
then_branchPRN
LuserId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_252628*

output_shapes
: *
_lower_using_switch_merge(�
IuserId_embedding/assert_less_than_num_buckets/Assert/AssertGuard/IdentityIdentityIuserId_embedding/assert_less_than_num_buckets/Assert/AssertGuard:output:0*
_output_shapes
: *
T0
�
7userId_embedding/assert_greater_or_equal_0/GreaterEqualGreaterEqualuserId_embedding/values:y:0userId_embedding/zero:y:0*
T0	*#
_output_shapes
:
���������z
0userId_embedding/assert_greater_or_equal_0/ConstConst*
dtype0*
_output_shapes
:*
value
B: �
.userId_embedding/assert_greater_or_equal_0/AllAll;userId_embedding/assert_greater_or_equal_0/GreaterEqual:z:09userId_embedding/assert_greater_or_equal_0/Const:output:0*
_output_shapes
: �
=userId_embedding/assert_greater_or_equal_0/Assert/AssertGuardIf7userId_embedding/assert_greater_or_equal_0/All:output:07userId_embedding/assert_greater_or_equal_0/All:output:0userId_embedding/values:y:0A^userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard*

output_shapes
: *
_output_shapes
: *
_lower_using_switch_merge(*\
then_branchMRK
IuserId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_252647*
Tcond0
*
Tin
2
	*
Tout
2
*]
else_branchNRL
JuserId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_252648�
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
5userId_embedding/userId_embedding_weights/Slice/beginConst*
value
B: *
dtype0*
_output_shapes
:~
4userId_embedding/userId_embedding_weights/Slice/sizeConst*
dtype0*
_output_shapes
:*
value
B:�
/userId_embedding/userId_embedding_weights/SliceSlice5userId_embedding/to_sparse_input/dense_shape:output:0>userId_embedding/userId_embedding_weights/Slice/begin:output:0=userId_embedding/userId_embedding_weights/Slice/size:output:0*
T0	*
Index0*
_output_shapes
:y
/userId_embedding/userId_embedding_weights/ConstConst*
value
B: *
dtype0*
_output_shapes
:�
.userId_embedding/userId_embedding_weights/ProdProd8userId_embedding/userId_embedding_weights/Slice:output:08userId_embedding/userId_embedding_weights/Const:output:0*
_output_shapes
: *
T0	|
:userId_embedding/userId_embedding_weights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: y
7userId_embedding/userId_embedding_weights/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: �
2userId_embedding/userId_embedding_weights/GatherV2GatherV25userId_embedding/to_sparse_input/dense_shape:output:0CuserId_embedding/userId_embedding_weights/GatherV2/indices:output:0@userId_embedding/userId_embedding_weights/GatherV2/axis:output:0*
Tindices0*
Taxis0*
Tparams0	*
_output_shapes
: �
0userId_embedding/userId_embedding_weights/Cast/xPack7userId_embedding/userId_embedding_weights/Prod:output:0;userId_embedding/userId_embedding_weights/GatherV2:output:0*
T0	*
_output_shapes
:*
N�
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
: *
value	B	 R *
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
valueB:
���������*
_output_shapes
:*
dtype0�
1userId_embedding/userId_embedding_weights/ReshapeReshape7userId_embedding/userId_embedding_weights/Where:index:0@userId_embedding/userId_embedding_weights/Reshape/shape:output:0*#
_output_shapes
:
���������*
T0	{
9userId_embedding/userId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
value	B : *
dtype0�
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
CuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
QuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows=userId_embedding/userId_embedding_weights/GatherV2_1:output:0=userId_embedding/userId_embedding_weights/GatherV2_2:output:0;userId_embedding/userId_embedding_weights/Identity:output:0LuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:
���������:
���������:
����������
UuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        �
WuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
_output_shapes
:*
dtype0�
WuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
_output_shapes
:*
dtype0�
OuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicebuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0^userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0`userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0`userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*#
_output_shapes
:
���������*
shrink_axis_mask*

begin_mask*
T0	*
end_mask*
Index0�
FuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/CastCastXuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*

SrcT0	*#
_output_shapes
:
���������*

DstT0�
HuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/UniqueUniqueauserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*2
_output_shapes 
:
���������:
���������*
T0	�
fuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpReadVariableOpouserid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0* 
_output_shapes
:
��
*
dtype0�
[userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitynuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
�
RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherouserid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resourceLuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:y:0g^userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
Tindices0	*'
_output_shapes
:���������
*y
_classo
mkloc:@userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp�
]userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identity[userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*y
_classo
mkloc:@userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*
T0*'
_output_shapes
:���������
�
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
9userId_embedding/userId_embedding_weights/Reshape_1/shapeConst*
dtype0*
valueB"����   *
_output_shapes
:�
3userId_embedding/userId_embedding_weights/Reshape_1ReshapeguserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0BuserId_embedding/userId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
/userId_embedding/userId_embedding_weights/ShapeShapeJuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:�
=userId_embedding/userId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
value
B:*
dtype0�
?userId_embedding/userId_embedding_weights/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
value
B:�
?userId_embedding/userId_embedding_weights/strided_slice/stack_2Const*
value
B:*
dtype0*
_output_shapes
:�
7userId_embedding/userId_embedding_weights/strided_sliceStridedSlice8userId_embedding/userId_embedding_weights/Shape:output:0FuserId_embedding/userId_embedding_weights/strided_slice/stack:output:0HuserId_embedding/userId_embedding_weights/strided_slice/stack_1:output:0HuserId_embedding/userId_embedding_weights/strided_slice/stack_2:output:0*
T0*
shrink_axis_mask*
Index0*
_output_shapes
: s
1userId_embedding/userId_embedding_weights/stack/0Const*
dtype0*
_output_shapes
: *
value	B :�
/userId_embedding/userId_embedding_weights/stackPack:userId_embedding/userId_embedding_weights/stack/0:output:0@userId_embedding/userId_embedding_weights/strided_slice:output:0*
_output_shapes
:*
N*
T0�
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
)userId_embedding/userId_embedding_weightsSelect7userId_embedding/userId_embedding_weights/Tile:output:08userId_embedding/userId_embedding_weights/zeros_like:y:0JuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*'
_output_shapes
:���������
*
T0�
0userId_embedding/userId_embedding_weights/Cast_1Cast5userId_embedding/to_sparse_input/dense_shape:output:0*

SrcT0	*

DstT0*
_output_shapes
:�
7userId_embedding/userId_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
value
B: *
dtype0�
6userId_embedding/userId_embedding_weights/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
value
B:�
1userId_embedding/userId_embedding_weights/Slice_1Slice4userId_embedding/userId_embedding_weights/Cast_1:y:0@userId_embedding/userId_embedding_weights/Slice_1/begin:output:0?userId_embedding/userId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
1userId_embedding/userId_embedding_weights/Shape_1Shape2userId_embedding/userId_embedding_weights:output:0*
T0*
_output_shapes
:�
7userId_embedding/userId_embedding_weights/Slice_2/beginConst*
value
B:*
dtype0*
_output_shapes
:�
6userId_embedding/userId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
����������
1userId_embedding/userId_embedding_weights/Slice_2Slice:userId_embedding/userId_embedding_weights/Shape_1:output:0@userId_embedding/userId_embedding_weights/Slice_2/begin:output:0?userId_embedding/userId_embedding_weights/Slice_2/size:output:0*
_output_shapes
:*
T0*
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
3userId_embedding/userId_embedding_weights/Reshape_2Reshape2userId_embedding/userId_embedding_weights:output:09userId_embedding/userId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:���������
�
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
&userId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
value
B:*
dtype0p
&userId_embedding/strided_slice/stack_2Const*
dtype0*
value
B:*
_output_shapes
:�
userId_embedding/strided_sliceStridedSliceuserId_embedding/Shape:output:0-userId_embedding/strided_slice/stack:output:0/userId_embedding/strided_slice/stack_1:output:0/userId_embedding/strided_slice/stack_2:output:0*
T0*
_output_shapes
: *
Index0*
shrink_axis_maskb
 userId_embedding/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
�
userId_embedding/Reshape/shapePack'userId_embedding/strided_slice:output:0)userId_embedding/Reshape/shape/1:output:0*
_output_shapes
:*
N*
T0�
userId_embedding/ReshapeReshape<userId_embedding/userId_embedding_weights/Reshape_2:output:0'userId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������
\
concat/concat_dimConst*
_output_shapes
: *
valueB :
���������*
dtype0n

concat/concatIdentity!userId_embedding/Reshape:output:0*
T0*'
_output_shapes
:���������
�
IdentityIdentityconcat/concat:output:0>^userId_embedding/assert_greater_or_equal_0/Assert/AssertGuardA^userId_embedding/assert_less_than_num_buckets/Assert/AssertGuardS^userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupg^userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*5

_input_shapes$
":
���������:
���������:2�
fuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpfuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp2~
=userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard=userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard2�
RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupRuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup2�
@userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard@userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard:/+
)
_user_specified_namefeatures/userId: :0 ,
*
_user_specified_namefeatures/productId
�
�
bmodel_dense_features_movieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_251128T
Pidentity_model_dense_features_movieid_embedding_assert_less_than_num_buckets_all

placeholder	

placeholder_1	

identity_1
"
NoOpNoOp*
_output_shapes
 �
IdentityIdentityPidentity_model_dense_features_movieid_embedding_assert_less_than_num_buckets_all^NoOp*
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
���������: : :  : 
�
�
]dense_features_1_userId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_252314O
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
���������: : :  : 
�
�
/__inference_dense_features_layer_call_fn_252609
features_movieid
features_userid"
statefulpartitionedcall_args_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallfeatures_movieidfeatures_useridstatefulpartitionedcall_args_2*S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_251518*-
_gradient_op_typePartitionedCall-251525*
Tin
2**
config_proto

GPU 

CPU2J 8*
Tout
2*'
_output_shapes
:���������
�
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
_user_specified_namefeatures/userId: 
�
�
MmovieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_252493?
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
�
A__inference_model_layer_call_and_return_conditional_losses_251805
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
2**
config_proto

GPU 

CPU2J 8*
Tout
2*-
_gradient_op_typePartitionedCall-251525*'
_output_shapes
:���������
*S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_251518�
(dense_features_1/StatefulPartitionedCallStatefulPartitionedCallmovieiduserid/dense_features_1_statefulpartitionedcall_args_2**
config_proto

GPU 

CPU2J 8*-
_gradient_op_typePartitionedCall-251669*'
_output_shapes
:���������
*
Tin
2*
Tout
2*U
fPRN
L__inference_dense_features_1_layer_call_and_return_conditional_losses_251662�
concatenate/PartitionedCallPartitionedCall/dense_features/StatefulPartitionedCall:output:01dense_features_1/StatefulPartitionedCall:output:0*-
_gradient_op_typePartitionedCall-251692*
Tin
2*
Tout
2**
config_proto

GPU 

CPU2J 8*'
_output_shapes
:���������*P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_251685�
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0$dense_statefulpartitionedcall_args_1$dense_statefulpartitionedcall_args_2*
Tin
2*-
_gradient_op_typePartitionedCall-251716*
Tout
2*'
_output_shapes
:���������
*J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_251710**
config_proto

GPU 

CPU2J 8�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0&dense_1_statefulpartitionedcall_args_1&dense_1_statefulpartitionedcall_args_2*L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_251738*
Tout
2*'
_output_shapes
:���������
*-
_gradient_op_typePartitionedCall-251744**
config_proto

GPU 

CPU2J 8*
Tin
2�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0&dense_2_statefulpartitionedcall_args_1&dense_2_statefulpartitionedcall_args_2*
Tout
2*-
_gradient_op_typePartitionedCall-251772*'
_output_shapes
:���������**
config_proto

GPU 

CPU2J 8*
Tin
2*L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_251766�
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall)^dense_features_1/StatefulPartitionedCall*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*Q

_input_shapes@
>:
���������:
���������::::::::2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2T
(dense_features_1/StatefulPartitionedCall(dense_features_1/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall: :	 :' #
!
_user_specified_name	movieId:&"
 
_user_specified_nameuserId: : : : : : 
�
�
A__inference_model_layer_call_and_return_conditional_losses_251784
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
_gradient_op_typePartitionedCall-251525*S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_251518**
config_proto

GPU 

CPU2J 8*
Tout
2*'
_output_shapes
:���������
�
(dense_features_1/StatefulPartitionedCallStatefulPartitionedCallmovieiduserid/dense_features_1_statefulpartitionedcall_args_2*
Tin
2*'
_output_shapes
:���������
*U
fPRN
L__inference_dense_features_1_layer_call_and_return_conditional_losses_251662**
config_proto

GPU 

CPU2J 8*
Tout
2*-
_gradient_op_typePartitionedCall-251669�
concatenate/PartitionedCallPartitionedCall/dense_features/StatefulPartitionedCall:output:01dense_features_1/StatefulPartitionedCall:output:0*'
_output_shapes
:���������*P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_251685**
config_proto

GPU 

CPU2J 8*-
_gradient_op_typePartitionedCall-251692*
Tout
2*
Tin
2�
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0$dense_statefulpartitionedcall_args_1$dense_statefulpartitionedcall_args_2*'
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
_gradient_op_typePartitionedCall-251716*
Tin
2*J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_251710�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0&dense_1_statefulpartitionedcall_args_1&dense_1_statefulpartitionedcall_args_2*-
_gradient_op_typePartitionedCall-251744**
config_proto

GPU 

CPU2J 8*
Tin
2*L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_251738*
Tout
2*'
_output_shapes
:���������
�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0&dense_2_statefulpartitionedcall_args_1&dense_2_statefulpartitionedcall_args_2*
Tout
2*L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_251766*'
_output_shapes
:���������*-
_gradient_op_typePartitionedCall-251772**
config_proto

GPU 

CPU2J 8*
Tin
2�
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall)^dense_features_1/StatefulPartitionedCall*'
_output_shapes
:���������*
T0"
identityIdentity:output:0*Q

_input_shapes@
>:
���������:
���������::::::::2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2T
(dense_features_1/StatefulPartitionedCall(dense_features_1/StatefulPartitionedCall:&"
 
_user_specified_nameuserId: : : : : : : :	 :' #
!
_user_specified_name	movieId
�
�
LuserId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_251553>
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
]dense_features_1_userId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_252040O
Kidentity_dense_features_1_userid_embedding_assert_less_than_num_buckets_all

placeholder	

placeholder_1	

identity_1
"
NoOpNoOp*
_output_shapes
 �
IdentityIdentityKidentity_dense_features_1_userid_embedding_assert_less_than_num_buckets_all^NoOp*
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
�
�
"__inference__traced_restore_253084
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
assignvariableop_14_count&
"assignvariableop_15_true_positives&
"assignvariableop_16_true_negatives'
#assignvariableop_17_false_positives'
#assignvariableop_18_false_negatives(
$assignvariableop_19_true_positives_1(
$assignvariableop_20_true_negatives_1)
%assignvariableop_21_false_positives_1)
%assignvariableop_22_false_negatives_1Q
Massignvariableop_23_adam_dense_features_movieid_embedding_embedding_weights_mR
Nassignvariableop_24_adam_dense_features_1_userid_embedding_embedding_weights_m+
'assignvariableop_25_adam_dense_kernel_m)
%assignvariableop_26_adam_dense_bias_m-
)assignvariableop_27_adam_dense_1_kernel_m+
'assignvariableop_28_adam_dense_1_bias_m-
)assignvariableop_29_adam_dense_2_kernel_m+
'assignvariableop_30_adam_dense_2_bias_mQ
Massignvariableop_31_adam_dense_features_movieid_embedding_embedding_weights_vR
Nassignvariableop_32_adam_dense_features_1_userid_embedding_embedding_weights_v+
'assignvariableop_33_adam_dense_kernel_v)
%assignvariableop_34_adam_dense_bias_v-
)assignvariableop_35_adam_dense_1_kernel_v+
'assignvariableop_36_adam_dense_1_bias_v-
)assignvariableop_37_adam_dense_2_kernel_v+
'assignvariableop_38_adam_dense_2_bias_v
identity_40��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�	RestoreV2�RestoreV2_1�
RestoreV2/tensor_namesConst"
/device:CPU:0*�
value�B�'BTlayer_with_weights-0/movieId_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-1/userId_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/1/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/1/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/1/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-0/movieId_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBolayer_with_weights-1/userId_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-0/movieId_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBolayer_with_weights-1/userId_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
_output_shapes
:'*
dtype0�
RestoreV2/shape_and_slicesConst"
/device:CPU:0*
dtype0*
_output_shapes
:'*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"
/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::*5
dtypes+
)2'	L
IdentityIdentityRestoreV2:tensors:0*
_output_shapes
:*
T0�
AssignVariableOpAssignVariableOpCassignvariableop_dense_features_movieid_embedding_embedding_weightsIdentity:output:0*
_output_shapes
 *
dtype0N

Identity_1IdentityRestoreV2:tensors:1*
_output_shapes
:*
T0�
AssignVariableOp_1AssignVariableOpFassignvariableop_1_dense_features_1_userid_embedding_embedding_weightsIdentity_1:output:0*
dtype0*
_output_shapes
 N

Identity_2IdentityRestoreV2:tensors:2*
_output_shapes
:*
T0
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_kernelIdentity_2:output:0*
dtype0*
_output_shapes
 N

Identity_3IdentityRestoreV2:tensors:3*
_output_shapes
:*
T0}
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_biasIdentity_3:output:0*
dtype0*
_output_shapes
 N

Identity_4IdentityRestoreV2:tensors:4*
_output_shapes
:*
T0�
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_1_kernelIdentity_4:output:0*
_output_shapes
 *
dtype0N

Identity_5IdentityRestoreV2:tensors:5*
_output_shapes
:*
T0
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_1_biasIdentity_5:output:0*
dtype0*
_output_shapes
 N

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
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_2_biasIdentity_7:output:0*
_output_shapes
 *
dtype0N

Identity_8IdentityRestoreV2:tensors:8*
_output_shapes
:*
T0	|
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0*
dtype0	*
_output_shapes
 N

Identity_9IdentityRestoreV2:tensors:9*
T0*
_output_shapes
:~
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0*
_output_shapes
 *
dtype0P
Identity_10IdentityRestoreV2:tensors:10*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0*
_output_shapes
 *
dtype0P
Identity_11IdentityRestoreV2:tensors:11*
_output_shapes
:*
T0�
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0*
dtype0*
_output_shapes
 P
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
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0*
dtype0*
_output_shapes
 P
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
AssignVariableOp_15AssignVariableOp"assignvariableop_15_true_positivesIdentity_15:output:0*
_output_shapes
 *
dtype0P
Identity_16IdentityRestoreV2:tensors:16*
_output_shapes
:*
T0�
AssignVariableOp_16AssignVariableOp"assignvariableop_16_true_negativesIdentity_16:output:0*
_output_shapes
 *
dtype0P
Identity_17IdentityRestoreV2:tensors:17*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp#assignvariableop_17_false_positivesIdentity_17:output:0*
dtype0*
_output_shapes
 P
Identity_18IdentityRestoreV2:tensors:18*
_output_shapes
:*
T0�
AssignVariableOp_18AssignVariableOp#assignvariableop_18_false_negativesIdentity_18:output:0*
_output_shapes
 *
dtype0P
Identity_19IdentityRestoreV2:tensors:19*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp$assignvariableop_19_true_positives_1Identity_19:output:0*
_output_shapes
 *
dtype0P
Identity_20IdentityRestoreV2:tensors:20*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp$assignvariableop_20_true_negatives_1Identity_20:output:0*
_output_shapes
 *
dtype0P
Identity_21IdentityRestoreV2:tensors:21*
_output_shapes
:*
T0�
AssignVariableOp_21AssignVariableOp%assignvariableop_21_false_positives_1Identity_21:output:0*
dtype0*
_output_shapes
 P
Identity_22IdentityRestoreV2:tensors:22*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp%assignvariableop_22_false_negatives_1Identity_22:output:0*
_output_shapes
 *
dtype0P
Identity_23IdentityRestoreV2:tensors:23*
_output_shapes
:*
T0�
AssignVariableOp_23AssignVariableOpMassignvariableop_23_adam_dense_features_movieid_embedding_embedding_weights_mIdentity_23:output:0*
_output_shapes
 *
dtype0P
Identity_24IdentityRestoreV2:tensors:24*
_output_shapes
:*
T0�
AssignVariableOp_24AssignVariableOpNassignvariableop_24_adam_dense_features_1_userid_embedding_embedding_weights_mIdentity_24:output:0*
_output_shapes
 *
dtype0P
Identity_25IdentityRestoreV2:tensors:25*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp'assignvariableop_25_adam_dense_kernel_mIdentity_25:output:0*
_output_shapes
 *
dtype0P
Identity_26IdentityRestoreV2:tensors:26*
_output_shapes
:*
T0�
AssignVariableOp_26AssignVariableOp%assignvariableop_26_adam_dense_bias_mIdentity_26:output:0*
dtype0*
_output_shapes
 P
Identity_27IdentityRestoreV2:tensors:27*
_output_shapes
:*
T0�
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_1_kernel_mIdentity_27:output:0*
_output_shapes
 *
dtype0P
Identity_28IdentityRestoreV2:tensors:28*
_output_shapes
:*
T0�
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_dense_1_bias_mIdentity_28:output:0*
_output_shapes
 *
dtype0P
Identity_29IdentityRestoreV2:tensors:29*
_output_shapes
:*
T0�
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_dense_2_kernel_mIdentity_29:output:0*
_output_shapes
 *
dtype0P
Identity_30IdentityRestoreV2:tensors:30*
_output_shapes
:*
T0�
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_dense_2_bias_mIdentity_30:output:0*
dtype0*
_output_shapes
 P
Identity_31IdentityRestoreV2:tensors:31*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOpMassignvariableop_31_adam_dense_features_movieid_embedding_embedding_weights_vIdentity_31:output:0*
_output_shapes
 *
dtype0P
Identity_32IdentityRestoreV2:tensors:32*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpNassignvariableop_32_adam_dense_features_1_userid_embedding_embedding_weights_vIdentity_32:output:0*
dtype0*
_output_shapes
 P
Identity_33IdentityRestoreV2:tensors:33*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp'assignvariableop_33_adam_dense_kernel_vIdentity_33:output:0*
dtype0*
_output_shapes
 P
Identity_34IdentityRestoreV2:tensors:34*
_output_shapes
:*
T0�
AssignVariableOp_34AssignVariableOp%assignvariableop_34_adam_dense_bias_vIdentity_34:output:0*
dtype0*
_output_shapes
 P
Identity_35IdentityRestoreV2:tensors:35*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_dense_1_kernel_vIdentity_35:output:0*
dtype0*
_output_shapes
 P
Identity_36IdentityRestoreV2:tensors:36*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_dense_1_bias_vIdentity_36:output:0*
dtype0*
_output_shapes
 P
Identity_37IdentityRestoreV2:tensors:37*
_output_shapes
:*
T0�
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_dense_2_kernel_vIdentity_37:output:0*
dtype0*
_output_shapes
 P
Identity_38IdentityRestoreV2:tensors:38*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_dense_2_bias_vIdentity_38:output:0*
dtype0*
_output_shapes
 �
RestoreV2_1/tensor_namesConst"
/device:CPU:0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH*
_output_shapes
:*
dtype0t
RestoreV2_1/shape_and_slicesConst"
/device:CPU:0*
valueB
B *
_output_shapes
:*
dtype0�
RestoreV2_1	RestoreV2file_prefix!RestoreV2_1/tensor_names:output:0%RestoreV2_1/shape_and_slices:output:0
^RestoreV2"
/device:CPU:0*
dtypes
2*
_output_shapes
:1
NoOpNoOp"
/device:CPU:0*
_output_shapes
 �
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"
/device:CPU:0*
T0*
_output_shapes
: �
Identity_40IdentityIdentity_39:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9
^RestoreV2^RestoreV2_1*
T0*
_output_shapes
: "#
identity_40Identity_40:output:0*�

_input_shapes�
�: :::::::::::::::::::::::::::::::::::::::2*
AssignVariableOp_12AssignVariableOp_122
RestoreV2_1RestoreV2_12*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_19AssignVariableOp_192*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_31AssignVariableOp_312$
AssignVariableOpAssignVariableOp2*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_29AssignVariableOp_292*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382(
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
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_11:! :" :# :$ :% :& :' :+ '
%
_user_specified_name
file_prefix: : : : : : : : :	 :
 : : :
 : : : : : : : : : : : : : : : : : : :  
�N
�
__inference__traced_save_252954
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
 savev2_count_read_readvariableop-
)savev2_true_positives_read_readvariableop-
)savev2_true_negatives_read_readvariableop.
*savev2_false_positives_read_readvariableop.
*savev2_false_negatives_read_readvariableop/
+savev2_true_positives_1_read_readvariableop/
+savev2_true_negatives_1_read_readvariableop0
,savev2_false_positives_1_read_readvariableop0
,savev2_false_negatives_1_read_readvariableopX
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
/device:CPU:0*
dtype0*<
value3B1 B+_temp_1bb65c933f544de3828c237ff6e28c6e/part*
_output_shapes
: s

StringJoin
StringJoinfile_prefixStringJoin/inputs_1:output:0"
/device:CPU:0*
N*
_output_shapes
: L

num_shardsConst*
value	B :*
_output_shapes
: *
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
: �
SaveV2/tensor_namesConst"
/device:CPU:0*�
value�B�'BTlayer_with_weights-0/movieId_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-1/userId_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/1/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/1/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/1/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-0/movieId_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBolayer_with_weights-1/userId_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-0/movieId_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBolayer_with_weights-1/userId_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
_output_shapes
:'*
dtype0�
SaveV2/shape_and_slicesConst"
/device:CPU:0*
_output_shapes
:'*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Msavev2_dense_features_movieid_embedding_embedding_weights_read_readvariableopNsavev2_dense_features_1_userid_embedding_embedding_weights_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop)savev2_true_positives_read_readvariableop)savev2_true_negatives_read_readvariableop*savev2_false_positives_read_readvariableop*savev2_false_negatives_read_readvariableop+savev2_true_positives_1_read_readvariableop+savev2_true_negatives_1_read_readvariableop,savev2_false_positives_1_read_readvariableop,savev2_false_negatives_1_read_readvariableopTsavev2_adam_dense_features_movieid_embedding_embedding_weights_m_read_readvariableopUsavev2_adam_dense_features_1_userid_embedding_embedding_weights_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableopTsavev2_adam_dense_features_movieid_embedding_embedding_weights_v_read_readvariableopUsavev2_adam_dense_features_1_userid_embedding_embedding_weights_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop"
/device:CPU:0*5
dtypes+
)2'	*
_output_shapes
 h
ShardedFilename_1/shardConst"
/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0�
ShardedFilename_1ShardedFilenameStringJoin:output:0 ShardedFilename_1/shard:output:0num_shards:output:0"
/device:CPU:0*
_output_shapes
: �
SaveV2_1/tensor_namesConst"
/device:CPU:0*
_output_shapes
:*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH*
dtype0q
SaveV2_1/shape_and_slicesConst"
/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0�
SaveV2_1SaveV2ShardedFilename_1:filename:0SaveV2_1/tensor_names:output:0"SaveV2_1/shape_and_slices:output:0savev2_1_const^SaveV2"
/device:CPU:0*
_output_shapes
 *
dtypes
2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0ShardedFilename_1:filename:0^SaveV2	^SaveV2_1"
/device:CPU:0*
_output_shapes
:*
T0*
N�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix	^SaveV2_1"
/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"
/device:CPU:0*
_output_shapes
: *
T0s

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints^SaveV2	^SaveV2_1*
_output_shapes
: *
T0"!

identity_1Identity_1:output:0*�

_input_shapes�
�: :	�
:
��
:
:
:

:
:
:: : : : : : : :�:�:�:�:�:�:�:�:	�
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
:: 2
SaveV2_1SaveV2_12
SaveV2SaveV22(
MergeV2CheckpointsMergeV2Checkpoints: : : : : : : : : : : : :  :! :" :# :$ :% :& :' :( :+ '
%
_user_specified_name
file_prefix: : : : : : : : :	 :
 : : :
 : : : : : : 
��
�
J__inference_dense_features_layer_call_and_return_conditional_losses_252602
features_movieid
features_useridu
qmovieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource
identity��>movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard�AmovieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard�TmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup�hmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpk
 movieId_embedding/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0�
movieId_embedding/ExpandDims
ExpandDimsfeatures_movieid)movieId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:���������{
0movieId_embedding/to_sparse_input/ignore_value/xConst*
dtype0*
valueB :
���������*
_output_shapes
: �
*movieId_embedding/to_sparse_input/NotEqualNotEqual%movieId_embedding/ExpandDims:output:09movieId_embedding/to_sparse_input/ignore_value/x:output:0*'
_output_shapes
:���������*
T0�
)movieId_embedding/to_sparse_input/indicesWhere.movieId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
(movieId_embedding/to_sparse_input/valuesGatherNd%movieId_embedding/ExpandDims:output:01movieId_embedding/to_sparse_input/indices:index:0*
Tparams0*#
_output_shapes
:
���������*
Tindices0	�
-movieId_embedding/to_sparse_input/dense_shapeShape%movieId_embedding/ExpandDims:output:0*
out_type0	*
_output_shapes
:*
T0�
movieId_embedding/valuesCast1movieId_embedding/to_sparse_input/values:output:0*

SrcT0*#
_output_shapes
:
���������*

DstT0	b
movieId_embedding/num_buckets/xConst*
_output_shapes
: *
value
B :�*
dtype0
movieId_embedding/num_bucketsCast(movieId_embedding/num_buckets/x:output:0*

SrcT0*

DstT0	*
_output_shapes
: Z
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
3movieId_embedding/assert_less_than_num_buckets/LessLessmovieId_embedding/values:y:0!movieId_embedding/num_buckets:y:0*
T0	*#
_output_shapes
:
���������~
4movieId_embedding/assert_less_than_num_buckets/ConstConst*
_output_shapes
:*
dtype0*
value
B: �
2movieId_embedding/assert_less_than_num_buckets/AllAll7movieId_embedding/assert_less_than_num_buckets/Less:z:0=movieId_embedding/assert_less_than_num_buckets/Const:output:0*
_output_shapes
: �
AmovieId_embedding/assert_less_than_num_buckets/Assert/AssertGuardIf;movieId_embedding/assert_less_than_num_buckets/All:output:0;movieId_embedding/assert_less_than_num_buckets/All:output:0movieId_embedding/values:y:0!movieId_embedding/num_buckets:y:0*
Tcond0
*

output_shapes
: *
_output_shapes
: *
Tin
2
		*`
then_branchQRO
MmovieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_252493*
Tout
2
*a
else_branchRRP
NmovieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_252494*
_lower_using_switch_merge(�
JmovieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard/IdentityIdentityJmovieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: �
8movieId_embedding/assert_greater_or_equal_0/GreaterEqualGreaterEqualmovieId_embedding/values:y:0movieId_embedding/zero:y:0*#
_output_shapes
:
���������*
T0	{
1movieId_embedding/assert_greater_or_equal_0/ConstConst*
dtype0*
_output_shapes
:*
value
B: �
/movieId_embedding/assert_greater_or_equal_0/AllAll<movieId_embedding/assert_greater_or_equal_0/GreaterEqual:z:0:movieId_embedding/assert_greater_or_equal_0/Const:output:0*
_output_shapes
: �
>movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuardIf8movieId_embedding/assert_greater_or_equal_0/All:output:08movieId_embedding/assert_greater_or_equal_0/All:output:0movieId_embedding/values:y:0B^movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard*
_lower_using_switch_merge(*
Tout
2
*
Tcond0
*

output_shapes
: *^
else_branchORM
KmovieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_252513*
_output_shapes
: *]
then_branchNRL
JmovieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_252512*
Tin
2
	�
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
7movieId_embedding/movieId_embedding_weights/Slice/beginConst*
_output_shapes
:*
value
B: *
dtype0�
6movieId_embedding/movieId_embedding_weights/Slice/sizeConst*
dtype0*
_output_shapes
:*
value
B:�
1movieId_embedding/movieId_embedding_weights/SliceSlice6movieId_embedding/to_sparse_input/dense_shape:output:0@movieId_embedding/movieId_embedding_weights/Slice/begin:output:0?movieId_embedding/movieId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:{
1movieId_embedding/movieId_embedding_weights/ConstConst*
value
B: *
_output_shapes
:*
dtype0�
0movieId_embedding/movieId_embedding_weights/ProdProd:movieId_embedding/movieId_embedding_weights/Slice:output:0:movieId_embedding/movieId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: ~
<movieId_embedding/movieId_embedding_weights/GatherV2/indicesConst*
dtype0*
_output_shapes
: *
value	B :{
9movieId_embedding/movieId_embedding_weights/GatherV2/axisConst*
value	B : *
_output_shapes
: *
dtype0�
4movieId_embedding/movieId_embedding_weights/GatherV2GatherV26movieId_embedding/to_sparse_input/dense_shape:output:0EmovieId_embedding/movieId_embedding_weights/GatherV2/indices:output:0BmovieId_embedding/movieId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
_output_shapes
: *
Tparams0	�
2movieId_embedding/movieId_embedding_weights/Cast/xPack9movieId_embedding/movieId_embedding_weights/Prod:output:0=movieId_embedding/movieId_embedding_weights/GatherV2:output:0*
T0	*
_output_shapes
:*
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
:movieId_embedding/movieId_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
value	B	 R *
dtype0	�
8movieId_embedding/movieId_embedding_weights/GreaterEqualGreaterEqualKmovieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0CmovieId_embedding/movieId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:
����������
1movieId_embedding/movieId_embedding_weights/WhereWhere<movieId_embedding/movieId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
9movieId_embedding/movieId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
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
6movieId_embedding/movieId_embedding_weights/GatherV2_1GatherV2JmovieId_embedding/movieId_embedding_weights/SparseReshape:output_indices:0<movieId_embedding/movieId_embedding_weights/Reshape:output:0DmovieId_embedding/movieId_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tparams0	*
Tindices0	*'
_output_shapes
:���������}
;movieId_embedding/movieId_embedding_weights/GatherV2_2/axisConst*
dtype0*
_output_shapes
: *
value	B : �
6movieId_embedding/movieId_embedding_weights/GatherV2_2GatherV2KmovieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0<movieId_embedding/movieId_embedding_weights/Reshape:output:0DmovieId_embedding/movieId_embedding_weights/GatherV2_2/axis:output:0*#
_output_shapes
:
���������*
Taxis0*
Tparams0	*
Tindices0	�
4movieId_embedding/movieId_embedding_weights/IdentityIdentityHmovieId_embedding/movieId_embedding_weights/SparseReshape:output_shape:0*
_output_shapes
:*
T0	�
EmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
SmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows?movieId_embedding/movieId_embedding_weights/GatherV2_1:output:0?movieId_embedding/movieId_embedding_weights/GatherV2_2:output:0=movieId_embedding/movieId_embedding_weights/Identity:output:0NmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/Const:output:0*T
_output_shapesB
@:���������:
���������:
���������:
���������*
T0	�
WmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
_output_shapes
:*
dtype0�
YmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
valueB"       *
dtype0�
YmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      �
QmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicedmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0`movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0bmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0bmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
shrink_axis_mask*

begin_mask*#
_output_shapes
:
���������*
T0	*
end_mask�
HmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/CastCastZmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:
����������
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
]movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitypmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp:value:0*
_output_shapes
:	�
*
T0�
TmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherqmovieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resourceNmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique:y:0i^movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*{
_classq
omloc:@movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*
Tindices0	*'
_output_shapes
:���������
*
dtype0�
_movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identity]movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*'
_output_shapes
:���������
*
T0*{
_classq
omloc:@movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp�
_movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_2IdentityhmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0*'
_output_shapes
:���������
*
T0�
CmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparseSparseSegmentMeanhmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_2:output:0PmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique:idx:0LmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Cast:y:0*'
_output_shapes
:���������
*
T0�
;movieId_embedding/movieId_embedding_weights/Reshape_1/shapeConst*
dtype0*
valueB"����   *
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
?movieId_embedding/movieId_embedding_weights/strided_slice/stackConst*
value
B:*
dtype0*
_output_shapes
:�
AmovieId_embedding/movieId_embedding_weights/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
value
B:�
AmovieId_embedding/movieId_embedding_weights/strided_slice/stack_2Const*
value
B:*
_output_shapes
:*
dtype0�
9movieId_embedding/movieId_embedding_weights/strided_sliceStridedSlice:movieId_embedding/movieId_embedding_weights/Shape:output:0HmovieId_embedding/movieId_embedding_weights/strided_slice/stack:output:0JmovieId_embedding/movieId_embedding_weights/strided_slice/stack_1:output:0JmovieId_embedding/movieId_embedding_weights/strided_slice/stack_2:output:0*
T0*
shrink_axis_mask*
Index0*
_output_shapes
: u
3movieId_embedding/movieId_embedding_weights/stack/0Const*
dtype0*
_output_shapes
: *
value	B :�
1movieId_embedding/movieId_embedding_weights/stackPack<movieId_embedding/movieId_embedding_weights/stack/0:output:0BmovieId_embedding/movieId_embedding_weights/strided_slice:output:0*
N*
_output_shapes
:*
T0�
0movieId_embedding/movieId_embedding_weights/TileTile>movieId_embedding/movieId_embedding_weights/Reshape_1:output:0:movieId_embedding/movieId_embedding_weights/stack:output:0*0
_output_shapes
:������������������*
T0
�
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

DstT0*
_output_shapes
:*

SrcT0	�
9movieId_embedding/movieId_embedding_weights/Slice_1/beginConst*
value
B: *
_output_shapes
:*
dtype0�
8movieId_embedding/movieId_embedding_weights/Slice_1/sizeConst*
value
B:*
_output_shapes
:*
dtype0�
3movieId_embedding/movieId_embedding_weights/Slice_1Slice6movieId_embedding/movieId_embedding_weights/Cast_1:y:0BmovieId_embedding/movieId_embedding_weights/Slice_1/begin:output:0AmovieId_embedding/movieId_embedding_weights/Slice_1/size:output:0*
T0*
Index0*
_output_shapes
:�
3movieId_embedding/movieId_embedding_weights/Shape_1Shape4movieId_embedding/movieId_embedding_weights:output:0*
_output_shapes
:*
T0�
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
3movieId_embedding/movieId_embedding_weights/Slice_2Slice<movieId_embedding/movieId_embedding_weights/Shape_1:output:0BmovieId_embedding/movieId_embedding_weights/Slice_2/begin:output:0AmovieId_embedding/movieId_embedding_weights/Slice_2/size:output:0*
T0*
_output_shapes
:*
Index0y
7movieId_embedding/movieId_embedding_weights/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0�
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
%movieId_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
value
B: q
'movieId_embedding/strided_slice/stack_1Const*
dtype0*
value
B:*
_output_shapes
:q
'movieId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
value
B:*
dtype0�
movieId_embedding/strided_sliceStridedSlice movieId_embedding/Shape:output:0.movieId_embedding/strided_slice/stack:output:00movieId_embedding/strided_slice/stack_1:output:00movieId_embedding/strided_slice/stack_2:output:0*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0c
!movieId_embedding/Reshape/shape/1Const*
dtype0*
value	B :
*
_output_shapes
: �
movieId_embedding/Reshape/shapePack(movieId_embedding/strided_slice:output:0*movieId_embedding/Reshape/shape/1:output:0*
_output_shapes
:*
T0*
N�
movieId_embedding/ReshapeReshape>movieId_embedding/movieId_embedding_weights/Reshape_2:output:0(movieId_embedding/Reshape/shape:output:0*'
_output_shapes
:���������
*
T0\
concat/concat_dimConst*
dtype0*
valueB :
���������*
_output_shapes
: o

concat/concatIdentity"movieId_embedding/Reshape:output:0*'
_output_shapes
:���������
*
T0�
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
s
G__inference_concatenate_layer_call_and_return_conditional_losses_252751
inputs_0
inputs_1
identityM
concat/axisConst*
value	B :*
dtype0*
_output_shapes
: w
concatConcatV2inputs_0inputs_1concat/axis:output:0*'
_output_shapes
:���������*
N*
T0W
IdentityIdentityconcat:output:0*'
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
`model_dense_features_1_userId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_251270R
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
���������: :  
�	
�
A__inference_dense_layer_call_and_return_conditional_losses_251710

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*'
_output_shapes
:���������
*
T0�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:
v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
P
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
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: : :& "
 
_user_specified_nameinputs
�
�
KmovieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_252513:
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

�
&__inference_model_layer_call_fn_251840
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
*
Tout
2*J
fERC
A__inference_model_layer_call_and_return_conditional_losses_251828*'
_output_shapes
:���������*-
_gradient_op_typePartitionedCall-251829**
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
StatefulPartitionedCallStatefulPartitionedCall:' #
!
_user_specified_name	movieId:&"
 
_user_specified_nameuserId: : : : : : : :	 
�
�
Zdense_features_movieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_252211I
Eassert_dense_features_movieid_embedding_assert_greater_or_equal_0_all
2
.assert_dense_features_movieid_embedding_values	

identity_1
��Assert�
AssertAssertEassert_dense_features_movieid_embedding_assert_greater_or_equal_0_all.assert_dense_features_movieid_embedding_values*
_output_shapes
 *

T
2	�
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
��
�
A__inference_model_layer_call_and_return_conditional_losses_252446
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
?dense_features/movieId_embedding/to_sparse_input/ignore_value/xConst*
valueB :
���������*
dtype0*
_output_shapes
: �
9dense_features/movieId_embedding/to_sparse_input/NotEqualNotEqual4dense_features/movieId_embedding/ExpandDims:output:0Hdense_features/movieId_embedding/to_sparse_input/ignore_value/x:output:0*'
_output_shapes
:���������*
T0�
8dense_features/movieId_embedding/to_sparse_input/indicesWhere=dense_features/movieId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
7dense_features/movieId_embedding/to_sparse_input/valuesGatherNd4dense_features/movieId_embedding/ExpandDims:output:0@dense_features/movieId_embedding/to_sparse_input/indices:index:0*
Tparams0*#
_output_shapes
:
���������*
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

SrcT0*

DstT0	q
.dense_features/movieId_embedding/num_buckets/xConst*
_output_shapes
: *
dtype0*
value
B :��
,dense_features/movieId_embedding/num_bucketsCast7dense_features/movieId_embedding/num_buckets/x:output:0*

DstT0	*
_output_shapes
: *

SrcT0i
'dense_features/movieId_embedding/zero/xConst*
_output_shapes
: *
value	B : *
dtype0�
%dense_features/movieId_embedding/zeroCast0dense_features/movieId_embedding/zero/x:output:0*
_output_shapes
: *

DstT0	*

SrcT0�
Bdense_features/movieId_embedding/assert_less_than_num_buckets/LessLess+dense_features/movieId_embedding/values:y:00dense_features/movieId_embedding/num_buckets:y:0*#
_output_shapes
:
���������*
T0	�
Cdense_features/movieId_embedding/assert_less_than_num_buckets/ConstConst*
dtype0*
value
B: *
_output_shapes
:�
Adense_features/movieId_embedding/assert_less_than_num_buckets/AllAllFdense_features/movieId_embedding/assert_less_than_num_buckets/Less:z:0Ldense_features/movieId_embedding/assert_less_than_num_buckets/Const:output:0*
_output_shapes
: �
Pdense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuardIfJdense_features/movieId_embedding/assert_less_than_num_buckets/All:output:0Jdense_features/movieId_embedding/assert_less_than_num_buckets/All:output:0+dense_features/movieId_embedding/values:y:00dense_features/movieId_embedding/num_buckets:y:0*o
then_branch`R^
\dense_features_movieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_252191*
_output_shapes
: *
Tout
2
*p
else_branchaR_
]dense_features_movieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_252192*
Tin
2
		*

output_shapes
: *
Tcond0
*
_lower_using_switch_merge(�
Ydense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard/IdentityIdentityYdense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: �
Gdense_features/movieId_embedding/assert_greater_or_equal_0/GreaterEqualGreaterEqual+dense_features/movieId_embedding/values:y:0)dense_features/movieId_embedding/zero:y:0*
T0	*#
_output_shapes
:
����������
@dense_features/movieId_embedding/assert_greater_or_equal_0/ConstConst*
dtype0*
_output_shapes
:*
value
B: �
>dense_features/movieId_embedding/assert_greater_or_equal_0/AllAllKdense_features/movieId_embedding/assert_greater_or_equal_0/GreaterEqual:z:0Idense_features/movieId_embedding/assert_greater_or_equal_0/Const:output:0*
_output_shapes
: �
Mdense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuardIfGdense_features/movieId_embedding/assert_greater_or_equal_0/All:output:0Gdense_features/movieId_embedding/assert_greater_or_equal_0/All:output:0+dense_features/movieId_embedding/values:y:0Q^dense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard*
_lower_using_switch_merge(*
_output_shapes
: *l
then_branch]R[
Ydense_features_movieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_252210*
Tin
2
	*

output_shapes
: *
Tcond0
*
Tout
2
*m
else_branch^R\
Zdense_features_movieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_252211�
Vdense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard/IdentityIdentityVdense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard:output:0*
_output_shapes
: *
T0
�
)dense_features/movieId_embedding/IdentityIdentity+dense_features/movieId_embedding/values:y:0W^dense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard/IdentityZ^dense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard/Identity*#
_output_shapes
:
���������*
T0	�
Fdense_features/movieId_embedding/movieId_embedding_weights/Slice/beginConst*
value
B: *
dtype0*
_output_shapes
:�
Edense_features/movieId_embedding/movieId_embedding_weights/Slice/sizeConst*
dtype0*
value
B:*
_output_shapes
:�
@dense_features/movieId_embedding/movieId_embedding_weights/SliceSliceEdense_features/movieId_embedding/to_sparse_input/dense_shape:output:0Odense_features/movieId_embedding/movieId_embedding_weights/Slice/begin:output:0Ndense_features/movieId_embedding/movieId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:�
@dense_features/movieId_embedding/movieId_embedding_weights/ConstConst*
dtype0*
value
B: *
_output_shapes
:�
?dense_features/movieId_embedding/movieId_embedding_weights/ProdProdIdense_features/movieId_embedding/movieId_embedding_weights/Slice:output:0Idense_features/movieId_embedding/movieId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: �
Kdense_features/movieId_embedding/movieId_embedding_weights/GatherV2/indicesConst*
dtype0*
_output_shapes
: *
value	B :�
Hdense_features/movieId_embedding/movieId_embedding_weights/GatherV2/axisConst*
value	B : *
_output_shapes
: *
dtype0�
Cdense_features/movieId_embedding/movieId_embedding_weights/GatherV2GatherV2Edense_features/movieId_embedding/to_sparse_input/dense_shape:output:0Tdense_features/movieId_embedding/movieId_embedding_weights/GatherV2/indices:output:0Qdense_features/movieId_embedding/movieId_embedding_weights/GatherV2/axis:output:0*
Tindices0*
Tparams0	*
_output_shapes
: *
Taxis0�
Adense_features/movieId_embedding/movieId_embedding_weights/Cast/xPackHdense_features/movieId_embedding/movieId_embedding_weights/Prod:output:0Ldense_features/movieId_embedding/movieId_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:�
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
Gdense_features/movieId_embedding/movieId_embedding_weights/GreaterEqualGreaterEqualZdense_features/movieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0Rdense_features/movieId_embedding/movieId_embedding_weights/GreaterEqual/y:output:0*#
_output_shapes
:
���������*
T0	�
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
: *
value	B : *
dtype0�
Edense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1GatherV2Ydense_features/movieId_embedding/movieId_embedding_weights/SparseReshape:output_indices:0Kdense_features/movieId_embedding/movieId_embedding_weights/Reshape:output:0Sdense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1/axis:output:0*
Tindices0	*
Taxis0*'
_output_shapes
:���������*
Tparams0	�
Jdense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2/axisConst*
dtype0*
value	B : *
_output_shapes
: �
Edense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2GatherV2Zdense_features/movieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0Kdense_features/movieId_embedding/movieId_embedding_weights/Reshape:output:0Sdense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2/axis:output:0*#
_output_shapes
:
���������*
Tparams0	*
Taxis0*
Tindices0	�
Cdense_features/movieId_embedding/movieId_embedding_weights/IdentityIdentityWdense_features/movieId_embedding/movieId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
Tdense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
bdense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsNdense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1:output:0Ndense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2:output:0Ldense_features/movieId_embedding/movieId_embedding_weights/Identity:output:0]dense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/Const:output:0*T
_output_shapesB
@:���������:
���������:
���������:
���������*
T0	�
fdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
hdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:�
hdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:�
`dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicesdense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0odense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0qdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0qdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
end_mask*
T0	*

begin_mask*
shrink_axis_mask*
Index0*#
_output_shapes
:
����������
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
ldense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitydense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
�
cdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGather�dense_features_movieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource]dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique:y:0x^dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*�
_class�
~|loc:@dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*
Tindices0	*
dtype0*'
_output_shapes
:���������
�
ndense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identityldense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*'
_output_shapes
:���������
*�
_class�
~|loc:@dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*
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
Jdense_features/movieId_embedding/movieId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Ddense_features/movieId_embedding/movieId_embedding_weights/Reshape_1Reshapexdense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Sdense_features/movieId_embedding/movieId_embedding_weights/Reshape_1/shape:output:0*'
_output_shapes
:���������*
T0
�
@dense_features/movieId_embedding/movieId_embedding_weights/ShapeShape[dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
_output_shapes
:*
T0�
Ndense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
value
B:�
Pdense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_1Const*
value
B:*
_output_shapes
:*
dtype0�
Pdense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
value
B:�
Hdense_features/movieId_embedding/movieId_embedding_weights/strided_sliceStridedSliceIdense_features/movieId_embedding/movieId_embedding_weights/Shape:output:0Wdense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack:output:0Ydense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_1:output:0Ydense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_2:output:0*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask�
Bdense_features/movieId_embedding/movieId_embedding_weights/stack/0Const*
dtype0*
_output_shapes
: *
value	B :�
@dense_features/movieId_embedding/movieId_embedding_weights/stackPackKdense_features/movieId_embedding/movieId_embedding_weights/stack/0:output:0Qdense_features/movieId_embedding/movieId_embedding_weights/strided_slice:output:0*
_output_shapes
:*
T0*
N�
?dense_features/movieId_embedding/movieId_embedding_weights/TileTileMdense_features/movieId_embedding/movieId_embedding_weights/Reshape_1:output:0Idense_features/movieId_embedding/movieId_embedding_weights/stack:output:0*0
_output_shapes
:������������������*
T0
�
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

DstT0*
_output_shapes
:*

SrcT0	�
Hdense_features/movieId_embedding/movieId_embedding_weights/Slice_1/beginConst*
value
B: *
dtype0*
_output_shapes
:�
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
Bdense_features/movieId_embedding/movieId_embedding_weights/Shape_1ShapeCdense_features/movieId_embedding/movieId_embedding_weights:output:0*
_output_shapes
:*
T0�
Hdense_features/movieId_embedding/movieId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
value
B:*
dtype0�
Gdense_features/movieId_embedding/movieId_embedding_weights/Slice_2/sizeConst*
dtype0*
_output_shapes
:*
valueB:
����������
Bdense_features/movieId_embedding/movieId_embedding_weights/Slice_2SliceKdense_features/movieId_embedding/movieId_embedding_weights/Shape_1:output:0Qdense_features/movieId_embedding/movieId_embedding_weights/Slice_2/begin:output:0Pdense_features/movieId_embedding/movieId_embedding_weights/Slice_2/size:output:0*
_output_shapes
:*
Index0*
T0�
Fdense_features/movieId_embedding/movieId_embedding_weights/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0�
Adense_features/movieId_embedding/movieId_embedding_weights/concatConcatV2Kdense_features/movieId_embedding/movieId_embedding_weights/Slice_1:output:0Kdense_features/movieId_embedding/movieId_embedding_weights/Slice_2:output:0Odense_features/movieId_embedding/movieId_embedding_weights/concat/axis:output:0*
T0*
_output_shapes
:*
N�
Ddense_features/movieId_embedding/movieId_embedding_weights/Reshape_2ReshapeCdense_features/movieId_embedding/movieId_embedding_weights:output:0Jdense_features/movieId_embedding/movieId_embedding_weights/concat:output:0*'
_output_shapes
:���������
*
T0�
&dense_features/movieId_embedding/ShapeShapeMdense_features/movieId_embedding/movieId_embedding_weights/Reshape_2:output:0*
_output_shapes
:*
T0~
4dense_features/movieId_embedding/strided_slice/stackConst*
value
B: *
dtype0*
_output_shapes
:�
6dense_features/movieId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
value
B:*
dtype0�
6dense_features/movieId_embedding/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
value
B:�
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
.dense_features/movieId_embedding/Reshape/shapePack7dense_features/movieId_embedding/strided_slice:output:09dense_features/movieId_embedding/Reshape/shape/1:output:0*
_output_shapes
:*
T0*
N�
(dense_features/movieId_embedding/ReshapeReshapeMdense_features/movieId_embedding/movieId_embedding_weights/Reshape_2:output:07dense_features/movieId_embedding/Reshape/shape:output:0*'
_output_shapes
:���������
*
T0k
 dense_features/concat/concat_dimConst*
valueB :
���������*
dtype0*
_output_shapes
: �
dense_features/concat/concatIdentity1dense_features/movieId_embedding/Reshape:output:0*'
_output_shapes
:���������
*
T0{
0dense_features_1/userId_embedding/ExpandDims/dimConst*
dtype0*
valueB :
���������*
_output_shapes
: �
,dense_features_1/userId_embedding/ExpandDims
ExpandDimsinputs_19dense_features_1/userId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:����������
@dense_features_1/userId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
����������
:dense_features_1/userId_embedding/to_sparse_input/NotEqualNotEqual5dense_features_1/userId_embedding/ExpandDims:output:0Idense_features_1/userId_embedding/to_sparse_input/ignore_value/x:output:0*'
_output_shapes
:���������*
T0�
9dense_features_1/userId_embedding/to_sparse_input/indicesWhere>dense_features_1/userId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
8dense_features_1/userId_embedding/to_sparse_input/valuesGatherNd5dense_features_1/userId_embedding/ExpandDims:output:0Adense_features_1/userId_embedding/to_sparse_input/indices:index:0*
Tparams0*#
_output_shapes
:
���������*
Tindices0	�
=dense_features_1/userId_embedding/to_sparse_input/dense_shapeShape5dense_features_1/userId_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	�
(dense_features_1/userId_embedding/valuesCastAdense_features_1/userId_embedding/to_sparse_input/values:output:0*#
_output_shapes
:
���������*

DstT0	*

SrcT0s
/dense_features_1/userId_embedding/num_buckets/xConst*
valueB	 :��*
_output_shapes
: *
dtype0�
-dense_features_1/userId_embedding/num_bucketsCast8dense_features_1/userId_embedding/num_buckets/x:output:0*
_output_shapes
: *

DstT0	*

SrcT0j
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
Tcond0
*

output_shapes
: *
Tin
2
		*p
then_branchaR_
]dense_features_1_userId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_252314*
_lower_using_switch_merge(*
Tout
2
*q
else_branchbR`
^dense_features_1_userId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_252315*
_output_shapes
: �
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
_lower_using_switch_merge(*m
then_branch^R\
Zdense_features_1_userId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_252333*
Tout
2
*
Tcond0
*
_output_shapes
: *

output_shapes
: *n
else_branch_R]
[dense_features_1_userId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_252334*
Tin
2
	�
Wdense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard/IdentityIdentityWdense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard:output:0*
_output_shapes
: *
T0
�
*dense_features_1/userId_embedding/IdentityIdentity,dense_features_1/userId_embedding/values:y:0X^dense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard/Identity[^dense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard/Identity*#
_output_shapes
:
���������*
T0	�
Fdense_features_1/userId_embedding/userId_embedding_weights/Slice/beginConst*
dtype0*
value
B: *
_output_shapes
:�
Edense_features_1/userId_embedding/userId_embedding_weights/Slice/sizeConst*
dtype0*
value
B:*
_output_shapes
:�
@dense_features_1/userId_embedding/userId_embedding_weights/SliceSliceFdense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Odense_features_1/userId_embedding/userId_embedding_weights/Slice/begin:output:0Ndense_features_1/userId_embedding/userId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:�
@dense_features_1/userId_embedding/userId_embedding_weights/ConstConst*
_output_shapes
:*
value
B: *
dtype0�
?dense_features_1/userId_embedding/userId_embedding_weights/ProdProdIdense_features_1/userId_embedding/userId_embedding_weights/Slice:output:0Idense_features_1/userId_embedding/userId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: �
Kdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/indicesConst*
value	B :*
_output_shapes
: *
dtype0�
Hdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Cdense_features_1/userId_embedding/userId_embedding_weights/GatherV2GatherV2Fdense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Tdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/indices:output:0Qdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/axis:output:0*
Tparams0	*
Taxis0*
Tindices0*
_output_shapes
: �
Adense_features_1/userId_embedding/userId_embedding_weights/Cast/xPackHdense_features_1/userId_embedding/userId_embedding_weights/Prod:output:0Ldense_features_1/userId_embedding/userId_embedding_weights/GatherV2:output:0*
N*
T0	*
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
valueB:
���������*
dtype0*
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
Edense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1GatherV2Ydense_features_1/userId_embedding/userId_embedding_weights/SparseReshape:output_indices:0Kdense_features_1/userId_embedding/userId_embedding_weights/Reshape:output:0Sdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1/axis:output:0*
Tindices0	*'
_output_shapes
:���������*
Tparams0	*
Taxis0�
Jdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
value	B : *
dtype0�
Edense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2GatherV2Zdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0Kdense_features_1/userId_embedding/userId_embedding_weights/Reshape:output:0Sdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2/axis:output:0*
Tparams0	*
Taxis0*
Tindices0	*#
_output_shapes
:
����������
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
fdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:�
hdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:�
hdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
`dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicesdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0odense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0qdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0qdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
end_mask*
Index0*
T0	*

begin_mask*
shrink_axis_mask*#
_output_shapes
:
����������
Wdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/CastCastidense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:
����������
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
cdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGather�dense_features_1_userid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource]dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:y:0x^dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
Tindices0	*�
_class�
~|loc:@dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*'
_output_shapes
:���������
�
ndense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identityldense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*'
_output_shapes
:���������
*
T0*�
_class�
~|loc:@dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp�
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
Jdense_features_1/userId_embedding/userId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Ddense_features_1/userId_embedding/userId_embedding_weights/Reshape_1Reshapexdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Sdense_features_1/userId_embedding/userId_embedding_weights/Reshape_1/shape:output:0*'
_output_shapes
:���������*
T0
�
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
:*
value
B:*
dtype0�
Pdense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_2Const*
value
B:*
dtype0*
_output_shapes
:�
Hdense_features_1/userId_embedding/userId_embedding_weights/strided_sliceStridedSliceIdense_features_1/userId_embedding/userId_embedding_weights/Shape:output:0Wdense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack:output:0Ydense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_1:output:0Ydense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: �
Bdense_features_1/userId_embedding/userId_embedding_weights/stack/0Const*
value	B :*
dtype0*
_output_shapes
: �
@dense_features_1/userId_embedding/userId_embedding_weights/stackPackKdense_features_1/userId_embedding/userId_embedding_weights/stack/0:output:0Qdense_features_1/userId_embedding/userId_embedding_weights/strided_slice:output:0*
T0*
_output_shapes
:*
N�
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
:dense_features_1/userId_embedding/userId_embedding_weightsSelectHdense_features_1/userId_embedding/userId_embedding_weights/Tile:output:0Idense_features_1/userId_embedding/userId_embedding_weights/zeros_like:y:0[dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
Adense_features_1/userId_embedding/userId_embedding_weights/Cast_1CastFdense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0*

SrcT0	*
_output_shapes
:*

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
Bdense_features_1/userId_embedding/userId_embedding_weights/Slice_1SliceEdense_features_1/userId_embedding/userId_embedding_weights/Cast_1:y:0Qdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/begin:output:0Pdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/size:output:0*
_output_shapes
:*
Index0*
T0�
Bdense_features_1/userId_embedding/userId_embedding_weights/Shape_1ShapeCdense_features_1/userId_embedding/userId_embedding_weights:output:0*
T0*
_output_shapes
:�
Hdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
value
B:�
Gdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
valueB:
���������*
dtype0�
Bdense_features_1/userId_embedding/userId_embedding_weights/Slice_2SliceKdense_features_1/userId_embedding/userId_embedding_weights/Shape_1:output:0Qdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/begin:output:0Pdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/size:output:0*
T0*
_output_shapes
:*
Index0�
Fdense_features_1/userId_embedding/userId_embedding_weights/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0�
Adense_features_1/userId_embedding/userId_embedding_weights/concatConcatV2Kdense_features_1/userId_embedding/userId_embedding_weights/Slice_1:output:0Kdense_features_1/userId_embedding/userId_embedding_weights/Slice_2:output:0Odense_features_1/userId_embedding/userId_embedding_weights/concat/axis:output:0*
N*
T0*
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
dtype0*
_output_shapes
:*
value
B:�
/dense_features_1/userId_embedding/strided_sliceStridedSlice0dense_features_1/userId_embedding/Shape:output:0>dense_features_1/userId_embedding/strided_slice/stack:output:0@dense_features_1/userId_embedding/strided_slice/stack_1:output:0@dense_features_1/userId_embedding/strided_slice/stack_2:output:0*
_output_shapes
: *
T0*
Index0*
shrink_axis_masks
1dense_features_1/userId_embedding/Reshape/shape/1Const*
dtype0*
value	B :
*
_output_shapes
: �
/dense_features_1/userId_embedding/Reshape/shapePack8dense_features_1/userId_embedding/strided_slice:output:0:dense_features_1/userId_embedding/Reshape/shape/1:output:0*
_output_shapes
:*
N*
T0�
)dense_features_1/userId_embedding/ReshapeReshapeMdense_features_1/userId_embedding/userId_embedding_weights/Reshape_2:output:08dense_features_1/userId_embedding/Reshape/shape:output:0*'
_output_shapes
:���������
*
T0m
"dense_features_1/concat/concat_dimConst*
valueB :
���������*
_output_shapes
: *
dtype0�
dense_features_1/concat/concatIdentity2dense_features_1/userId_embedding/Reshape:output:0*
T0*'
_output_shapes
:���������
Y
concatenate/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: �
concatenate/concatConcatV2%dense_features/concat/concat:output:0'dense_features_1/concat/concat:output:0 concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes

:
*
dtype0�
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

dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
\

dense/ReluReludense/BiasAdd:output:0*'
_output_shapes
:���������
*
T0�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes

:

*
dtype0�
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
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
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������
�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes

:
�
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
���������::::::::2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2�
cdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupcdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup2�
cdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupcdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2�
Ndense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuardNdense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard2�
wdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpwdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp2�
Mdense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuardMdense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard2�
Pdense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuardPdense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard2�
wdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpwdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp2�
Qdense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuardQdense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:( $
"
_user_specified_name
inputs/0:($
"
_user_specified_name
inputs/1: : : : : : : :	 
�
�
Zdense_features_movieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_251937I
Eassert_dense_features_movieid_embedding_assert_greater_or_equal_0_all
2
.assert_dense_features_movieid_embedding_values	

identity_1
��Assert�
AssertAssertEassert_dense_features_movieid_embedding_assert_greater_or_equal_0_all.assert_dense_features_movieid_embedding_values*
_output_shapes
 *

T
2	�
IdentityIdentityEassert_dense_features_movieid_embedding_assert_greater_or_equal_0_all^Assert*
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
�
�
JuserId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_2515739
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

Identity_1IdentityIdentity:output:0^Assert*
T0
*
_output_shapes
: "!

identity_1Identity_1:output:0*$

_input_shapes
: :
���������2
AssertAssert: :  
�
�
KmovieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_251429:
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
C__inference_dense_2_layer_call_and_return_conditional_losses_252804

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes

:
i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*'
_output_shapes
:���������*
T0V
SigmoidSigmoidBiasAdd:output:0*'
_output_shapes
:���������*
T0�
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*.

_input_shapes
:���������
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs: : 
�
�
\dense_features_movieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_252191N
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
�
�
MuserId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_252629<
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
IdentityIdentity8assert_userid_embedding_assert_less_than_num_buckets_all^Assert*
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
�
�
&__inference_model_layer_call_fn_252474
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
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8statefulpartitionedcall_args_9*J
fERC
A__inference_model_layer_call_and_return_conditional_losses_251864*'
_output_shapes
:���������*-
_gradient_op_typePartitionedCall-251865**
config_proto

GPU 

CPU2J 8*
Tin
2
*
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
StatefulPartitionedCallStatefulPartitionedCall: : : : : : : :	 :( $
"
_user_specified_name
inputs/0:($
"
_user_specified_name
inputs/1
�	
�
C__inference_dense_1_layer_call_and_return_conditional_losses_251738

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
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*'
_output_shapes
:���������
*
T0�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������
�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*.

_input_shapes
:���������
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs: : 
�

�
$__inference_signature_wrapper_251896
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
StatefulPartitionedCallStatefulPartitionedCallmovieiduseridstatefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8statefulpartitionedcall_args_9**
f%R#
!__inference__wrapped_model_251383*
Tout
2*-
_gradient_op_typePartitionedCall-251885**
config_proto

GPU 

CPU2J 8*
Tin
2
*'
_output_shapes
:����������
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
�
�
&__inference_model_layer_call_fn_252460
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
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8statefulpartitionedcall_args_9*
Tout
2*J
fERC
A__inference_model_layer_call_and_return_conditional_losses_251828*-
_gradient_op_typePartitionedCall-251829**
config_proto

GPU 

CPU2J 8*
Tin
2
*'
_output_shapes
:����������
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*'
_output_shapes
:���������*
T0"
identityIdentity:output:0*Q

_input_shapes@
>:
���������:
���������::::::::22
StatefulPartitionedCallStatefulPartitionedCall: :	 :( $
"
_user_specified_name
inputs/0:($
"
_user_specified_name
inputs/1: : : : : : 
�
�
IuserId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_252647;
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
���������:  : 
�
�
LuserId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_252628>
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
�
�
NmovieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_252494=
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
�
&__inference_dense_layer_call_fn_252775

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2**
config_proto

GPU 

CPU2J 8*-
_gradient_op_typePartitionedCall-251716*
Tout
2*J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_251710*'
_output_shapes
:���������
�
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
�
�
cmodel_dense_features_1_userId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_251251U
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
���������: :  : : 
�
�
MuserId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_251554<
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
IdentityIdentity8assert_userid_embedding_assert_less_than_num_buckets_all^Assert*
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
]dense_features_movieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_251918L
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
IdentityIdentityHassert_dense_features_movieid_embedding_assert_less_than_num_buckets_all^Assert*
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
�
�
A__inference_model_layer_call_and_return_conditional_losses_251828

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
&dense_features/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1-dense_features_statefulpartitionedcall_args_2*-
_gradient_op_typePartitionedCall-251525*S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_251518**
config_proto

GPU 

CPU2J 8*
Tin
2*
Tout
2*'
_output_shapes
:���������
�
(dense_features_1/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1/dense_features_1_statefulpartitionedcall_args_2*
Tout
2*
Tin
2*-
_gradient_op_typePartitionedCall-251669**
config_proto

GPU 

CPU2J 8*'
_output_shapes
:���������
*U
fPRN
L__inference_dense_features_1_layer_call_and_return_conditional_losses_251662�
concatenate/PartitionedCallPartitionedCall/dense_features/StatefulPartitionedCall:output:01dense_features_1/StatefulPartitionedCall:output:0*
Tout
2**
config_proto

GPU 

CPU2J 8*'
_output_shapes
:���������*
Tin
2*-
_gradient_op_typePartitionedCall-251692*P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_251685�
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0$dense_statefulpartitionedcall_args_1$dense_statefulpartitionedcall_args_2*-
_gradient_op_typePartitionedCall-251716*
Tin
2**
config_proto

GPU 

CPU2J 8*'
_output_shapes
:���������
*
Tout
2*J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_251710�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0&dense_1_statefulpartitionedcall_args_1&dense_1_statefulpartitionedcall_args_2*-
_gradient_op_typePartitionedCall-251744*
Tout
2**
config_proto

GPU 

CPU2J 8*'
_output_shapes
:���������
*L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_251738*
Tin
2�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0&dense_2_statefulpartitionedcall_args_1&dense_2_statefulpartitionedcall_args_2**
config_proto

GPU 

CPU2J 8*-
_gradient_op_typePartitionedCall-251772*
Tin
2*
Tout
2*'
_output_shapes
:���������*L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_251766�
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
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall: : : : : : : :	 :& "
 
_user_specified_nameinputs:&"
 
_user_specified_nameinputs
�
�
J__inference_dense_features_layer_call_and_return_conditional_losses_251518
features

features_1u
qmovieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource
identity��>movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard�AmovieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard�TmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup�hmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpk
 movieId_embedding/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0�
movieId_embedding/ExpandDims
ExpandDimsfeatures)movieId_embedding/ExpandDims/dim:output:0*'
_output_shapes
:���������*
T0{
0movieId_embedding/to_sparse_input/ignore_value/xConst*
dtype0*
valueB :
���������*
_output_shapes
: �
*movieId_embedding/to_sparse_input/NotEqualNotEqual%movieId_embedding/ExpandDims:output:09movieId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:����������
)movieId_embedding/to_sparse_input/indicesWhere.movieId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
(movieId_embedding/to_sparse_input/valuesGatherNd%movieId_embedding/ExpandDims:output:01movieId_embedding/to_sparse_input/indices:index:0*
Tparams0*#
_output_shapes
:
���������*
Tindices0	�
-movieId_embedding/to_sparse_input/dense_shapeShape%movieId_embedding/ExpandDims:output:0*
T0*
out_type0	*
_output_shapes
:�
movieId_embedding/valuesCast1movieId_embedding/to_sparse_input/values:output:0*#
_output_shapes
:
���������*

DstT0	*

SrcT0b
movieId_embedding/num_buckets/xConst*
value
B :�*
_output_shapes
: *
dtype0
movieId_embedding/num_bucketsCast(movieId_embedding/num_buckets/x:output:0*

SrcT0*

DstT0	*
_output_shapes
: Z
movieId_embedding/zero/xConst*
dtype0*
value	B : *
_output_shapes
: q
movieId_embedding/zeroCast!movieId_embedding/zero/x:output:0*

DstT0	*
_output_shapes
: *

SrcT0�
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
_lower_using_switch_merge(*
_output_shapes
: *
Tout
2
*

output_shapes
: *
Tin
2
		*`
then_branchQRO
MmovieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_251409*a
else_branchRRP
NmovieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_251410*
Tcond0
�
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
1movieId_embedding/assert_greater_or_equal_0/ConstConst*
value
B: *
_output_shapes
:*
dtype0�
/movieId_embedding/assert_greater_or_equal_0/AllAll<movieId_embedding/assert_greater_or_equal_0/GreaterEqual:z:0:movieId_embedding/assert_greater_or_equal_0/Const:output:0*
_output_shapes
: �
>movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuardIf8movieId_embedding/assert_greater_or_equal_0/All:output:08movieId_embedding/assert_greater_or_equal_0/All:output:0movieId_embedding/values:y:0B^movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard*
Tin
2
	*]
then_branchNRL
JmovieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_251428*
Tcond0
*^
else_branchORM
KmovieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_251429*
Tout
2
*
_lower_using_switch_merge(*

output_shapes
: *
_output_shapes
: �
GmovieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard/IdentityIdentityGmovieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: �
movieId_embedding/IdentityIdentitymovieId_embedding/values:y:0H^movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard/IdentityK^movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard/Identity*#
_output_shapes
:
���������*
T0	�
7movieId_embedding/movieId_embedding_weights/Slice/beginConst*
dtype0*
_output_shapes
:*
value
B: �
6movieId_embedding/movieId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
value
B:*
dtype0�
1movieId_embedding/movieId_embedding_weights/SliceSlice6movieId_embedding/to_sparse_input/dense_shape:output:0@movieId_embedding/movieId_embedding_weights/Slice/begin:output:0?movieId_embedding/movieId_embedding_weights/Slice/size:output:0*
_output_shapes
:*
Index0*
T0	{
1movieId_embedding/movieId_embedding_weights/ConstConst*
value
B: *
_output_shapes
:*
dtype0�
0movieId_embedding/movieId_embedding_weights/ProdProd:movieId_embedding/movieId_embedding_weights/Slice:output:0:movieId_embedding/movieId_embedding_weights/Const:output:0*
_output_shapes
: *
T0	~
<movieId_embedding/movieId_embedding_weights/GatherV2/indicesConst*
dtype0*
value	B :*
_output_shapes
: {
9movieId_embedding/movieId_embedding_weights/GatherV2/axisConst*
value	B : *
_output_shapes
: *
dtype0�
4movieId_embedding/movieId_embedding_weights/GatherV2GatherV26movieId_embedding/to_sparse_input/dense_shape:output:0EmovieId_embedding/movieId_embedding_weights/GatherV2/indices:output:0BmovieId_embedding/movieId_embedding_weights/GatherV2/axis:output:0*
_output_shapes
: *
Tparams0	*
Tindices0*
Taxis0�
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
:movieId_embedding/movieId_embedding_weights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: �
8movieId_embedding/movieId_embedding_weights/GreaterEqualGreaterEqualKmovieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0CmovieId_embedding/movieId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:
����������
1movieId_embedding/movieId_embedding_weights/WhereWhere<movieId_embedding/movieId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
9movieId_embedding/movieId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
3movieId_embedding/movieId_embedding_weights/ReshapeReshape9movieId_embedding/movieId_embedding_weights/Where:index:0BmovieId_embedding/movieId_embedding_weights/Reshape/shape:output:0*#
_output_shapes
:
���������*
T0	}
;movieId_embedding/movieId_embedding_weights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: �
6movieId_embedding/movieId_embedding_weights/GatherV2_1GatherV2JmovieId_embedding/movieId_embedding_weights/SparseReshape:output_indices:0<movieId_embedding/movieId_embedding_weights/Reshape:output:0DmovieId_embedding/movieId_embedding_weights/GatherV2_1/axis:output:0*
Tparams0	*'
_output_shapes
:���������*
Taxis0*
Tindices0	}
;movieId_embedding/movieId_embedding_weights/GatherV2_2/axisConst*
value	B : *
_output_shapes
: *
dtype0�
6movieId_embedding/movieId_embedding_weights/GatherV2_2GatherV2KmovieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0<movieId_embedding/movieId_embedding_weights/Reshape:output:0DmovieId_embedding/movieId_embedding_weights/GatherV2_2/axis:output:0*
Tindices0	*
Tparams0	*
Taxis0*#
_output_shapes
:
����������
4movieId_embedding/movieId_embedding_weights/IdentityIdentityHmovieId_embedding/movieId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
EmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
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
valueB"       *
_output_shapes
:*
dtype0�
YmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      �
QmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicedmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0`movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0bmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0bmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
end_mask*#
_output_shapes
:
���������*
shrink_axis_mask*

begin_mask*
Index0*
T0	�
HmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/CastCastZmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*#
_output_shapes
:
���������*

DstT0*

SrcT0	�
JmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/UniqueUniquecmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*2
_output_shapes 
:
���������:
���������*
T0	�
hmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpReadVariableOpqmovieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:	�
*
dtype0�
]movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitypmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp:value:0*
_output_shapes
:	�
*
T0�
TmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherqmovieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resourceNmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique:y:0i^movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*'
_output_shapes
:���������
*
dtype0*{
_classq
omloc:@movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*
Tindices0	�
_movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identity]movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*{
_classq
omloc:@movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*
T0*'
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
5movieId_embedding/movieId_embedding_weights/Reshape_1ReshapeimovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0DmovieId_embedding/movieId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
1movieId_embedding/movieId_embedding_weights/ShapeShapeLmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:�
?movieId_embedding/movieId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
value
B:*
dtype0�
AmovieId_embedding/movieId_embedding_weights/strided_slice/stack_1Const*
value
B:*
_output_shapes
:*
dtype0�
AmovieId_embedding/movieId_embedding_weights/strided_slice/stack_2Const*
value
B:*
_output_shapes
:*
dtype0�
9movieId_embedding/movieId_embedding_weights/strided_sliceStridedSlice:movieId_embedding/movieId_embedding_weights/Shape:output:0HmovieId_embedding/movieId_embedding_weights/strided_slice/stack:output:0JmovieId_embedding/movieId_embedding_weights/strided_slice/stack_1:output:0JmovieId_embedding/movieId_embedding_weights/strided_slice/stack_2:output:0*
T0*
Index0*
shrink_axis_mask*
_output_shapes
: u
3movieId_embedding/movieId_embedding_weights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: �
1movieId_embedding/movieId_embedding_weights/stackPack<movieId_embedding/movieId_embedding_weights/stack/0:output:0BmovieId_embedding/movieId_embedding_weights/strided_slice:output:0*
T0*
N*
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
2movieId_embedding/movieId_embedding_weights/Cast_1Cast6movieId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*
_output_shapes
:*

SrcT0	�
9movieId_embedding/movieId_embedding_weights/Slice_1/beginConst*
dtype0*
value
B: *
_output_shapes
:�
8movieId_embedding/movieId_embedding_weights/Slice_1/sizeConst*
value
B:*
dtype0*
_output_shapes
:�
3movieId_embedding/movieId_embedding_weights/Slice_1Slice6movieId_embedding/movieId_embedding_weights/Cast_1:y:0BmovieId_embedding/movieId_embedding_weights/Slice_1/begin:output:0AmovieId_embedding/movieId_embedding_weights/Slice_1/size:output:0*
_output_shapes
:*
T0*
Index0�
3movieId_embedding/movieId_embedding_weights/Shape_1Shape4movieId_embedding/movieId_embedding_weights:output:0*
T0*
_output_shapes
:�
9movieId_embedding/movieId_embedding_weights/Slice_2/beginConst*
dtype0*
value
B:*
_output_shapes
:�
8movieId_embedding/movieId_embedding_weights/Slice_2/sizeConst*
dtype0*
valueB:
���������*
_output_shapes
:�
3movieId_embedding/movieId_embedding_weights/Slice_2Slice<movieId_embedding/movieId_embedding_weights/Shape_1:output:0BmovieId_embedding/movieId_embedding_weights/Slice_2/begin:output:0AmovieId_embedding/movieId_embedding_weights/Slice_2/size:output:0*
_output_shapes
:*
T0*
Index0y
7movieId_embedding/movieId_embedding_weights/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0�
2movieId_embedding/movieId_embedding_weights/concatConcatV2<movieId_embedding/movieId_embedding_weights/Slice_1:output:0<movieId_embedding/movieId_embedding_weights/Slice_2:output:0@movieId_embedding/movieId_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:�
5movieId_embedding/movieId_embedding_weights/Reshape_2Reshape4movieId_embedding/movieId_embedding_weights:output:0;movieId_embedding/movieId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:���������
�
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
'movieId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
value
B:�
movieId_embedding/strided_sliceStridedSlice movieId_embedding/Shape:output:0.movieId_embedding/strided_slice/stack:output:00movieId_embedding/strided_slice/stack_1:output:00movieId_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: c
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
AmovieId_embedding/assert_less_than_num_buckets/Assert/AssertGuardAmovieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard2�
>movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard>movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard2�
hmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOphmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp2�
TmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupTmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup:( $
"
_user_specified_name
features:($
"
_user_specified_name
features: 
�
�
(__inference_dense_1_layer_call_fn_252793

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*-
_gradient_op_typePartitionedCall-251744*
Tin
2*L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_251738*'
_output_shapes
:���������
**
config_proto

GPU 

CPU2J 8*
Tout
2�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*.

_input_shapes
:���������
::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs: : 
�
�
Ydense_features_movieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_252210K
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

Identity_1IdentityIdentity:output:0*
_output_shapes
: *
T0
"!

identity_1Identity_1:output:0*$

_input_shapes
: :
���������:  : 
�
�
IuserId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_251572;
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
���������:  : 
�
�
JmovieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_251428<
8identity_movieid_embedding_assert_greater_or_equal_0_all

placeholder	

identity_1
"
NoOpNoOp*
_output_shapes
 v
IdentityIdentity8identity_movieid_embedding_assert_greater_or_equal_0_all^NoOp*
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
��
�
A__inference_model_layer_call_and_return_conditional_losses_252172
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
ExpandDimsinputs_08dense_features/movieId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:����������
?dense_features/movieId_embedding/to_sparse_input/ignore_value/xConst*
valueB :
���������*
_output_shapes
: *
dtype0�
9dense_features/movieId_embedding/to_sparse_input/NotEqualNotEqual4dense_features/movieId_embedding/ExpandDims:output:0Hdense_features/movieId_embedding/to_sparse_input/ignore_value/x:output:0*'
_output_shapes
:���������*
T0�
8dense_features/movieId_embedding/to_sparse_input/indicesWhere=dense_features/movieId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
7dense_features/movieId_embedding/to_sparse_input/valuesGatherNd4dense_features/movieId_embedding/ExpandDims:output:0@dense_features/movieId_embedding/to_sparse_input/indices:index:0*#
_output_shapes
:
���������*
Tparams0*
Tindices0	�
<dense_features/movieId_embedding/to_sparse_input/dense_shapeShape4dense_features/movieId_embedding/ExpandDims:output:0*
_output_shapes
:*
T0*
out_type0	�
'dense_features/movieId_embedding/valuesCast@dense_features/movieId_embedding/to_sparse_input/values:output:0*

SrcT0*#
_output_shapes
:
���������*

DstT0	q
.dense_features/movieId_embedding/num_buckets/xConst*
dtype0*
_output_shapes
: *
value
B :��
,dense_features/movieId_embedding/num_bucketsCast7dense_features/movieId_embedding/num_buckets/x:output:0*
_output_shapes
: *

SrcT0*

DstT0	i
'dense_features/movieId_embedding/zero/xConst*
dtype0*
value	B : *
_output_shapes
: �
%dense_features/movieId_embedding/zeroCast0dense_features/movieId_embedding/zero/x:output:0*

SrcT0*
_output_shapes
: *

DstT0	�
Bdense_features/movieId_embedding/assert_less_than_num_buckets/LessLess+dense_features/movieId_embedding/values:y:00dense_features/movieId_embedding/num_buckets:y:0*
T0	*#
_output_shapes
:
����������
Cdense_features/movieId_embedding/assert_less_than_num_buckets/ConstConst*
_output_shapes
:*
value
B: *
dtype0�
Adense_features/movieId_embedding/assert_less_than_num_buckets/AllAllFdense_features/movieId_embedding/assert_less_than_num_buckets/Less:z:0Ldense_features/movieId_embedding/assert_less_than_num_buckets/Const:output:0*
_output_shapes
: �
Pdense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuardIfJdense_features/movieId_embedding/assert_less_than_num_buckets/All:output:0Jdense_features/movieId_embedding/assert_less_than_num_buckets/All:output:0+dense_features/movieId_embedding/values:y:00dense_features/movieId_embedding/num_buckets:y:0*

output_shapes
: *o
then_branch`R^
\dense_features_movieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_251917*
Tcond0
*
_output_shapes
: *
Tin
2
		*p
else_branchaR_
]dense_features_movieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_251918*
Tout
2
*
_lower_using_switch_merge(�
Ydense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard/IdentityIdentityYdense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: �
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
Mdense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuardIfGdense_features/movieId_embedding/assert_greater_or_equal_0/All:output:0Gdense_features/movieId_embedding/assert_greater_or_equal_0/All:output:0+dense_features/movieId_embedding/values:y:0Q^dense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard*l
then_branch]R[
Ydense_features_movieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_251936*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: *
Tcond0
*m
else_branch^R\
Zdense_features_movieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_251937*
Tin
2
	*

output_shapes
: �
Vdense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard/IdentityIdentityVdense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: �
)dense_features/movieId_embedding/IdentityIdentity+dense_features/movieId_embedding/values:y:0W^dense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard/IdentityZ^dense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard/Identity*#
_output_shapes
:
���������*
T0	�
Fdense_features/movieId_embedding/movieId_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
value
B: �
Edense_features/movieId_embedding/movieId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
value
B:�
@dense_features/movieId_embedding/movieId_embedding_weights/SliceSliceEdense_features/movieId_embedding/to_sparse_input/dense_shape:output:0Odense_features/movieId_embedding/movieId_embedding_weights/Slice/begin:output:0Ndense_features/movieId_embedding/movieId_embedding_weights/Slice/size:output:0*
_output_shapes
:*
T0	*
Index0�
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
Kdense_features/movieId_embedding/movieId_embedding_weights/GatherV2/indicesConst*
value	B :*
_output_shapes
: *
dtype0�
Hdense_features/movieId_embedding/movieId_embedding_weights/GatherV2/axisConst*
dtype0*
value	B : *
_output_shapes
: �
Cdense_features/movieId_embedding/movieId_embedding_weights/GatherV2GatherV2Edense_features/movieId_embedding/to_sparse_input/dense_shape:output:0Tdense_features/movieId_embedding/movieId_embedding_weights/GatherV2/indices:output:0Qdense_features/movieId_embedding/movieId_embedding_weights/GatherV2/axis:output:0*
Tindices0*
Taxis0*
_output_shapes
: *
Tparams0	�
Adense_features/movieId_embedding/movieId_embedding_weights/Cast/xPackHdense_features/movieId_embedding/movieId_embedding_weights/Prod:output:0Ldense_features/movieId_embedding/movieId_embedding_weights/GatherV2:output:0*
_output_shapes
:*
T0	*
N�
Hdense_features/movieId_embedding/movieId_embedding_weights/SparseReshape
SparseReshape@dense_features/movieId_embedding/to_sparse_input/indices:index:0Edense_features/movieId_embedding/to_sparse_input/dense_shape:output:0Jdense_features/movieId_embedding/movieId_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
Qdense_features/movieId_embedding/movieId_embedding_weights/SparseReshape/IdentityIdentity2dense_features/movieId_embedding/Identity:output:0*#
_output_shapes
:
���������*
T0	�
Idense_features/movieId_embedding/movieId_embedding_weights/GreaterEqual/yConst*
dtype0	*
_output_shapes
: *
value	B	 R �
Gdense_features/movieId_embedding/movieId_embedding_weights/GreaterEqualGreaterEqualZdense_features/movieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0Rdense_features/movieId_embedding/movieId_embedding_weights/GreaterEqual/y:output:0*#
_output_shapes
:
���������*
T0	�
@dense_features/movieId_embedding/movieId_embedding_weights/WhereWhereKdense_features/movieId_embedding/movieId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
Hdense_features/movieId_embedding/movieId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
Bdense_features/movieId_embedding/movieId_embedding_weights/ReshapeReshapeHdense_features/movieId_embedding/movieId_embedding_weights/Where:index:0Qdense_features/movieId_embedding/movieId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:
����������
Jdense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1/axisConst*
dtype0*
value	B : *
_output_shapes
: �
Edense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1GatherV2Ydense_features/movieId_embedding/movieId_embedding_weights/SparseReshape:output_indices:0Kdense_features/movieId_embedding/movieId_embedding_weights/Reshape:output:0Sdense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1/axis:output:0*
Tindices0	*
Tparams0	*'
_output_shapes
:���������*
Taxis0�
Jdense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2/axisConst*
dtype0*
_output_shapes
: *
value	B : �
Edense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2GatherV2Zdense_features/movieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0Kdense_features/movieId_embedding/movieId_embedding_weights/Reshape:output:0Sdense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tparams0	*
Tindices0	*#
_output_shapes
:
����������
Cdense_features/movieId_embedding/movieId_embedding_weights/IdentityIdentityWdense_features/movieId_embedding/movieId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
Tdense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
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
valueB"      *
dtype0�
`dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicesdense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0odense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0qdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0qdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*#
_output_shapes
:
���������*
T0	*

begin_mask*
end_mask*
shrink_axis_mask�
Wdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/CastCastidense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*#
_output_shapes
:
���������*

SrcT0	*

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
ldense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitydense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp:value:0*
_output_shapes
:	�
*
T0�
cdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGather�dense_features_movieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource]dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique:y:0x^dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*'
_output_shapes
:���������
*�
_class�
~|loc:@dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*
Tindices0	*
dtype0�
ndense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identityldense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*�
_class�
~|loc:@dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*
T0*'
_output_shapes
:���������
�
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
valueB"����   *
_output_shapes
:*
dtype0�
Ddense_features/movieId_embedding/movieId_embedding_weights/Reshape_1Reshapexdense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Sdense_features/movieId_embedding/movieId_embedding_weights/Reshape_1/shape:output:0*'
_output_shapes
:���������*
T0
�
@dense_features/movieId_embedding/movieId_embedding_weights/ShapeShape[dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:�
Ndense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stackConst*
dtype0*
_output_shapes
:*
value
B:�
Pdense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
value
B:�
Pdense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_2Const*
value
B:*
_output_shapes
:*
dtype0�
Hdense_features/movieId_embedding/movieId_embedding_weights/strided_sliceStridedSliceIdense_features/movieId_embedding/movieId_embedding_weights/Shape:output:0Wdense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack:output:0Ydense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_1:output:0Ydense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_2:output:0*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: �
Bdense_features/movieId_embedding/movieId_embedding_weights/stack/0Const*
value	B :*
dtype0*
_output_shapes
: �
@dense_features/movieId_embedding/movieId_embedding_weights/stackPackKdense_features/movieId_embedding/movieId_embedding_weights/stack/0:output:0Qdense_features/movieId_embedding/movieId_embedding_weights/strided_slice:output:0*
T0*
_output_shapes
:*
N�
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
:dense_features/movieId_embedding/movieId_embedding_weightsSelectHdense_features/movieId_embedding/movieId_embedding_weights/Tile:output:0Idense_features/movieId_embedding/movieId_embedding_weights/zeros_like:y:0[dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*'
_output_shapes
:���������
*
T0�
Adense_features/movieId_embedding/movieId_embedding_weights/Cast_1CastEdense_features/movieId_embedding/to_sparse_input/dense_shape:output:0*

SrcT0	*
_output_shapes
:*

DstT0�
Hdense_features/movieId_embedding/movieId_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
value
B: *
dtype0�
Gdense_features/movieId_embedding/movieId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
value
B:�
Bdense_features/movieId_embedding/movieId_embedding_weights/Slice_1SliceEdense_features/movieId_embedding/movieId_embedding_weights/Cast_1:y:0Qdense_features/movieId_embedding/movieId_embedding_weights/Slice_1/begin:output:0Pdense_features/movieId_embedding/movieId_embedding_weights/Slice_1/size:output:0*
T0*
Index0*
_output_shapes
:�
Bdense_features/movieId_embedding/movieId_embedding_weights/Shape_1ShapeCdense_features/movieId_embedding/movieId_embedding_weights:output:0*
T0*
_output_shapes
:�
Hdense_features/movieId_embedding/movieId_embedding_weights/Slice_2/beginConst*
dtype0*
value
B:*
_output_shapes
:�
Gdense_features/movieId_embedding/movieId_embedding_weights/Slice_2/sizeConst*
dtype0*
valueB:
���������*
_output_shapes
:�
Bdense_features/movieId_embedding/movieId_embedding_weights/Slice_2SliceKdense_features/movieId_embedding/movieId_embedding_weights/Shape_1:output:0Qdense_features/movieId_embedding/movieId_embedding_weights/Slice_2/begin:output:0Pdense_features/movieId_embedding/movieId_embedding_weights/Slice_2/size:output:0*
T0*
_output_shapes
:*
Index0�
Fdense_features/movieId_embedding/movieId_embedding_weights/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : �
Adense_features/movieId_embedding/movieId_embedding_weights/concatConcatV2Kdense_features/movieId_embedding/movieId_embedding_weights/Slice_1:output:0Kdense_features/movieId_embedding/movieId_embedding_weights/Slice_2:output:0Odense_features/movieId_embedding/movieId_embedding_weights/concat/axis:output:0*
T0*
N*
_output_shapes
:�
Ddense_features/movieId_embedding/movieId_embedding_weights/Reshape_2ReshapeCdense_features/movieId_embedding/movieId_embedding_weights:output:0Jdense_features/movieId_embedding/movieId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:���������
�
&dense_features/movieId_embedding/ShapeShapeMdense_features/movieId_embedding/movieId_embedding_weights/Reshape_2:output:0*
_output_shapes
:*
T0~
4dense_features/movieId_embedding/strided_slice/stackConst*
value
B: *
_output_shapes
:*
dtype0�
6dense_features/movieId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
value
B:*
dtype0�
6dense_features/movieId_embedding/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
value
B:�
.dense_features/movieId_embedding/strided_sliceStridedSlice/dense_features/movieId_embedding/Shape:output:0=dense_features/movieId_embedding/strided_slice/stack:output:0?dense_features/movieId_embedding/strided_slice/stack_1:output:0?dense_features/movieId_embedding/strided_slice/stack_2:output:0*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: r
0dense_features/movieId_embedding/Reshape/shape/1Const*
dtype0*
value	B :
*
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
 dense_features/concat/concat_dimConst*
dtype0*
valueB :
���������*
_output_shapes
: �
dense_features/concat/concatIdentity1dense_features/movieId_embedding/Reshape:output:0*'
_output_shapes
:���������
*
T0{
0dense_features_1/userId_embedding/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
����������
,dense_features_1/userId_embedding/ExpandDims
ExpandDimsinputs_19dense_features_1/userId_embedding/ExpandDims/dim:output:0*'
_output_shapes
:���������*
T0�
@dense_features_1/userId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
valueB :
���������*
dtype0�
:dense_features_1/userId_embedding/to_sparse_input/NotEqualNotEqual5dense_features_1/userId_embedding/ExpandDims:output:0Idense_features_1/userId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:����������
9dense_features_1/userId_embedding/to_sparse_input/indicesWhere>dense_features_1/userId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
8dense_features_1/userId_embedding/to_sparse_input/valuesGatherNd5dense_features_1/userId_embedding/ExpandDims:output:0Adense_features_1/userId_embedding/to_sparse_input/indices:index:0*
Tindices0	*#
_output_shapes
:
���������*
Tparams0�
=dense_features_1/userId_embedding/to_sparse_input/dense_shapeShape5dense_features_1/userId_embedding/ExpandDims:output:0*
out_type0	*
_output_shapes
:*
T0�
(dense_features_1/userId_embedding/valuesCastAdense_features_1/userId_embedding/to_sparse_input/values:output:0*#
_output_shapes
:
���������*

SrcT0*

DstT0	s
/dense_features_1/userId_embedding/num_buckets/xConst*
dtype0*
valueB	 :��*
_output_shapes
: �
-dense_features_1/userId_embedding/num_bucketsCast8dense_features_1/userId_embedding/num_buckets/x:output:0*
_output_shapes
: *

SrcT0*

DstT0	j
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
Cdense_features_1/userId_embedding/assert_less_than_num_buckets/LessLess,dense_features_1/userId_embedding/values:y:01dense_features_1/userId_embedding/num_buckets:y:0*
T0	*#
_output_shapes
:
����������
Ddense_features_1/userId_embedding/assert_less_than_num_buckets/ConstConst*
dtype0*
value
B: *
_output_shapes
:�
Bdense_features_1/userId_embedding/assert_less_than_num_buckets/AllAllGdense_features_1/userId_embedding/assert_less_than_num_buckets/Less:z:0Mdense_features_1/userId_embedding/assert_less_than_num_buckets/Const:output:0*
_output_shapes
: �
Qdense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuardIfKdense_features_1/userId_embedding/assert_less_than_num_buckets/All:output:0Kdense_features_1/userId_embedding/assert_less_than_num_buckets/All:output:0,dense_features_1/userId_embedding/values:y:01dense_features_1/userId_embedding/num_buckets:y:0N^dense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard*
Tin
2
		*
_lower_using_switch_merge(*
_output_shapes
: *
Tout
2
*p
then_branchaR_
]dense_features_1_userId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_252040*
Tcond0
*q
else_branchbR`
^dense_features_1_userId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_252041*

output_shapes
: �
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
dtype0*
value
B: *
_output_shapes
:�
?dense_features_1/userId_embedding/assert_greater_or_equal_0/AllAllLdense_features_1/userId_embedding/assert_greater_or_equal_0/GreaterEqual:z:0Jdense_features_1/userId_embedding/assert_greater_or_equal_0/Const:output:0*
_output_shapes
: �
Ndense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuardIfHdense_features_1/userId_embedding/assert_greater_or_equal_0/All:output:0Hdense_features_1/userId_embedding/assert_greater_or_equal_0/All:output:0,dense_features_1/userId_embedding/values:y:0R^dense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard*
_output_shapes
: *

output_shapes
: *m
then_branch^R\
Zdense_features_1_userId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_252059*
Tout
2
*
_lower_using_switch_merge(*n
else_branch_R]
[dense_features_1_userId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_252060*
Tin
2
	*
Tcond0
�
Wdense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard/IdentityIdentityWdense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard:output:0*
_output_shapes
: *
T0
�
*dense_features_1/userId_embedding/IdentityIdentity,dense_features_1/userId_embedding/values:y:0X^dense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard/Identity[^dense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard/Identity*#
_output_shapes
:
���������*
T0	�
Fdense_features_1/userId_embedding/userId_embedding_weights/Slice/beginConst*
_output_shapes
:*
value
B: *
dtype0�
Edense_features_1/userId_embedding/userId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
value
B:*
dtype0�
@dense_features_1/userId_embedding/userId_embedding_weights/SliceSliceFdense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Odense_features_1/userId_embedding/userId_embedding_weights/Slice/begin:output:0Ndense_features_1/userId_embedding/userId_embedding_weights/Slice/size:output:0*
Index0*
_output_shapes
:*
T0	�
@dense_features_1/userId_embedding/userId_embedding_weights/ConstConst*
value
B: *
_output_shapes
:*
dtype0�
?dense_features_1/userId_embedding/userId_embedding_weights/ProdProdIdense_features_1/userId_embedding/userId_embedding_weights/Slice:output:0Idense_features_1/userId_embedding/userId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: �
Kdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: �
Hdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : �
Cdense_features_1/userId_embedding/userId_embedding_weights/GatherV2GatherV2Fdense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Tdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/indices:output:0Qdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tparams0	*
Tindices0*
_output_shapes
: �
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
Idense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
value	B	 R *
dtype0	�
Gdense_features_1/userId_embedding/userId_embedding_weights/GreaterEqualGreaterEqualZdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0Rdense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:
����������
@dense_features_1/userId_embedding/userId_embedding_weights/WhereWhereKdense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
Hdense_features_1/userId_embedding/userId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
Bdense_features_1/userId_embedding/userId_embedding_weights/ReshapeReshapeHdense_features_1/userId_embedding/userId_embedding_weights/Where:index:0Qdense_features_1/userId_embedding/userId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:
����������
Jdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Edense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1GatherV2Ydense_features_1/userId_embedding/userId_embedding_weights/SparseReshape:output_indices:0Kdense_features_1/userId_embedding/userId_embedding_weights/Reshape:output:0Sdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1/axis:output:0*
Tparams0	*'
_output_shapes
:���������*
Taxis0*
Tindices0	�
Jdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2/axisConst*
dtype0*
_output_shapes
: *
value	B : �
Edense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2GatherV2Zdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0Kdense_features_1/userId_embedding/userId_embedding_weights/Reshape:output:0Sdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2/axis:output:0*#
_output_shapes
:
���������*
Tindices0	*
Taxis0*
Tparams0	�
Cdense_features_1/userId_embedding/userId_embedding_weights/IdentityIdentityWdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape:output_shape:0*
_output_shapes
:*
T0	�
Tdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	�
bdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsNdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1:output:0Ndense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2:output:0Ldense_features_1/userId_embedding/userId_embedding_weights/Identity:output:0]dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/Const:output:0*T
_output_shapesB
@:���������:
���������:
���������:
���������*
T0	�
fdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:�
hdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:�
hdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
valueB"      *
dtype0�
`dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicesdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0odense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0qdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0qdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*
shrink_axis_mask*
end_mask*

begin_mask*#
_output_shapes
:
����������
Wdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/CastCastidense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*#
_output_shapes
:
���������*

SrcT0	*

DstT0�
Ydense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/UniqueUniquerdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*2
_output_shapes 
:
���������:
���������*
T0	�
wdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpReadVariableOp�dense_features_1_userid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0* 
_output_shapes
:
��
*
dtype0�
ldense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitydense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
�
cdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGather�dense_features_1_userid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource]dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:y:0x^dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*�
_class�
~|loc:@dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*'
_output_shapes
:���������
*
dtype0*
Tindices0	�
ndense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identityldense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*'
_output_shapes
:���������
*
T0*�
_class�
~|loc:@dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp�
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
:*
value
B:*
dtype0�
Pdense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
value
B:�
Pdense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_2Const*
dtype0*
value
B:*
_output_shapes
:�
Hdense_features_1/userId_embedding/userId_embedding_weights/strided_sliceStridedSliceIdense_features_1/userId_embedding/userId_embedding_weights/Shape:output:0Wdense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack:output:0Ydense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_1:output:0Ydense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_2:output:0*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask�
Bdense_features_1/userId_embedding/userId_embedding_weights/stack/0Const*
dtype0*
_output_shapes
: *
value	B :�
@dense_features_1/userId_embedding/userId_embedding_weights/stackPackKdense_features_1/userId_embedding/userId_embedding_weights/stack/0:output:0Qdense_features_1/userId_embedding/userId_embedding_weights/strided_slice:output:0*
T0*
N*
_output_shapes
:�
?dense_features_1/userId_embedding/userId_embedding_weights/TileTileMdense_features_1/userId_embedding/userId_embedding_weights/Reshape_1:output:0Idense_features_1/userId_embedding/userId_embedding_weights/stack:output:0*0
_output_shapes
:������������������*
T0
�
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
Adense_features_1/userId_embedding/userId_embedding_weights/Cast_1CastFdense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0*

SrcT0	*

DstT0*
_output_shapes
:�
Hdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/beginConst*
dtype0*
_output_shapes
:*
value
B: �
Gdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
value
B:*
dtype0�
Bdense_features_1/userId_embedding/userId_embedding_weights/Slice_1SliceEdense_features_1/userId_embedding/userId_embedding_weights/Cast_1:y:0Qdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/begin:output:0Pdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
Bdense_features_1/userId_embedding/userId_embedding_weights/Shape_1ShapeCdense_features_1/userId_embedding/userId_embedding_weights:output:0*
T0*
_output_shapes
:�
Hdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/beginConst*
value
B:*
_output_shapes
:*
dtype0�
Gdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/sizeConst*
dtype0*
valueB:
���������*
_output_shapes
:�
Bdense_features_1/userId_embedding/userId_embedding_weights/Slice_2SliceKdense_features_1/userId_embedding/userId_embedding_weights/Shape_1:output:0Qdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/begin:output:0Pdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/size:output:0*
T0*
Index0*
_output_shapes
:�
Fdense_features_1/userId_embedding/userId_embedding_weights/concat/axisConst*
value	B : *
dtype0*
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
'dense_features_1/userId_embedding/ShapeShapeMdense_features_1/userId_embedding/userId_embedding_weights/Reshape_2:output:0*
_output_shapes
:*
T0
5dense_features_1/userId_embedding/strided_slice/stackConst*
dtype0*
value
B: *
_output_shapes
:�
7dense_features_1/userId_embedding/strided_slice/stack_1Const*
value
B:*
dtype0*
_output_shapes
:�
7dense_features_1/userId_embedding/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
value
B:�
/dense_features_1/userId_embedding/strided_sliceStridedSlice0dense_features_1/userId_embedding/Shape:output:0>dense_features_1/userId_embedding/strided_slice/stack:output:0@dense_features_1/userId_embedding/strided_slice/stack_1:output:0@dense_features_1/userId_embedding/strided_slice/stack_2:output:0*
Index0*
shrink_axis_mask*
T0*
_output_shapes
: s
1dense_features_1/userId_embedding/Reshape/shape/1Const*
dtype0*
value	B :
*
_output_shapes
: �
/dense_features_1/userId_embedding/Reshape/shapePack8dense_features_1/userId_embedding/strided_slice:output:0:dense_features_1/userId_embedding/Reshape/shape/1:output:0*
T0*
N*
_output_shapes
:�
)dense_features_1/userId_embedding/ReshapeReshapeMdense_features_1/userId_embedding/userId_embedding_weights/Reshape_2:output:08dense_features_1/userId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������
m
"dense_features_1/concat/concat_dimConst*
valueB :
���������*
dtype0*
_output_shapes
: �
dense_features_1/concat/concatIdentity2dense_features_1/userId_embedding/Reshape:output:0*
T0*'
_output_shapes
:���������
Y
concatenate/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :�
concatenate/concatConcatV2%dense_features/concat/concat:output:0'dense_features_1/concat/concat:output:0 concatenate/concat/axis:output:0*'
_output_shapes
:���������*
T0*
N�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes

:
*
dtype0�
dense/MatMulMatMulconcatenate/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:
�

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
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
`
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������
�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes

:
�
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
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
wdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpwdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp2�
Ndense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuardNdense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard2�
Mdense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuardMdense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard2�
Pdense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuardPdense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard2�
wdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpwdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp2�
Qdense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuardQdense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2�
cdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupcdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup: : :	 :( $
"
_user_specified_name
inputs/0:($
"
_user_specified_name
inputs/1: : : : : 
�	
�
A__inference_dense_layer_call_and_return_conditional_losses_252768

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
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������
�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*.

_input_shapes
:���������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs: : 
�
�
cmodel_dense_features_movieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_251129R
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
IdentityIdentityNassert_model_dense_features_movieid_embedding_assert_less_than_num_buckets_all^Assert*
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
]dense_features_movieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_252192L
Hassert_dense_features_movieid_embedding_assert_less_than_num_buckets_all
2
.assert_dense_features_movieid_embedding_values	7
3assert_dense_features_movieid_embedding_num_buckets	

identity_1
��Assert�
AssertAssertHassert_dense_features_movieid_embedding_assert_less_than_num_buckets_all.assert_dense_features_movieid_embedding_values3assert_dense_features_movieid_embedding_num_buckets*
_output_shapes
 *
T
2		�
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
AssertAssert:  : : 
�
�
1__inference_dense_features_1_layer_call_fn_252744
features_movieid
features_userid"
statefulpartitionedcall_args_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallfeatures_movieidfeatures_useridstatefulpartitionedcall_args_2*U
fPRN
L__inference_dense_features_1_layer_call_and_return_conditional_losses_251662*'
_output_shapes
:���������
*
Tout
2**
config_proto

GPU 

CPU2J 8*
Tin
2*-
_gradient_op_typePartitionedCall-251669�
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
_user_specified_namefeatures/userId: 
�
X
,__inference_concatenate_layer_call_fn_252757
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*-
_gradient_op_typePartitionedCall-251692*'
_output_shapes
:���������**
config_proto

GPU 

CPU2J 8*
Tin
2*
Tout
2*P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_251685`
IdentityIdentityPartitionedCall:output:0*
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
dmodel_dense_features_1_userId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_251252S
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
IdentityIdentityOassert_model_dense_features_1_userid_embedding_assert_less_than_num_buckets_all^Assert*
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
�
�
_model_dense_features_movieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_251147Q
Midentity_model_dense_features_movieid_embedding_assert_greater_or_equal_0_all

placeholder	

identity_1
"
NoOpNoOp*
_output_shapes
 �
IdentityIdentityMidentity_model_dense_features_movieid_embedding_assert_greater_or_equal_0_all^NoOp*
T0
*
_output_shapes
: J

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
&__inference_model_layer_call_fn_251876
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
StatefulPartitionedCallStatefulPartitionedCallmovieiduseridstatefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6statefulpartitionedcall_args_7statefulpartitionedcall_args_8statefulpartitionedcall_args_9**
config_proto

GPU 

CPU2J 8*-
_gradient_op_typePartitionedCall-251865*
Tout
2*
Tin
2
*'
_output_shapes
:���������*J
fERC
A__inference_model_layer_call_and_return_conditional_losses_251864�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*Q

_input_shapes@
>:
���������:
���������::::::::22
StatefulPartitionedCallStatefulPartitionedCall: : : :	 :' #
!
_user_specified_name	movieId:&"
 
_user_specified_nameuserId: : : : 
�
�
A__inference_model_layer_call_and_return_conditional_losses_251864

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
&dense_features/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1-dense_features_statefulpartitionedcall_args_2**
config_proto

GPU 

CPU2J 8*
Tin
2*
Tout
2*S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_251518*'
_output_shapes
:���������
*-
_gradient_op_typePartitionedCall-251525�
(dense_features_1/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1/dense_features_1_statefulpartitionedcall_args_2*'
_output_shapes
:���������
*U
fPRN
L__inference_dense_features_1_layer_call_and_return_conditional_losses_251662*-
_gradient_op_typePartitionedCall-251669*
Tout
2*
Tin
2**
config_proto

GPU 

CPU2J 8�
concatenate/PartitionedCallPartitionedCall/dense_features/StatefulPartitionedCall:output:01dense_features_1/StatefulPartitionedCall:output:0**
config_proto

GPU 

CPU2J 8*-
_gradient_op_typePartitionedCall-251692*P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_251685*'
_output_shapes
:���������*
Tout
2*
Tin
2�
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0$dense_statefulpartitionedcall_args_1$dense_statefulpartitionedcall_args_2*
Tin
2*
Tout
2**
config_proto

GPU 

CPU2J 8*J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_251710*-
_gradient_op_typePartitionedCall-251716*'
_output_shapes
:���������
�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0&dense_1_statefulpartitionedcall_args_1&dense_1_statefulpartitionedcall_args_2*'
_output_shapes
:���������
**
config_proto

GPU 

CPU2J 8*
Tout
2*L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_251738*
Tin
2*-
_gradient_op_typePartitionedCall-251744�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0&dense_2_statefulpartitionedcall_args_1&dense_2_statefulpartitionedcall_args_2**
config_proto

GPU 

CPU2J 8*
Tin
2*-
_gradient_op_typePartitionedCall-251772*L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_251766*
Tout
2*'
_output_shapes
:����������
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall)^dense_features_1/StatefulPartitionedCall*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*Q

_input_shapes@
>:
���������:
���������::::::::2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2T
(dense_features_1/StatefulPartitionedCall(dense_features_1/StatefulPartitionedCall:& "
 
_user_specified_nameinputs:&"
 
_user_specified_nameinputs: : : : : : : :	 
�
�
amodel_dense_features_1_userId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_251271P
Lassert_model_dense_features_1_userid_embedding_assert_greater_or_equal_0_all
9
5assert_model_dense_features_1_userid_embedding_values	

identity_1
��Assert�
AssertAssertLassert_model_dense_features_1_userid_embedding_assert_greater_or_equal_0_all5assert_model_dense_features_1_userid_embedding_values*

T
2	*
_output_shapes
 �
IdentityIdentityLassert_model_dense_features_1_userid_embedding_assert_greater_or_equal_0_all^Assert*
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
�
�
^dense_features_1_userId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_252041M
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
�	
�
C__inference_dense_1_layer_call_and_return_conditional_losses_252786

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
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������
�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*.

_input_shapes
:���������
::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: : :& "
 
_user_specified_nameinputs
�
�
Zdense_features_1_userId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_252059L
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
�
�
NmovieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_251410=
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
AssertAssert: :  : 
��
�
L__inference_dense_features_1_layer_call_and_return_conditional_losses_251662
features

features_1s
ouserid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource
identity��=userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard�@userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard�RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup�fuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpj
userId_embedding/ExpandDims/dimConst*
_output_shapes
: *
valueB :
���������*
dtype0�
userId_embedding/ExpandDims
ExpandDims
features_1(userId_embedding/ExpandDims/dim:output:0*'
_output_shapes
:���������*
T0z
/userId_embedding/to_sparse_input/ignore_value/xConst*
dtype0*
_output_shapes
: *
valueB :
����������
)userId_embedding/to_sparse_input/NotEqualNotEqual$userId_embedding/ExpandDims:output:08userId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:����������
(userId_embedding/to_sparse_input/indicesWhere-userId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
'userId_embedding/to_sparse_input/valuesGatherNd$userId_embedding/ExpandDims:output:00userId_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:
����������
,userId_embedding/to_sparse_input/dense_shapeShape$userId_embedding/ExpandDims:output:0*
out_type0	*
T0*
_output_shapes
:�
userId_embedding/valuesCast0userId_embedding/to_sparse_input/values:output:0*#
_output_shapes
:
���������*

SrcT0*

DstT0	b
userId_embedding/num_buckets/xConst*
valueB	 :��*
_output_shapes
: *
dtype0}
userId_embedding/num_bucketsCast'userId_embedding/num_buckets/x:output:0*

DstT0	*
_output_shapes
: *

SrcT0Y
userId_embedding/zero/xConst*
dtype0*
value	B : *
_output_shapes
: o
userId_embedding/zeroCast userId_embedding/zero/x:output:0*
_output_shapes
: *

SrcT0*

DstT0	�
2userId_embedding/assert_less_than_num_buckets/LessLessuserId_embedding/values:y:0 userId_embedding/num_buckets:y:0*
T0	*#
_output_shapes
:
���������}
3userId_embedding/assert_less_than_num_buckets/ConstConst*
_output_shapes
:*
dtype0*
value
B: �
1userId_embedding/assert_less_than_num_buckets/AllAll6userId_embedding/assert_less_than_num_buckets/Less:z:0<userId_embedding/assert_less_than_num_buckets/Const:output:0*
_output_shapes
: �
@userId_embedding/assert_less_than_num_buckets/Assert/AssertGuardIf:userId_embedding/assert_less_than_num_buckets/All:output:0:userId_embedding/assert_less_than_num_buckets/All:output:0userId_embedding/values:y:0 userId_embedding/num_buckets:y:0*
_output_shapes
: *
Tcond0
*
_lower_using_switch_merge(*`
else_branchQRO
MuserId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_251554*
Tin
2
		*_
then_branchPRN
LuserId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_251553*

output_shapes
: *
Tout
2
�
IuserId_embedding/assert_less_than_num_buckets/Assert/AssertGuard/IdentityIdentityIuserId_embedding/assert_less_than_num_buckets/Assert/AssertGuard:output:0*
_output_shapes
: *
T0
�
7userId_embedding/assert_greater_or_equal_0/GreaterEqualGreaterEqualuserId_embedding/values:y:0userId_embedding/zero:y:0*
T0	*#
_output_shapes
:
���������z
0userId_embedding/assert_greater_or_equal_0/ConstConst*
dtype0*
value
B: *
_output_shapes
:�
.userId_embedding/assert_greater_or_equal_0/AllAll;userId_embedding/assert_greater_or_equal_0/GreaterEqual:z:09userId_embedding/assert_greater_or_equal_0/Const:output:0*
_output_shapes
: �
=userId_embedding/assert_greater_or_equal_0/Assert/AssertGuardIf7userId_embedding/assert_greater_or_equal_0/All:output:07userId_embedding/assert_greater_or_equal_0/All:output:0userId_embedding/values:y:0A^userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard*
_lower_using_switch_merge(*

output_shapes
: *
Tin
2
	*\
then_branchMRK
IuserId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_251572*
_output_shapes
: *
Tcond0
*
Tout
2
*]
else_branchNRL
JuserId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_251573�
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
4userId_embedding/userId_embedding_weights/Slice/sizeConst*
value
B:*
dtype0*
_output_shapes
:�
/userId_embedding/userId_embedding_weights/SliceSlice5userId_embedding/to_sparse_input/dense_shape:output:0>userId_embedding/userId_embedding_weights/Slice/begin:output:0=userId_embedding/userId_embedding_weights/Slice/size:output:0*
_output_shapes
:*
T0	*
Index0y
/userId_embedding/userId_embedding_weights/ConstConst*
value
B: *
_output_shapes
:*
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
dtype0*
_output_shapes
: *
value	B : �
2userId_embedding/userId_embedding_weights/GatherV2GatherV25userId_embedding/to_sparse_input/dense_shape:output:0CuserId_embedding/userId_embedding_weights/GatherV2/indices:output:0@userId_embedding/userId_embedding_weights/GatherV2/axis:output:0*
Tparams0	*
Taxis0*
Tindices0*
_output_shapes
: �
0userId_embedding/userId_embedding_weights/Cast/xPack7userId_embedding/userId_embedding_weights/Prod:output:0;userId_embedding/userId_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:�
7userId_embedding/userId_embedding_weights/SparseReshape
SparseReshape0userId_embedding/to_sparse_input/indices:index:05userId_embedding/to_sparse_input/dense_shape:output:09userId_embedding/userId_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
@userId_embedding/userId_embedding_weights/SparseReshape/IdentityIdentity"userId_embedding/Identity:output:0*
T0	*#
_output_shapes
:
���������z
8userId_embedding/userId_embedding_weights/GreaterEqual/yConst*
value	B	 R *
_output_shapes
: *
dtype0	�
6userId_embedding/userId_embedding_weights/GreaterEqualGreaterEqualIuserId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0AuserId_embedding/userId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:
����������
/userId_embedding/userId_embedding_weights/WhereWhere:userId_embedding/userId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
7userId_embedding/userId_embedding_weights/Reshape/shapeConst*
valueB:
���������*
_output_shapes
:*
dtype0�
1userId_embedding/userId_embedding_weights/ReshapeReshape7userId_embedding/userId_embedding_weights/Where:index:0@userId_embedding/userId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:
���������{
9userId_embedding/userId_embedding_weights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: �
4userId_embedding/userId_embedding_weights/GatherV2_1GatherV2HuserId_embedding/userId_embedding_weights/SparseReshape:output_indices:0:userId_embedding/userId_embedding_weights/Reshape:output:0BuserId_embedding/userId_embedding_weights/GatherV2_1/axis:output:0*
Tindices0	*'
_output_shapes
:���������*
Tparams0	*
Taxis0{
9userId_embedding/userId_embedding_weights/GatherV2_2/axisConst*
value	B : *
_output_shapes
: *
dtype0�
4userId_embedding/userId_embedding_weights/GatherV2_2GatherV2IuserId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0:userId_embedding/userId_embedding_weights/Reshape:output:0BuserId_embedding/userId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:
����������
2userId_embedding/userId_embedding_weights/IdentityIdentityFuserId_embedding/userId_embedding_weights/SparseReshape:output_shape:0*
_output_shapes
:*
T0	�
CuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R �
QuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows=userId_embedding/userId_embedding_weights/GatherV2_1:output:0=userId_embedding/userId_embedding_weights/GatherV2_2:output:0;userId_embedding/userId_embedding_weights/Identity:output:0LuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:
���������:
���������:
����������
UuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
valueB"        *
dtype0�
WuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
WuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
valueB"      *
dtype0�
OuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicebuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0^userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0`userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0`userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
end_mask*

begin_mask*#
_output_shapes
:
���������*
T0	*
Index0*
shrink_axis_mask�
FuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/CastCastXuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*

SrcT0	*

DstT0*#
_output_shapes
:
����������
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
[userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitynuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
�
RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherouserid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resourceLuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:y:0g^userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
Tindices0	*'
_output_shapes
:���������
*y
_classo
mkloc:@userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp�
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
AuserId_embedding/userId_embedding_weights/embedding_lookup_sparseSparseSegmentMeanfuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_2:output:0NuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:idx:0JuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/Cast:y:0*'
_output_shapes
:���������
*
T0�
9userId_embedding/userId_embedding_weights/Reshape_1/shapeConst*
dtype0*
valueB"����   *
_output_shapes
:�
3userId_embedding/userId_embedding_weights/Reshape_1ReshapeguserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0BuserId_embedding/userId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
/userId_embedding/userId_embedding_weights/ShapeShapeJuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
_output_shapes
:*
T0�
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
?userId_embedding/userId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
value
B:�
7userId_embedding/userId_embedding_weights/strided_sliceStridedSlice8userId_embedding/userId_embedding_weights/Shape:output:0FuserId_embedding/userId_embedding_weights/strided_slice/stack:output:0HuserId_embedding/userId_embedding_weights/strided_slice/stack_1:output:0HuserId_embedding/userId_embedding_weights/strided_slice/stack_2:output:0*
T0*
Index0*
_output_shapes
: *
shrink_axis_masks
1userId_embedding/userId_embedding_weights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: �
/userId_embedding/userId_embedding_weights/stackPack:userId_embedding/userId_embedding_weights/stack/0:output:0@userId_embedding/userId_embedding_weights/strided_slice:output:0*
N*
_output_shapes
:*
T0�
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
)userId_embedding/userId_embedding_weightsSelect7userId_embedding/userId_embedding_weights/Tile:output:08userId_embedding/userId_embedding_weights/zeros_like:y:0JuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*'
_output_shapes
:���������
*
T0�
0userId_embedding/userId_embedding_weights/Cast_1Cast5userId_embedding/to_sparse_input/dense_shape:output:0*

SrcT0	*
_output_shapes
:*

DstT0�
7userId_embedding/userId_embedding_weights/Slice_1/beginConst*
value
B: *
dtype0*
_output_shapes
:�
6userId_embedding/userId_embedding_weights/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
value
B:�
1userId_embedding/userId_embedding_weights/Slice_1Slice4userId_embedding/userId_embedding_weights/Cast_1:y:0@userId_embedding/userId_embedding_weights/Slice_1/begin:output:0?userId_embedding/userId_embedding_weights/Slice_1/size:output:0*
Index0*
_output_shapes
:*
T0�
1userId_embedding/userId_embedding_weights/Shape_1Shape2userId_embedding/userId_embedding_weights:output:0*
T0*
_output_shapes
:�
7userId_embedding/userId_embedding_weights/Slice_2/beginConst*
value
B:*
dtype0*
_output_shapes
:�
6userId_embedding/userId_embedding_weights/Slice_2/sizeConst*
dtype0*
_output_shapes
:*
valueB:
����������
1userId_embedding/userId_embedding_weights/Slice_2Slice:userId_embedding/userId_embedding_weights/Shape_1:output:0@userId_embedding/userId_embedding_weights/Slice_2/begin:output:0?userId_embedding/userId_embedding_weights/Slice_2/size:output:0*
Index0*
_output_shapes
:*
T0w
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
$userId_embedding/strided_slice/stackConst*
dtype0*
value
B: *
_output_shapes
:p
&userId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
value
B:p
&userId_embedding/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
value
B:�
userId_embedding/strided_sliceStridedSliceuserId_embedding/Shape:output:0-userId_embedding/strided_slice/stack:output:0/userId_embedding/strided_slice/stack_1:output:0/userId_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: b
 userId_embedding/Reshape/shape/1Const*
dtype0*
value	B :
*
_output_shapes
: �
userId_embedding/Reshape/shapePack'userId_embedding/strided_slice:output:0)userId_embedding/Reshape/shape/1:output:0*
N*
T0*
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

concat/concatIdentity!userId_embedding/Reshape:output:0*'
_output_shapes
:���������
*
T0�
IdentityIdentityconcat/concat:output:0>^userId_embedding/assert_greater_or_equal_0/Assert/AssertGuardA^userId_embedding/assert_less_than_num_buckets/Assert/AssertGuardS^userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupg^userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*
T0*'
_output_shapes
:���������
"
identityIdentity:output:0*5

_input_shapes$
":
���������:
���������:2�
@userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard@userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard2�
fuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpfuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp2~
=userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard=userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard2�
RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupRuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:( $
"
_user_specified_name
features:($
"
_user_specified_name
features: 
�
�
Ydense_features_movieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_251936K
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
�
�
`model_dense_features_movieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_251148O
Kassert_model_dense_features_movieid_embedding_assert_greater_or_equal_0_all
8
4assert_model_dense_features_movieid_embedding_values	

identity_1
��Assert�
AssertAssertKassert_model_dense_features_movieid_embedding_assert_greater_or_equal_0_all4assert_model_dense_features_movieid_embedding_values*

T
2	*
_output_shapes
 �
IdentityIdentityKassert_model_dense_features_movieid_embedding_assert_greater_or_equal_0_all^Assert*
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
AssertAssert: :  
ݶ
�
!__inference__wrapped_model_251383
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
���������*
_output_shapes
: *
dtype0�
1model/dense_features/movieId_embedding/ExpandDims
ExpandDimsmovieid>model/dense_features/movieId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:����������
Emodel/dense_features/movieId_embedding/to_sparse_input/ignore_value/xConst*
valueB :
���������*
dtype0*
_output_shapes
: �
?model/dense_features/movieId_embedding/to_sparse_input/NotEqualNotEqual:model/dense_features/movieId_embedding/ExpandDims:output:0Nmodel/dense_features/movieId_embedding/to_sparse_input/ignore_value/x:output:0*'
_output_shapes
:���������*
T0�
>model/dense_features/movieId_embedding/to_sparse_input/indicesWhereCmodel/dense_features/movieId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
=model/dense_features/movieId_embedding/to_sparse_input/valuesGatherNd:model/dense_features/movieId_embedding/ExpandDims:output:0Fmodel/dense_features/movieId_embedding/to_sparse_input/indices:index:0*
Tindices0	*#
_output_shapes
:
���������*
Tparams0�
Bmodel/dense_features/movieId_embedding/to_sparse_input/dense_shapeShape:model/dense_features/movieId_embedding/ExpandDims:output:0*
_output_shapes
:*
out_type0	*
T0�
-model/dense_features/movieId_embedding/valuesCastFmodel/dense_features/movieId_embedding/to_sparse_input/values:output:0*

SrcT0*#
_output_shapes
:
���������*

DstT0	w
4model/dense_features/movieId_embedding/num_buckets/xConst*
_output_shapes
: *
value
B :�*
dtype0�
2model/dense_features/movieId_embedding/num_bucketsCast=model/dense_features/movieId_embedding/num_buckets/x:output:0*

DstT0	*
_output_shapes
: *

SrcT0o
-model/dense_features/movieId_embedding/zero/xConst*
dtype0*
value	B : *
_output_shapes
: �
+model/dense_features/movieId_embedding/zeroCast6model/dense_features/movieId_embedding/zero/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
Hmodel/dense_features/movieId_embedding/assert_less_than_num_buckets/LessLess1model/dense_features/movieId_embedding/values:y:06model/dense_features/movieId_embedding/num_buckets:y:0*#
_output_shapes
:
���������*
T0	�
Imodel/dense_features/movieId_embedding/assert_less_than_num_buckets/ConstConst*
dtype0*
_output_shapes
:*
value
B: �
Gmodel/dense_features/movieId_embedding/assert_less_than_num_buckets/AllAllLmodel/dense_features/movieId_embedding/assert_less_than_num_buckets/Less:z:0Rmodel/dense_features/movieId_embedding/assert_less_than_num_buckets/Const:output:0*
_output_shapes
: �
Vmodel/dense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuardIfPmodel/dense_features/movieId_embedding/assert_less_than_num_buckets/All:output:0Pmodel/dense_features/movieId_embedding/assert_less_than_num_buckets/All:output:01model/dense_features/movieId_embedding/values:y:06model/dense_features/movieId_embedding/num_buckets:y:0*
Tout
2
*

output_shapes
: *
Tin
2
		*
_output_shapes
: *
Tcond0
*v
else_branchgRe
cmodel_dense_features_movieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_251129*
_lower_using_switch_merge(*u
then_branchfRd
bmodel_dense_features_movieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_251128�
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
Smodel/dense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuardIfMmodel/dense_features/movieId_embedding/assert_greater_or_equal_0/All:output:0Mmodel/dense_features/movieId_embedding/assert_greater_or_equal_0/All:output:01model/dense_features/movieId_embedding/values:y:0W^model/dense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard*
_output_shapes
: *
Tin
2
	*r
then_branchcRa
_model_dense_features_movieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_251147*
Tout
2
*

output_shapes
: *s
else_branchdRb
`model_dense_features_movieId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_251148*
Tcond0
*
_lower_using_switch_merge(�
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
Lmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice/beginConst*
value
B: *
dtype0*
_output_shapes
:�
Kmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
value
B:*
dtype0�
Fmodel/dense_features/movieId_embedding/movieId_embedding_weights/SliceSliceKmodel/dense_features/movieId_embedding/to_sparse_input/dense_shape:output:0Umodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice/begin:output:0Tmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice/size:output:0*
_output_shapes
:*
Index0*
T0	�
Fmodel/dense_features/movieId_embedding/movieId_embedding_weights/ConstConst*
value
B: *
dtype0*
_output_shapes
:�
Emodel/dense_features/movieId_embedding/movieId_embedding_weights/ProdProdOmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice:output:0Omodel/dense_features/movieId_embedding/movieId_embedding_weights/Const:output:0*
_output_shapes
: *
T0	�
Qmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2/indicesConst*
dtype0*
_output_shapes
: *
value	B :�
Nmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2/axisConst*
dtype0*
value	B : *
_output_shapes
: �
Imodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2GatherV2Kmodel/dense_features/movieId_embedding/to_sparse_input/dense_shape:output:0Zmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2/indices:output:0Wmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: �
Gmodel/dense_features/movieId_embedding/movieId_embedding_weights/Cast/xPackNmodel/dense_features/movieId_embedding/movieId_embedding_weights/Prod:output:0Rmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2:output:0*
_output_shapes
:*
N*
T0	�
Nmodel/dense_features/movieId_embedding/movieId_embedding_weights/SparseReshape
SparseReshapeFmodel/dense_features/movieId_embedding/to_sparse_input/indices:index:0Kmodel/dense_features/movieId_embedding/to_sparse_input/dense_shape:output:0Pmodel/dense_features/movieId_embedding/movieId_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
Wmodel/dense_features/movieId_embedding/movieId_embedding_weights/SparseReshape/IdentityIdentity8model/dense_features/movieId_embedding/Identity:output:0*#
_output_shapes
:
���������*
T0	�
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
Nmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
valueB:
���������*
dtype0�
Hmodel/dense_features/movieId_embedding/movieId_embedding_weights/ReshapeReshapeNmodel/dense_features/movieId_embedding/movieId_embedding_weights/Where:index:0Wmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape/shape:output:0*#
_output_shapes
:
���������*
T0	�
Pmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1/axisConst*
dtype0*
_output_shapes
: *
value	B : �
Kmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1GatherV2_model/dense_features/movieId_embedding/movieId_embedding_weights/SparseReshape:output_indices:0Qmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape:output:0Ymodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1/axis:output:0*
Tparams0	*
Taxis0*
Tindices0	*'
_output_shapes
:����������
Pmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: �
Kmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2GatherV2`model/dense_features/movieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0Qmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape:output:0Ymodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2/axis:output:0*
Tparams0	*
Taxis0*#
_output_shapes
:
���������*
Tindices0	�
Imodel/dense_features/movieId_embedding/movieId_embedding_weights/IdentityIdentity]model/dense_features/movieId_embedding/movieId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
Zmodel/dense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/ConstConst*
value	B	 R *
_output_shapes
: *
dtype0	�
hmodel/dense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsTmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1:output:0Tmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2:output:0Rmodel/dense_features/movieId_embedding/movieId_embedding_weights/Identity:output:0cmodel/dense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:
���������:
���������:
����������
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
dtype0*
_output_shapes
:*
valueB"      �
fmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceymodel/dense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0umodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0wmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0wmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*#
_output_shapes
:
���������*
T0	*
end_mask*
shrink_axis_mask*

begin_mask*
Index0�
]model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/CastCastomodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:
����������
_model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/UniqueUniquexmodel/dense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:
���������:
����������
}model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpReadVariableOp�model_dense_features_movieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:	�
�
rmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity�model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp:value:0*
_output_shapes
:	�
*
T0�
imodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGather�model_dense_features_movieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resourcecmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique:y:0~^model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*'
_output_shapes
:���������
*�
_class�
��loc:@model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*
Tindices0	*
dtype0�
tmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identityrmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*�
_class�
��loc:@model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*'
_output_shapes
:���������
�
tmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_2Identity}model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0*'
_output_shapes
:���������
*
T0�
Xmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparseSparseSegmentMean}model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_2:output:0emodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique:idx:0amodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Cast:y:0*'
_output_shapes
:���������
*
T0�
Pmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Jmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape_1Reshape~model/dense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Ymodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape_1/shape:output:0*'
_output_shapes
:���������*
T0
�
Fmodel/dense_features/movieId_embedding/movieId_embedding_weights/ShapeShapeamodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
_output_shapes
:*
T0�
Tmodel/dense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stackConst*
dtype0*
value
B:*
_output_shapes
:�
Vmodel/dense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_1Const*
value
B:*
_output_shapes
:*
dtype0�
Vmodel/dense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
value
B:�
Nmodel/dense_features/movieId_embedding/movieId_embedding_weights/strided_sliceStridedSliceOmodel/dense_features/movieId_embedding/movieId_embedding_weights/Shape:output:0]model/dense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack:output:0_model/dense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_1:output:0_model/dense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_2:output:0*
shrink_axis_mask*
Index0*
_output_shapes
: *
T0�
Hmodel/dense_features/movieId_embedding/movieId_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :�
Fmodel/dense_features/movieId_embedding/movieId_embedding_weights/stackPackQmodel/dense_features/movieId_embedding/movieId_embedding_weights/stack/0:output:0Wmodel/dense_features/movieId_embedding/movieId_embedding_weights/strided_slice:output:0*
T0*
N*
_output_shapes
:�
Emodel/dense_features/movieId_embedding/movieId_embedding_weights/TileTileSmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape_1:output:0Omodel/dense_features/movieId_embedding/movieId_embedding_weights/stack:output:0*0
_output_shapes
:������������������*
T0
�
Kmodel/dense_features/movieId_embedding/movieId_embedding_weights/zeros_like	ZerosLikeamodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*'
_output_shapes
:���������
*
T0�
@model/dense_features/movieId_embedding/movieId_embedding_weightsSelectNmodel/dense_features/movieId_embedding/movieId_embedding_weights/Tile:output:0Omodel/dense_features/movieId_embedding/movieId_embedding_weights/zeros_like:y:0amodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*'
_output_shapes
:���������
*
T0�
Gmodel/dense_features/movieId_embedding/movieId_embedding_weights/Cast_1CastKmodel/dense_features/movieId_embedding/to_sparse_input/dense_shape:output:0*

SrcT0	*
_output_shapes
:*

DstT0�
Nmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_1/beginConst*
value
B: *
_output_shapes
:*
dtype0�
Mmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
value
B:*
dtype0�
Hmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_1SliceKmodel/dense_features/movieId_embedding/movieId_embedding_weights/Cast_1:y:0Wmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_1/begin:output:0Vmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_1/size:output:0*
_output_shapes
:*
T0*
Index0�
Hmodel/dense_features/movieId_embedding/movieId_embedding_weights/Shape_1ShapeImodel/dense_features/movieId_embedding/movieId_embedding_weights:output:0*
_output_shapes
:*
T0�
Nmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
value
B:*
dtype0�
Mmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_2/sizeConst*
dtype0*
_output_shapes
:*
valueB:
����������
Hmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_2SliceQmodel/dense_features/movieId_embedding/movieId_embedding_weights/Shape_1:output:0Wmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_2/begin:output:0Vmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_2/size:output:0*
_output_shapes
:*
Index0*
T0�
Lmodel/dense_features/movieId_embedding/movieId_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Gmodel/dense_features/movieId_embedding/movieId_embedding_weights/concatConcatV2Qmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_1:output:0Qmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_2:output:0Umodel/dense_features/movieId_embedding/movieId_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Jmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape_2ReshapeImodel/dense_features/movieId_embedding/movieId_embedding_weights:output:0Pmodel/dense_features/movieId_embedding/movieId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:���������
�
,model/dense_features/movieId_embedding/ShapeShapeSmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:�
:model/dense_features/movieId_embedding/strided_slice/stackConst*
value
B: *
_output_shapes
:*
dtype0�
<model/dense_features/movieId_embedding/strided_slice/stack_1Const*
value
B:*
_output_shapes
:*
dtype0�
<model/dense_features/movieId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
value
B:�
4model/dense_features/movieId_embedding/strided_sliceStridedSlice5model/dense_features/movieId_embedding/Shape:output:0Cmodel/dense_features/movieId_embedding/strided_slice/stack:output:0Emodel/dense_features/movieId_embedding/strided_slice/stack_1:output:0Emodel/dense_features/movieId_embedding/strided_slice/stack_2:output:0*
Index0*
_output_shapes
: *
T0*
shrink_axis_maskx
6model/dense_features/movieId_embedding/Reshape/shape/1Const*
value	B :
*
_output_shapes
: *
dtype0�
4model/dense_features/movieId_embedding/Reshape/shapePack=model/dense_features/movieId_embedding/strided_slice:output:0?model/dense_features/movieId_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
.model/dense_features/movieId_embedding/ReshapeReshapeSmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape_2:output:0=model/dense_features/movieId_embedding/Reshape/shape:output:0*'
_output_shapes
:���������
*
T0q
&model/dense_features/concat/concat_dimConst*
valueB :
���������*
_output_shapes
: *
dtype0�
"model/dense_features/concat/concatIdentity7model/dense_features/movieId_embedding/Reshape:output:0*
T0*'
_output_shapes
:���������
�
6model/dense_features_1/userId_embedding/ExpandDims/dimConst*
dtype0*
valueB :
���������*
_output_shapes
: �
2model/dense_features_1/userId_embedding/ExpandDims
ExpandDimsuserid?model/dense_features_1/userId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:����������
Fmodel/dense_features_1/userId_embedding/to_sparse_input/ignore_value/xConst*
dtype0*
valueB :
���������*
_output_shapes
: �
@model/dense_features_1/userId_embedding/to_sparse_input/NotEqualNotEqual;model/dense_features_1/userId_embedding/ExpandDims:output:0Omodel/dense_features_1/userId_embedding/to_sparse_input/ignore_value/x:output:0*'
_output_shapes
:���������*
T0�
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
.model/dense_features_1/userId_embedding/valuesCastGmodel/dense_features_1/userId_embedding/to_sparse_input/values:output:0*

SrcT0*

DstT0	*#
_output_shapes
:
���������y
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
.model/dense_features_1/userId_embedding/zero/xConst*
_output_shapes
: *
dtype0*
value	B : �
,model/dense_features_1/userId_embedding/zeroCast7model/dense_features_1/userId_embedding/zero/x:output:0*
_output_shapes
: *

DstT0	*

SrcT0�
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
Wmodel/dense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuardIfQmodel/dense_features_1/userId_embedding/assert_less_than_num_buckets/All:output:0Qmodel/dense_features_1/userId_embedding/assert_less_than_num_buckets/All:output:02model/dense_features_1/userId_embedding/values:y:07model/dense_features_1/userId_embedding/num_buckets:y:0T^model/dense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard*v
then_branchgRe
cmodel_dense_features_1_userId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_251251*w
else_branchhRf
dmodel_dense_features_1_userId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_false_251252*
Tin
2
		*

output_shapes
: *
Tout
2
*
_lower_using_switch_merge(*
Tcond0
*
_output_shapes
: �
`model/dense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard/IdentityIdentity`model/dense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: �
Nmodel/dense_features_1/userId_embedding/assert_greater_or_equal_0/GreaterEqualGreaterEqual2model/dense_features_1/userId_embedding/values:y:00model/dense_features_1/userId_embedding/zero:y:0*
T0	*#
_output_shapes
:
����������
Gmodel/dense_features_1/userId_embedding/assert_greater_or_equal_0/ConstConst*
value
B: *
_output_shapes
:*
dtype0�
Emodel/dense_features_1/userId_embedding/assert_greater_or_equal_0/AllAllRmodel/dense_features_1/userId_embedding/assert_greater_or_equal_0/GreaterEqual:z:0Pmodel/dense_features_1/userId_embedding/assert_greater_or_equal_0/Const:output:0*
_output_shapes
: �
Tmodel/dense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuardIfNmodel/dense_features_1/userId_embedding/assert_greater_or_equal_0/All:output:0Nmodel/dense_features_1/userId_embedding/assert_greater_or_equal_0/All:output:02model/dense_features_1/userId_embedding/values:y:0X^model/dense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard*

output_shapes
: *s
then_branchdRb
`model_dense_features_1_userId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_true_251270*
_lower_using_switch_merge(*
_output_shapes
: *t
else_brancheRc
amodel_dense_features_1_userId_embedding_assert_greater_or_equal_0_Assert_AssertGuard_false_251271*
Tin
2
	*
Tcond0
*
Tout
2
�
]model/dense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard/IdentityIdentity]model/dense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard:output:0*
_output_shapes
: *
T0
�
0model/dense_features_1/userId_embedding/IdentityIdentity2model/dense_features_1/userId_embedding/values:y:0^^model/dense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard/Identitya^model/dense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard/Identity*
T0	*#
_output_shapes
:
����������
Lmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice/beginConst*
value
B: *
dtype0*
_output_shapes
:�
Kmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice/sizeConst*
dtype0*
_output_shapes
:*
value
B:�
Fmodel/dense_features_1/userId_embedding/userId_embedding_weights/SliceSliceLmodel/dense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Umodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice/begin:output:0Tmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice/size:output:0*
_output_shapes
:*
Index0*
T0	�
Fmodel/dense_features_1/userId_embedding/userId_embedding_weights/ConstConst*
dtype0*
_output_shapes
:*
value
B: �
Emodel/dense_features_1/userId_embedding/userId_embedding_weights/ProdProdOmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice:output:0Omodel/dense_features_1/userId_embedding/userId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: �
Qmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
value	B :*
dtype0�
Nmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : �
Imodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2GatherV2Lmodel/dense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Zmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2/indices:output:0Wmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2/axis:output:0*
Tparams0	*
_output_shapes
: *
Tindices0*
Taxis0�
Gmodel/dense_features_1/userId_embedding/userId_embedding_weights/Cast/xPackNmodel/dense_features_1/userId_embedding/userId_embedding_weights/Prod:output:0Rmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2:output:0*
N*
_output_shapes
:*
T0	�
Nmodel/dense_features_1/userId_embedding/userId_embedding_weights/SparseReshape
SparseReshapeGmodel/dense_features_1/userId_embedding/to_sparse_input/indices:index:0Lmodel/dense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Pmodel/dense_features_1/userId_embedding/userId_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
Wmodel/dense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/IdentityIdentity9model/dense_features_1/userId_embedding/Identity:output:0*
T0	*#
_output_shapes
:
����������
Omodel/dense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
Mmodel/dense_features_1/userId_embedding/userId_embedding_weights/GreaterEqualGreaterEqual`model/dense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0Xmodel/dense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual/y:output:0*#
_output_shapes
:
���������*
T0	�
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
Pmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: �
Kmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1GatherV2_model/dense_features_1/userId_embedding/userId_embedding_weights/SparseReshape:output_indices:0Qmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape:output:0Ymodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1/axis:output:0*
Tindices0	*
Taxis0*'
_output_shapes
:���������*
Tparams0	�
Pmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: �
Kmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2GatherV2`model/dense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0Qmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape:output:0Ymodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2/axis:output:0*
Tparams0	*
Taxis0*
Tindices0	*#
_output_shapes
:
����������
Imodel/dense_features_1/userId_embedding/userId_embedding_weights/IdentityIdentity]model/dense_features_1/userId_embedding/userId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
Zmodel/dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: �
hmodel/dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsTmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1:output:0Tmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2:output:0Rmodel/dense_features_1/userId_embedding/userId_embedding_weights/Identity:output:0cmodel/dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/Const:output:0*T
_output_shapesB
@:���������:
���������:
���������:
���������*
T0	�
lmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        �
nmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:�
nmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      �
fmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceymodel/dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0umodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0wmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0wmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*#
_output_shapes
:
���������*
shrink_axis_mask*

begin_mask*
T0	*
Index0*
end_mask�
]model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/CastCastomodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*

SrcT0	*

DstT0*#
_output_shapes
:
����������
_model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/UniqueUniquexmodel/dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:
���������:
����������
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
imodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGather�model_dense_features_1_userid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_read_readvariableop_resourcecmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:y:0~^model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*�
_class�
��loc:@model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*'
_output_shapes
:���������
*
Tindices0	�
tmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identityrmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*�
_class�
��loc:@model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*'
_output_shapes
:���������
�
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
dtype0*
_output_shapes
:*
valueB"����   �
Jmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape_1Reshape~model/dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Ymodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape_1/shape:output:0*'
_output_shapes
:���������*
T0
�
Fmodel/dense_features_1/userId_embedding/userId_embedding_weights/ShapeShapeamodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:�
Tmodel/dense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stackConst*
dtype0*
_output_shapes
:*
value
B:�
Vmodel/dense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
value
B:�
Vmodel/dense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_2Const*
value
B:*
dtype0*
_output_shapes
:�
Nmodel/dense_features_1/userId_embedding/userId_embedding_weights/strided_sliceStridedSliceOmodel/dense_features_1/userId_embedding/userId_embedding_weights/Shape:output:0]model/dense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack:output:0_model/dense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_1:output:0_model/dense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_2:output:0*
Index0*
_output_shapes
: *
shrink_axis_mask*
T0�
Hmodel/dense_features_1/userId_embedding/userId_embedding_weights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: �
Fmodel/dense_features_1/userId_embedding/userId_embedding_weights/stackPackQmodel/dense_features_1/userId_embedding/userId_embedding_weights/stack/0:output:0Wmodel/dense_features_1/userId_embedding/userId_embedding_weights/strided_slice:output:0*
_output_shapes
:*
T0*
N�
Emodel/dense_features_1/userId_embedding/userId_embedding_weights/TileTileSmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape_1:output:0Omodel/dense_features_1/userId_embedding/userId_embedding_weights/stack:output:0*0
_output_shapes
:������������������*
T0
�
Kmodel/dense_features_1/userId_embedding/userId_embedding_weights/zeros_like	ZerosLikeamodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
@model/dense_features_1/userId_embedding/userId_embedding_weightsSelectNmodel/dense_features_1/userId_embedding/userId_embedding_weights/Tile:output:0Omodel/dense_features_1/userId_embedding/userId_embedding_weights/zeros_like:y:0amodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*'
_output_shapes
:���������
*
T0�
Gmodel/dense_features_1/userId_embedding/userId_embedding_weights/Cast_1CastLmodel/dense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0*
_output_shapes
:*

DstT0*

SrcT0	�
Nmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_1/beginConst*
value
B: *
_output_shapes
:*
dtype0�
Mmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_1/sizeConst*
value
B:*
_output_shapes
:*
dtype0�
Hmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_1SliceKmodel/dense_features_1/userId_embedding/userId_embedding_weights/Cast_1:y:0Wmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_1/begin:output:0Vmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_1/size:output:0*
T0*
Index0*
_output_shapes
:�
Hmodel/dense_features_1/userId_embedding/userId_embedding_weights/Shape_1ShapeImodel/dense_features_1/userId_embedding/userId_embedding_weights:output:0*
T0*
_output_shapes
:�
Nmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_2/beginConst*
value
B:*
dtype0*
_output_shapes
:�
Mmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
valueB:
���������*
dtype0�
Hmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_2SliceQmodel/dense_features_1/userId_embedding/userId_embedding_weights/Shape_1:output:0Wmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_2/begin:output:0Vmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_2/size:output:0*
_output_shapes
:*
T0*
Index0�
Lmodel/dense_features_1/userId_embedding/userId_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Gmodel/dense_features_1/userId_embedding/userId_embedding_weights/concatConcatV2Qmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_1:output:0Qmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_2:output:0Umodel/dense_features_1/userId_embedding/userId_embedding_weights/concat/axis:output:0*
_output_shapes
:*
N*
T0�
Jmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape_2ReshapeImodel/dense_features_1/userId_embedding/userId_embedding_weights:output:0Pmodel/dense_features_1/userId_embedding/userId_embedding_weights/concat:output:0*'
_output_shapes
:���������
*
T0�
-model/dense_features_1/userId_embedding/ShapeShapeSmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape_2:output:0*
_output_shapes
:*
T0�
;model/dense_features_1/userId_embedding/strided_slice/stackConst*
dtype0*
_output_shapes
:*
value
B: �
=model/dense_features_1/userId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
value
B:�
=model/dense_features_1/userId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
value
B:*
dtype0�
5model/dense_features_1/userId_embedding/strided_sliceStridedSlice6model/dense_features_1/userId_embedding/Shape:output:0Dmodel/dense_features_1/userId_embedding/strided_slice/stack:output:0Fmodel/dense_features_1/userId_embedding/strided_slice/stack_1:output:0Fmodel/dense_features_1/userId_embedding/strided_slice/stack_2:output:0*
T0*
Index0*
_output_shapes
: *
shrink_axis_masky
7model/dense_features_1/userId_embedding/Reshape/shape/1Const*
value	B :
*
_output_shapes
: *
dtype0�
5model/dense_features_1/userId_embedding/Reshape/shapePack>model/dense_features_1/userId_embedding/strided_slice:output:0@model/dense_features_1/userId_embedding/Reshape/shape/1:output:0*
N*
_output_shapes
:*
T0�
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
model/concatenate/concat/axisConst*
_output_shapes
: *
value	B :*
dtype0�
model/concatenate/concatConcatV2+model/dense_features/concat/concat:output:0-model/dense_features_1/concat/concat:output:0&model/concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes

:
*
dtype0�
model/dense/MatMulMatMul!model/concatenate/concat:output:0)model/dense/MatMul/ReadVariableOp:value:0*'
_output_shapes
:���������
*
T0�
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:
�
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
h
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
model/dense_1/MatMulMatMulmodel/dense/Relu:activations:0+model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:
*
dtype0�
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
l
model/dense_1/ReluRelumodel/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������
�
#model/dense_2/MatMul/ReadVariableOpReadVariableOp,model_dense_2_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes

:
*
dtype0�
model/dense_2/MatMulMatMul model/dense_1/Relu:activations:0+model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$model/dense_2/BiasAdd/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:�
model/dense_2/BiasAddBiasAddmodel/dense_2/MatMul:product:0,model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
model/dense_2/SigmoidSigmoidmodel/dense_2/BiasAdd:output:0*'
_output_shapes
:���������*
T0�
IdentityIdentitymodel/dense_2/Sigmoid:y:0#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp%^model/dense_2/BiasAdd/ReadVariableOp$^model/dense_2/MatMul/ReadVariableOpT^model/dense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuardW^model/dense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuardj^model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup~^model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpU^model/dense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuardX^model/dense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuardj^model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup~^model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*Q

_input_shapes@
>:
���������:
���������::::::::2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2J
#model/dense_1/MatMul/ReadVariableOp#model/dense_1/MatMul/ReadVariableOp2�
}model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp}model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp2�
Smodel/dense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuardSmodel/dense_features/movieId_embedding/assert_greater_or_equal_0/Assert/AssertGuard2�
}model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp}model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp2�
Wmodel/dense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuardWmodel/dense_features_1/userId_embedding/assert_less_than_num_buckets/Assert/AssertGuard2J
#model/dense_2/MatMul/ReadVariableOp#model/dense_2/MatMul/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2L
$model/dense_2/BiasAdd/ReadVariableOp$model/dense_2/BiasAdd/ReadVariableOp2�
Tmodel/dense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuardTmodel/dense_features_1/userId_embedding/assert_greater_or_equal_0/Assert/AssertGuard2�
Vmodel/dense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuardVmodel/dense_features/movieId_embedding/assert_less_than_num_buckets/Assert/AssertGuard2�
imodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupimodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup2�
imodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupimodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp:' #
!
_user_specified_name	movieId:&"
 
_user_specified_nameuserId: : : : : : : :	 
�
q
G__inference_concatenate_layer_call_and_return_conditional_losses_251685

inputs
inputs_1
identityM
concat/axisConst*
value	B :*
dtype0*
_output_shapes
: u
concatConcatV2inputsinputs_1concat/axis:output:0*'
_output_shapes
:���������*
N*
T0W
IdentityIdentityconcat:output:0*'
_output_shapes
:���������*
T0"
identityIdentity:output:0*9

_input_shapes(
&:���������
:���������
:& "
 
_user_specified_nameinputs:&"
 
_user_specified_nameinputs
�	
�
C__inference_dense_2_layer_call_and_return_conditional_losses_251766

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes

:
i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*'
_output_shapes
:���������*
T0�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*'
_output_shapes
:���������*
T0V
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
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
�
�
MmovieId_embedding_assert_less_than_num_buckets_Assert_AssertGuard_true_251409?
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
���������: :  : : "wL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*�
serving_default�
5
userId+
serving_default_userId:0
���������
7
movieId,
serving_default_movieId:0
���������;
dense_20
StatefulPartitionedCall:0���������tensorflow/serving/predict*>
__saved_model_init_op%#
__saved_model_init_op

NoOp:ݎ
�
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

trainable_variables
regularization_losses

	variables


	keras_api

signatures
+�&call_and_return_all_conditional_losses
�_default_save_signature

�__call__"�~
_tf_keras_model�~{"class_name": "Model", "name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null], "dtype": "int32", "sparse": false, "name": "productId"}, "name": "productId", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": [null], "dtype": "int32", "sparse": false, "name": "userId"}, "name": "userId", "inbound_nodes": []}, {"class_name": "DenseFeatures", "config": {"name": "dense_features", "trainable": true, "dtype": "float32", "feature_columns": [{"class_name": "EmbeddingColumn", "config": {"categorical_column": {"class_name": "IdentityCategoricalColumn", "config": {"key": "productId", "number_buckets": 1001, "default_value": null}}, "dimension": 10, "combiner": "mean", "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.31622776601683794, "seed": null, "dtype": "float32"}}, "ckpt_to_load_from": null, "tensor_name_in_ckpt": null, "max_norm": null, "trainable": true}}]}, "name": "dense_features", "inbound_nodes": [{"productId": ["productId", 0, 0, {}], "userId": ["userId", 0, 0, {}]}]}, {"class_name": "DenseFeatures", "config": {"name": "dense_features_1", "trainable": true, "dtype": "float32", "feature_columns": [{"class_name": "EmbeddingColumn", "config": {"categorical_column": {"class_name": "IdentityCategoricalColumn", "config": {"key": "userId", "number_buckets": 30001, "default_value": null}}, "dimension": 10, "combiner": "mean", "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.31622776601683794, "seed": null, "dtype": "float32"}}, "ckpt_to_load_from": null, "tensor_name_in_ckpt": null, "max_norm": null, "trainable": true}}]}, "name": "dense_features_1", "inbound_nodes": [{"productId": ["productId", 0, 0, {}], "userId": ["userId", 0, 0, {}]}]}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate", "inbound_nodes": [[["dense_features", 0, 0, {}], ["dense_features_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["concatenate", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["dense", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["dense_1", 0, 0, {}]]]}], "input_layers": {"productId": ["productId", 0, 0], "userId": ["userId", 0, 0]}, "output_layers": [["dense_2", 0, 0]]}, "input_spec": [null, null], "keras_version": "2.2.4-tf", "backend": "tensorflow", "model_config": {"class_name": "Model", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null], "dtype": "int32", "sparse": false, "name": "productId"}, "name": "productId", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": [null], "dtype": "int32", "sparse": false, "name": "userId"}, "name": "userId", "inbound_nodes": []}, {"class_name": "DenseFeatures", "config": {"name": "dense_features", "trainable": true, "dtype": "float32", "feature_columns": [{"class_name": "EmbeddingColumn", "config": {"categorical_column": {"class_name": "IdentityCategoricalColumn", "config": {"key": "productId", "number_buckets": 1001, "default_value": null}}, "dimension": 10, "combiner": "mean", "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.31622776601683794, "seed": null, "dtype": "float32"}}, "ckpt_to_load_from": null, "tensor_name_in_ckpt": null, "max_norm": null, "trainable": true}}]}, "name": "dense_features", "inbound_nodes": [{"productId": ["productId", 0, 0, {}], "userId": ["userId", 0, 0, {}]}]}, {"class_name": "DenseFeatures", "config": {"name": "dense_features_1", "trainable": true, "dtype": "float32", "feature_columns": [{"class_name": "EmbeddingColumn", "config": {"categorical_column": {"class_name": "IdentityCategoricalColumn", "config": {"key": "userId", "number_buckets": 30001, "default_value": null}}, "dimension": 10, "combiner": "mean", "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.31622776601683794, "seed": null, "dtype": "float32"}}, "ckpt_to_load_from": null, "tensor_name_in_ckpt": null, "max_norm": null, "trainable": true}}]}, "name": "dense_features_1", "inbound_nodes": [{"productId": ["productId", 0, 0, {}], "userId": ["userId", 0, 0, {}]}]}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate", "inbound_nodes": [[["dense_features", 0, 0, {}], ["dense_features_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["concatenate", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["dense", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["dense_1", 0, 0, {}]]]}], "input_layers": {"productId": ["productId", 0, 0], "userId": ["userId", 0, 0]}, "output_layers": [["dense_2", 0, 0]]}}, "training_config": {"loss": "binary_crossentropy", "metrics": ["accuracy", {"class_name": "AUC", "config": {"name": "auc", "dtype": "float32", "num_thresholds": 200, "curve": "ROC", "summation_method": "interpolation", "thresholds": [0.005025125628140704, 0.010050251256281407, 0.01507537688442211, 0.020100502512562814, 0.02512562814070352, 0.03015075376884422, 0.035175879396984924, 0.04020100502512563, 0.04522613065326633, 0.05025125628140704, 0.05527638190954774, 0.06030150753768844, 0.06532663316582915, 0.07035175879396985, 0.07537688442211055, 0.08040201005025126, 0.08542713567839195, 0.09045226130653267, 0.09547738693467336, 0.10050251256281408, 0.10552763819095477, 0.11055276381909548, 0.11557788944723618, 0.12060301507537688, 0.12562814070351758, 0.1306532663316583, 0.135678391959799, 0.1407035175879397, 0.1457286432160804, 0.1507537688442211, 0.15577889447236182, 0.16080402010050251, 0.1658291457286432, 0.1708542713567839, 0.17587939698492464, 0.18090452261306533, 0.18592964824120603, 0.19095477386934673, 0.19597989949748743, 0.20100502512562815, 0.20603015075376885, 0.21105527638190955, 0.21608040201005024, 0.22110552763819097, 0.22613065326633167, 0.23115577889447236, 0.23618090452261306, 0.24120603015075376, 0.24623115577889448, 0.25125628140703515, 0.2562814070351759, 0.2613065326633166, 0.2663316582914573, 0.271356783919598, 0.27638190954773867, 0.2814070351758794, 0.2864321608040201, 0.2914572864321608, 0.2964824120603015, 0.3015075376884422, 0.3065326633165829, 0.31155778894472363, 0.3165829145728643, 0.32160804020100503, 0.32663316582914576, 0.3316582914572864, 0.33668341708542715, 0.3417085427135678, 0.34673366834170855, 0.35175879396984927, 0.35678391959798994, 0.36180904522613067, 0.36683417085427134, 0.37185929648241206, 0.3768844221105528, 0.38190954773869346, 0.3869346733668342, 0.39195979899497485, 0.3969849246231156, 0.4020100502512563, 0.40703517587939697, 0.4120603015075377, 0.41708542713567837, 0.4221105527638191, 0.4271356783919598, 0.4321608040201005, 0.4371859296482412, 0.44221105527638194, 0.4472361809045226, 0.45226130653266333, 0.457286432160804, 0.4623115577889447, 0.46733668341708545, 0.4723618090452261, 0.47738693467336685, 0.4824120603015075, 0.48743718592964824, 0.49246231155778897, 0.49748743718592964, 0.5025125628140703, 0.507537688442211, 0.5125628140703518, 0.5175879396984925, 0.5226130653266332, 0.5276381909547738, 0.5326633165829145, 0.5376884422110553, 0.542713567839196, 0.5477386934673367, 0.5527638190954773, 0.5577889447236181, 0.5628140703517588, 0.5678391959798995, 0.5728643216080402, 0.5778894472361809, 0.5829145728643216, 0.5879396984924623, 0.592964824120603, 0.5979899497487438, 0.6030150753768844, 0.6080402010050251, 0.6130653266331658, 0.6180904522613065, 0.6231155778894473, 0.628140703517588, 0.6331658291457286, 0.6381909547738693, 0.6432160804020101, 0.6482412060301508, 0.6532663316582915, 0.6582914572864321, 0.6633165829145728, 0.6683417085427136, 0.6733668341708543, 0.678391959798995, 0.6834170854271356, 0.6884422110552764, 0.6934673366834171, 0.6984924623115578, 0.7035175879396985, 0.7085427135678392, 0.7135678391959799, 0.7185929648241206, 0.7236180904522613, 0.7286432160804021, 0.7336683417085427, 0.7386934673366834, 0.7437185929648241, 0.7487437185929648, 0.7537688442211056, 0.7587939698492462, 0.7638190954773869, 0.7688442211055276, 0.7738693467336684, 0.7788944723618091, 0.7839195979899497, 0.7889447236180904, 0.7939698492462312, 0.7989949748743719, 0.8040201005025126, 0.8090452261306532, 0.8140703517587939, 0.8190954773869347, 0.8241206030150754, 0.8291457286432161, 0.8341708542713567, 0.8391959798994975, 0.8442211055276382, 0.8492462311557789, 0.8542713567839196, 0.8592964824120602, 0.864321608040201, 0.8693467336683417, 0.8743718592964824, 0.8793969849246231, 0.8844221105527639, 0.8894472361809045, 0.8944723618090452, 0.8994974874371859, 0.9045226130653267, 0.9095477386934674, 0.914572864321608, 0.9195979899497487, 0.9246231155778895, 0.9296482412060302, 0.9346733668341709, 0.9396984924623115, 0.9447236180904522, 0.949748743718593, 0.9547738693467337, 0.9597989949748744, 0.964824120603015, 0.9698492462311558, 0.9748743718592965, 0.9798994974874372, 0.9849246231155779, 0.9899497487437185, 0.9949748743718593]}}, {"class_name": "AUC", "config": {"name": "auc_1", "dtype": "float32", "num_thresholds": 200, "curve": "PR", "summation_method": "interpolation", "thresholds": [0.005025125628140704, 0.010050251256281407, 0.01507537688442211, 0.020100502512562814, 0.02512562814070352, 0.03015075376884422, 0.035175879396984924, 0.04020100502512563, 0.04522613065326633, 0.05025125628140704, 0.05527638190954774, 0.06030150753768844, 0.06532663316582915, 0.07035175879396985, 0.07537688442211055, 0.08040201005025126, 0.08542713567839195, 0.09045226130653267, 0.09547738693467336, 0.10050251256281408, 0.10552763819095477, 0.11055276381909548, 0.11557788944723618, 0.12060301507537688, 0.12562814070351758, 0.1306532663316583, 0.135678391959799, 0.1407035175879397, 0.1457286432160804, 0.1507537688442211, 0.15577889447236182, 0.16080402010050251, 0.1658291457286432, 0.1708542713567839, 0.17587939698492464, 0.18090452261306533, 0.18592964824120603, 0.19095477386934673, 0.19597989949748743, 0.20100502512562815, 0.20603015075376885, 0.21105527638190955, 0.21608040201005024, 0.22110552763819097, 0.22613065326633167, 0.23115577889447236, 0.23618090452261306, 0.24120603015075376, 0.24623115577889448, 0.25125628140703515, 0.2562814070351759, 0.2613065326633166, 0.2663316582914573, 0.271356783919598, 0.27638190954773867, 0.2814070351758794, 0.2864321608040201, 0.2914572864321608, 0.2964824120603015, 0.3015075376884422, 0.3065326633165829, 0.31155778894472363, 0.3165829145728643, 0.32160804020100503, 0.32663316582914576, 0.3316582914572864, 0.33668341708542715, 0.3417085427135678, 0.34673366834170855, 0.35175879396984927, 0.35678391959798994, 0.36180904522613067, 0.36683417085427134, 0.37185929648241206, 0.3768844221105528, 0.38190954773869346, 0.3869346733668342, 0.39195979899497485, 0.3969849246231156, 0.4020100502512563, 0.40703517587939697, 0.4120603015075377, 0.41708542713567837, 0.4221105527638191, 0.4271356783919598, 0.4321608040201005, 0.4371859296482412, 0.44221105527638194, 0.4472361809045226, 0.45226130653266333, 0.457286432160804, 0.4623115577889447, 0.46733668341708545, 0.4723618090452261, 0.47738693467336685, 0.4824120603015075, 0.48743718592964824, 0.49246231155778897, 0.49748743718592964, 0.5025125628140703, 0.507537688442211, 0.5125628140703518, 0.5175879396984925, 0.5226130653266332, 0.5276381909547738, 0.5326633165829145, 0.5376884422110553, 0.542713567839196, 0.5477386934673367, 0.5527638190954773, 0.5577889447236181, 0.5628140703517588, 0.5678391959798995, 0.5728643216080402, 0.5778894472361809, 0.5829145728643216, 0.5879396984924623, 0.592964824120603, 0.5979899497487438, 0.6030150753768844, 0.6080402010050251, 0.6130653266331658, 0.6180904522613065, 0.6231155778894473, 0.628140703517588, 0.6331658291457286, 0.6381909547738693, 0.6432160804020101, 0.6482412060301508, 0.6532663316582915, 0.6582914572864321, 0.6633165829145728, 0.6683417085427136, 0.6733668341708543, 0.678391959798995, 0.6834170854271356, 0.6884422110552764, 0.6934673366834171, 0.6984924623115578, 0.7035175879396985, 0.7085427135678392, 0.7135678391959799, 0.7185929648241206, 0.7236180904522613, 0.7286432160804021, 0.7336683417085427, 0.7386934673366834, 0.7437185929648241, 0.7487437185929648, 0.7537688442211056, 0.7587939698492462, 0.7638190954773869, 0.7688442211055276, 0.7738693467336684, 0.7788944723618091, 0.7839195979899497, 0.7889447236180904, 0.7939698492462312, 0.7989949748743719, 0.8040201005025126, 0.8090452261306532, 0.8140703517587939, 0.8190954773869347, 0.8241206030150754, 0.8291457286432161, 0.8341708542713567, 0.8391959798994975, 0.8442211055276382, 0.8492462311557789, 0.8542713567839196, 0.8592964824120602, 0.864321608040201, 0.8693467336683417, 0.8743718592964824, 0.8793969849246231, 0.8844221105527639, 0.8894472361809045, 0.8944723618090452, 0.8994974874371859, 0.9045226130653267, 0.9095477386934674, 0.914572864321608, 0.9195979899497487, 0.9246231155778895, 0.9296482412060302, 0.9346733668341709, 0.9396984924623115, 0.9447236180904522, 0.949748743718593, 0.9547738693467337, 0.9597989949748744, 0.964824120603015, 0.9698492462311558, 0.9748743718592965, 0.9798994974874372, 0.9849246231155779, 0.9899497487437185, 0.9949748743718593]}}], "weighted_metrics": null, "sample_weight_mode": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
�
trainable_variables
regularization_losses

	variables

	keras_api
+�&call_and_return_all_conditional_losses

�__call__"�
_tf_keras_layer�{"class_name": "InputLayer", "name": "productId", "trainable": true, "expects_training_arg": true, "dtype": "int32", "batch_input_shape": [null], "config": {"batch_input_shape": [null], "dtype": "int32", "sparse": false, "name": "productId"}}
�
trainable_variables
regularization_losses

	variables

	keras_api
+�&call_and_return_all_conditional_losses

�__call__"�
_tf_keras_layer�{"class_name": "InputLayer", "name": "userId", "trainable": true, "expects_training_arg": true, "dtype": "int32", "batch_input_shape": [null], "config": {"batch_input_shape": [null], "dtype": "int32", "sparse": false, "name": "userId"}}
�
_feature_columns

_resources
'#movieId_embedding/embedding_weights
trainable_variables
regularization_losses

	variables

	keras_api
+�&call_and_return_all_conditional_losses

�__call__"�
_tf_keras_layer�{"class_name": "DenseFeatures", "name": "dense_features", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_features", "trainable": true, "dtype": "float32", "feature_columns": [{"class_name": "EmbeddingColumn", "config": {"categorical_column": {"class_name": "IdentityCategoricalColumn", "config": {"key": "productId", "number_buckets": 1001, "default_value": null}}, "dimension": 10, "combiner": "mean", "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.31622776601683794, "seed": null, "dtype": "float32"}}, "ckpt_to_load_from": null, "tensor_name_in_ckpt": null, "max_norm": null, "trainable": true}}]}, "_is_feature_layer": true}
�
_feature_columns

_resources
& "userId_embedding/embedding_weights
!trainable_variables
"regularization_losses

#	variables

$	keras_api
+�&call_and_return_all_conditional_losses

�__call__"�
_tf_keras_layer�{"class_name": "DenseFeatures", "name": "dense_features_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_features_1", "trainable": true, "dtype": "float32", "feature_columns": [{"class_name": "EmbeddingColumn", "config": {"categorical_column": {"class_name": "IdentityCategoricalColumn", "config": {"key": "userId", "number_buckets": 30001, "default_value": null}}, "dimension": 10, "combiner": "mean", "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.31622776601683794, "seed": null, "dtype": "float32"}}, "ckpt_to_load_from": null, "tensor_name_in_ckpt": null, "max_norm": null, "trainable": true}}]}, "_is_feature_layer": true}
�
%trainable_variables
&regularization_losses

'	variables

(	keras_api
+�&call_and_return_all_conditional_losses

�__call__"�
_tf_keras_layer�{"class_name": "Concatenate", "name": "concatenate", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}}
�

)kernel
*bias
+trainable_variables
,regularization_losses

-	variables

.	keras_api
+�&call_and_return_all_conditional_losses

�__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 20}}}}
�

/kernel
0bias
1trainable_variables
2regularization_losses

3	variables

4	keras_api
+�&call_and_return_all_conditional_losses

�__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}}
�

5kernel
6bias
7trainable_variables
8regularization_losses

9	variables

:	keras_api
+�&call_and_return_all_conditional_losses

�__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}}
�
;iter

<beta_1

=beta_2
	>decay
?
learning_ratem� m�)m�*m�/m�0m�5m�6m�v� v�)v�*v�/v�0v�5v�6v�"
	optimizer
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
�
@non_trainable_variables
Ametrics
Blayer_regularization_losses

Clayers

trainable_variables
regularization_losses

	variables

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
Dnon_trainable_variables
Emetrics
Flayer_regularization_losses

Glayers
trainable_variables
regularization_losses

	variables

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
Hnon_trainable_variables
Imetrics
Jlayer_regularization_losses

Klayers
trainable_variables
regularization_losses

	variables

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
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
�
Lnon_trainable_variables
Mmetrics
Nlayer_regularization_losses

Olayers
trainable_variables
regularization_losses

	variables

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
'
 0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
 0"
trackable_list_wrapper
�
Pnon_trainable_variables
Qmetrics
Rlayer_regularization_losses

Slayers
!trainable_variables
"regularization_losses

#	variables

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
Tnon_trainable_variables
Umetrics
Vlayer_regularization_losses

Wlayers
%trainable_variables
&regularization_losses

'	variables

�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:
2dense/kernel
:
2
dense/bias
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
�
Xnon_trainable_variables
Ymetrics
Zlayer_regularization_losses

[layers
+trainable_variables
,regularization_losses

-	variables

�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 :

2dense_1/kernel
:
2dense_1/bias
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
�
\non_trainable_variables
]metrics
^layer_regularization_losses

_layers
1trainable_variables
2regularization_losses

3	variables

�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 :
2dense_2/kernel
:2dense_2/bias
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
�
`non_trainable_variables
ametrics
blayer_regularization_losses

clayers
7trainable_variables
8regularization_losses

9	variables

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
5
d0
e1
f2"
trackable_list_wrapper
 "
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
	gtotal
	hcount
i
_fn_kwargs
jtrainable_variables
kregularization_losses

l	variables

m	keras_api
+�&call_and_return_all_conditional_losses

�__call__"�
_tf_keras_layer�{"class_name": "MeanMetricWrapper", "name": "accuracy", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "accuracy", "dtype": "float32"}}
�#
n
thresholds
otrue_positives
ptrue_negatives
qfalse_positives
rfalse_negatives
strainable_variables
tregularization_losses

u	variables

v	keras_api
+�&call_and_return_all_conditional_losses

�__call__"�!
_tf_keras_layer�!{"class_name": "AUC", "name": "auc", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "auc", "dtype": "float32", "num_thresholds": 200, "curve": "ROC", "summation_method": "interpolation", "thresholds": [0.005025125628140704, 0.010050251256281407, 0.01507537688442211, 0.020100502512562814, 0.02512562814070352, 0.03015075376884422, 0.035175879396984924, 0.04020100502512563, 0.04522613065326633, 0.05025125628140704, 0.05527638190954774, 0.06030150753768844, 0.06532663316582915, 0.07035175879396985, 0.07537688442211055, 0.08040201005025126, 0.08542713567839195, 0.09045226130653267, 0.09547738693467336, 0.10050251256281408, 0.10552763819095477, 0.11055276381909548, 0.11557788944723618, 0.12060301507537688, 0.12562814070351758, 0.1306532663316583, 0.135678391959799, 0.1407035175879397, 0.1457286432160804, 0.1507537688442211, 0.15577889447236182, 0.16080402010050251, 0.1658291457286432, 0.1708542713567839, 0.17587939698492464, 0.18090452261306533, 0.18592964824120603, 0.19095477386934673, 0.19597989949748743, 0.20100502512562815, 0.20603015075376885, 0.21105527638190955, 0.21608040201005024, 0.22110552763819097, 0.22613065326633167, 0.23115577889447236, 0.23618090452261306, 0.24120603015075376, 0.24623115577889448, 0.25125628140703515, 0.2562814070351759, 0.2613065326633166, 0.2663316582914573, 0.271356783919598, 0.27638190954773867, 0.2814070351758794, 0.2864321608040201, 0.2914572864321608, 0.2964824120603015, 0.3015075376884422, 0.3065326633165829, 0.31155778894472363, 0.3165829145728643, 0.32160804020100503, 0.32663316582914576, 0.3316582914572864, 0.33668341708542715, 0.3417085427135678, 0.34673366834170855, 0.35175879396984927, 0.35678391959798994, 0.36180904522613067, 0.36683417085427134, 0.37185929648241206, 0.3768844221105528, 0.38190954773869346, 0.3869346733668342, 0.39195979899497485, 0.3969849246231156, 0.4020100502512563, 0.40703517587939697, 0.4120603015075377, 0.41708542713567837, 0.4221105527638191, 0.4271356783919598, 0.4321608040201005, 0.4371859296482412, 0.44221105527638194, 0.4472361809045226, 0.45226130653266333, 0.457286432160804, 0.4623115577889447, 0.46733668341708545, 0.4723618090452261, 0.47738693467336685, 0.4824120603015075, 0.48743718592964824, 0.49246231155778897, 0.49748743718592964, 0.5025125628140703, 0.507537688442211, 0.5125628140703518, 0.5175879396984925, 0.5226130653266332, 0.5276381909547738, 0.5326633165829145, 0.5376884422110553, 0.542713567839196, 0.5477386934673367, 0.5527638190954773, 0.5577889447236181, 0.5628140703517588, 0.5678391959798995, 0.5728643216080402, 0.5778894472361809, 0.5829145728643216, 0.5879396984924623, 0.592964824120603, 0.5979899497487438, 0.6030150753768844, 0.6080402010050251, 0.6130653266331658, 0.6180904522613065, 0.6231155778894473, 0.628140703517588, 0.6331658291457286, 0.6381909547738693, 0.6432160804020101, 0.6482412060301508, 0.6532663316582915, 0.6582914572864321, 0.6633165829145728, 0.6683417085427136, 0.6733668341708543, 0.678391959798995, 0.6834170854271356, 0.6884422110552764, 0.6934673366834171, 0.6984924623115578, 0.7035175879396985, 0.7085427135678392, 0.7135678391959799, 0.7185929648241206, 0.7236180904522613, 0.7286432160804021, 0.7336683417085427, 0.7386934673366834, 0.7437185929648241, 0.7487437185929648, 0.7537688442211056, 0.7587939698492462, 0.7638190954773869, 0.7688442211055276, 0.7738693467336684, 0.7788944723618091, 0.7839195979899497, 0.7889447236180904, 0.7939698492462312, 0.7989949748743719, 0.8040201005025126, 0.8090452261306532, 0.8140703517587939, 0.8190954773869347, 0.8241206030150754, 0.8291457286432161, 0.8341708542713567, 0.8391959798994975, 0.8442211055276382, 0.8492462311557789, 0.8542713567839196, 0.8592964824120602, 0.864321608040201, 0.8693467336683417, 0.8743718592964824, 0.8793969849246231, 0.8844221105527639, 0.8894472361809045, 0.8944723618090452, 0.8994974874371859, 0.9045226130653267, 0.9095477386934674, 0.914572864321608, 0.9195979899497487, 0.9246231155778895, 0.9296482412060302, 0.9346733668341709, 0.9396984924623115, 0.9447236180904522, 0.949748743718593, 0.9547738693467337, 0.9597989949748744, 0.964824120603015, 0.9698492462311558, 0.9748743718592965, 0.9798994974874372, 0.9849246231155779, 0.9899497487437185, 0.9949748743718593]}}
�#
w
thresholds
xtrue_positives
ytrue_negatives
zfalse_positives
{false_negatives
|trainable_variables
}regularization_losses

~	variables

	keras_api
+�&call_and_return_all_conditional_losses

�__call__"�!
_tf_keras_layer�!{"class_name": "AUC", "name": "auc_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "auc_1", "dtype": "float32", "num_thresholds": 200, "curve": "PR", "summation_method": "interpolation", "thresholds": [0.005025125628140704, 0.010050251256281407, 0.01507537688442211, 0.020100502512562814, 0.02512562814070352, 0.03015075376884422, 0.035175879396984924, 0.04020100502512563, 0.04522613065326633, 0.05025125628140704, 0.05527638190954774, 0.06030150753768844, 0.06532663316582915, 0.07035175879396985, 0.07537688442211055, 0.08040201005025126, 0.08542713567839195, 0.09045226130653267, 0.09547738693467336, 0.10050251256281408, 0.10552763819095477, 0.11055276381909548, 0.11557788944723618, 0.12060301507537688, 0.12562814070351758, 0.1306532663316583, 0.135678391959799, 0.1407035175879397, 0.1457286432160804, 0.1507537688442211, 0.15577889447236182, 0.16080402010050251, 0.1658291457286432, 0.1708542713567839, 0.17587939698492464, 0.18090452261306533, 0.18592964824120603, 0.19095477386934673, 0.19597989949748743, 0.20100502512562815, 0.20603015075376885, 0.21105527638190955, 0.21608040201005024, 0.22110552763819097, 0.22613065326633167, 0.23115577889447236, 0.23618090452261306, 0.24120603015075376, 0.24623115577889448, 0.25125628140703515, 0.2562814070351759, 0.2613065326633166, 0.2663316582914573, 0.271356783919598, 0.27638190954773867, 0.2814070351758794, 0.2864321608040201, 0.2914572864321608, 0.2964824120603015, 0.3015075376884422, 0.3065326633165829, 0.31155778894472363, 0.3165829145728643, 0.32160804020100503, 0.32663316582914576, 0.3316582914572864, 0.33668341708542715, 0.3417085427135678, 0.34673366834170855, 0.35175879396984927, 0.35678391959798994, 0.36180904522613067, 0.36683417085427134, 0.37185929648241206, 0.3768844221105528, 0.38190954773869346, 0.3869346733668342, 0.39195979899497485, 0.3969849246231156, 0.4020100502512563, 0.40703517587939697, 0.4120603015075377, 0.41708542713567837, 0.4221105527638191, 0.4271356783919598, 0.4321608040201005, 0.4371859296482412, 0.44221105527638194, 0.4472361809045226, 0.45226130653266333, 0.457286432160804, 0.4623115577889447, 0.46733668341708545, 0.4723618090452261, 0.47738693467336685, 0.4824120603015075, 0.48743718592964824, 0.49246231155778897, 0.49748743718592964, 0.5025125628140703, 0.507537688442211, 0.5125628140703518, 0.5175879396984925, 0.5226130653266332, 0.5276381909547738, 0.5326633165829145, 0.5376884422110553, 0.542713567839196, 0.5477386934673367, 0.5527638190954773, 0.5577889447236181, 0.5628140703517588, 0.5678391959798995, 0.5728643216080402, 0.5778894472361809, 0.5829145728643216, 0.5879396984924623, 0.592964824120603, 0.5979899497487438, 0.6030150753768844, 0.6080402010050251, 0.6130653266331658, 0.6180904522613065, 0.6231155778894473, 0.628140703517588, 0.6331658291457286, 0.6381909547738693, 0.6432160804020101, 0.6482412060301508, 0.6532663316582915, 0.6582914572864321, 0.6633165829145728, 0.6683417085427136, 0.6733668341708543, 0.678391959798995, 0.6834170854271356, 0.6884422110552764, 0.6934673366834171, 0.6984924623115578, 0.7035175879396985, 0.7085427135678392, 0.7135678391959799, 0.7185929648241206, 0.7236180904522613, 0.7286432160804021, 0.7336683417085427, 0.7386934673366834, 0.7437185929648241, 0.7487437185929648, 0.7537688442211056, 0.7587939698492462, 0.7638190954773869, 0.7688442211055276, 0.7738693467336684, 0.7788944723618091, 0.7839195979899497, 0.7889447236180904, 0.7939698492462312, 0.7989949748743719, 0.8040201005025126, 0.8090452261306532, 0.8140703517587939, 0.8190954773869347, 0.8241206030150754, 0.8291457286432161, 0.8341708542713567, 0.8391959798994975, 0.8442211055276382, 0.8492462311557789, 0.8542713567839196, 0.8592964824120602, 0.864321608040201, 0.8693467336683417, 0.8743718592964824, 0.8793969849246231, 0.8844221105527639, 0.8894472361809045, 0.8944723618090452, 0.8994974874371859, 0.9045226130653267, 0.9095477386934674, 0.914572864321608, 0.9195979899497487, 0.9246231155778895, 0.9296482412060302, 0.9346733668341709, 0.9396984924623115, 0.9447236180904522, 0.949748743718593, 0.9547738693467337, 0.9597989949748744, 0.964824120603015, 0.9698492462311558, 0.9748743718592965, 0.9798994974874372, 0.9849246231155779, 0.9899497487437185, 0.9949748743718593]}}
:  (2total
:  (2count
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
�
�non_trainable_variables
�metrics
 �layer_regularization_losses
�layers
jtrainable_variables
kregularization_losses

l	variables

�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:� (2true_positives
:� (2true_negatives
 :� (2false_positives
 :� (2false_negatives
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
o0
p1
q2
r3"
trackable_list_wrapper
�
�non_trainable_variables
�metrics
 �layer_regularization_losses
�layers
strainable_variables
tregularization_losses

u	variables

�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:� (2true_positives
:� (2true_negatives
 :� (2false_positives
 :� (2false_negatives
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
x0
y1
z2
{3"
trackable_list_wrapper
�
�non_trainable_variables
�metrics
 �layer_regularization_losses
�layers
|trainable_variables
}regularization_losses

~	variables

�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
o0
p1
q2
r3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
x0
y1
z2
{3"
trackable_list_wrapper
 "
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
�2�
A__inference_model_layer_call_and_return_conditional_losses_252446
A__inference_model_layer_call_and_return_conditional_losses_252172
A__inference_model_layer_call_and_return_conditional_losses_251784
A__inference_model_layer_call_and_return_conditional_losses_251805�
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
!__inference__wrapped_model_251383�
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
�2�
&__inference_model_layer_call_fn_251840
&__inference_model_layer_call_fn_252460
&__inference_model_layer_call_fn_251876
&__inference_model_layer_call_fn_252474�
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
�2�
J__inference_dense_features_layer_call_and_return_conditional_losses_252602�
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
/__inference_dense_features_layer_call_fn_252609�
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
L__inference_dense_features_1_layer_call_and_return_conditional_losses_252737�
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
1__inference_dense_features_1_layer_call_fn_252744�
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
G__inference_concatenate_layer_call_and_return_conditional_losses_252751�
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
,__inference_concatenate_layer_call_fn_252757�
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
A__inference_dense_layer_call_and_return_conditional_losses_252768�
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
&__inference_dense_layer_call_fn_252775�
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
C__inference_dense_1_layer_call_and_return_conditional_losses_252786�
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
(__inference_dense_1_layer_call_fn_252793�
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
C__inference_dense_2_layer_call_and_return_conditional_losses_252804�
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
(__inference_dense_2_layer_call_fn_252811�
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
$__inference_signature_wrapper_251896movieIduserId
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
 �
G__inference_concatenate_layer_call_and_return_conditional_losses_252751�Z�W
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
A__inference_model_layer_call_and_return_conditional_losses_252446� )*/056Z�W
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
A__inference_model_layer_call_and_return_conditional_losses_251805� )*/056W�T
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
� {
(__inference_dense_1_layer_call_fn_252793O/0/�,
%�"
 �
inputs���������

� "����������
�
A__inference_model_layer_call_and_return_conditional_losses_252172� )*/056Z�W
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
C__inference_dense_2_layer_call_and_return_conditional_losses_252804\56/�,
%�"
 �
inputs���������

� "%�"
�
0���������
� �
A__inference_model_layer_call_and_return_conditional_losses_251784� )*/056W�T
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
� {
(__inference_dense_2_layer_call_fn_252811O56/�,
%�"
 �
inputs���������

� "�����������
&__inference_model_layer_call_fn_252474� )*/056Z�W
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
L__inference_dense_features_1_layer_call_and_return_conditional_losses_252737� z�w
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
J__inference_dense_features_layer_call_and_return_conditional_losses_252602�z�w
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
� y
&__inference_dense_layer_call_fn_252775O)*/�,
%�"
 �
inputs���������
� "����������
�
&__inference_model_layer_call_fn_251840} )*/056W�T
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
� "�����������
/__inference_dense_features_layer_call_fn_252609�z�w
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
C__inference_dense_1_layer_call_and_return_conditional_losses_252786\/0/�,
%�"
 �
inputs���������

� "%�"
�
0���������

� �
1__inference_dense_features_1_layer_call_fn_252744� z�w
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
A__inference_dense_layer_call_and_return_conditional_losses_252768\)*/�,
%�"
 �
inputs���������
� "%�"
�
0���������

� �
,__inference_concatenate_layer_call_fn_252757vZ�W
P�M
K�H
"�
inputs/0���������

"�
inputs/1���������

� "�����������
&__inference_model_layer_call_fn_252460� )*/056Z�W
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
!__inference__wrapped_model_251383� )*/056O�L
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
$__inference_signature_wrapper_251896� )*/056_�\
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
&__inference_model_layer_call_fn_251876} )*/056W�T
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
� "����������