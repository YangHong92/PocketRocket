ڮ
?!? 
B
AssignVariableOp
resource
value"dtype"
dtypetype?
l
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2		"
adj_xbool( "
adj_ybool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
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
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
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
?
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
dtypetype?
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
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
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
0
Sigmoid
x"T
y"T"
Ttype:

2
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
?
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	
?
SparseSegmentMean	
data"T
indices"Tidx
segment_ids"Tsegmentids
output"T"
Ttype:
2"
Tidxtype0:
2	"
Tsegmentidstype0:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
E
Where

input"T	
index	"%
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.4.12v2.4.0-49-g85c8b2a817f8??
?
2dense_features/movieId_embedding/embedding_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*C
shared_name42dense_features/movieId_embedding/embedding_weights
?
Fdense_features/movieId_embedding/embedding_weights/Read/ReadVariableOpReadVariableOp2dense_features/movieId_embedding/embedding_weights*
_output_shapes
:	?
*
dtype0
?
3dense_features_1/userId_embedding/embedding_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??
*D
shared_name53dense_features_1/userId_embedding/embedding_weights
?
Gdense_features_1/userId_embedding/embedding_weights/Read/ReadVariableOpReadVariableOp3dense_features_1/userId_embedding/embedding_weights* 
_output_shapes
:
??
*
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:

*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:
*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:

*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:
*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
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
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:
*
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:

*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:
*
dtype0
x
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_4/kernel
q
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes

:*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
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
u
true_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nametrue_positives
n
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes	
:?*
dtype0
u
true_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nametrue_negatives
n
"true_negatives/Read/ReadVariableOpReadVariableOptrue_negatives*
_output_shapes	
:?*
dtype0
w
false_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_namefalse_positives
p
#false_positives/Read/ReadVariableOpReadVariableOpfalse_positives*
_output_shapes	
:?*
dtype0
w
false_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_namefalse_negatives
p
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
_output_shapes	
:?*
dtype0
y
true_positives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:?*!
shared_nametrue_positives_1
r
$true_positives_1/Read/ReadVariableOpReadVariableOptrue_positives_1*
_output_shapes	
:?*
dtype0
y
true_negatives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:?*!
shared_nametrue_negatives_1
r
$true_negatives_1/Read/ReadVariableOpReadVariableOptrue_negatives_1*
_output_shapes	
:?*
dtype0
{
false_positives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_namefalse_positives_1
t
%false_positives_1/Read/ReadVariableOpReadVariableOpfalse_positives_1*
_output_shapes	
:?*
dtype0
{
false_negatives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_namefalse_negatives_1
t
%false_negatives_1/Read/ReadVariableOpReadVariableOpfalse_negatives_1*
_output_shapes	
:?*
dtype0
?
9Adam/dense_features/movieId_embedding/embedding_weights/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*J
shared_name;9Adam/dense_features/movieId_embedding/embedding_weights/m
?
MAdam/dense_features/movieId_embedding/embedding_weights/m/Read/ReadVariableOpReadVariableOp9Adam/dense_features/movieId_embedding/embedding_weights/m*
_output_shapes
:	?
*
dtype0
?
:Adam/dense_features_1/userId_embedding/embedding_weights/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??
*K
shared_name<:Adam/dense_features_1/userId_embedding/embedding_weights/m
?
NAdam/dense_features_1/userId_embedding/embedding_weights/m/Read/ReadVariableOpReadVariableOp:Adam/dense_features_1/userId_embedding/embedding_weights/m* 
_output_shapes
:
??
*
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:

*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:
*
dtype0
?
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes

:

*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:
*
dtype0
?
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
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:
*
dtype0
?
Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*&
shared_nameAdam/dense_3/kernel/m

)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes

:

*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:
*
dtype0
?
Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_4/kernel/m

)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m*
_output_shapes

:*
dtype0
~
Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_4/bias/m
w
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes
:*
dtype0
?
9Adam/dense_features/movieId_embedding/embedding_weights/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*J
shared_name;9Adam/dense_features/movieId_embedding/embedding_weights/v
?
MAdam/dense_features/movieId_embedding/embedding_weights/v/Read/ReadVariableOpReadVariableOp9Adam/dense_features/movieId_embedding/embedding_weights/v*
_output_shapes
:	?
*
dtype0
?
:Adam/dense_features_1/userId_embedding/embedding_weights/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??
*K
shared_name<:Adam/dense_features_1/userId_embedding/embedding_weights/v
?
NAdam/dense_features_1/userId_embedding/embedding_weights/v/Read/ReadVariableOpReadVariableOp:Adam/dense_features_1/userId_embedding/embedding_weights/v* 
_output_shapes
:
??
*
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:

*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:
*
dtype0
?
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes

:

*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:
*
dtype0
?
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*&
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
dtype0*
shape:
*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:
*
dtype0
?
Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*&
shared_nameAdam/dense_3/kernel/v

)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes

:

*
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:
*
dtype0
?
Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_4/kernel/v

)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v*
_output_shapes

:*
dtype0
~
Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_4/bias/v
w
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?R
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?Q
value?QB?Q B?Q
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer_with_weights-6

layer-9
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
 
 
?
_feature_columns

_resources
'#movieId_embedding/embedding_weights
	variables
regularization_losses
trainable_variables
	keras_api
?
_feature_columns

_resources
&"userId_embedding/embedding_weights
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
 bias
!	variables
"regularization_losses
#trainable_variables
$	keras_api
h

%kernel
&bias
'	variables
(regularization_losses
)trainable_variables
*	keras_api
h

+kernel
,bias
-	variables
.regularization_losses
/trainable_variables
0	keras_api
h

1kernel
2bias
3	variables
4regularization_losses
5trainable_variables
6	keras_api
R
7	variables
8regularization_losses
9trainable_variables
:	keras_api
h

;kernel
<bias
=	variables
>regularization_losses
?trainable_variables
@	keras_api
?
Aiter

Bbeta_1

Cbeta_2
	Ddecay
Elearning_ratem?m?m? m?%m?&m?+m?,m?1m?2m?;m?<m?v?v?v? v?%v?&v?+v?,v?1v?2v?;v?<v?
V
0
1
2
 3
%4
&5
+6
,7
18
29
;10
<11
V
0
1
2
 3
%4
&5
+6
,7
18
29
;10
<11
 
?
Fmetrics
Glayer_metrics
	variables
trainable_variables
Hnon_trainable_variables

Ilayers
Jlayer_regularization_losses
regularization_losses
 
 
 
??
VARIABLE_VALUE2dense_features/movieId_embedding/embedding_weightsTlayer_with_weights-0/movieId_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
?
Kmetrics
Llayer_metrics
	variables
regularization_losses
trainable_variables
Mnon_trainable_variables

Nlayers
Olayer_regularization_losses
 
 
??
VARIABLE_VALUE3dense_features_1/userId_embedding/embedding_weightsSlayer_with_weights-1/userId_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
?
Pmetrics
Qlayer_metrics
	variables
regularization_losses
trainable_variables
Rnon_trainable_variables

Slayers
Tlayer_regularization_losses
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
 1
 

0
 1
?
Umetrics
Vlayer_metrics
!	variables
"regularization_losses
#trainable_variables
Wnon_trainable_variables

Xlayers
Ylayer_regularization_losses
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

%0
&1
 

%0
&1
?
Zmetrics
[layer_metrics
'	variables
(regularization_losses
)trainable_variables
\non_trainable_variables

]layers
^layer_regularization_losses
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1
 

+0
,1
?
_metrics
`layer_metrics
-	variables
.regularization_losses
/trainable_variables
anon_trainable_variables

blayers
clayer_regularization_losses
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

10
21
 

10
21
?
dmetrics
elayer_metrics
3	variables
4regularization_losses
5trainable_variables
fnon_trainable_variables

glayers
hlayer_regularization_losses
 
 
 
?
imetrics
jlayer_metrics
7	variables
8regularization_losses
9trainable_variables
knon_trainable_variables

llayers
mlayer_regularization_losses
ZX
VARIABLE_VALUEdense_4/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_4/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

;0
<1
 

;0
<1
?
nmetrics
olayer_metrics
=	variables
>regularization_losses
?trainable_variables
pnon_trainable_variables

qlayers
rlayer_regularization_losses
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

s0
t1
u2
v3
 
 
F
0
1
2
3
4
5
6
7
	8

9
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
	wtotal
	xcount
y	variables
z	keras_api
D
	{total
	|count
}
_fn_kwargs
~	variables
	keras_api
v
?true_positives
?true_negatives
?false_positives
?false_negatives
?	variables
?	keras_api
v
?true_positives
?true_negatives
?false_positives
?false_negatives
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

w0
x1

y	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

{0
|1

~	variables
a_
VARIABLE_VALUEtrue_positives=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEtrue_negatives=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_positives>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_negatives>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUE
 
?0
?1
?2
?3

?	variables
ca
VARIABLE_VALUEtrue_positives_1=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEtrue_negatives_1=keras_api/metrics/3/true_negatives/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEfalse_positives_1>keras_api/metrics/3/false_positives/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEfalse_negatives_1>keras_api/metrics/3/false_negatives/.ATTRIBUTES/VARIABLE_VALUE
 
?0
?1
?2
?3

?	variables
??
VARIABLE_VALUE9Adam/dense_features/movieId_embedding/embedding_weights/mplayer_with_weights-0/movieId_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE:Adam/dense_features_1/userId_embedding/embedding_weights/molayer_with_weights-1/userId_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_4/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_4/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE9Adam/dense_features/movieId_embedding/embedding_weights/vplayer_with_weights-0/movieId_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE:Adam/dense_features_1/userId_embedding/embedding_weights/volayer_with_weights-1/userId_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_4/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_4/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
r
serving_default_movieIdPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
q
serving_default_userIdPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_movieIdserving_default_userId3dense_features_1/userId_embedding/embedding_weights2dense_features/movieId_embedding/embedding_weightsdense_2/kerneldense_2/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_3/kerneldense_3/biasdense_4/kerneldense_4/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_212942
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameFdense_features/movieId_embedding/embedding_weights/Read/ReadVariableOpGdense_features_1/userId_embedding/embedding_weights/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp"true_positives/Read/ReadVariableOp"true_negatives/Read/ReadVariableOp#false_positives/Read/ReadVariableOp#false_negatives/Read/ReadVariableOp$true_positives_1/Read/ReadVariableOp$true_negatives_1/Read/ReadVariableOp%false_positives_1/Read/ReadVariableOp%false_negatives_1/Read/ReadVariableOpMAdam/dense_features/movieId_embedding/embedding_weights/m/Read/ReadVariableOpNAdam/dense_features_1/userId_embedding/embedding_weights/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOpMAdam/dense_features/movieId_embedding/embedding_weights/v/Read/ReadVariableOpNAdam/dense_features_1/userId_embedding/embedding_weights/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOpConst*B
Tin;
927	*
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
GPU 2J 8? *(
f#R!
__inference__traced_save_214089
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename2dense_features/movieId_embedding/embedding_weights3dense_features_1/userId_embedding/embedding_weightsdense/kernel
dense/biasdense_2/kerneldense_2/biasdense_1/kerneldense_1/biasdense_3/kerneldense_3/biasdense_4/kerneldense_4/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1true_positivestrue_negativesfalse_positivesfalse_negativestrue_positives_1true_negatives_1false_positives_1false_negatives_19Adam/dense_features/movieId_embedding/embedding_weights/m:Adam/dense_features_1/userId_embedding/embedding_weights/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense_3/kernel/mAdam/dense_3/bias/mAdam/dense_4/kernel/mAdam/dense_4/bias/m9Adam/dense_features/movieId_embedding/embedding_weights/v:Adam/dense_features_1/userId_embedding/embedding_weights/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/dense_3/kernel/vAdam/dense_3/bias/vAdam/dense_4/kernel/vAdam/dense_4/bias/v*A
Tin:
826*
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
GPU 2J 8? *+
f&R$
"__inference__traced_restore_214258??
?
}
(__inference_dense_3_layer_call_fn_213868

inputs
unknown
	unknown_0
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
GPU 2J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_2126652
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????
::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?	
?
C__inference_dense_4_layer_call_and_return_conditional_losses_212713

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_dense_features_layer_call_fn_213594
features_movieid
features_userid
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallfeatures_movieidfeatures_useridunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_2124672
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*5
_input_shapes$
":?????????:?????????:22
StatefulPartitionedCallStatefulPartitionedCall:U Q
#
_output_shapes
:?????????
*
_user_specified_namefeatures/movieId:TP
#
_output_shapes
:?????????
)
_user_specified_namefeatures/userId
?	
?
C__inference_dense_2_layer_call_and_return_conditional_losses_212584

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:

*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?

?
&__inference_model_layer_call_fn_213386
inputs_movieid
inputs_userid
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_movieidinputs_useridunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_2128082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*a
_input_shapesP
N:?????????:?????????::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
#
_output_shapes
:?????????
(
_user_specified_nameinputs/movieId:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/userId
?	
?
A__inference_dense_layer_call_and_return_conditional_losses_212611

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:

*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
{
&__inference_dense_layer_call_fn_213808

inputs
unknown
	unknown_0
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
GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_2126112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????
::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
ȟ
?
J__inference_dense_features_layer_call_and_return_conditional_losses_213501
features_movieid
features_userid_
[movieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_213461
identity??TmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup?
 movieId_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 movieId_embedding/ExpandDims/dim?
movieId_embedding/ExpandDims
ExpandDimsfeatures_movieid)movieId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2
movieId_embedding/ExpandDims?
0movieId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????22
0movieId_embedding/to_sparse_input/ignore_value/x?
*movieId_embedding/to_sparse_input/NotEqualNotEqual%movieId_embedding/ExpandDims:output:09movieId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:?????????2,
*movieId_embedding/to_sparse_input/NotEqual?
)movieId_embedding/to_sparse_input/indicesWhere.movieId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2+
)movieId_embedding/to_sparse_input/indices?
(movieId_embedding/to_sparse_input/valuesGatherNd%movieId_embedding/ExpandDims:output:01movieId_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:?????????2*
(movieId_embedding/to_sparse_input/values?
-movieId_embedding/to_sparse_input/dense_shapeShape%movieId_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	2/
-movieId_embedding/to_sparse_input/dense_shape?
movieId_embedding/valuesCast1movieId_embedding/to_sparse_input/values:output:0*

DstT0	*

SrcT0*#
_output_shapes
:?????????2
movieId_embedding/values?
7movieId_embedding/movieId_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 29
7movieId_embedding/movieId_embedding_weights/Slice/begin?
6movieId_embedding/movieId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:28
6movieId_embedding/movieId_embedding_weights/Slice/size?
1movieId_embedding/movieId_embedding_weights/SliceSlice6movieId_embedding/to_sparse_input/dense_shape:output:0@movieId_embedding/movieId_embedding_weights/Slice/begin:output:0?movieId_embedding/movieId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:23
1movieId_embedding/movieId_embedding_weights/Slice?
1movieId_embedding/movieId_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: 23
1movieId_embedding/movieId_embedding_weights/Const?
0movieId_embedding/movieId_embedding_weights/ProdProd:movieId_embedding/movieId_embedding_weights/Slice:output:0:movieId_embedding/movieId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: 22
0movieId_embedding/movieId_embedding_weights/Prod?
<movieId_embedding/movieId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :2>
<movieId_embedding/movieId_embedding_weights/GatherV2/indices?
9movieId_embedding/movieId_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2;
9movieId_embedding/movieId_embedding_weights/GatherV2/axis?
4movieId_embedding/movieId_embedding_weights/GatherV2GatherV26movieId_embedding/to_sparse_input/dense_shape:output:0EmovieId_embedding/movieId_embedding_weights/GatherV2/indices:output:0BmovieId_embedding/movieId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 26
4movieId_embedding/movieId_embedding_weights/GatherV2?
2movieId_embedding/movieId_embedding_weights/Cast/xPack9movieId_embedding/movieId_embedding_weights/Prod:output:0=movieId_embedding/movieId_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:24
2movieId_embedding/movieId_embedding_weights/Cast/x?
9movieId_embedding/movieId_embedding_weights/SparseReshapeSparseReshape1movieId_embedding/to_sparse_input/indices:index:06movieId_embedding/to_sparse_input/dense_shape:output:0;movieId_embedding/movieId_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:2;
9movieId_embedding/movieId_embedding_weights/SparseReshape?
BmovieId_embedding/movieId_embedding_weights/SparseReshape/IdentityIdentitymovieId_embedding/values:y:0*
T0	*#
_output_shapes
:?????????2D
BmovieId_embedding/movieId_embedding_weights/SparseReshape/Identity?
:movieId_embedding/movieId_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 2<
:movieId_embedding/movieId_embedding_weights/GreaterEqual/y?
8movieId_embedding/movieId_embedding_weights/GreaterEqualGreaterEqualKmovieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0CmovieId_embedding/movieId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:?????????2:
8movieId_embedding/movieId_embedding_weights/GreaterEqual?
1movieId_embedding/movieId_embedding_weights/WhereWhere<movieId_embedding/movieId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:?????????23
1movieId_embedding/movieId_embedding_weights/Where?
9movieId_embedding/movieId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2;
9movieId_embedding/movieId_embedding_weights/Reshape/shape?
3movieId_embedding/movieId_embedding_weights/ReshapeReshape9movieId_embedding/movieId_embedding_weights/Where:index:0BmovieId_embedding/movieId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:?????????25
3movieId_embedding/movieId_embedding_weights/Reshape?
;movieId_embedding/movieId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2=
;movieId_embedding/movieId_embedding_weights/GatherV2_1/axis?
6movieId_embedding/movieId_embedding_weights/GatherV2_1GatherV2JmovieId_embedding/movieId_embedding_weights/SparseReshape:output_indices:0<movieId_embedding/movieId_embedding_weights/Reshape:output:0DmovieId_embedding/movieId_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????28
6movieId_embedding/movieId_embedding_weights/GatherV2_1?
;movieId_embedding/movieId_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2=
;movieId_embedding/movieId_embedding_weights/GatherV2_2/axis?
6movieId_embedding/movieId_embedding_weights/GatherV2_2GatherV2KmovieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0<movieId_embedding/movieId_embedding_weights/Reshape:output:0DmovieId_embedding/movieId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????28
6movieId_embedding/movieId_embedding_weights/GatherV2_2?
4movieId_embedding/movieId_embedding_weights/IdentityIdentityHmovieId_embedding/movieId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:26
4movieId_embedding/movieId_embedding_weights/Identity?
EmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 2G
EmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/Const?
SmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows?movieId_embedding/movieId_embedding_weights/GatherV2_1:output:0?movieId_embedding/movieId_embedding_weights/GatherV2_2:output:0=movieId_embedding/movieId_embedding_weights/Identity:output:0NmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:?????????2U
SmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows?
WmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2Y
WmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack?
YmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2[
YmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1?
YmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2[
YmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2?
QmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicedmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0`movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0bmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0bmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2S
QmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice?
JmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/UniqueUniquecmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:?????????2L
JmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique?
TmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGather[movieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_213461NmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*n
_classd
b`loc:@movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/213461*'
_output_shapes
:?????????
*
dtype02V
TmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup?
]movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity]movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*n
_classd
b`loc:@movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/213461*'
_output_shapes
:?????????
2_
]movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity?
_movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1IdentityfmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????
2a
_movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1?
CmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparseSparseSegmentMeanhmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0PmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique:idx:0ZmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:?????????
2E
CmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse?
;movieId_embedding/movieId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2=
;movieId_embedding/movieId_embedding_weights/Reshape_1/shape?
5movieId_embedding/movieId_embedding_weights/Reshape_1ReshapeimovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0DmovieId_embedding/movieId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:?????????27
5movieId_embedding/movieId_embedding_weights/Reshape_1?
1movieId_embedding/movieId_embedding_weights/ShapeShapeLmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:23
1movieId_embedding/movieId_embedding_weights/Shape?
?movieId_embedding/movieId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2A
?movieId_embedding/movieId_embedding_weights/strided_slice/stack?
AmovieId_embedding/movieId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2C
AmovieId_embedding/movieId_embedding_weights/strided_slice/stack_1?
AmovieId_embedding/movieId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2C
AmovieId_embedding/movieId_embedding_weights/strided_slice/stack_2?
9movieId_embedding/movieId_embedding_weights/strided_sliceStridedSlice:movieId_embedding/movieId_embedding_weights/Shape:output:0HmovieId_embedding/movieId_embedding_weights/strided_slice/stack:output:0JmovieId_embedding/movieId_embedding_weights/strided_slice/stack_1:output:0JmovieId_embedding/movieId_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2;
9movieId_embedding/movieId_embedding_weights/strided_slice?
3movieId_embedding/movieId_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :25
3movieId_embedding/movieId_embedding_weights/stack/0?
1movieId_embedding/movieId_embedding_weights/stackPack<movieId_embedding/movieId_embedding_weights/stack/0:output:0BmovieId_embedding/movieId_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:23
1movieId_embedding/movieId_embedding_weights/stack?
0movieId_embedding/movieId_embedding_weights/TileTile>movieId_embedding/movieId_embedding_weights/Reshape_1:output:0:movieId_embedding/movieId_embedding_weights/stack:output:0*
T0
*0
_output_shapes
:??????????????????22
0movieId_embedding/movieId_embedding_weights/Tile?
6movieId_embedding/movieId_embedding_weights/zeros_like	ZerosLikeLmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????
28
6movieId_embedding/movieId_embedding_weights/zeros_like?
+movieId_embedding/movieId_embedding_weightsSelect9movieId_embedding/movieId_embedding_weights/Tile:output:0:movieId_embedding/movieId_embedding_weights/zeros_like:y:0LmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????
2-
+movieId_embedding/movieId_embedding_weights?
2movieId_embedding/movieId_embedding_weights/Cast_1Cast6movieId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:24
2movieId_embedding/movieId_embedding_weights/Cast_1?
9movieId_embedding/movieId_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 2;
9movieId_embedding/movieId_embedding_weights/Slice_1/begin?
8movieId_embedding/movieId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:2:
8movieId_embedding/movieId_embedding_weights/Slice_1/size?
3movieId_embedding/movieId_embedding_weights/Slice_1Slice6movieId_embedding/movieId_embedding_weights/Cast_1:y:0BmovieId_embedding/movieId_embedding_weights/Slice_1/begin:output:0AmovieId_embedding/movieId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:25
3movieId_embedding/movieId_embedding_weights/Slice_1?
3movieId_embedding/movieId_embedding_weights/Shape_1Shape4movieId_embedding/movieId_embedding_weights:output:0*
T0*
_output_shapes
:25
3movieId_embedding/movieId_embedding_weights/Shape_1?
9movieId_embedding/movieId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:2;
9movieId_embedding/movieId_embedding_weights/Slice_2/begin?
8movieId_embedding/movieId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2:
8movieId_embedding/movieId_embedding_weights/Slice_2/size?
3movieId_embedding/movieId_embedding_weights/Slice_2Slice<movieId_embedding/movieId_embedding_weights/Shape_1:output:0BmovieId_embedding/movieId_embedding_weights/Slice_2/begin:output:0AmovieId_embedding/movieId_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:25
3movieId_embedding/movieId_embedding_weights/Slice_2?
7movieId_embedding/movieId_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 29
7movieId_embedding/movieId_embedding_weights/concat/axis?
2movieId_embedding/movieId_embedding_weights/concatConcatV2<movieId_embedding/movieId_embedding_weights/Slice_1:output:0<movieId_embedding/movieId_embedding_weights/Slice_2:output:0@movieId_embedding/movieId_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:24
2movieId_embedding/movieId_embedding_weights/concat?
5movieId_embedding/movieId_embedding_weights/Reshape_2Reshape4movieId_embedding/movieId_embedding_weights:output:0;movieId_embedding/movieId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:?????????
27
5movieId_embedding/movieId_embedding_weights/Reshape_2?
movieId_embedding/ShapeShape>movieId_embedding/movieId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:2
movieId_embedding/Shape?
%movieId_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%movieId_embedding/strided_slice/stack?
'movieId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'movieId_embedding/strided_slice/stack_1?
'movieId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'movieId_embedding/strided_slice/stack_2?
movieId_embedding/strided_sliceStridedSlice movieId_embedding/Shape:output:0.movieId_embedding/strided_slice/stack:output:00movieId_embedding/strided_slice/stack_1:output:00movieId_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
movieId_embedding/strided_slice?
!movieId_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
2#
!movieId_embedding/Reshape/shape/1?
movieId_embedding/Reshape/shapePack(movieId_embedding/strided_slice:output:0*movieId_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2!
movieId_embedding/Reshape/shape?
movieId_embedding/ReshapeReshape>movieId_embedding/movieId_embedding_weights/Reshape_2:output:0(movieId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????
2
movieId_embedding/Reshapeq
concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/concat_dim?
concat/concatIdentity"movieId_embedding/Reshape:output:0*
T0*'
_output_shapes
:?????????
2
concat/concat?
IdentityIdentityconcat/concat:output:0U^movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*5
_input_shapes$
":?????????:?????????:2?
TmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupTmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup:U Q
#
_output_shapes
:?????????
*
_user_specified_namefeatures/movieId:TP
#
_output_shapes
:?????????
)
_user_specified_namefeatures/userId
?	
?
A__inference_dense_layer_call_and_return_conditional_losses_213799

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:

*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?(
?
A__inference_model_layer_call_and_return_conditional_losses_212730
movieid

userid
dense_features_1_212379
dense_features_212570
dense_2_212595
dense_2_212597
dense_212622
dense_212624
dense_1_212649
dense_1_212651
dense_3_212676
dense_3_212678
dense_4_212724
dense_4_212726
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?&dense_features/StatefulPartitionedCall?(dense_features_1/StatefulPartitionedCall?
(dense_features_1/StatefulPartitionedCallStatefulPartitionedCallmovieiduseriddense_features_1_212379*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_dense_features_1_layer_call_and_return_conditional_losses_2122762*
(dense_features_1/StatefulPartitionedCall?
&dense_features/StatefulPartitionedCallStatefulPartitionedCallmovieiduseriddense_features_212570*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_2124672(
&dense_features/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall1dense_features_1/StatefulPartitionedCall:output:0dense_2_212595dense_2_212597*
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
GPU 2J 8? *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_2125842!
dense_2/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall/dense_features/StatefulPartitionedCall:output:0dense_212622dense_212624*
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
GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_2126112
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_212649dense_1_212651*
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
GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_2126382!
dense_1/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_212676dense_3_212678*
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
GPU 2J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_2126652!
dense_3/StatefulPartitionedCall?
dot/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dot_layer_call_and_return_conditional_losses_2126932
dot/PartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCalldot/PartitionedCall:output:0dense_4_212724dense_4_212726*
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
GPU 2J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_2127132!
dense_4/StatefulPartitionedCall?
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall)^dense_features_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*a
_input_shapesP
N:?????????:?????????::::::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall2T
(dense_features_1/StatefulPartitionedCall(dense_features_1/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	movieId:KG
#
_output_shapes
:?????????
 
_user_specified_nameuserId
??
?
!__inference__wrapped_model_212186
movieid

useridt
pmodel_dense_features_1_userid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_212024t
pmodel_dense_features_movieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_2121040
,model_dense_2_matmul_readvariableop_resource1
-model_dense_2_biasadd_readvariableop_resource.
*model_dense_matmul_readvariableop_resource/
+model_dense_biasadd_readvariableop_resource0
,model_dense_1_matmul_readvariableop_resource1
-model_dense_1_biasadd_readvariableop_resource0
,model_dense_3_matmul_readvariableop_resource1
-model_dense_3_biasadd_readvariableop_resource0
,model_dense_4_matmul_readvariableop_resource1
-model_dense_4_biasadd_readvariableop_resource
identity??"model/dense/BiasAdd/ReadVariableOp?!model/dense/MatMul/ReadVariableOp?$model/dense_1/BiasAdd/ReadVariableOp?#model/dense_1/MatMul/ReadVariableOp?$model/dense_2/BiasAdd/ReadVariableOp?#model/dense_2/MatMul/ReadVariableOp?$model/dense_3/BiasAdd/ReadVariableOp?#model/dense_3/MatMul/ReadVariableOp?$model/dense_4/BiasAdd/ReadVariableOp?#model/dense_4/MatMul/ReadVariableOp?imodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup?imodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup?
6model/dense_features_1/userId_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????28
6model/dense_features_1/userId_embedding/ExpandDims/dim?
2model/dense_features_1/userId_embedding/ExpandDims
ExpandDimsuserid?model/dense_features_1/userId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????24
2model/dense_features_1/userId_embedding/ExpandDims?
Fmodel/dense_features_1/userId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????2H
Fmodel/dense_features_1/userId_embedding/to_sparse_input/ignore_value/x?
@model/dense_features_1/userId_embedding/to_sparse_input/NotEqualNotEqual;model/dense_features_1/userId_embedding/ExpandDims:output:0Omodel/dense_features_1/userId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:?????????2B
@model/dense_features_1/userId_embedding/to_sparse_input/NotEqual?
?model/dense_features_1/userId_embedding/to_sparse_input/indicesWhereDmodel/dense_features_1/userId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2A
?model/dense_features_1/userId_embedding/to_sparse_input/indices?
>model/dense_features_1/userId_embedding/to_sparse_input/valuesGatherNd;model/dense_features_1/userId_embedding/ExpandDims:output:0Gmodel/dense_features_1/userId_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:?????????2@
>model/dense_features_1/userId_embedding/to_sparse_input/values?
Cmodel/dense_features_1/userId_embedding/to_sparse_input/dense_shapeShape;model/dense_features_1/userId_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	2E
Cmodel/dense_features_1/userId_embedding/to_sparse_input/dense_shape?
.model/dense_features_1/userId_embedding/valuesCastGmodel/dense_features_1/userId_embedding/to_sparse_input/values:output:0*

DstT0	*

SrcT0*#
_output_shapes
:?????????20
.model/dense_features_1/userId_embedding/values?
Lmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 2N
Lmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice/begin?
Kmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:2M
Kmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice/size?
Fmodel/dense_features_1/userId_embedding/userId_embedding_weights/SliceSliceLmodel/dense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Umodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice/begin:output:0Tmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:2H
Fmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice?
Fmodel/dense_features_1/userId_embedding/userId_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2H
Fmodel/dense_features_1/userId_embedding/userId_embedding_weights/Const?
Emodel/dense_features_1/userId_embedding/userId_embedding_weights/ProdProdOmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice:output:0Omodel/dense_features_1/userId_embedding/userId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: 2G
Emodel/dense_features_1/userId_embedding/userId_embedding_weights/Prod?
Qmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :2S
Qmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2/indices?
Nmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2P
Nmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2/axis?
Imodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2GatherV2Lmodel/dense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Zmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2/indices:output:0Wmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 2K
Imodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2?
Gmodel/dense_features_1/userId_embedding/userId_embedding_weights/Cast/xPackNmodel/dense_features_1/userId_embedding/userId_embedding_weights/Prod:output:0Rmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:2I
Gmodel/dense_features_1/userId_embedding/userId_embedding_weights/Cast/x?
Nmodel/dense_features_1/userId_embedding/userId_embedding_weights/SparseReshapeSparseReshapeGmodel/dense_features_1/userId_embedding/to_sparse_input/indices:index:0Lmodel/dense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Pmodel/dense_features_1/userId_embedding/userId_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:2P
Nmodel/dense_features_1/userId_embedding/userId_embedding_weights/SparseReshape?
Wmodel/dense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/IdentityIdentity2model/dense_features_1/userId_embedding/values:y:0*
T0	*#
_output_shapes
:?????????2Y
Wmodel/dense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/Identity?
Omodel/dense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 2Q
Omodel/dense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual/y?
Mmodel/dense_features_1/userId_embedding/userId_embedding_weights/GreaterEqualGreaterEqual`model/dense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0Xmodel/dense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:?????????2O
Mmodel/dense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual?
Fmodel/dense_features_1/userId_embedding/userId_embedding_weights/WhereWhereQmodel/dense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:?????????2H
Fmodel/dense_features_1/userId_embedding/userId_embedding_weights/Where?
Nmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2P
Nmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape/shape?
Hmodel/dense_features_1/userId_embedding/userId_embedding_weights/ReshapeReshapeNmodel/dense_features_1/userId_embedding/userId_embedding_weights/Where:index:0Wmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:?????????2J
Hmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape?
Pmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2R
Pmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1/axis?
Kmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1GatherV2_model/dense_features_1/userId_embedding/userId_embedding_weights/SparseReshape:output_indices:0Qmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape:output:0Ymodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????2M
Kmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1?
Pmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2R
Pmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2/axis?
Kmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2GatherV2`model/dense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0Qmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape:output:0Ymodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????2M
Kmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2?
Imodel/dense_features_1/userId_embedding/userId_embedding_weights/IdentityIdentity]model/dense_features_1/userId_embedding/userId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:2K
Imodel/dense_features_1/userId_embedding/userId_embedding_weights/Identity?
Zmodel/dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 2\
Zmodel/dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/Const?
hmodel/dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsTmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1:output:0Tmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2:output:0Rmodel/dense_features_1/userId_embedding/userId_embedding_weights/Identity:output:0cmodel/dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:?????????2j
hmodel/dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows?
lmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2n
lmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack?
nmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2p
nmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1?
nmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2p
nmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2?
fmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceymodel/dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0umodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0wmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0wmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2h
fmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice?
_model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/UniqueUniquexmodel/dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:?????????2a
_model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique?
imodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherpmodel_dense_features_1_userid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_212024cmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*?
_classy
wuloc:@model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/212024*'
_output_shapes
:?????????
*
dtype02k
imodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup?
rmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityrmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*?
_classy
wuloc:@model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/212024*'
_output_shapes
:?????????
2t
rmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity?
tmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identity{model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????
2v
tmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1?
Xmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparseSparseSegmentMean}model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0emodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:idx:0omodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:?????????
2Z
Xmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse?
Pmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2R
Pmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape_1/shape?
Jmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape_1Reshape~model/dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Ymodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:?????????2L
Jmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape_1?
Fmodel/dense_features_1/userId_embedding/userId_embedding_weights/ShapeShapeamodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:2H
Fmodel/dense_features_1/userId_embedding/userId_embedding_weights/Shape?
Tmodel/dense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2V
Tmodel/dense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack?
Vmodel/dense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vmodel/dense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_1?
Vmodel/dense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vmodel/dense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_2?
Nmodel/dense_features_1/userId_embedding/userId_embedding_weights/strided_sliceStridedSliceOmodel/dense_features_1/userId_embedding/userId_embedding_weights/Shape:output:0]model/dense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack:output:0_model/dense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_1:output:0_model/dense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nmodel/dense_features_1/userId_embedding/userId_embedding_weights/strided_slice?
Hmodel/dense_features_1/userId_embedding/userId_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :2J
Hmodel/dense_features_1/userId_embedding/userId_embedding_weights/stack/0?
Fmodel/dense_features_1/userId_embedding/userId_embedding_weights/stackPackQmodel/dense_features_1/userId_embedding/userId_embedding_weights/stack/0:output:0Wmodel/dense_features_1/userId_embedding/userId_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:2H
Fmodel/dense_features_1/userId_embedding/userId_embedding_weights/stack?
Emodel/dense_features_1/userId_embedding/userId_embedding_weights/TileTileSmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape_1:output:0Omodel/dense_features_1/userId_embedding/userId_embedding_weights/stack:output:0*
T0
*0
_output_shapes
:??????????????????2G
Emodel/dense_features_1/userId_embedding/userId_embedding_weights/Tile?
Kmodel/dense_features_1/userId_embedding/userId_embedding_weights/zeros_like	ZerosLikeamodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????
2M
Kmodel/dense_features_1/userId_embedding/userId_embedding_weights/zeros_like?
@model/dense_features_1/userId_embedding/userId_embedding_weightsSelectNmodel/dense_features_1/userId_embedding/userId_embedding_weights/Tile:output:0Omodel/dense_features_1/userId_embedding/userId_embedding_weights/zeros_like:y:0amodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????
2B
@model/dense_features_1/userId_embedding/userId_embedding_weights?
Gmodel/dense_features_1/userId_embedding/userId_embedding_weights/Cast_1CastLmodel/dense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:2I
Gmodel/dense_features_1/userId_embedding/userId_embedding_weights/Cast_1?
Nmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 2P
Nmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_1/begin?
Mmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:2O
Mmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_1/size?
Hmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_1SliceKmodel/dense_features_1/userId_embedding/userId_embedding_weights/Cast_1:y:0Wmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_1/begin:output:0Vmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:2J
Hmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_1?
Hmodel/dense_features_1/userId_embedding/userId_embedding_weights/Shape_1ShapeImodel/dense_features_1/userId_embedding/userId_embedding_weights:output:0*
T0*
_output_shapes
:2J
Hmodel/dense_features_1/userId_embedding/userId_embedding_weights/Shape_1?
Nmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:2P
Nmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_2/begin?
Mmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2O
Mmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_2/size?
Hmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_2SliceQmodel/dense_features_1/userId_embedding/userId_embedding_weights/Shape_1:output:0Wmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_2/begin:output:0Vmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:2J
Hmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_2?
Lmodel/dense_features_1/userId_embedding/userId_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2N
Lmodel/dense_features_1/userId_embedding/userId_embedding_weights/concat/axis?
Gmodel/dense_features_1/userId_embedding/userId_embedding_weights/concatConcatV2Qmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_1:output:0Qmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_2:output:0Umodel/dense_features_1/userId_embedding/userId_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:2I
Gmodel/dense_features_1/userId_embedding/userId_embedding_weights/concat?
Jmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape_2ReshapeImodel/dense_features_1/userId_embedding/userId_embedding_weights:output:0Pmodel/dense_features_1/userId_embedding/userId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:?????????
2L
Jmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape_2?
-model/dense_features_1/userId_embedding/ShapeShapeSmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:2/
-model/dense_features_1/userId_embedding/Shape?
;model/dense_features_1/userId_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;model/dense_features_1/userId_embedding/strided_slice/stack?
=model/dense_features_1/userId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=model/dense_features_1/userId_embedding/strided_slice/stack_1?
=model/dense_features_1/userId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=model/dense_features_1/userId_embedding/strided_slice/stack_2?
5model/dense_features_1/userId_embedding/strided_sliceStridedSlice6model/dense_features_1/userId_embedding/Shape:output:0Dmodel/dense_features_1/userId_embedding/strided_slice/stack:output:0Fmodel/dense_features_1/userId_embedding/strided_slice/stack_1:output:0Fmodel/dense_features_1/userId_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask27
5model/dense_features_1/userId_embedding/strided_slice?
7model/dense_features_1/userId_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
29
7model/dense_features_1/userId_embedding/Reshape/shape/1?
5model/dense_features_1/userId_embedding/Reshape/shapePack>model/dense_features_1/userId_embedding/strided_slice:output:0@model/dense_features_1/userId_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:27
5model/dense_features_1/userId_embedding/Reshape/shape?
/model/dense_features_1/userId_embedding/ReshapeReshapeSmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape_2:output:0>model/dense_features_1/userId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????
21
/model/dense_features_1/userId_embedding/Reshape?
(model/dense_features_1/concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(model/dense_features_1/concat/concat_dim?
$model/dense_features_1/concat/concatIdentity8model/dense_features_1/userId_embedding/Reshape:output:0*
T0*'
_output_shapes
:?????????
2&
$model/dense_features_1/concat/concat?
5model/dense_features/movieId_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????27
5model/dense_features/movieId_embedding/ExpandDims/dim?
1model/dense_features/movieId_embedding/ExpandDims
ExpandDimsmovieid>model/dense_features/movieId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????23
1model/dense_features/movieId_embedding/ExpandDims?
Emodel/dense_features/movieId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????2G
Emodel/dense_features/movieId_embedding/to_sparse_input/ignore_value/x?
?model/dense_features/movieId_embedding/to_sparse_input/NotEqualNotEqual:model/dense_features/movieId_embedding/ExpandDims:output:0Nmodel/dense_features/movieId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:?????????2A
?model/dense_features/movieId_embedding/to_sparse_input/NotEqual?
>model/dense_features/movieId_embedding/to_sparse_input/indicesWhereCmodel/dense_features/movieId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2@
>model/dense_features/movieId_embedding/to_sparse_input/indices?
=model/dense_features/movieId_embedding/to_sparse_input/valuesGatherNd:model/dense_features/movieId_embedding/ExpandDims:output:0Fmodel/dense_features/movieId_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:?????????2?
=model/dense_features/movieId_embedding/to_sparse_input/values?
Bmodel/dense_features/movieId_embedding/to_sparse_input/dense_shapeShape:model/dense_features/movieId_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	2D
Bmodel/dense_features/movieId_embedding/to_sparse_input/dense_shape?
-model/dense_features/movieId_embedding/valuesCastFmodel/dense_features/movieId_embedding/to_sparse_input/values:output:0*

DstT0	*

SrcT0*#
_output_shapes
:?????????2/
-model/dense_features/movieId_embedding/values?
Lmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 2N
Lmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice/begin?
Kmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:2M
Kmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice/size?
Fmodel/dense_features/movieId_embedding/movieId_embedding_weights/SliceSliceKmodel/dense_features/movieId_embedding/to_sparse_input/dense_shape:output:0Umodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice/begin:output:0Tmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:2H
Fmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice?
Fmodel/dense_features/movieId_embedding/movieId_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2H
Fmodel/dense_features/movieId_embedding/movieId_embedding_weights/Const?
Emodel/dense_features/movieId_embedding/movieId_embedding_weights/ProdProdOmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice:output:0Omodel/dense_features/movieId_embedding/movieId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: 2G
Emodel/dense_features/movieId_embedding/movieId_embedding_weights/Prod?
Qmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :2S
Qmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2/indices?
Nmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2P
Nmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2/axis?
Imodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2GatherV2Kmodel/dense_features/movieId_embedding/to_sparse_input/dense_shape:output:0Zmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2/indices:output:0Wmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 2K
Imodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2?
Gmodel/dense_features/movieId_embedding/movieId_embedding_weights/Cast/xPackNmodel/dense_features/movieId_embedding/movieId_embedding_weights/Prod:output:0Rmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:2I
Gmodel/dense_features/movieId_embedding/movieId_embedding_weights/Cast/x?
Nmodel/dense_features/movieId_embedding/movieId_embedding_weights/SparseReshapeSparseReshapeFmodel/dense_features/movieId_embedding/to_sparse_input/indices:index:0Kmodel/dense_features/movieId_embedding/to_sparse_input/dense_shape:output:0Pmodel/dense_features/movieId_embedding/movieId_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:2P
Nmodel/dense_features/movieId_embedding/movieId_embedding_weights/SparseReshape?
Wmodel/dense_features/movieId_embedding/movieId_embedding_weights/SparseReshape/IdentityIdentity1model/dense_features/movieId_embedding/values:y:0*
T0	*#
_output_shapes
:?????????2Y
Wmodel/dense_features/movieId_embedding/movieId_embedding_weights/SparseReshape/Identity?
Omodel/dense_features/movieId_embedding/movieId_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 2Q
Omodel/dense_features/movieId_embedding/movieId_embedding_weights/GreaterEqual/y?
Mmodel/dense_features/movieId_embedding/movieId_embedding_weights/GreaterEqualGreaterEqual`model/dense_features/movieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0Xmodel/dense_features/movieId_embedding/movieId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:?????????2O
Mmodel/dense_features/movieId_embedding/movieId_embedding_weights/GreaterEqual?
Fmodel/dense_features/movieId_embedding/movieId_embedding_weights/WhereWhereQmodel/dense_features/movieId_embedding/movieId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:?????????2H
Fmodel/dense_features/movieId_embedding/movieId_embedding_weights/Where?
Nmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2P
Nmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape/shape?
Hmodel/dense_features/movieId_embedding/movieId_embedding_weights/ReshapeReshapeNmodel/dense_features/movieId_embedding/movieId_embedding_weights/Where:index:0Wmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:?????????2J
Hmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape?
Pmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2R
Pmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1/axis?
Kmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1GatherV2_model/dense_features/movieId_embedding/movieId_embedding_weights/SparseReshape:output_indices:0Qmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape:output:0Ymodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????2M
Kmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1?
Pmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2R
Pmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2/axis?
Kmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2GatherV2`model/dense_features/movieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0Qmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape:output:0Ymodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????2M
Kmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2?
Imodel/dense_features/movieId_embedding/movieId_embedding_weights/IdentityIdentity]model/dense_features/movieId_embedding/movieId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:2K
Imodel/dense_features/movieId_embedding/movieId_embedding_weights/Identity?
Zmodel/dense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 2\
Zmodel/dense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/Const?
hmodel/dense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsTmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1:output:0Tmodel/dense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2:output:0Rmodel/dense_features/movieId_embedding/movieId_embedding_weights/Identity:output:0cmodel/dense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:?????????2j
hmodel/dense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows?
lmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2n
lmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack?
nmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2p
nmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1?
nmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2p
nmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2?
fmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceymodel/dense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0umodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0wmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0wmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2h
fmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice?
_model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/UniqueUniquexmodel/dense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:?????????2a
_model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique?
imodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherpmodel_dense_features_movieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_212104cmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*?
_classy
wuloc:@model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/212104*'
_output_shapes
:?????????
*
dtype02k
imodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup?
rmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityrmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*?
_classy
wuloc:@model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/212104*'
_output_shapes
:?????????
2t
rmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity?
tmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identity{model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????
2v
tmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1?
Xmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparseSparseSegmentMean}model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0emodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique:idx:0omodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:?????????
2Z
Xmodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse?
Pmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2R
Pmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape_1/shape?
Jmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape_1Reshape~model/dense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Ymodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:?????????2L
Jmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape_1?
Fmodel/dense_features/movieId_embedding/movieId_embedding_weights/ShapeShapeamodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:2H
Fmodel/dense_features/movieId_embedding/movieId_embedding_weights/Shape?
Tmodel/dense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2V
Tmodel/dense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack?
Vmodel/dense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vmodel/dense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_1?
Vmodel/dense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vmodel/dense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_2?
Nmodel/dense_features/movieId_embedding/movieId_embedding_weights/strided_sliceStridedSliceOmodel/dense_features/movieId_embedding/movieId_embedding_weights/Shape:output:0]model/dense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack:output:0_model/dense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_1:output:0_model/dense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nmodel/dense_features/movieId_embedding/movieId_embedding_weights/strided_slice?
Hmodel/dense_features/movieId_embedding/movieId_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :2J
Hmodel/dense_features/movieId_embedding/movieId_embedding_weights/stack/0?
Fmodel/dense_features/movieId_embedding/movieId_embedding_weights/stackPackQmodel/dense_features/movieId_embedding/movieId_embedding_weights/stack/0:output:0Wmodel/dense_features/movieId_embedding/movieId_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:2H
Fmodel/dense_features/movieId_embedding/movieId_embedding_weights/stack?
Emodel/dense_features/movieId_embedding/movieId_embedding_weights/TileTileSmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape_1:output:0Omodel/dense_features/movieId_embedding/movieId_embedding_weights/stack:output:0*
T0
*0
_output_shapes
:??????????????????2G
Emodel/dense_features/movieId_embedding/movieId_embedding_weights/Tile?
Kmodel/dense_features/movieId_embedding/movieId_embedding_weights/zeros_like	ZerosLikeamodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????
2M
Kmodel/dense_features/movieId_embedding/movieId_embedding_weights/zeros_like?
@model/dense_features/movieId_embedding/movieId_embedding_weightsSelectNmodel/dense_features/movieId_embedding/movieId_embedding_weights/Tile:output:0Omodel/dense_features/movieId_embedding/movieId_embedding_weights/zeros_like:y:0amodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????
2B
@model/dense_features/movieId_embedding/movieId_embedding_weights?
Gmodel/dense_features/movieId_embedding/movieId_embedding_weights/Cast_1CastKmodel/dense_features/movieId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:2I
Gmodel/dense_features/movieId_embedding/movieId_embedding_weights/Cast_1?
Nmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 2P
Nmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_1/begin?
Mmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:2O
Mmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_1/size?
Hmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_1SliceKmodel/dense_features/movieId_embedding/movieId_embedding_weights/Cast_1:y:0Wmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_1/begin:output:0Vmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:2J
Hmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_1?
Hmodel/dense_features/movieId_embedding/movieId_embedding_weights/Shape_1ShapeImodel/dense_features/movieId_embedding/movieId_embedding_weights:output:0*
T0*
_output_shapes
:2J
Hmodel/dense_features/movieId_embedding/movieId_embedding_weights/Shape_1?
Nmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:2P
Nmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_2/begin?
Mmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2O
Mmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_2/size?
Hmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_2SliceQmodel/dense_features/movieId_embedding/movieId_embedding_weights/Shape_1:output:0Wmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_2/begin:output:0Vmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:2J
Hmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_2?
Lmodel/dense_features/movieId_embedding/movieId_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2N
Lmodel/dense_features/movieId_embedding/movieId_embedding_weights/concat/axis?
Gmodel/dense_features/movieId_embedding/movieId_embedding_weights/concatConcatV2Qmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_1:output:0Qmodel/dense_features/movieId_embedding/movieId_embedding_weights/Slice_2:output:0Umodel/dense_features/movieId_embedding/movieId_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:2I
Gmodel/dense_features/movieId_embedding/movieId_embedding_weights/concat?
Jmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape_2ReshapeImodel/dense_features/movieId_embedding/movieId_embedding_weights:output:0Pmodel/dense_features/movieId_embedding/movieId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:?????????
2L
Jmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape_2?
,model/dense_features/movieId_embedding/ShapeShapeSmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:2.
,model/dense_features/movieId_embedding/Shape?
:model/dense_features/movieId_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2<
:model/dense_features/movieId_embedding/strided_slice/stack?
<model/dense_features/movieId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<model/dense_features/movieId_embedding/strided_slice/stack_1?
<model/dense_features/movieId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<model/dense_features/movieId_embedding/strided_slice/stack_2?
4model/dense_features/movieId_embedding/strided_sliceStridedSlice5model/dense_features/movieId_embedding/Shape:output:0Cmodel/dense_features/movieId_embedding/strided_slice/stack:output:0Emodel/dense_features/movieId_embedding/strided_slice/stack_1:output:0Emodel/dense_features/movieId_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4model/dense_features/movieId_embedding/strided_slice?
6model/dense_features/movieId_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
28
6model/dense_features/movieId_embedding/Reshape/shape/1?
4model/dense_features/movieId_embedding/Reshape/shapePack=model/dense_features/movieId_embedding/strided_slice:output:0?model/dense_features/movieId_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:26
4model/dense_features/movieId_embedding/Reshape/shape?
.model/dense_features/movieId_embedding/ReshapeReshapeSmodel/dense_features/movieId_embedding/movieId_embedding_weights/Reshape_2:output:0=model/dense_features/movieId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????
20
.model/dense_features/movieId_embedding/Reshape?
&model/dense_features/concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&model/dense_features/concat/concat_dim?
"model/dense_features/concat/concatIdentity7model/dense_features/movieId_embedding/Reshape:output:0*
T0*'
_output_shapes
:?????????
2$
"model/dense_features/concat/concat?
#model/dense_2/MatMul/ReadVariableOpReadVariableOp,model_dense_2_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02%
#model/dense_2/MatMul/ReadVariableOp?
model/dense_2/MatMulMatMul-model/dense_features_1/concat/concat:output:0+model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
model/dense_2/MatMul?
$model/dense_2/BiasAdd/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02&
$model/dense_2/BiasAdd/ReadVariableOp?
model/dense_2/BiasAddBiasAddmodel/dense_2/MatMul:product:0,model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
model/dense_2/BiasAdd?
model/dense_2/ReluRelumodel/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
model/dense_2/Relu?
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02#
!model/dense/MatMul/ReadVariableOp?
model/dense/MatMulMatMul+model/dense_features/concat/concat:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
model/dense/MatMul?
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02$
"model/dense/BiasAdd/ReadVariableOp?
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
model/dense/BiasAdd|
model/dense/ReluRelumodel/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
model/dense/Relu?
#model/dense_1/MatMul/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02%
#model/dense_1/MatMul/ReadVariableOp?
model/dense_1/MatMulMatMulmodel/dense/Relu:activations:0+model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
model/dense_1/MatMul?
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02&
$model/dense_1/BiasAdd/ReadVariableOp?
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
model/dense_1/BiasAdd?
model/dense_1/ReluRelumodel/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
model/dense_1/Relu?
#model/dense_3/MatMul/ReadVariableOpReadVariableOp,model_dense_3_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02%
#model/dense_3/MatMul/ReadVariableOp?
model/dense_3/MatMulMatMul model/dense_2/Relu:activations:0+model/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
model/dense_3/MatMul?
$model/dense_3/BiasAdd/ReadVariableOpReadVariableOp-model_dense_3_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02&
$model/dense_3/BiasAdd/ReadVariableOp?
model/dense_3/BiasAddBiasAddmodel/dense_3/MatMul:product:0,model/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
model/dense_3/BiasAdd?
model/dense_3/ReluRelumodel/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
model/dense_3/Reluv
model/dot/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
model/dot/ExpandDims/dim?
model/dot/ExpandDims
ExpandDims model/dense_1/Relu:activations:0!model/dot/ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????
2
model/dot/ExpandDimsz
model/dot/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :2
model/dot/ExpandDims_1/dim?
model/dot/ExpandDims_1
ExpandDims model/dense_3/Relu:activations:0#model/dot/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????
2
model/dot/ExpandDims_1?
model/dot/MatMulBatchMatMulV2model/dot/ExpandDims:output:0model/dot/ExpandDims_1:output:0*
T0*+
_output_shapes
:?????????2
model/dot/MatMulk
model/dot/ShapeShapemodel/dot/MatMul:output:0*
T0*
_output_shapes
:2
model/dot/Shape?
model/dot/SqueezeSqueezemodel/dot/MatMul:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
2
model/dot/Squeeze?
#model/dense_4/MatMul/ReadVariableOpReadVariableOp,model_dense_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype02%
#model/dense_4/MatMul/ReadVariableOp?
model/dense_4/MatMulMatMulmodel/dot/Squeeze:output:0+model/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model/dense_4/MatMul?
$model/dense_4/BiasAdd/ReadVariableOpReadVariableOp-model_dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02&
$model/dense_4/BiasAdd/ReadVariableOp?
model/dense_4/BiasAddBiasAddmodel/dense_4/MatMul:product:0,model/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model/dense_4/BiasAdd?
model/dense_4/SigmoidSigmoidmodel/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model/dense_4/Sigmoid?
IdentityIdentitymodel/dense_4/Sigmoid:y:0#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp%^model/dense_2/BiasAdd/ReadVariableOp$^model/dense_2/MatMul/ReadVariableOp%^model/dense_3/BiasAdd/ReadVariableOp$^model/dense_3/MatMul/ReadVariableOp%^model/dense_4/BiasAdd/ReadVariableOp$^model/dense_4/MatMul/ReadVariableOpj^model/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupj^model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*a
_input_shapesP
N:?????????:?????????::::::::::::2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2J
#model/dense_1/MatMul/ReadVariableOp#model/dense_1/MatMul/ReadVariableOp2L
$model/dense_2/BiasAdd/ReadVariableOp$model/dense_2/BiasAdd/ReadVariableOp2J
#model/dense_2/MatMul/ReadVariableOp#model/dense_2/MatMul/ReadVariableOp2L
$model/dense_3/BiasAdd/ReadVariableOp$model/dense_3/BiasAdd/ReadVariableOp2J
#model/dense_3/MatMul/ReadVariableOp#model/dense_3/MatMul/ReadVariableOp2L
$model/dense_4/BiasAdd/ReadVariableOp$model/dense_4/BiasAdd/ReadVariableOp2J
#model/dense_4/MatMul/ReadVariableOp#model/dense_4/MatMul/ReadVariableOp2?
imodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupimodel/dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup2?
imodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupimodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:L H
#
_output_shapes
:?????????
!
_user_specified_name	movieId:KG
#
_output_shapes
:?????????
 
_user_specified_nameuserId
??
?
J__inference_dense_features_layer_call_and_return_conditional_losses_212552
features

features_1_
[movieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_212512
identity??TmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup?
 movieId_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 movieId_embedding/ExpandDims/dim?
movieId_embedding/ExpandDims
ExpandDimsfeatures)movieId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2
movieId_embedding/ExpandDims?
0movieId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????22
0movieId_embedding/to_sparse_input/ignore_value/x?
*movieId_embedding/to_sparse_input/NotEqualNotEqual%movieId_embedding/ExpandDims:output:09movieId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:?????????2,
*movieId_embedding/to_sparse_input/NotEqual?
)movieId_embedding/to_sparse_input/indicesWhere.movieId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2+
)movieId_embedding/to_sparse_input/indices?
(movieId_embedding/to_sparse_input/valuesGatherNd%movieId_embedding/ExpandDims:output:01movieId_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:?????????2*
(movieId_embedding/to_sparse_input/values?
-movieId_embedding/to_sparse_input/dense_shapeShape%movieId_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	2/
-movieId_embedding/to_sparse_input/dense_shape?
movieId_embedding/valuesCast1movieId_embedding/to_sparse_input/values:output:0*

DstT0	*

SrcT0*#
_output_shapes
:?????????2
movieId_embedding/values?
7movieId_embedding/movieId_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 29
7movieId_embedding/movieId_embedding_weights/Slice/begin?
6movieId_embedding/movieId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:28
6movieId_embedding/movieId_embedding_weights/Slice/size?
1movieId_embedding/movieId_embedding_weights/SliceSlice6movieId_embedding/to_sparse_input/dense_shape:output:0@movieId_embedding/movieId_embedding_weights/Slice/begin:output:0?movieId_embedding/movieId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:23
1movieId_embedding/movieId_embedding_weights/Slice?
1movieId_embedding/movieId_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: 23
1movieId_embedding/movieId_embedding_weights/Const?
0movieId_embedding/movieId_embedding_weights/ProdProd:movieId_embedding/movieId_embedding_weights/Slice:output:0:movieId_embedding/movieId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: 22
0movieId_embedding/movieId_embedding_weights/Prod?
<movieId_embedding/movieId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :2>
<movieId_embedding/movieId_embedding_weights/GatherV2/indices?
9movieId_embedding/movieId_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2;
9movieId_embedding/movieId_embedding_weights/GatherV2/axis?
4movieId_embedding/movieId_embedding_weights/GatherV2GatherV26movieId_embedding/to_sparse_input/dense_shape:output:0EmovieId_embedding/movieId_embedding_weights/GatherV2/indices:output:0BmovieId_embedding/movieId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 26
4movieId_embedding/movieId_embedding_weights/GatherV2?
2movieId_embedding/movieId_embedding_weights/Cast/xPack9movieId_embedding/movieId_embedding_weights/Prod:output:0=movieId_embedding/movieId_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:24
2movieId_embedding/movieId_embedding_weights/Cast/x?
9movieId_embedding/movieId_embedding_weights/SparseReshapeSparseReshape1movieId_embedding/to_sparse_input/indices:index:06movieId_embedding/to_sparse_input/dense_shape:output:0;movieId_embedding/movieId_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:2;
9movieId_embedding/movieId_embedding_weights/SparseReshape?
BmovieId_embedding/movieId_embedding_weights/SparseReshape/IdentityIdentitymovieId_embedding/values:y:0*
T0	*#
_output_shapes
:?????????2D
BmovieId_embedding/movieId_embedding_weights/SparseReshape/Identity?
:movieId_embedding/movieId_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 2<
:movieId_embedding/movieId_embedding_weights/GreaterEqual/y?
8movieId_embedding/movieId_embedding_weights/GreaterEqualGreaterEqualKmovieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0CmovieId_embedding/movieId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:?????????2:
8movieId_embedding/movieId_embedding_weights/GreaterEqual?
1movieId_embedding/movieId_embedding_weights/WhereWhere<movieId_embedding/movieId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:?????????23
1movieId_embedding/movieId_embedding_weights/Where?
9movieId_embedding/movieId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2;
9movieId_embedding/movieId_embedding_weights/Reshape/shape?
3movieId_embedding/movieId_embedding_weights/ReshapeReshape9movieId_embedding/movieId_embedding_weights/Where:index:0BmovieId_embedding/movieId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:?????????25
3movieId_embedding/movieId_embedding_weights/Reshape?
;movieId_embedding/movieId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2=
;movieId_embedding/movieId_embedding_weights/GatherV2_1/axis?
6movieId_embedding/movieId_embedding_weights/GatherV2_1GatherV2JmovieId_embedding/movieId_embedding_weights/SparseReshape:output_indices:0<movieId_embedding/movieId_embedding_weights/Reshape:output:0DmovieId_embedding/movieId_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????28
6movieId_embedding/movieId_embedding_weights/GatherV2_1?
;movieId_embedding/movieId_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2=
;movieId_embedding/movieId_embedding_weights/GatherV2_2/axis?
6movieId_embedding/movieId_embedding_weights/GatherV2_2GatherV2KmovieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0<movieId_embedding/movieId_embedding_weights/Reshape:output:0DmovieId_embedding/movieId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????28
6movieId_embedding/movieId_embedding_weights/GatherV2_2?
4movieId_embedding/movieId_embedding_weights/IdentityIdentityHmovieId_embedding/movieId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:26
4movieId_embedding/movieId_embedding_weights/Identity?
EmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 2G
EmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/Const?
SmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows?movieId_embedding/movieId_embedding_weights/GatherV2_1:output:0?movieId_embedding/movieId_embedding_weights/GatherV2_2:output:0=movieId_embedding/movieId_embedding_weights/Identity:output:0NmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:?????????2U
SmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows?
WmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2Y
WmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack?
YmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2[
YmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1?
YmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2[
YmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2?
QmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicedmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0`movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0bmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0bmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2S
QmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice?
JmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/UniqueUniquecmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:?????????2L
JmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique?
TmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGather[movieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_212512NmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*n
_classd
b`loc:@movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/212512*'
_output_shapes
:?????????
*
dtype02V
TmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup?
]movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity]movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*n
_classd
b`loc:@movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/212512*'
_output_shapes
:?????????
2_
]movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity?
_movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1IdentityfmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????
2a
_movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1?
CmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparseSparseSegmentMeanhmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0PmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique:idx:0ZmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:?????????
2E
CmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse?
;movieId_embedding/movieId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2=
;movieId_embedding/movieId_embedding_weights/Reshape_1/shape?
5movieId_embedding/movieId_embedding_weights/Reshape_1ReshapeimovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0DmovieId_embedding/movieId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:?????????27
5movieId_embedding/movieId_embedding_weights/Reshape_1?
1movieId_embedding/movieId_embedding_weights/ShapeShapeLmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:23
1movieId_embedding/movieId_embedding_weights/Shape?
?movieId_embedding/movieId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2A
?movieId_embedding/movieId_embedding_weights/strided_slice/stack?
AmovieId_embedding/movieId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2C
AmovieId_embedding/movieId_embedding_weights/strided_slice/stack_1?
AmovieId_embedding/movieId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2C
AmovieId_embedding/movieId_embedding_weights/strided_slice/stack_2?
9movieId_embedding/movieId_embedding_weights/strided_sliceStridedSlice:movieId_embedding/movieId_embedding_weights/Shape:output:0HmovieId_embedding/movieId_embedding_weights/strided_slice/stack:output:0JmovieId_embedding/movieId_embedding_weights/strided_slice/stack_1:output:0JmovieId_embedding/movieId_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2;
9movieId_embedding/movieId_embedding_weights/strided_slice?
3movieId_embedding/movieId_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :25
3movieId_embedding/movieId_embedding_weights/stack/0?
1movieId_embedding/movieId_embedding_weights/stackPack<movieId_embedding/movieId_embedding_weights/stack/0:output:0BmovieId_embedding/movieId_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:23
1movieId_embedding/movieId_embedding_weights/stack?
0movieId_embedding/movieId_embedding_weights/TileTile>movieId_embedding/movieId_embedding_weights/Reshape_1:output:0:movieId_embedding/movieId_embedding_weights/stack:output:0*
T0
*0
_output_shapes
:??????????????????22
0movieId_embedding/movieId_embedding_weights/Tile?
6movieId_embedding/movieId_embedding_weights/zeros_like	ZerosLikeLmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????
28
6movieId_embedding/movieId_embedding_weights/zeros_like?
+movieId_embedding/movieId_embedding_weightsSelect9movieId_embedding/movieId_embedding_weights/Tile:output:0:movieId_embedding/movieId_embedding_weights/zeros_like:y:0LmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????
2-
+movieId_embedding/movieId_embedding_weights?
2movieId_embedding/movieId_embedding_weights/Cast_1Cast6movieId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:24
2movieId_embedding/movieId_embedding_weights/Cast_1?
9movieId_embedding/movieId_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 2;
9movieId_embedding/movieId_embedding_weights/Slice_1/begin?
8movieId_embedding/movieId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:2:
8movieId_embedding/movieId_embedding_weights/Slice_1/size?
3movieId_embedding/movieId_embedding_weights/Slice_1Slice6movieId_embedding/movieId_embedding_weights/Cast_1:y:0BmovieId_embedding/movieId_embedding_weights/Slice_1/begin:output:0AmovieId_embedding/movieId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:25
3movieId_embedding/movieId_embedding_weights/Slice_1?
3movieId_embedding/movieId_embedding_weights/Shape_1Shape4movieId_embedding/movieId_embedding_weights:output:0*
T0*
_output_shapes
:25
3movieId_embedding/movieId_embedding_weights/Shape_1?
9movieId_embedding/movieId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:2;
9movieId_embedding/movieId_embedding_weights/Slice_2/begin?
8movieId_embedding/movieId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2:
8movieId_embedding/movieId_embedding_weights/Slice_2/size?
3movieId_embedding/movieId_embedding_weights/Slice_2Slice<movieId_embedding/movieId_embedding_weights/Shape_1:output:0BmovieId_embedding/movieId_embedding_weights/Slice_2/begin:output:0AmovieId_embedding/movieId_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:25
3movieId_embedding/movieId_embedding_weights/Slice_2?
7movieId_embedding/movieId_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 29
7movieId_embedding/movieId_embedding_weights/concat/axis?
2movieId_embedding/movieId_embedding_weights/concatConcatV2<movieId_embedding/movieId_embedding_weights/Slice_1:output:0<movieId_embedding/movieId_embedding_weights/Slice_2:output:0@movieId_embedding/movieId_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:24
2movieId_embedding/movieId_embedding_weights/concat?
5movieId_embedding/movieId_embedding_weights/Reshape_2Reshape4movieId_embedding/movieId_embedding_weights:output:0;movieId_embedding/movieId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:?????????
27
5movieId_embedding/movieId_embedding_weights/Reshape_2?
movieId_embedding/ShapeShape>movieId_embedding/movieId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:2
movieId_embedding/Shape?
%movieId_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%movieId_embedding/strided_slice/stack?
'movieId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'movieId_embedding/strided_slice/stack_1?
'movieId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'movieId_embedding/strided_slice/stack_2?
movieId_embedding/strided_sliceStridedSlice movieId_embedding/Shape:output:0.movieId_embedding/strided_slice/stack:output:00movieId_embedding/strided_slice/stack_1:output:00movieId_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
movieId_embedding/strided_slice?
!movieId_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
2#
!movieId_embedding/Reshape/shape/1?
movieId_embedding/Reshape/shapePack(movieId_embedding/strided_slice:output:0*movieId_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2!
movieId_embedding/Reshape/shape?
movieId_embedding/ReshapeReshape>movieId_embedding/movieId_embedding_weights/Reshape_2:output:0(movieId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????
2
movieId_embedding/Reshapeq
concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/concat_dim?
concat/concatIdentity"movieId_embedding/Reshape:output:0*
T0*'
_output_shapes
:?????????
2
concat/concat?
IdentityIdentityconcat/concat:output:0U^movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*5
_input_shapes$
":?????????:?????????:2?
TmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupTmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup:M I
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features
??
?

A__inference_model_layer_call_and_return_conditional_losses_213356
inputs_movieid
inputs_useridn
jdense_features_1_userid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_213194n
jdense_features_movieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_213274*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource*
&dense_4_matmul_readvariableop_resource+
'dense_4_biasadd_readvariableop_resource
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?cdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup?cdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup?
0dense_features_1/userId_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????22
0dense_features_1/userId_embedding/ExpandDims/dim?
,dense_features_1/userId_embedding/ExpandDims
ExpandDimsinputs_userid9dense_features_1/userId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2.
,dense_features_1/userId_embedding/ExpandDims?
@dense_features_1/userId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????2B
@dense_features_1/userId_embedding/to_sparse_input/ignore_value/x?
:dense_features_1/userId_embedding/to_sparse_input/NotEqualNotEqual5dense_features_1/userId_embedding/ExpandDims:output:0Idense_features_1/userId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:?????????2<
:dense_features_1/userId_embedding/to_sparse_input/NotEqual?
9dense_features_1/userId_embedding/to_sparse_input/indicesWhere>dense_features_1/userId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2;
9dense_features_1/userId_embedding/to_sparse_input/indices?
8dense_features_1/userId_embedding/to_sparse_input/valuesGatherNd5dense_features_1/userId_embedding/ExpandDims:output:0Adense_features_1/userId_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:?????????2:
8dense_features_1/userId_embedding/to_sparse_input/values?
=dense_features_1/userId_embedding/to_sparse_input/dense_shapeShape5dense_features_1/userId_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	2?
=dense_features_1/userId_embedding/to_sparse_input/dense_shape?
(dense_features_1/userId_embedding/valuesCastAdense_features_1/userId_embedding/to_sparse_input/values:output:0*

DstT0	*

SrcT0*#
_output_shapes
:?????????2*
(dense_features_1/userId_embedding/values?
Fdense_features_1/userId_embedding/userId_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 2H
Fdense_features_1/userId_embedding/userId_embedding_weights/Slice/begin?
Edense_features_1/userId_embedding/userId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:2G
Edense_features_1/userId_embedding/userId_embedding_weights/Slice/size?
@dense_features_1/userId_embedding/userId_embedding_weights/SliceSliceFdense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Odense_features_1/userId_embedding/userId_embedding_weights/Slice/begin:output:0Ndense_features_1/userId_embedding/userId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:2B
@dense_features_1/userId_embedding/userId_embedding_weights/Slice?
@dense_features_1/userId_embedding/userId_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2B
@dense_features_1/userId_embedding/userId_embedding_weights/Const?
?dense_features_1/userId_embedding/userId_embedding_weights/ProdProdIdense_features_1/userId_embedding/userId_embedding_weights/Slice:output:0Idense_features_1/userId_embedding/userId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: 2A
?dense_features_1/userId_embedding/userId_embedding_weights/Prod?
Kdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :2M
Kdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/indices?
Hdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2J
Hdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/axis?
Cdense_features_1/userId_embedding/userId_embedding_weights/GatherV2GatherV2Fdense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Tdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/indices:output:0Qdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 2E
Cdense_features_1/userId_embedding/userId_embedding_weights/GatherV2?
Adense_features_1/userId_embedding/userId_embedding_weights/Cast/xPackHdense_features_1/userId_embedding/userId_embedding_weights/Prod:output:0Ldense_features_1/userId_embedding/userId_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:2C
Adense_features_1/userId_embedding/userId_embedding_weights/Cast/x?
Hdense_features_1/userId_embedding/userId_embedding_weights/SparseReshapeSparseReshapeAdense_features_1/userId_embedding/to_sparse_input/indices:index:0Fdense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Jdense_features_1/userId_embedding/userId_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:2J
Hdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape?
Qdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/IdentityIdentity,dense_features_1/userId_embedding/values:y:0*
T0	*#
_output_shapes
:?????????2S
Qdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/Identity?
Idense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 2K
Idense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual/y?
Gdense_features_1/userId_embedding/userId_embedding_weights/GreaterEqualGreaterEqualZdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0Rdense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:?????????2I
Gdense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual?
@dense_features_1/userId_embedding/userId_embedding_weights/WhereWhereKdense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:?????????2B
@dense_features_1/userId_embedding/userId_embedding_weights/Where?
Hdense_features_1/userId_embedding/userId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2J
Hdense_features_1/userId_embedding/userId_embedding_weights/Reshape/shape?
Bdense_features_1/userId_embedding/userId_embedding_weights/ReshapeReshapeHdense_features_1/userId_embedding/userId_embedding_weights/Where:index:0Qdense_features_1/userId_embedding/userId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:?????????2D
Bdense_features_1/userId_embedding/userId_embedding_weights/Reshape?
Jdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2L
Jdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1/axis?
Edense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1GatherV2Ydense_features_1/userId_embedding/userId_embedding_weights/SparseReshape:output_indices:0Kdense_features_1/userId_embedding/userId_embedding_weights/Reshape:output:0Sdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????2G
Edense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1?
Jdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2L
Jdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2/axis?
Edense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2GatherV2Zdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0Kdense_features_1/userId_embedding/userId_embedding_weights/Reshape:output:0Sdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????2G
Edense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2?
Cdense_features_1/userId_embedding/userId_embedding_weights/IdentityIdentityWdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:2E
Cdense_features_1/userId_embedding/userId_embedding_weights/Identity?
Tdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 2V
Tdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/Const?
bdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsNdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1:output:0Ndense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2:output:0Ldense_features_1/userId_embedding/userId_embedding_weights/Identity:output:0]dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:?????????2d
bdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows?
fdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2h
fdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack?
hdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2j
hdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1?
hdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2j
hdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2?
`dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicesdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0odense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0qdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0qdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2b
`dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice?
Ydense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/UniqueUniquerdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:?????????2[
Ydense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique?
cdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherjdense_features_1_userid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_213194]dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*}
_classs
qoloc:@dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/213194*'
_output_shapes
:?????????
*
dtype02e
cdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup?
ldense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityldense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*}
_classs
qoloc:@dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/213194*'
_output_shapes
:?????????
2n
ldense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity?
ndense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identityudense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????
2p
ndense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1?
Rdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparseSparseSegmentMeanwdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0_dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:idx:0idense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:?????????
2T
Rdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse?
Jdense_features_1/userId_embedding/userId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2L
Jdense_features_1/userId_embedding/userId_embedding_weights/Reshape_1/shape?
Ddense_features_1/userId_embedding/userId_embedding_weights/Reshape_1Reshapexdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Sdense_features_1/userId_embedding/userId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:?????????2F
Ddense_features_1/userId_embedding/userId_embedding_weights/Reshape_1?
@dense_features_1/userId_embedding/userId_embedding_weights/ShapeShape[dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:2B
@dense_features_1/userId_embedding/userId_embedding_weights/Shape?
Ndense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2P
Ndense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack?
Pdense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2R
Pdense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_1?
Pdense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2R
Pdense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_2?
Hdense_features_1/userId_embedding/userId_embedding_weights/strided_sliceStridedSliceIdense_features_1/userId_embedding/userId_embedding_weights/Shape:output:0Wdense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack:output:0Ydense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_1:output:0Ydense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2J
Hdense_features_1/userId_embedding/userId_embedding_weights/strided_slice?
Bdense_features_1/userId_embedding/userId_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :2D
Bdense_features_1/userId_embedding/userId_embedding_weights/stack/0?
@dense_features_1/userId_embedding/userId_embedding_weights/stackPackKdense_features_1/userId_embedding/userId_embedding_weights/stack/0:output:0Qdense_features_1/userId_embedding/userId_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:2B
@dense_features_1/userId_embedding/userId_embedding_weights/stack?
?dense_features_1/userId_embedding/userId_embedding_weights/TileTileMdense_features_1/userId_embedding/userId_embedding_weights/Reshape_1:output:0Idense_features_1/userId_embedding/userId_embedding_weights/stack:output:0*
T0
*0
_output_shapes
:??????????????????2A
?dense_features_1/userId_embedding/userId_embedding_weights/Tile?
Edense_features_1/userId_embedding/userId_embedding_weights/zeros_like	ZerosLike[dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????
2G
Edense_features_1/userId_embedding/userId_embedding_weights/zeros_like?
:dense_features_1/userId_embedding/userId_embedding_weightsSelectHdense_features_1/userId_embedding/userId_embedding_weights/Tile:output:0Idense_features_1/userId_embedding/userId_embedding_weights/zeros_like:y:0[dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????
2<
:dense_features_1/userId_embedding/userId_embedding_weights?
Adense_features_1/userId_embedding/userId_embedding_weights/Cast_1CastFdense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:2C
Adense_features_1/userId_embedding/userId_embedding_weights/Cast_1?
Hdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 2J
Hdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/begin?
Gdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:2I
Gdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/size?
Bdense_features_1/userId_embedding/userId_embedding_weights/Slice_1SliceEdense_features_1/userId_embedding/userId_embedding_weights/Cast_1:y:0Qdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/begin:output:0Pdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:2D
Bdense_features_1/userId_embedding/userId_embedding_weights/Slice_1?
Bdense_features_1/userId_embedding/userId_embedding_weights/Shape_1ShapeCdense_features_1/userId_embedding/userId_embedding_weights:output:0*
T0*
_output_shapes
:2D
Bdense_features_1/userId_embedding/userId_embedding_weights/Shape_1?
Hdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:2J
Hdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/begin?
Gdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2I
Gdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/size?
Bdense_features_1/userId_embedding/userId_embedding_weights/Slice_2SliceKdense_features_1/userId_embedding/userId_embedding_weights/Shape_1:output:0Qdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/begin:output:0Pdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:2D
Bdense_features_1/userId_embedding/userId_embedding_weights/Slice_2?
Fdense_features_1/userId_embedding/userId_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2H
Fdense_features_1/userId_embedding/userId_embedding_weights/concat/axis?
Adense_features_1/userId_embedding/userId_embedding_weights/concatConcatV2Kdense_features_1/userId_embedding/userId_embedding_weights/Slice_1:output:0Kdense_features_1/userId_embedding/userId_embedding_weights/Slice_2:output:0Odense_features_1/userId_embedding/userId_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:2C
Adense_features_1/userId_embedding/userId_embedding_weights/concat?
Ddense_features_1/userId_embedding/userId_embedding_weights/Reshape_2ReshapeCdense_features_1/userId_embedding/userId_embedding_weights:output:0Jdense_features_1/userId_embedding/userId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:?????????
2F
Ddense_features_1/userId_embedding/userId_embedding_weights/Reshape_2?
'dense_features_1/userId_embedding/ShapeShapeMdense_features_1/userId_embedding/userId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:2)
'dense_features_1/userId_embedding/Shape?
5dense_features_1/userId_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5dense_features_1/userId_embedding/strided_slice/stack?
7dense_features_1/userId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7dense_features_1/userId_embedding/strided_slice/stack_1?
7dense_features_1/userId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7dense_features_1/userId_embedding/strided_slice/stack_2?
/dense_features_1/userId_embedding/strided_sliceStridedSlice0dense_features_1/userId_embedding/Shape:output:0>dense_features_1/userId_embedding/strided_slice/stack:output:0@dense_features_1/userId_embedding/strided_slice/stack_1:output:0@dense_features_1/userId_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/dense_features_1/userId_embedding/strided_slice?
1dense_features_1/userId_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
23
1dense_features_1/userId_embedding/Reshape/shape/1?
/dense_features_1/userId_embedding/Reshape/shapePack8dense_features_1/userId_embedding/strided_slice:output:0:dense_features_1/userId_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:21
/dense_features_1/userId_embedding/Reshape/shape?
)dense_features_1/userId_embedding/ReshapeReshapeMdense_features_1/userId_embedding/userId_embedding_weights/Reshape_2:output:08dense_features_1/userId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????
2+
)dense_features_1/userId_embedding/Reshape?
"dense_features_1/concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"dense_features_1/concat/concat_dim?
dense_features_1/concat/concatIdentity2dense_features_1/userId_embedding/Reshape:output:0*
T0*'
_output_shapes
:?????????
2 
dense_features_1/concat/concat?
/dense_features/movieId_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????21
/dense_features/movieId_embedding/ExpandDims/dim?
+dense_features/movieId_embedding/ExpandDims
ExpandDimsinputs_movieid8dense_features/movieId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2-
+dense_features/movieId_embedding/ExpandDims?
?dense_features/movieId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????2A
?dense_features/movieId_embedding/to_sparse_input/ignore_value/x?
9dense_features/movieId_embedding/to_sparse_input/NotEqualNotEqual4dense_features/movieId_embedding/ExpandDims:output:0Hdense_features/movieId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:?????????2;
9dense_features/movieId_embedding/to_sparse_input/NotEqual?
8dense_features/movieId_embedding/to_sparse_input/indicesWhere=dense_features/movieId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2:
8dense_features/movieId_embedding/to_sparse_input/indices?
7dense_features/movieId_embedding/to_sparse_input/valuesGatherNd4dense_features/movieId_embedding/ExpandDims:output:0@dense_features/movieId_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:?????????29
7dense_features/movieId_embedding/to_sparse_input/values?
<dense_features/movieId_embedding/to_sparse_input/dense_shapeShape4dense_features/movieId_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	2>
<dense_features/movieId_embedding/to_sparse_input/dense_shape?
'dense_features/movieId_embedding/valuesCast@dense_features/movieId_embedding/to_sparse_input/values:output:0*

DstT0	*

SrcT0*#
_output_shapes
:?????????2)
'dense_features/movieId_embedding/values?
Fdense_features/movieId_embedding/movieId_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 2H
Fdense_features/movieId_embedding/movieId_embedding_weights/Slice/begin?
Edense_features/movieId_embedding/movieId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:2G
Edense_features/movieId_embedding/movieId_embedding_weights/Slice/size?
@dense_features/movieId_embedding/movieId_embedding_weights/SliceSliceEdense_features/movieId_embedding/to_sparse_input/dense_shape:output:0Odense_features/movieId_embedding/movieId_embedding_weights/Slice/begin:output:0Ndense_features/movieId_embedding/movieId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:2B
@dense_features/movieId_embedding/movieId_embedding_weights/Slice?
@dense_features/movieId_embedding/movieId_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2B
@dense_features/movieId_embedding/movieId_embedding_weights/Const?
?dense_features/movieId_embedding/movieId_embedding_weights/ProdProdIdense_features/movieId_embedding/movieId_embedding_weights/Slice:output:0Idense_features/movieId_embedding/movieId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: 2A
?dense_features/movieId_embedding/movieId_embedding_weights/Prod?
Kdense_features/movieId_embedding/movieId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :2M
Kdense_features/movieId_embedding/movieId_embedding_weights/GatherV2/indices?
Hdense_features/movieId_embedding/movieId_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2J
Hdense_features/movieId_embedding/movieId_embedding_weights/GatherV2/axis?
Cdense_features/movieId_embedding/movieId_embedding_weights/GatherV2GatherV2Edense_features/movieId_embedding/to_sparse_input/dense_shape:output:0Tdense_features/movieId_embedding/movieId_embedding_weights/GatherV2/indices:output:0Qdense_features/movieId_embedding/movieId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 2E
Cdense_features/movieId_embedding/movieId_embedding_weights/GatherV2?
Adense_features/movieId_embedding/movieId_embedding_weights/Cast/xPackHdense_features/movieId_embedding/movieId_embedding_weights/Prod:output:0Ldense_features/movieId_embedding/movieId_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:2C
Adense_features/movieId_embedding/movieId_embedding_weights/Cast/x?
Hdense_features/movieId_embedding/movieId_embedding_weights/SparseReshapeSparseReshape@dense_features/movieId_embedding/to_sparse_input/indices:index:0Edense_features/movieId_embedding/to_sparse_input/dense_shape:output:0Jdense_features/movieId_embedding/movieId_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:2J
Hdense_features/movieId_embedding/movieId_embedding_weights/SparseReshape?
Qdense_features/movieId_embedding/movieId_embedding_weights/SparseReshape/IdentityIdentity+dense_features/movieId_embedding/values:y:0*
T0	*#
_output_shapes
:?????????2S
Qdense_features/movieId_embedding/movieId_embedding_weights/SparseReshape/Identity?
Idense_features/movieId_embedding/movieId_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 2K
Idense_features/movieId_embedding/movieId_embedding_weights/GreaterEqual/y?
Gdense_features/movieId_embedding/movieId_embedding_weights/GreaterEqualGreaterEqualZdense_features/movieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0Rdense_features/movieId_embedding/movieId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:?????????2I
Gdense_features/movieId_embedding/movieId_embedding_weights/GreaterEqual?
@dense_features/movieId_embedding/movieId_embedding_weights/WhereWhereKdense_features/movieId_embedding/movieId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:?????????2B
@dense_features/movieId_embedding/movieId_embedding_weights/Where?
Hdense_features/movieId_embedding/movieId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2J
Hdense_features/movieId_embedding/movieId_embedding_weights/Reshape/shape?
Bdense_features/movieId_embedding/movieId_embedding_weights/ReshapeReshapeHdense_features/movieId_embedding/movieId_embedding_weights/Where:index:0Qdense_features/movieId_embedding/movieId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:?????????2D
Bdense_features/movieId_embedding/movieId_embedding_weights/Reshape?
Jdense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2L
Jdense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1/axis?
Edense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1GatherV2Ydense_features/movieId_embedding/movieId_embedding_weights/SparseReshape:output_indices:0Kdense_features/movieId_embedding/movieId_embedding_weights/Reshape:output:0Sdense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????2G
Edense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1?
Jdense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2L
Jdense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2/axis?
Edense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2GatherV2Zdense_features/movieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0Kdense_features/movieId_embedding/movieId_embedding_weights/Reshape:output:0Sdense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????2G
Edense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2?
Cdense_features/movieId_embedding/movieId_embedding_weights/IdentityIdentityWdense_features/movieId_embedding/movieId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:2E
Cdense_features/movieId_embedding/movieId_embedding_weights/Identity?
Tdense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 2V
Tdense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/Const?
bdense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsNdense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1:output:0Ndense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2:output:0Ldense_features/movieId_embedding/movieId_embedding_weights/Identity:output:0]dense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:?????????2d
bdense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows?
fdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2h
fdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack?
hdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2j
hdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1?
hdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2j
hdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2?
`dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicesdense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0odense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0qdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0qdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2b
`dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice?
Ydense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/UniqueUniquerdense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:?????????2[
Ydense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique?
cdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherjdense_features_movieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_213274]dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*}
_classs
qoloc:@dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/213274*'
_output_shapes
:?????????
*
dtype02e
cdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup?
ldense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityldense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*}
_classs
qoloc:@dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/213274*'
_output_shapes
:?????????
2n
ldense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity?
ndense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identityudense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????
2p
ndense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1?
Rdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparseSparseSegmentMeanwdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0_dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique:idx:0idense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:?????????
2T
Rdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse?
Jdense_features/movieId_embedding/movieId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2L
Jdense_features/movieId_embedding/movieId_embedding_weights/Reshape_1/shape?
Ddense_features/movieId_embedding/movieId_embedding_weights/Reshape_1Reshapexdense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Sdense_features/movieId_embedding/movieId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:?????????2F
Ddense_features/movieId_embedding/movieId_embedding_weights/Reshape_1?
@dense_features/movieId_embedding/movieId_embedding_weights/ShapeShape[dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:2B
@dense_features/movieId_embedding/movieId_embedding_weights/Shape?
Ndense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2P
Ndense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack?
Pdense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2R
Pdense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_1?
Pdense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2R
Pdense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_2?
Hdense_features/movieId_embedding/movieId_embedding_weights/strided_sliceStridedSliceIdense_features/movieId_embedding/movieId_embedding_weights/Shape:output:0Wdense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack:output:0Ydense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_1:output:0Ydense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2J
Hdense_features/movieId_embedding/movieId_embedding_weights/strided_slice?
Bdense_features/movieId_embedding/movieId_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :2D
Bdense_features/movieId_embedding/movieId_embedding_weights/stack/0?
@dense_features/movieId_embedding/movieId_embedding_weights/stackPackKdense_features/movieId_embedding/movieId_embedding_weights/stack/0:output:0Qdense_features/movieId_embedding/movieId_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:2B
@dense_features/movieId_embedding/movieId_embedding_weights/stack?
?dense_features/movieId_embedding/movieId_embedding_weights/TileTileMdense_features/movieId_embedding/movieId_embedding_weights/Reshape_1:output:0Idense_features/movieId_embedding/movieId_embedding_weights/stack:output:0*
T0
*0
_output_shapes
:??????????????????2A
?dense_features/movieId_embedding/movieId_embedding_weights/Tile?
Edense_features/movieId_embedding/movieId_embedding_weights/zeros_like	ZerosLike[dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????
2G
Edense_features/movieId_embedding/movieId_embedding_weights/zeros_like?
:dense_features/movieId_embedding/movieId_embedding_weightsSelectHdense_features/movieId_embedding/movieId_embedding_weights/Tile:output:0Idense_features/movieId_embedding/movieId_embedding_weights/zeros_like:y:0[dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????
2<
:dense_features/movieId_embedding/movieId_embedding_weights?
Adense_features/movieId_embedding/movieId_embedding_weights/Cast_1CastEdense_features/movieId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:2C
Adense_features/movieId_embedding/movieId_embedding_weights/Cast_1?
Hdense_features/movieId_embedding/movieId_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 2J
Hdense_features/movieId_embedding/movieId_embedding_weights/Slice_1/begin?
Gdense_features/movieId_embedding/movieId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:2I
Gdense_features/movieId_embedding/movieId_embedding_weights/Slice_1/size?
Bdense_features/movieId_embedding/movieId_embedding_weights/Slice_1SliceEdense_features/movieId_embedding/movieId_embedding_weights/Cast_1:y:0Qdense_features/movieId_embedding/movieId_embedding_weights/Slice_1/begin:output:0Pdense_features/movieId_embedding/movieId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:2D
Bdense_features/movieId_embedding/movieId_embedding_weights/Slice_1?
Bdense_features/movieId_embedding/movieId_embedding_weights/Shape_1ShapeCdense_features/movieId_embedding/movieId_embedding_weights:output:0*
T0*
_output_shapes
:2D
Bdense_features/movieId_embedding/movieId_embedding_weights/Shape_1?
Hdense_features/movieId_embedding/movieId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:2J
Hdense_features/movieId_embedding/movieId_embedding_weights/Slice_2/begin?
Gdense_features/movieId_embedding/movieId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2I
Gdense_features/movieId_embedding/movieId_embedding_weights/Slice_2/size?
Bdense_features/movieId_embedding/movieId_embedding_weights/Slice_2SliceKdense_features/movieId_embedding/movieId_embedding_weights/Shape_1:output:0Qdense_features/movieId_embedding/movieId_embedding_weights/Slice_2/begin:output:0Pdense_features/movieId_embedding/movieId_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:2D
Bdense_features/movieId_embedding/movieId_embedding_weights/Slice_2?
Fdense_features/movieId_embedding/movieId_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2H
Fdense_features/movieId_embedding/movieId_embedding_weights/concat/axis?
Adense_features/movieId_embedding/movieId_embedding_weights/concatConcatV2Kdense_features/movieId_embedding/movieId_embedding_weights/Slice_1:output:0Kdense_features/movieId_embedding/movieId_embedding_weights/Slice_2:output:0Odense_features/movieId_embedding/movieId_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:2C
Adense_features/movieId_embedding/movieId_embedding_weights/concat?
Ddense_features/movieId_embedding/movieId_embedding_weights/Reshape_2ReshapeCdense_features/movieId_embedding/movieId_embedding_weights:output:0Jdense_features/movieId_embedding/movieId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:?????????
2F
Ddense_features/movieId_embedding/movieId_embedding_weights/Reshape_2?
&dense_features/movieId_embedding/ShapeShapeMdense_features/movieId_embedding/movieId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:2(
&dense_features/movieId_embedding/Shape?
4dense_features/movieId_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4dense_features/movieId_embedding/strided_slice/stack?
6dense_features/movieId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6dense_features/movieId_embedding/strided_slice/stack_1?
6dense_features/movieId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6dense_features/movieId_embedding/strided_slice/stack_2?
.dense_features/movieId_embedding/strided_sliceStridedSlice/dense_features/movieId_embedding/Shape:output:0=dense_features/movieId_embedding/strided_slice/stack:output:0?dense_features/movieId_embedding/strided_slice/stack_1:output:0?dense_features/movieId_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.dense_features/movieId_embedding/strided_slice?
0dense_features/movieId_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
22
0dense_features/movieId_embedding/Reshape/shape/1?
.dense_features/movieId_embedding/Reshape/shapePack7dense_features/movieId_embedding/strided_slice:output:09dense_features/movieId_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:20
.dense_features/movieId_embedding/Reshape/shape?
(dense_features/movieId_embedding/ReshapeReshapeMdense_features/movieId_embedding/movieId_embedding_weights/Reshape_2:output:07dense_features/movieId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????
2*
(dense_features/movieId_embedding/Reshape?
 dense_features/concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 dense_features/concat/concat_dim?
dense_features/concat/concatIdentity1dense_features/movieId_embedding/Reshape:output:0*
T0*'
_output_shapes
:?????????
2
dense_features/concat/concat?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMul'dense_features_1/concat/concat:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_2/BiasAddp
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_2/Relu?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMul%dense_features/concat/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2

dense/Relu?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_1/BiasAddp
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_1/Relu?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_3/BiasAddp
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_3/Reluj
dot/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
dot/ExpandDims/dim?
dot/ExpandDims
ExpandDimsdense_1/Relu:activations:0dot/ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????
2
dot/ExpandDimsn
dot/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :2
dot/ExpandDims_1/dim?
dot/ExpandDims_1
ExpandDimsdense_3/Relu:activations:0dot/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????
2
dot/ExpandDims_1?

dot/MatMulBatchMatMulV2dot/ExpandDims:output:0dot/ExpandDims_1:output:0*
T0*+
_output_shapes
:?????????2

dot/MatMulY
	dot/ShapeShapedot/MatMul:output:0*
T0*
_output_shapes
:2
	dot/Shape?
dot/SqueezeSqueezedot/MatMul:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
2
dot/Squeeze?
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_4/MatMul/ReadVariableOp?
dense_4/MatMulMatMuldot/Squeeze:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_4/MatMul?
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_4/BiasAdd/ReadVariableOp?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_4/BiasAddy
dense_4/SigmoidSigmoiddense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_4/Sigmoid?
IdentityIdentitydense_4/Sigmoid:y:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOpd^dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupd^dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*a
_input_shapesP
N:?????????:?????????::::::::::::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2?
cdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupcdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup2?
cdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupcdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:S O
#
_output_shapes
:?????????
(
_user_specified_nameinputs/movieId:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/userId
??
?
L__inference_dense_features_1_layer_call_and_return_conditional_losses_212361
features

features_1]
Yuserid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_212321
identity??RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup?
userId_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
userId_embedding/ExpandDims/dim?
userId_embedding/ExpandDims
ExpandDims
features_1(userId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2
userId_embedding/ExpandDims?
/userId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????21
/userId_embedding/to_sparse_input/ignore_value/x?
)userId_embedding/to_sparse_input/NotEqualNotEqual$userId_embedding/ExpandDims:output:08userId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:?????????2+
)userId_embedding/to_sparse_input/NotEqual?
(userId_embedding/to_sparse_input/indicesWhere-userId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2*
(userId_embedding/to_sparse_input/indices?
'userId_embedding/to_sparse_input/valuesGatherNd$userId_embedding/ExpandDims:output:00userId_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:?????????2)
'userId_embedding/to_sparse_input/values?
,userId_embedding/to_sparse_input/dense_shapeShape$userId_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	2.
,userId_embedding/to_sparse_input/dense_shape?
userId_embedding/valuesCast0userId_embedding/to_sparse_input/values:output:0*

DstT0	*

SrcT0*#
_output_shapes
:?????????2
userId_embedding/values?
5userId_embedding/userId_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 27
5userId_embedding/userId_embedding_weights/Slice/begin?
4userId_embedding/userId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:26
4userId_embedding/userId_embedding_weights/Slice/size?
/userId_embedding/userId_embedding_weights/SliceSlice5userId_embedding/to_sparse_input/dense_shape:output:0>userId_embedding/userId_embedding_weights/Slice/begin:output:0=userId_embedding/userId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:21
/userId_embedding/userId_embedding_weights/Slice?
/userId_embedding/userId_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/userId_embedding/userId_embedding_weights/Const?
.userId_embedding/userId_embedding_weights/ProdProd8userId_embedding/userId_embedding_weights/Slice:output:08userId_embedding/userId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: 20
.userId_embedding/userId_embedding_weights/Prod?
:userId_embedding/userId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :2<
:userId_embedding/userId_embedding_weights/GatherV2/indices?
7userId_embedding/userId_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 29
7userId_embedding/userId_embedding_weights/GatherV2/axis?
2userId_embedding/userId_embedding_weights/GatherV2GatherV25userId_embedding/to_sparse_input/dense_shape:output:0CuserId_embedding/userId_embedding_weights/GatherV2/indices:output:0@userId_embedding/userId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 24
2userId_embedding/userId_embedding_weights/GatherV2?
0userId_embedding/userId_embedding_weights/Cast/xPack7userId_embedding/userId_embedding_weights/Prod:output:0;userId_embedding/userId_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:22
0userId_embedding/userId_embedding_weights/Cast/x?
7userId_embedding/userId_embedding_weights/SparseReshapeSparseReshape0userId_embedding/to_sparse_input/indices:index:05userId_embedding/to_sparse_input/dense_shape:output:09userId_embedding/userId_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:29
7userId_embedding/userId_embedding_weights/SparseReshape?
@userId_embedding/userId_embedding_weights/SparseReshape/IdentityIdentityuserId_embedding/values:y:0*
T0	*#
_output_shapes
:?????????2B
@userId_embedding/userId_embedding_weights/SparseReshape/Identity?
8userId_embedding/userId_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 2:
8userId_embedding/userId_embedding_weights/GreaterEqual/y?
6userId_embedding/userId_embedding_weights/GreaterEqualGreaterEqualIuserId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0AuserId_embedding/userId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:?????????28
6userId_embedding/userId_embedding_weights/GreaterEqual?
/userId_embedding/userId_embedding_weights/WhereWhere:userId_embedding/userId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:?????????21
/userId_embedding/userId_embedding_weights/Where?
7userId_embedding/userId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????29
7userId_embedding/userId_embedding_weights/Reshape/shape?
1userId_embedding/userId_embedding_weights/ReshapeReshape7userId_embedding/userId_embedding_weights/Where:index:0@userId_embedding/userId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:?????????23
1userId_embedding/userId_embedding_weights/Reshape?
9userId_embedding/userId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2;
9userId_embedding/userId_embedding_weights/GatherV2_1/axis?
4userId_embedding/userId_embedding_weights/GatherV2_1GatherV2HuserId_embedding/userId_embedding_weights/SparseReshape:output_indices:0:userId_embedding/userId_embedding_weights/Reshape:output:0BuserId_embedding/userId_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????26
4userId_embedding/userId_embedding_weights/GatherV2_1?
9userId_embedding/userId_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2;
9userId_embedding/userId_embedding_weights/GatherV2_2/axis?
4userId_embedding/userId_embedding_weights/GatherV2_2GatherV2IuserId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0:userId_embedding/userId_embedding_weights/Reshape:output:0BuserId_embedding/userId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????26
4userId_embedding/userId_embedding_weights/GatherV2_2?
2userId_embedding/userId_embedding_weights/IdentityIdentityFuserId_embedding/userId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:24
2userId_embedding/userId_embedding_weights/Identity?
CuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 2E
CuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/Const?
QuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows=userId_embedding/userId_embedding_weights/GatherV2_1:output:0=userId_embedding/userId_embedding_weights/GatherV2_2:output:0;userId_embedding/userId_embedding_weights/Identity:output:0LuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:?????????2S
QuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows?
UuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2W
UuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack?
WuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2Y
WuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1?
WuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2Y
WuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2?
OuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicebuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0^userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0`userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0`userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2Q
OuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice?
HuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/UniqueUniqueauserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:?????????2J
HuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique?
RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherYuserid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_212321LuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*l
_classb
`^loc:@userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/212321*'
_output_shapes
:?????????
*
dtype02T
RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup?
[userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity[userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*l
_classb
`^loc:@userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/212321*'
_output_shapes
:?????????
2]
[userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity?
]userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1IdentityduserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????
2_
]userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1?
AuserId_embedding/userId_embedding_weights/embedding_lookup_sparseSparseSegmentMeanfuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0NuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:idx:0XuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:?????????
2C
AuserId_embedding/userId_embedding_weights/embedding_lookup_sparse?
9userId_embedding/userId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2;
9userId_embedding/userId_embedding_weights/Reshape_1/shape?
3userId_embedding/userId_embedding_weights/Reshape_1ReshapeguserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0BuserId_embedding/userId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:?????????25
3userId_embedding/userId_embedding_weights/Reshape_1?
/userId_embedding/userId_embedding_weights/ShapeShapeJuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:21
/userId_embedding/userId_embedding_weights/Shape?
=userId_embedding/userId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2?
=userId_embedding/userId_embedding_weights/strided_slice/stack?
?userId_embedding/userId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2A
?userId_embedding/userId_embedding_weights/strided_slice/stack_1?
?userId_embedding/userId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2A
?userId_embedding/userId_embedding_weights/strided_slice/stack_2?
7userId_embedding/userId_embedding_weights/strided_sliceStridedSlice8userId_embedding/userId_embedding_weights/Shape:output:0FuserId_embedding/userId_embedding_weights/strided_slice/stack:output:0HuserId_embedding/userId_embedding_weights/strided_slice/stack_1:output:0HuserId_embedding/userId_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask29
7userId_embedding/userId_embedding_weights/strided_slice?
1userId_embedding/userId_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :23
1userId_embedding/userId_embedding_weights/stack/0?
/userId_embedding/userId_embedding_weights/stackPack:userId_embedding/userId_embedding_weights/stack/0:output:0@userId_embedding/userId_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:21
/userId_embedding/userId_embedding_weights/stack?
.userId_embedding/userId_embedding_weights/TileTile<userId_embedding/userId_embedding_weights/Reshape_1:output:08userId_embedding/userId_embedding_weights/stack:output:0*
T0
*0
_output_shapes
:??????????????????20
.userId_embedding/userId_embedding_weights/Tile?
4userId_embedding/userId_embedding_weights/zeros_like	ZerosLikeJuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????
26
4userId_embedding/userId_embedding_weights/zeros_like?
)userId_embedding/userId_embedding_weightsSelect7userId_embedding/userId_embedding_weights/Tile:output:08userId_embedding/userId_embedding_weights/zeros_like:y:0JuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????
2+
)userId_embedding/userId_embedding_weights?
0userId_embedding/userId_embedding_weights/Cast_1Cast5userId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:22
0userId_embedding/userId_embedding_weights/Cast_1?
7userId_embedding/userId_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 29
7userId_embedding/userId_embedding_weights/Slice_1/begin?
6userId_embedding/userId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:28
6userId_embedding/userId_embedding_weights/Slice_1/size?
1userId_embedding/userId_embedding_weights/Slice_1Slice4userId_embedding/userId_embedding_weights/Cast_1:y:0@userId_embedding/userId_embedding_weights/Slice_1/begin:output:0?userId_embedding/userId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:23
1userId_embedding/userId_embedding_weights/Slice_1?
1userId_embedding/userId_embedding_weights/Shape_1Shape2userId_embedding/userId_embedding_weights:output:0*
T0*
_output_shapes
:23
1userId_embedding/userId_embedding_weights/Shape_1?
7userId_embedding/userId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:29
7userId_embedding/userId_embedding_weights/Slice_2/begin?
6userId_embedding/userId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?????????28
6userId_embedding/userId_embedding_weights/Slice_2/size?
1userId_embedding/userId_embedding_weights/Slice_2Slice:userId_embedding/userId_embedding_weights/Shape_1:output:0@userId_embedding/userId_embedding_weights/Slice_2/begin:output:0?userId_embedding/userId_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:23
1userId_embedding/userId_embedding_weights/Slice_2?
5userId_embedding/userId_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5userId_embedding/userId_embedding_weights/concat/axis?
0userId_embedding/userId_embedding_weights/concatConcatV2:userId_embedding/userId_embedding_weights/Slice_1:output:0:userId_embedding/userId_embedding_weights/Slice_2:output:0>userId_embedding/userId_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:22
0userId_embedding/userId_embedding_weights/concat?
3userId_embedding/userId_embedding_weights/Reshape_2Reshape2userId_embedding/userId_embedding_weights:output:09userId_embedding/userId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:?????????
25
3userId_embedding/userId_embedding_weights/Reshape_2?
userId_embedding/ShapeShape<userId_embedding/userId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:2
userId_embedding/Shape?
$userId_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$userId_embedding/strided_slice/stack?
&userId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&userId_embedding/strided_slice/stack_1?
&userId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&userId_embedding/strided_slice/stack_2?
userId_embedding/strided_sliceStridedSliceuserId_embedding/Shape:output:0-userId_embedding/strided_slice/stack:output:0/userId_embedding/strided_slice/stack_1:output:0/userId_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
userId_embedding/strided_slice?
 userId_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
2"
 userId_embedding/Reshape/shape/1?
userId_embedding/Reshape/shapePack'userId_embedding/strided_slice:output:0)userId_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2 
userId_embedding/Reshape/shape?
userId_embedding/ReshapeReshape<userId_embedding/userId_embedding_weights/Reshape_2:output:0'userId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????
2
userId_embedding/Reshapeq
concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/concat_dim
concat/concatIdentity!userId_embedding/Reshape:output:0*
T0*'
_output_shapes
:?????????
2
concat/concat?
IdentityIdentityconcat/concat:output:0S^userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*5
_input_shapes$
":?????????:?????????:2?
RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupRuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:M I
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features
?
}
(__inference_dense_4_layer_call_fn_213906

inputs
unknown
	unknown_0
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
GPU 2J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_2127132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
C__inference_dense_3_layer_call_and_return_conditional_losses_213859

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:

*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
1__inference_dense_features_1_layer_call_fn_213780
features_movieid
features_userid
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallfeatures_movieidfeatures_useridunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_dense_features_1_layer_call_and_return_conditional_losses_2122762
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*5
_input_shapes$
":?????????:?????????:22
StatefulPartitionedCallStatefulPartitionedCall:U Q
#
_output_shapes
:?????????
*
_user_specified_namefeatures/movieId:TP
#
_output_shapes
:?????????
)
_user_specified_namefeatures/userId
?	
?
C__inference_dense_3_layer_call_and_return_conditional_losses_212665

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:

*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
ȟ
?
J__inference_dense_features_layer_call_and_return_conditional_losses_213586
features_movieid
features_userid_
[movieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_213546
identity??TmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup?
 movieId_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 movieId_embedding/ExpandDims/dim?
movieId_embedding/ExpandDims
ExpandDimsfeatures_movieid)movieId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2
movieId_embedding/ExpandDims?
0movieId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????22
0movieId_embedding/to_sparse_input/ignore_value/x?
*movieId_embedding/to_sparse_input/NotEqualNotEqual%movieId_embedding/ExpandDims:output:09movieId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:?????????2,
*movieId_embedding/to_sparse_input/NotEqual?
)movieId_embedding/to_sparse_input/indicesWhere.movieId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2+
)movieId_embedding/to_sparse_input/indices?
(movieId_embedding/to_sparse_input/valuesGatherNd%movieId_embedding/ExpandDims:output:01movieId_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:?????????2*
(movieId_embedding/to_sparse_input/values?
-movieId_embedding/to_sparse_input/dense_shapeShape%movieId_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	2/
-movieId_embedding/to_sparse_input/dense_shape?
movieId_embedding/valuesCast1movieId_embedding/to_sparse_input/values:output:0*

DstT0	*

SrcT0*#
_output_shapes
:?????????2
movieId_embedding/values?
7movieId_embedding/movieId_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 29
7movieId_embedding/movieId_embedding_weights/Slice/begin?
6movieId_embedding/movieId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:28
6movieId_embedding/movieId_embedding_weights/Slice/size?
1movieId_embedding/movieId_embedding_weights/SliceSlice6movieId_embedding/to_sparse_input/dense_shape:output:0@movieId_embedding/movieId_embedding_weights/Slice/begin:output:0?movieId_embedding/movieId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:23
1movieId_embedding/movieId_embedding_weights/Slice?
1movieId_embedding/movieId_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: 23
1movieId_embedding/movieId_embedding_weights/Const?
0movieId_embedding/movieId_embedding_weights/ProdProd:movieId_embedding/movieId_embedding_weights/Slice:output:0:movieId_embedding/movieId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: 22
0movieId_embedding/movieId_embedding_weights/Prod?
<movieId_embedding/movieId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :2>
<movieId_embedding/movieId_embedding_weights/GatherV2/indices?
9movieId_embedding/movieId_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2;
9movieId_embedding/movieId_embedding_weights/GatherV2/axis?
4movieId_embedding/movieId_embedding_weights/GatherV2GatherV26movieId_embedding/to_sparse_input/dense_shape:output:0EmovieId_embedding/movieId_embedding_weights/GatherV2/indices:output:0BmovieId_embedding/movieId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 26
4movieId_embedding/movieId_embedding_weights/GatherV2?
2movieId_embedding/movieId_embedding_weights/Cast/xPack9movieId_embedding/movieId_embedding_weights/Prod:output:0=movieId_embedding/movieId_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:24
2movieId_embedding/movieId_embedding_weights/Cast/x?
9movieId_embedding/movieId_embedding_weights/SparseReshapeSparseReshape1movieId_embedding/to_sparse_input/indices:index:06movieId_embedding/to_sparse_input/dense_shape:output:0;movieId_embedding/movieId_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:2;
9movieId_embedding/movieId_embedding_weights/SparseReshape?
BmovieId_embedding/movieId_embedding_weights/SparseReshape/IdentityIdentitymovieId_embedding/values:y:0*
T0	*#
_output_shapes
:?????????2D
BmovieId_embedding/movieId_embedding_weights/SparseReshape/Identity?
:movieId_embedding/movieId_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 2<
:movieId_embedding/movieId_embedding_weights/GreaterEqual/y?
8movieId_embedding/movieId_embedding_weights/GreaterEqualGreaterEqualKmovieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0CmovieId_embedding/movieId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:?????????2:
8movieId_embedding/movieId_embedding_weights/GreaterEqual?
1movieId_embedding/movieId_embedding_weights/WhereWhere<movieId_embedding/movieId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:?????????23
1movieId_embedding/movieId_embedding_weights/Where?
9movieId_embedding/movieId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2;
9movieId_embedding/movieId_embedding_weights/Reshape/shape?
3movieId_embedding/movieId_embedding_weights/ReshapeReshape9movieId_embedding/movieId_embedding_weights/Where:index:0BmovieId_embedding/movieId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:?????????25
3movieId_embedding/movieId_embedding_weights/Reshape?
;movieId_embedding/movieId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2=
;movieId_embedding/movieId_embedding_weights/GatherV2_1/axis?
6movieId_embedding/movieId_embedding_weights/GatherV2_1GatherV2JmovieId_embedding/movieId_embedding_weights/SparseReshape:output_indices:0<movieId_embedding/movieId_embedding_weights/Reshape:output:0DmovieId_embedding/movieId_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????28
6movieId_embedding/movieId_embedding_weights/GatherV2_1?
;movieId_embedding/movieId_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2=
;movieId_embedding/movieId_embedding_weights/GatherV2_2/axis?
6movieId_embedding/movieId_embedding_weights/GatherV2_2GatherV2KmovieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0<movieId_embedding/movieId_embedding_weights/Reshape:output:0DmovieId_embedding/movieId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????28
6movieId_embedding/movieId_embedding_weights/GatherV2_2?
4movieId_embedding/movieId_embedding_weights/IdentityIdentityHmovieId_embedding/movieId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:26
4movieId_embedding/movieId_embedding_weights/Identity?
EmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 2G
EmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/Const?
SmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows?movieId_embedding/movieId_embedding_weights/GatherV2_1:output:0?movieId_embedding/movieId_embedding_weights/GatherV2_2:output:0=movieId_embedding/movieId_embedding_weights/Identity:output:0NmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:?????????2U
SmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows?
WmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2Y
WmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack?
YmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2[
YmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1?
YmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2[
YmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2?
QmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicedmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0`movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0bmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0bmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2S
QmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice?
JmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/UniqueUniquecmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:?????????2L
JmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique?
TmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGather[movieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_213546NmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*n
_classd
b`loc:@movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/213546*'
_output_shapes
:?????????
*
dtype02V
TmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup?
]movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity]movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*n
_classd
b`loc:@movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/213546*'
_output_shapes
:?????????
2_
]movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity?
_movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1IdentityfmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????
2a
_movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1?
CmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparseSparseSegmentMeanhmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0PmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique:idx:0ZmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:?????????
2E
CmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse?
;movieId_embedding/movieId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2=
;movieId_embedding/movieId_embedding_weights/Reshape_1/shape?
5movieId_embedding/movieId_embedding_weights/Reshape_1ReshapeimovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0DmovieId_embedding/movieId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:?????????27
5movieId_embedding/movieId_embedding_weights/Reshape_1?
1movieId_embedding/movieId_embedding_weights/ShapeShapeLmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:23
1movieId_embedding/movieId_embedding_weights/Shape?
?movieId_embedding/movieId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2A
?movieId_embedding/movieId_embedding_weights/strided_slice/stack?
AmovieId_embedding/movieId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2C
AmovieId_embedding/movieId_embedding_weights/strided_slice/stack_1?
AmovieId_embedding/movieId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2C
AmovieId_embedding/movieId_embedding_weights/strided_slice/stack_2?
9movieId_embedding/movieId_embedding_weights/strided_sliceStridedSlice:movieId_embedding/movieId_embedding_weights/Shape:output:0HmovieId_embedding/movieId_embedding_weights/strided_slice/stack:output:0JmovieId_embedding/movieId_embedding_weights/strided_slice/stack_1:output:0JmovieId_embedding/movieId_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2;
9movieId_embedding/movieId_embedding_weights/strided_slice?
3movieId_embedding/movieId_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :25
3movieId_embedding/movieId_embedding_weights/stack/0?
1movieId_embedding/movieId_embedding_weights/stackPack<movieId_embedding/movieId_embedding_weights/stack/0:output:0BmovieId_embedding/movieId_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:23
1movieId_embedding/movieId_embedding_weights/stack?
0movieId_embedding/movieId_embedding_weights/TileTile>movieId_embedding/movieId_embedding_weights/Reshape_1:output:0:movieId_embedding/movieId_embedding_weights/stack:output:0*
T0
*0
_output_shapes
:??????????????????22
0movieId_embedding/movieId_embedding_weights/Tile?
6movieId_embedding/movieId_embedding_weights/zeros_like	ZerosLikeLmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????
28
6movieId_embedding/movieId_embedding_weights/zeros_like?
+movieId_embedding/movieId_embedding_weightsSelect9movieId_embedding/movieId_embedding_weights/Tile:output:0:movieId_embedding/movieId_embedding_weights/zeros_like:y:0LmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????
2-
+movieId_embedding/movieId_embedding_weights?
2movieId_embedding/movieId_embedding_weights/Cast_1Cast6movieId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:24
2movieId_embedding/movieId_embedding_weights/Cast_1?
9movieId_embedding/movieId_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 2;
9movieId_embedding/movieId_embedding_weights/Slice_1/begin?
8movieId_embedding/movieId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:2:
8movieId_embedding/movieId_embedding_weights/Slice_1/size?
3movieId_embedding/movieId_embedding_weights/Slice_1Slice6movieId_embedding/movieId_embedding_weights/Cast_1:y:0BmovieId_embedding/movieId_embedding_weights/Slice_1/begin:output:0AmovieId_embedding/movieId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:25
3movieId_embedding/movieId_embedding_weights/Slice_1?
3movieId_embedding/movieId_embedding_weights/Shape_1Shape4movieId_embedding/movieId_embedding_weights:output:0*
T0*
_output_shapes
:25
3movieId_embedding/movieId_embedding_weights/Shape_1?
9movieId_embedding/movieId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:2;
9movieId_embedding/movieId_embedding_weights/Slice_2/begin?
8movieId_embedding/movieId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2:
8movieId_embedding/movieId_embedding_weights/Slice_2/size?
3movieId_embedding/movieId_embedding_weights/Slice_2Slice<movieId_embedding/movieId_embedding_weights/Shape_1:output:0BmovieId_embedding/movieId_embedding_weights/Slice_2/begin:output:0AmovieId_embedding/movieId_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:25
3movieId_embedding/movieId_embedding_weights/Slice_2?
7movieId_embedding/movieId_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 29
7movieId_embedding/movieId_embedding_weights/concat/axis?
2movieId_embedding/movieId_embedding_weights/concatConcatV2<movieId_embedding/movieId_embedding_weights/Slice_1:output:0<movieId_embedding/movieId_embedding_weights/Slice_2:output:0@movieId_embedding/movieId_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:24
2movieId_embedding/movieId_embedding_weights/concat?
5movieId_embedding/movieId_embedding_weights/Reshape_2Reshape4movieId_embedding/movieId_embedding_weights:output:0;movieId_embedding/movieId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:?????????
27
5movieId_embedding/movieId_embedding_weights/Reshape_2?
movieId_embedding/ShapeShape>movieId_embedding/movieId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:2
movieId_embedding/Shape?
%movieId_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%movieId_embedding/strided_slice/stack?
'movieId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'movieId_embedding/strided_slice/stack_1?
'movieId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'movieId_embedding/strided_slice/stack_2?
movieId_embedding/strided_sliceStridedSlice movieId_embedding/Shape:output:0.movieId_embedding/strided_slice/stack:output:00movieId_embedding/strided_slice/stack_1:output:00movieId_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
movieId_embedding/strided_slice?
!movieId_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
2#
!movieId_embedding/Reshape/shape/1?
movieId_embedding/Reshape/shapePack(movieId_embedding/strided_slice:output:0*movieId_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2!
movieId_embedding/Reshape/shape?
movieId_embedding/ReshapeReshape>movieId_embedding/movieId_embedding_weights/Reshape_2:output:0(movieId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????
2
movieId_embedding/Reshapeq
concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/concat_dim?
concat/concatIdentity"movieId_embedding/Reshape:output:0*
T0*'
_output_shapes
:?????????
2
concat/concat?
IdentityIdentityconcat/concat:output:0U^movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*5
_input_shapes$
":?????????:?????????:2?
TmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupTmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup:U Q
#
_output_shapes
:?????????
*
_user_specified_namefeatures/movieId:TP
#
_output_shapes
:?????????
)
_user_specified_namefeatures/userId
?

?
&__inference_model_layer_call_fn_213416
inputs_movieid
inputs_userid
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_movieidinputs_useridunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_2128752
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*a
_input_shapesP
N:?????????:?????????::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
#
_output_shapes
:?????????
(
_user_specified_nameinputs/movieId:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/userId
?(
?
A__inference_model_layer_call_and_return_conditional_losses_212767
movieid

userid
dense_features_1_212734
dense_features_212737
dense_2_212740
dense_2_212742
dense_212745
dense_212747
dense_1_212750
dense_1_212752
dense_3_212755
dense_3_212757
dense_4_212761
dense_4_212763
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?&dense_features/StatefulPartitionedCall?(dense_features_1/StatefulPartitionedCall?
(dense_features_1/StatefulPartitionedCallStatefulPartitionedCallmovieiduseriddense_features_1_212734*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_dense_features_1_layer_call_and_return_conditional_losses_2123612*
(dense_features_1/StatefulPartitionedCall?
&dense_features/StatefulPartitionedCallStatefulPartitionedCallmovieiduseriddense_features_212737*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_2125522(
&dense_features/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall1dense_features_1/StatefulPartitionedCall:output:0dense_2_212740dense_2_212742*
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
GPU 2J 8? *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_2125842!
dense_2/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall/dense_features/StatefulPartitionedCall:output:0dense_212745dense_212747*
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
GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_2126112
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_212750dense_1_212752*
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
GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_2126382!
dense_1/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_212755dense_3_212757*
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
GPU 2J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_2126652!
dense_3/StatefulPartitionedCall?
dot/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dot_layer_call_and_return_conditional_losses_2126932
dot/PartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCalldot/PartitionedCall:output:0dense_4_212761dense_4_212763*
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
GPU 2J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_2127132!
dense_4/StatefulPartitionedCall?
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall)^dense_features_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*a
_input_shapesP
N:?????????:?????????::::::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall2T
(dense_features_1/StatefulPartitionedCall(dense_features_1/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	movieId:KG
#
_output_shapes
:?????????
 
_user_specified_nameuserId
?	
?
C__inference_dense_4_layer_call_and_return_conditional_losses_213897

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
C__inference_dense_1_layer_call_and_return_conditional_losses_213839

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:

*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
??
?
"__inference__traced_restore_214258
file_prefixG
Cassignvariableop_dense_features_movieid_embedding_embedding_weightsJ
Fassignvariableop_1_dense_features_1_userid_embedding_embedding_weights#
assignvariableop_2_dense_kernel!
assignvariableop_3_dense_bias%
!assignvariableop_4_dense_2_kernel#
assignvariableop_5_dense_2_bias%
!assignvariableop_6_dense_1_kernel#
assignvariableop_7_dense_1_bias%
!assignvariableop_8_dense_3_kernel#
assignvariableop_9_dense_3_bias&
"assignvariableop_10_dense_4_kernel$
 assignvariableop_11_dense_4_bias!
assignvariableop_12_adam_iter#
assignvariableop_13_adam_beta_1#
assignvariableop_14_adam_beta_2"
assignvariableop_15_adam_decay*
&assignvariableop_16_adam_learning_rate
assignvariableop_17_total
assignvariableop_18_count
assignvariableop_19_total_1
assignvariableop_20_count_1&
"assignvariableop_21_true_positives&
"assignvariableop_22_true_negatives'
#assignvariableop_23_false_positives'
#assignvariableop_24_false_negatives(
$assignvariableop_25_true_positives_1(
$assignvariableop_26_true_negatives_1)
%assignvariableop_27_false_positives_1)
%assignvariableop_28_false_negatives_1Q
Massignvariableop_29_adam_dense_features_movieid_embedding_embedding_weights_mR
Nassignvariableop_30_adam_dense_features_1_userid_embedding_embedding_weights_m+
'assignvariableop_31_adam_dense_kernel_m)
%assignvariableop_32_adam_dense_bias_m-
)assignvariableop_33_adam_dense_2_kernel_m+
'assignvariableop_34_adam_dense_2_bias_m-
)assignvariableop_35_adam_dense_1_kernel_m+
'assignvariableop_36_adam_dense_1_bias_m-
)assignvariableop_37_adam_dense_3_kernel_m+
'assignvariableop_38_adam_dense_3_bias_m-
)assignvariableop_39_adam_dense_4_kernel_m+
'assignvariableop_40_adam_dense_4_bias_mQ
Massignvariableop_41_adam_dense_features_movieid_embedding_embedding_weights_vR
Nassignvariableop_42_adam_dense_features_1_userid_embedding_embedding_weights_v+
'assignvariableop_43_adam_dense_kernel_v)
%assignvariableop_44_adam_dense_bias_v-
)assignvariableop_45_adam_dense_2_kernel_v+
'assignvariableop_46_adam_dense_2_bias_v-
)assignvariableop_47_adam_dense_1_kernel_v+
'assignvariableop_48_adam_dense_1_bias_v-
)assignvariableop_49_adam_dense_3_kernel_v+
'assignvariableop_50_adam_dense_3_bias_v-
)assignvariableop_51_adam_dense_4_kernel_v+
'assignvariableop_52_adam_dense_4_bias_v
identity_54??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:6*
dtype0*?
value?B?6BTlayer_with_weights-0/movieId_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-1/userId_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-0/movieId_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBolayer_with_weights-1/userId_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-0/movieId_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBolayer_with_weights-1/userId_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:6*
dtype0*
valuevBt6B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::*D
dtypes:
826	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpCassignvariableop_dense_features_movieid_embedding_embedding_weightsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpFassignvariableop_1_dense_features_1_userid_embedding_embedding_weightsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_3_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_3_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp"assignvariableop_10_dense_4_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp assignvariableop_11_dense_4_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp&assignvariableop_16_adam_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp"assignvariableop_21_true_positivesIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp"assignvariableop_22_true_negativesIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp#assignvariableop_23_false_positivesIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp#assignvariableop_24_false_negativesIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp$assignvariableop_25_true_positives_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp$assignvariableop_26_true_negatives_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp%assignvariableop_27_false_positives_1Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp%assignvariableop_28_false_negatives_1Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOpMassignvariableop_29_adam_dense_features_movieid_embedding_embedding_weights_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOpNassignvariableop_30_adam_dense_features_1_userid_embedding_embedding_weights_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp'assignvariableop_31_adam_dense_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp%assignvariableop_32_adam_dense_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_dense_2_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_dense_2_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_dense_1_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_dense_1_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_dense_3_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_dense_3_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_dense_4_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp'assignvariableop_40_adam_dense_4_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOpMassignvariableop_41_adam_dense_features_movieid_embedding_embedding_weights_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOpNassignvariableop_42_adam_dense_features_1_userid_embedding_embedding_weights_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp'assignvariableop_43_adam_dense_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp%assignvariableop_44_adam_dense_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp)assignvariableop_45_adam_dense_2_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp'assignvariableop_46_adam_dense_2_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_dense_1_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp'assignvariableop_48_adam_dense_1_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp)assignvariableop_49_adam_dense_3_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp'assignvariableop_50_adam_dense_3_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp)assignvariableop_51_adam_dense_4_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp'assignvariableop_52_adam_dense_4_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_529
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?	
Identity_53Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_53?	
Identity_54IdentityIdentity_53:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_54"#
identity_54Identity_54:output:0*?
_input_shapes?
?: :::::::::::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?	
i
?__inference_dot_layer_call_and_return_conditional_losses_212693

inputs
inputs_1
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim}

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????
2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinputs_1ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????
2
ExpandDims_1?
MatMulBatchMatMulV2ExpandDims:output:0ExpandDims_1:output:0*
T0*+
_output_shapes
:?????????2
MatMulM
ShapeShapeMatMul:output:0*
T0*
_output_shapes
:2
Shapew
SqueezeSqueezeMatMul:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
2	
Squeezed
IdentityIdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*9
_input_shapes(
&:?????????
:?????????
:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????

 
_user_specified_nameinputs
??
?

A__inference_model_layer_call_and_return_conditional_losses_213149
inputs_movieid
inputs_useridn
jdense_features_1_userid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_212987n
jdense_features_movieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_213067*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource*
&dense_4_matmul_readvariableop_resource+
'dense_4_biasadd_readvariableop_resource
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?cdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup?cdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup?
0dense_features_1/userId_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????22
0dense_features_1/userId_embedding/ExpandDims/dim?
,dense_features_1/userId_embedding/ExpandDims
ExpandDimsinputs_userid9dense_features_1/userId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2.
,dense_features_1/userId_embedding/ExpandDims?
@dense_features_1/userId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????2B
@dense_features_1/userId_embedding/to_sparse_input/ignore_value/x?
:dense_features_1/userId_embedding/to_sparse_input/NotEqualNotEqual5dense_features_1/userId_embedding/ExpandDims:output:0Idense_features_1/userId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:?????????2<
:dense_features_1/userId_embedding/to_sparse_input/NotEqual?
9dense_features_1/userId_embedding/to_sparse_input/indicesWhere>dense_features_1/userId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2;
9dense_features_1/userId_embedding/to_sparse_input/indices?
8dense_features_1/userId_embedding/to_sparse_input/valuesGatherNd5dense_features_1/userId_embedding/ExpandDims:output:0Adense_features_1/userId_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:?????????2:
8dense_features_1/userId_embedding/to_sparse_input/values?
=dense_features_1/userId_embedding/to_sparse_input/dense_shapeShape5dense_features_1/userId_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	2?
=dense_features_1/userId_embedding/to_sparse_input/dense_shape?
(dense_features_1/userId_embedding/valuesCastAdense_features_1/userId_embedding/to_sparse_input/values:output:0*

DstT0	*

SrcT0*#
_output_shapes
:?????????2*
(dense_features_1/userId_embedding/values?
Fdense_features_1/userId_embedding/userId_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 2H
Fdense_features_1/userId_embedding/userId_embedding_weights/Slice/begin?
Edense_features_1/userId_embedding/userId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:2G
Edense_features_1/userId_embedding/userId_embedding_weights/Slice/size?
@dense_features_1/userId_embedding/userId_embedding_weights/SliceSliceFdense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Odense_features_1/userId_embedding/userId_embedding_weights/Slice/begin:output:0Ndense_features_1/userId_embedding/userId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:2B
@dense_features_1/userId_embedding/userId_embedding_weights/Slice?
@dense_features_1/userId_embedding/userId_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2B
@dense_features_1/userId_embedding/userId_embedding_weights/Const?
?dense_features_1/userId_embedding/userId_embedding_weights/ProdProdIdense_features_1/userId_embedding/userId_embedding_weights/Slice:output:0Idense_features_1/userId_embedding/userId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: 2A
?dense_features_1/userId_embedding/userId_embedding_weights/Prod?
Kdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :2M
Kdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/indices?
Hdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2J
Hdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/axis?
Cdense_features_1/userId_embedding/userId_embedding_weights/GatherV2GatherV2Fdense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Tdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/indices:output:0Qdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 2E
Cdense_features_1/userId_embedding/userId_embedding_weights/GatherV2?
Adense_features_1/userId_embedding/userId_embedding_weights/Cast/xPackHdense_features_1/userId_embedding/userId_embedding_weights/Prod:output:0Ldense_features_1/userId_embedding/userId_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:2C
Adense_features_1/userId_embedding/userId_embedding_weights/Cast/x?
Hdense_features_1/userId_embedding/userId_embedding_weights/SparseReshapeSparseReshapeAdense_features_1/userId_embedding/to_sparse_input/indices:index:0Fdense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Jdense_features_1/userId_embedding/userId_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:2J
Hdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape?
Qdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/IdentityIdentity,dense_features_1/userId_embedding/values:y:0*
T0	*#
_output_shapes
:?????????2S
Qdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/Identity?
Idense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 2K
Idense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual/y?
Gdense_features_1/userId_embedding/userId_embedding_weights/GreaterEqualGreaterEqualZdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0Rdense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:?????????2I
Gdense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual?
@dense_features_1/userId_embedding/userId_embedding_weights/WhereWhereKdense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:?????????2B
@dense_features_1/userId_embedding/userId_embedding_weights/Where?
Hdense_features_1/userId_embedding/userId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2J
Hdense_features_1/userId_embedding/userId_embedding_weights/Reshape/shape?
Bdense_features_1/userId_embedding/userId_embedding_weights/ReshapeReshapeHdense_features_1/userId_embedding/userId_embedding_weights/Where:index:0Qdense_features_1/userId_embedding/userId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:?????????2D
Bdense_features_1/userId_embedding/userId_embedding_weights/Reshape?
Jdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2L
Jdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1/axis?
Edense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1GatherV2Ydense_features_1/userId_embedding/userId_embedding_weights/SparseReshape:output_indices:0Kdense_features_1/userId_embedding/userId_embedding_weights/Reshape:output:0Sdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????2G
Edense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1?
Jdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2L
Jdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2/axis?
Edense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2GatherV2Zdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0Kdense_features_1/userId_embedding/userId_embedding_weights/Reshape:output:0Sdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????2G
Edense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2?
Cdense_features_1/userId_embedding/userId_embedding_weights/IdentityIdentityWdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:2E
Cdense_features_1/userId_embedding/userId_embedding_weights/Identity?
Tdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 2V
Tdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/Const?
bdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsNdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1:output:0Ndense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2:output:0Ldense_features_1/userId_embedding/userId_embedding_weights/Identity:output:0]dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:?????????2d
bdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows?
fdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2h
fdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack?
hdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2j
hdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1?
hdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2j
hdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2?
`dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicesdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0odense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0qdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0qdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2b
`dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice?
Ydense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/UniqueUniquerdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:?????????2[
Ydense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique?
cdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherjdense_features_1_userid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_212987]dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*}
_classs
qoloc:@dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/212987*'
_output_shapes
:?????????
*
dtype02e
cdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup?
ldense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityldense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*}
_classs
qoloc:@dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/212987*'
_output_shapes
:?????????
2n
ldense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity?
ndense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identityudense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????
2p
ndense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1?
Rdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparseSparseSegmentMeanwdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0_dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:idx:0idense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:?????????
2T
Rdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse?
Jdense_features_1/userId_embedding/userId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2L
Jdense_features_1/userId_embedding/userId_embedding_weights/Reshape_1/shape?
Ddense_features_1/userId_embedding/userId_embedding_weights/Reshape_1Reshapexdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Sdense_features_1/userId_embedding/userId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:?????????2F
Ddense_features_1/userId_embedding/userId_embedding_weights/Reshape_1?
@dense_features_1/userId_embedding/userId_embedding_weights/ShapeShape[dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:2B
@dense_features_1/userId_embedding/userId_embedding_weights/Shape?
Ndense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2P
Ndense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack?
Pdense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2R
Pdense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_1?
Pdense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2R
Pdense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_2?
Hdense_features_1/userId_embedding/userId_embedding_weights/strided_sliceStridedSliceIdense_features_1/userId_embedding/userId_embedding_weights/Shape:output:0Wdense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack:output:0Ydense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_1:output:0Ydense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2J
Hdense_features_1/userId_embedding/userId_embedding_weights/strided_slice?
Bdense_features_1/userId_embedding/userId_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :2D
Bdense_features_1/userId_embedding/userId_embedding_weights/stack/0?
@dense_features_1/userId_embedding/userId_embedding_weights/stackPackKdense_features_1/userId_embedding/userId_embedding_weights/stack/0:output:0Qdense_features_1/userId_embedding/userId_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:2B
@dense_features_1/userId_embedding/userId_embedding_weights/stack?
?dense_features_1/userId_embedding/userId_embedding_weights/TileTileMdense_features_1/userId_embedding/userId_embedding_weights/Reshape_1:output:0Idense_features_1/userId_embedding/userId_embedding_weights/stack:output:0*
T0
*0
_output_shapes
:??????????????????2A
?dense_features_1/userId_embedding/userId_embedding_weights/Tile?
Edense_features_1/userId_embedding/userId_embedding_weights/zeros_like	ZerosLike[dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????
2G
Edense_features_1/userId_embedding/userId_embedding_weights/zeros_like?
:dense_features_1/userId_embedding/userId_embedding_weightsSelectHdense_features_1/userId_embedding/userId_embedding_weights/Tile:output:0Idense_features_1/userId_embedding/userId_embedding_weights/zeros_like:y:0[dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????
2<
:dense_features_1/userId_embedding/userId_embedding_weights?
Adense_features_1/userId_embedding/userId_embedding_weights/Cast_1CastFdense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:2C
Adense_features_1/userId_embedding/userId_embedding_weights/Cast_1?
Hdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 2J
Hdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/begin?
Gdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:2I
Gdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/size?
Bdense_features_1/userId_embedding/userId_embedding_weights/Slice_1SliceEdense_features_1/userId_embedding/userId_embedding_weights/Cast_1:y:0Qdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/begin:output:0Pdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:2D
Bdense_features_1/userId_embedding/userId_embedding_weights/Slice_1?
Bdense_features_1/userId_embedding/userId_embedding_weights/Shape_1ShapeCdense_features_1/userId_embedding/userId_embedding_weights:output:0*
T0*
_output_shapes
:2D
Bdense_features_1/userId_embedding/userId_embedding_weights/Shape_1?
Hdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:2J
Hdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/begin?
Gdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2I
Gdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/size?
Bdense_features_1/userId_embedding/userId_embedding_weights/Slice_2SliceKdense_features_1/userId_embedding/userId_embedding_weights/Shape_1:output:0Qdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/begin:output:0Pdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:2D
Bdense_features_1/userId_embedding/userId_embedding_weights/Slice_2?
Fdense_features_1/userId_embedding/userId_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2H
Fdense_features_1/userId_embedding/userId_embedding_weights/concat/axis?
Adense_features_1/userId_embedding/userId_embedding_weights/concatConcatV2Kdense_features_1/userId_embedding/userId_embedding_weights/Slice_1:output:0Kdense_features_1/userId_embedding/userId_embedding_weights/Slice_2:output:0Odense_features_1/userId_embedding/userId_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:2C
Adense_features_1/userId_embedding/userId_embedding_weights/concat?
Ddense_features_1/userId_embedding/userId_embedding_weights/Reshape_2ReshapeCdense_features_1/userId_embedding/userId_embedding_weights:output:0Jdense_features_1/userId_embedding/userId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:?????????
2F
Ddense_features_1/userId_embedding/userId_embedding_weights/Reshape_2?
'dense_features_1/userId_embedding/ShapeShapeMdense_features_1/userId_embedding/userId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:2)
'dense_features_1/userId_embedding/Shape?
5dense_features_1/userId_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5dense_features_1/userId_embedding/strided_slice/stack?
7dense_features_1/userId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7dense_features_1/userId_embedding/strided_slice/stack_1?
7dense_features_1/userId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7dense_features_1/userId_embedding/strided_slice/stack_2?
/dense_features_1/userId_embedding/strided_sliceStridedSlice0dense_features_1/userId_embedding/Shape:output:0>dense_features_1/userId_embedding/strided_slice/stack:output:0@dense_features_1/userId_embedding/strided_slice/stack_1:output:0@dense_features_1/userId_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/dense_features_1/userId_embedding/strided_slice?
1dense_features_1/userId_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
23
1dense_features_1/userId_embedding/Reshape/shape/1?
/dense_features_1/userId_embedding/Reshape/shapePack8dense_features_1/userId_embedding/strided_slice:output:0:dense_features_1/userId_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:21
/dense_features_1/userId_embedding/Reshape/shape?
)dense_features_1/userId_embedding/ReshapeReshapeMdense_features_1/userId_embedding/userId_embedding_weights/Reshape_2:output:08dense_features_1/userId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????
2+
)dense_features_1/userId_embedding/Reshape?
"dense_features_1/concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"dense_features_1/concat/concat_dim?
dense_features_1/concat/concatIdentity2dense_features_1/userId_embedding/Reshape:output:0*
T0*'
_output_shapes
:?????????
2 
dense_features_1/concat/concat?
/dense_features/movieId_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????21
/dense_features/movieId_embedding/ExpandDims/dim?
+dense_features/movieId_embedding/ExpandDims
ExpandDimsinputs_movieid8dense_features/movieId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2-
+dense_features/movieId_embedding/ExpandDims?
?dense_features/movieId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????2A
?dense_features/movieId_embedding/to_sparse_input/ignore_value/x?
9dense_features/movieId_embedding/to_sparse_input/NotEqualNotEqual4dense_features/movieId_embedding/ExpandDims:output:0Hdense_features/movieId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:?????????2;
9dense_features/movieId_embedding/to_sparse_input/NotEqual?
8dense_features/movieId_embedding/to_sparse_input/indicesWhere=dense_features/movieId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2:
8dense_features/movieId_embedding/to_sparse_input/indices?
7dense_features/movieId_embedding/to_sparse_input/valuesGatherNd4dense_features/movieId_embedding/ExpandDims:output:0@dense_features/movieId_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:?????????29
7dense_features/movieId_embedding/to_sparse_input/values?
<dense_features/movieId_embedding/to_sparse_input/dense_shapeShape4dense_features/movieId_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	2>
<dense_features/movieId_embedding/to_sparse_input/dense_shape?
'dense_features/movieId_embedding/valuesCast@dense_features/movieId_embedding/to_sparse_input/values:output:0*

DstT0	*

SrcT0*#
_output_shapes
:?????????2)
'dense_features/movieId_embedding/values?
Fdense_features/movieId_embedding/movieId_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 2H
Fdense_features/movieId_embedding/movieId_embedding_weights/Slice/begin?
Edense_features/movieId_embedding/movieId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:2G
Edense_features/movieId_embedding/movieId_embedding_weights/Slice/size?
@dense_features/movieId_embedding/movieId_embedding_weights/SliceSliceEdense_features/movieId_embedding/to_sparse_input/dense_shape:output:0Odense_features/movieId_embedding/movieId_embedding_weights/Slice/begin:output:0Ndense_features/movieId_embedding/movieId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:2B
@dense_features/movieId_embedding/movieId_embedding_weights/Slice?
@dense_features/movieId_embedding/movieId_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2B
@dense_features/movieId_embedding/movieId_embedding_weights/Const?
?dense_features/movieId_embedding/movieId_embedding_weights/ProdProdIdense_features/movieId_embedding/movieId_embedding_weights/Slice:output:0Idense_features/movieId_embedding/movieId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: 2A
?dense_features/movieId_embedding/movieId_embedding_weights/Prod?
Kdense_features/movieId_embedding/movieId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :2M
Kdense_features/movieId_embedding/movieId_embedding_weights/GatherV2/indices?
Hdense_features/movieId_embedding/movieId_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2J
Hdense_features/movieId_embedding/movieId_embedding_weights/GatherV2/axis?
Cdense_features/movieId_embedding/movieId_embedding_weights/GatherV2GatherV2Edense_features/movieId_embedding/to_sparse_input/dense_shape:output:0Tdense_features/movieId_embedding/movieId_embedding_weights/GatherV2/indices:output:0Qdense_features/movieId_embedding/movieId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 2E
Cdense_features/movieId_embedding/movieId_embedding_weights/GatherV2?
Adense_features/movieId_embedding/movieId_embedding_weights/Cast/xPackHdense_features/movieId_embedding/movieId_embedding_weights/Prod:output:0Ldense_features/movieId_embedding/movieId_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:2C
Adense_features/movieId_embedding/movieId_embedding_weights/Cast/x?
Hdense_features/movieId_embedding/movieId_embedding_weights/SparseReshapeSparseReshape@dense_features/movieId_embedding/to_sparse_input/indices:index:0Edense_features/movieId_embedding/to_sparse_input/dense_shape:output:0Jdense_features/movieId_embedding/movieId_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:2J
Hdense_features/movieId_embedding/movieId_embedding_weights/SparseReshape?
Qdense_features/movieId_embedding/movieId_embedding_weights/SparseReshape/IdentityIdentity+dense_features/movieId_embedding/values:y:0*
T0	*#
_output_shapes
:?????????2S
Qdense_features/movieId_embedding/movieId_embedding_weights/SparseReshape/Identity?
Idense_features/movieId_embedding/movieId_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 2K
Idense_features/movieId_embedding/movieId_embedding_weights/GreaterEqual/y?
Gdense_features/movieId_embedding/movieId_embedding_weights/GreaterEqualGreaterEqualZdense_features/movieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0Rdense_features/movieId_embedding/movieId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:?????????2I
Gdense_features/movieId_embedding/movieId_embedding_weights/GreaterEqual?
@dense_features/movieId_embedding/movieId_embedding_weights/WhereWhereKdense_features/movieId_embedding/movieId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:?????????2B
@dense_features/movieId_embedding/movieId_embedding_weights/Where?
Hdense_features/movieId_embedding/movieId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2J
Hdense_features/movieId_embedding/movieId_embedding_weights/Reshape/shape?
Bdense_features/movieId_embedding/movieId_embedding_weights/ReshapeReshapeHdense_features/movieId_embedding/movieId_embedding_weights/Where:index:0Qdense_features/movieId_embedding/movieId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:?????????2D
Bdense_features/movieId_embedding/movieId_embedding_weights/Reshape?
Jdense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2L
Jdense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1/axis?
Edense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1GatherV2Ydense_features/movieId_embedding/movieId_embedding_weights/SparseReshape:output_indices:0Kdense_features/movieId_embedding/movieId_embedding_weights/Reshape:output:0Sdense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????2G
Edense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1?
Jdense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2L
Jdense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2/axis?
Edense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2GatherV2Zdense_features/movieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0Kdense_features/movieId_embedding/movieId_embedding_weights/Reshape:output:0Sdense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????2G
Edense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2?
Cdense_features/movieId_embedding/movieId_embedding_weights/IdentityIdentityWdense_features/movieId_embedding/movieId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:2E
Cdense_features/movieId_embedding/movieId_embedding_weights/Identity?
Tdense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 2V
Tdense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/Const?
bdense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsNdense_features/movieId_embedding/movieId_embedding_weights/GatherV2_1:output:0Ndense_features/movieId_embedding/movieId_embedding_weights/GatherV2_2:output:0Ldense_features/movieId_embedding/movieId_embedding_weights/Identity:output:0]dense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:?????????2d
bdense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows?
fdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2h
fdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack?
hdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2j
hdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1?
hdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2j
hdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2?
`dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicesdense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0odense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0qdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0qdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2b
`dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice?
Ydense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/UniqueUniquerdense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:?????????2[
Ydense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique?
cdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherjdense_features_movieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_213067]dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*}
_classs
qoloc:@dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/213067*'
_output_shapes
:?????????
*
dtype02e
cdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup?
ldense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityldense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*}
_classs
qoloc:@dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/213067*'
_output_shapes
:?????????
2n
ldense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity?
ndense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identityudense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????
2p
ndense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1?
Rdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparseSparseSegmentMeanwdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0_dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique:idx:0idense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:?????????
2T
Rdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse?
Jdense_features/movieId_embedding/movieId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2L
Jdense_features/movieId_embedding/movieId_embedding_weights/Reshape_1/shape?
Ddense_features/movieId_embedding/movieId_embedding_weights/Reshape_1Reshapexdense_features/movieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Sdense_features/movieId_embedding/movieId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:?????????2F
Ddense_features/movieId_embedding/movieId_embedding_weights/Reshape_1?
@dense_features/movieId_embedding/movieId_embedding_weights/ShapeShape[dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:2B
@dense_features/movieId_embedding/movieId_embedding_weights/Shape?
Ndense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2P
Ndense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack?
Pdense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2R
Pdense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_1?
Pdense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2R
Pdense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_2?
Hdense_features/movieId_embedding/movieId_embedding_weights/strided_sliceStridedSliceIdense_features/movieId_embedding/movieId_embedding_weights/Shape:output:0Wdense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack:output:0Ydense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_1:output:0Ydense_features/movieId_embedding/movieId_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2J
Hdense_features/movieId_embedding/movieId_embedding_weights/strided_slice?
Bdense_features/movieId_embedding/movieId_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :2D
Bdense_features/movieId_embedding/movieId_embedding_weights/stack/0?
@dense_features/movieId_embedding/movieId_embedding_weights/stackPackKdense_features/movieId_embedding/movieId_embedding_weights/stack/0:output:0Qdense_features/movieId_embedding/movieId_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:2B
@dense_features/movieId_embedding/movieId_embedding_weights/stack?
?dense_features/movieId_embedding/movieId_embedding_weights/TileTileMdense_features/movieId_embedding/movieId_embedding_weights/Reshape_1:output:0Idense_features/movieId_embedding/movieId_embedding_weights/stack:output:0*
T0
*0
_output_shapes
:??????????????????2A
?dense_features/movieId_embedding/movieId_embedding_weights/Tile?
Edense_features/movieId_embedding/movieId_embedding_weights/zeros_like	ZerosLike[dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????
2G
Edense_features/movieId_embedding/movieId_embedding_weights/zeros_like?
:dense_features/movieId_embedding/movieId_embedding_weightsSelectHdense_features/movieId_embedding/movieId_embedding_weights/Tile:output:0Idense_features/movieId_embedding/movieId_embedding_weights/zeros_like:y:0[dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????
2<
:dense_features/movieId_embedding/movieId_embedding_weights?
Adense_features/movieId_embedding/movieId_embedding_weights/Cast_1CastEdense_features/movieId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:2C
Adense_features/movieId_embedding/movieId_embedding_weights/Cast_1?
Hdense_features/movieId_embedding/movieId_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 2J
Hdense_features/movieId_embedding/movieId_embedding_weights/Slice_1/begin?
Gdense_features/movieId_embedding/movieId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:2I
Gdense_features/movieId_embedding/movieId_embedding_weights/Slice_1/size?
Bdense_features/movieId_embedding/movieId_embedding_weights/Slice_1SliceEdense_features/movieId_embedding/movieId_embedding_weights/Cast_1:y:0Qdense_features/movieId_embedding/movieId_embedding_weights/Slice_1/begin:output:0Pdense_features/movieId_embedding/movieId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:2D
Bdense_features/movieId_embedding/movieId_embedding_weights/Slice_1?
Bdense_features/movieId_embedding/movieId_embedding_weights/Shape_1ShapeCdense_features/movieId_embedding/movieId_embedding_weights:output:0*
T0*
_output_shapes
:2D
Bdense_features/movieId_embedding/movieId_embedding_weights/Shape_1?
Hdense_features/movieId_embedding/movieId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:2J
Hdense_features/movieId_embedding/movieId_embedding_weights/Slice_2/begin?
Gdense_features/movieId_embedding/movieId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2I
Gdense_features/movieId_embedding/movieId_embedding_weights/Slice_2/size?
Bdense_features/movieId_embedding/movieId_embedding_weights/Slice_2SliceKdense_features/movieId_embedding/movieId_embedding_weights/Shape_1:output:0Qdense_features/movieId_embedding/movieId_embedding_weights/Slice_2/begin:output:0Pdense_features/movieId_embedding/movieId_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:2D
Bdense_features/movieId_embedding/movieId_embedding_weights/Slice_2?
Fdense_features/movieId_embedding/movieId_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2H
Fdense_features/movieId_embedding/movieId_embedding_weights/concat/axis?
Adense_features/movieId_embedding/movieId_embedding_weights/concatConcatV2Kdense_features/movieId_embedding/movieId_embedding_weights/Slice_1:output:0Kdense_features/movieId_embedding/movieId_embedding_weights/Slice_2:output:0Odense_features/movieId_embedding/movieId_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:2C
Adense_features/movieId_embedding/movieId_embedding_weights/concat?
Ddense_features/movieId_embedding/movieId_embedding_weights/Reshape_2ReshapeCdense_features/movieId_embedding/movieId_embedding_weights:output:0Jdense_features/movieId_embedding/movieId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:?????????
2F
Ddense_features/movieId_embedding/movieId_embedding_weights/Reshape_2?
&dense_features/movieId_embedding/ShapeShapeMdense_features/movieId_embedding/movieId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:2(
&dense_features/movieId_embedding/Shape?
4dense_features/movieId_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4dense_features/movieId_embedding/strided_slice/stack?
6dense_features/movieId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6dense_features/movieId_embedding/strided_slice/stack_1?
6dense_features/movieId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6dense_features/movieId_embedding/strided_slice/stack_2?
.dense_features/movieId_embedding/strided_sliceStridedSlice/dense_features/movieId_embedding/Shape:output:0=dense_features/movieId_embedding/strided_slice/stack:output:0?dense_features/movieId_embedding/strided_slice/stack_1:output:0?dense_features/movieId_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.dense_features/movieId_embedding/strided_slice?
0dense_features/movieId_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
22
0dense_features/movieId_embedding/Reshape/shape/1?
.dense_features/movieId_embedding/Reshape/shapePack7dense_features/movieId_embedding/strided_slice:output:09dense_features/movieId_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:20
.dense_features/movieId_embedding/Reshape/shape?
(dense_features/movieId_embedding/ReshapeReshapeMdense_features/movieId_embedding/movieId_embedding_weights/Reshape_2:output:07dense_features/movieId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????
2*
(dense_features/movieId_embedding/Reshape?
 dense_features/concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 dense_features/concat/concat_dim?
dense_features/concat/concatIdentity1dense_features/movieId_embedding/Reshape:output:0*
T0*'
_output_shapes
:?????????
2
dense_features/concat/concat?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMul'dense_features_1/concat/concat:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_2/BiasAddp
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_2/Relu?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMul%dense_features/concat/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2

dense/Relu?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_1/BiasAddp
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_1/Relu?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:

*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_3/BiasAddp
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_3/Reluj
dot/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
dot/ExpandDims/dim?
dot/ExpandDims
ExpandDimsdense_1/Relu:activations:0dot/ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????
2
dot/ExpandDimsn
dot/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :2
dot/ExpandDims_1/dim?
dot/ExpandDims_1
ExpandDimsdense_3/Relu:activations:0dot/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????
2
dot/ExpandDims_1?

dot/MatMulBatchMatMulV2dot/ExpandDims:output:0dot/ExpandDims_1:output:0*
T0*+
_output_shapes
:?????????2

dot/MatMulY
	dot/ShapeShapedot/MatMul:output:0*
T0*
_output_shapes
:2
	dot/Shape?
dot/SqueezeSqueezedot/MatMul:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
2
dot/Squeeze?
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_4/MatMul/ReadVariableOp?
dense_4/MatMulMatMuldot/Squeeze:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_4/MatMul?
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_4/BiasAdd/ReadVariableOp?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_4/BiasAddy
dense_4/SigmoidSigmoiddense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_4/Sigmoid?
IdentityIdentitydense_4/Sigmoid:y:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOpd^dense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupd^dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*a
_input_shapesP
N:?????????:?????????::::::::::::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2?
cdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupcdense_features/movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup2?
cdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupcdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:S O
#
_output_shapes
:?????????
(
_user_specified_nameinputs/movieId:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/userId
?	
?
$__inference_signature_wrapper_212942
movieid

userid
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmovieiduseridunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_2121862
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*a
_input_shapesP
N:?????????:?????????::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	movieId:KG
#
_output_shapes
:?????????
 
_user_specified_nameuserId
?	
k
?__inference_dot_layer_call_and_return_conditional_losses_213880
inputs_0
inputs_1
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim

ExpandDims
ExpandDimsinputs_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????
2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinputs_1ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????
2
ExpandDims_1?
MatMulBatchMatMulV2ExpandDims:output:0ExpandDims_1:output:0*
T0*+
_output_shapes
:?????????2
MatMulM
ShapeShapeMatMul:output:0*
T0*
_output_shapes
:2
Shapew
SqueezeSqueezeMatMul:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
2	
Squeezed
IdentityIdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*9
_input_shapes(
&:?????????
:?????????
:Q M
'
_output_shapes
:?????????

"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????

"
_user_specified_name
inputs/1
??
?
J__inference_dense_features_layer_call_and_return_conditional_losses_212467
features

features_1_
[movieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_212427
identity??TmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup?
 movieId_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 movieId_embedding/ExpandDims/dim?
movieId_embedding/ExpandDims
ExpandDimsfeatures)movieId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2
movieId_embedding/ExpandDims?
0movieId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????22
0movieId_embedding/to_sparse_input/ignore_value/x?
*movieId_embedding/to_sparse_input/NotEqualNotEqual%movieId_embedding/ExpandDims:output:09movieId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:?????????2,
*movieId_embedding/to_sparse_input/NotEqual?
)movieId_embedding/to_sparse_input/indicesWhere.movieId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2+
)movieId_embedding/to_sparse_input/indices?
(movieId_embedding/to_sparse_input/valuesGatherNd%movieId_embedding/ExpandDims:output:01movieId_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:?????????2*
(movieId_embedding/to_sparse_input/values?
-movieId_embedding/to_sparse_input/dense_shapeShape%movieId_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	2/
-movieId_embedding/to_sparse_input/dense_shape?
movieId_embedding/valuesCast1movieId_embedding/to_sparse_input/values:output:0*

DstT0	*

SrcT0*#
_output_shapes
:?????????2
movieId_embedding/values?
7movieId_embedding/movieId_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 29
7movieId_embedding/movieId_embedding_weights/Slice/begin?
6movieId_embedding/movieId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:28
6movieId_embedding/movieId_embedding_weights/Slice/size?
1movieId_embedding/movieId_embedding_weights/SliceSlice6movieId_embedding/to_sparse_input/dense_shape:output:0@movieId_embedding/movieId_embedding_weights/Slice/begin:output:0?movieId_embedding/movieId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:23
1movieId_embedding/movieId_embedding_weights/Slice?
1movieId_embedding/movieId_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: 23
1movieId_embedding/movieId_embedding_weights/Const?
0movieId_embedding/movieId_embedding_weights/ProdProd:movieId_embedding/movieId_embedding_weights/Slice:output:0:movieId_embedding/movieId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: 22
0movieId_embedding/movieId_embedding_weights/Prod?
<movieId_embedding/movieId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :2>
<movieId_embedding/movieId_embedding_weights/GatherV2/indices?
9movieId_embedding/movieId_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2;
9movieId_embedding/movieId_embedding_weights/GatherV2/axis?
4movieId_embedding/movieId_embedding_weights/GatherV2GatherV26movieId_embedding/to_sparse_input/dense_shape:output:0EmovieId_embedding/movieId_embedding_weights/GatherV2/indices:output:0BmovieId_embedding/movieId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 26
4movieId_embedding/movieId_embedding_weights/GatherV2?
2movieId_embedding/movieId_embedding_weights/Cast/xPack9movieId_embedding/movieId_embedding_weights/Prod:output:0=movieId_embedding/movieId_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:24
2movieId_embedding/movieId_embedding_weights/Cast/x?
9movieId_embedding/movieId_embedding_weights/SparseReshapeSparseReshape1movieId_embedding/to_sparse_input/indices:index:06movieId_embedding/to_sparse_input/dense_shape:output:0;movieId_embedding/movieId_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:2;
9movieId_embedding/movieId_embedding_weights/SparseReshape?
BmovieId_embedding/movieId_embedding_weights/SparseReshape/IdentityIdentitymovieId_embedding/values:y:0*
T0	*#
_output_shapes
:?????????2D
BmovieId_embedding/movieId_embedding_weights/SparseReshape/Identity?
:movieId_embedding/movieId_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 2<
:movieId_embedding/movieId_embedding_weights/GreaterEqual/y?
8movieId_embedding/movieId_embedding_weights/GreaterEqualGreaterEqualKmovieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0CmovieId_embedding/movieId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:?????????2:
8movieId_embedding/movieId_embedding_weights/GreaterEqual?
1movieId_embedding/movieId_embedding_weights/WhereWhere<movieId_embedding/movieId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:?????????23
1movieId_embedding/movieId_embedding_weights/Where?
9movieId_embedding/movieId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2;
9movieId_embedding/movieId_embedding_weights/Reshape/shape?
3movieId_embedding/movieId_embedding_weights/ReshapeReshape9movieId_embedding/movieId_embedding_weights/Where:index:0BmovieId_embedding/movieId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:?????????25
3movieId_embedding/movieId_embedding_weights/Reshape?
;movieId_embedding/movieId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2=
;movieId_embedding/movieId_embedding_weights/GatherV2_1/axis?
6movieId_embedding/movieId_embedding_weights/GatherV2_1GatherV2JmovieId_embedding/movieId_embedding_weights/SparseReshape:output_indices:0<movieId_embedding/movieId_embedding_weights/Reshape:output:0DmovieId_embedding/movieId_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????28
6movieId_embedding/movieId_embedding_weights/GatherV2_1?
;movieId_embedding/movieId_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2=
;movieId_embedding/movieId_embedding_weights/GatherV2_2/axis?
6movieId_embedding/movieId_embedding_weights/GatherV2_2GatherV2KmovieId_embedding/movieId_embedding_weights/SparseReshape/Identity:output:0<movieId_embedding/movieId_embedding_weights/Reshape:output:0DmovieId_embedding/movieId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????28
6movieId_embedding/movieId_embedding_weights/GatherV2_2?
4movieId_embedding/movieId_embedding_weights/IdentityIdentityHmovieId_embedding/movieId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:26
4movieId_embedding/movieId_embedding_weights/Identity?
EmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 2G
EmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/Const?
SmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows?movieId_embedding/movieId_embedding_weights/GatherV2_1:output:0?movieId_embedding/movieId_embedding_weights/GatherV2_2:output:0=movieId_embedding/movieId_embedding_weights/Identity:output:0NmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:?????????2U
SmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows?
WmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2Y
WmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack?
YmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2[
YmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1?
YmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2[
YmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2?
QmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicedmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0`movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0bmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0bmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2S
QmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice?
JmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/UniqueUniquecmovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:?????????2L
JmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique?
TmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGather[movieid_embedding_movieid_embedding_weights_embedding_lookup_sparse_embedding_lookup_212427NmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*n
_classd
b`loc:@movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/212427*'
_output_shapes
:?????????
*
dtype02V
TmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup?
]movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity]movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*n
_classd
b`loc:@movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/212427*'
_output_shapes
:?????????
2_
]movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity?
_movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1IdentityfmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????
2a
_movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1?
CmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparseSparseSegmentMeanhmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0PmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/Unique:idx:0ZmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:?????????
2E
CmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse?
;movieId_embedding/movieId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2=
;movieId_embedding/movieId_embedding_weights/Reshape_1/shape?
5movieId_embedding/movieId_embedding_weights/Reshape_1ReshapeimovieId_embedding/movieId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0DmovieId_embedding/movieId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:?????????27
5movieId_embedding/movieId_embedding_weights/Reshape_1?
1movieId_embedding/movieId_embedding_weights/ShapeShapeLmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:23
1movieId_embedding/movieId_embedding_weights/Shape?
?movieId_embedding/movieId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2A
?movieId_embedding/movieId_embedding_weights/strided_slice/stack?
AmovieId_embedding/movieId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2C
AmovieId_embedding/movieId_embedding_weights/strided_slice/stack_1?
AmovieId_embedding/movieId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2C
AmovieId_embedding/movieId_embedding_weights/strided_slice/stack_2?
9movieId_embedding/movieId_embedding_weights/strided_sliceStridedSlice:movieId_embedding/movieId_embedding_weights/Shape:output:0HmovieId_embedding/movieId_embedding_weights/strided_slice/stack:output:0JmovieId_embedding/movieId_embedding_weights/strided_slice/stack_1:output:0JmovieId_embedding/movieId_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2;
9movieId_embedding/movieId_embedding_weights/strided_slice?
3movieId_embedding/movieId_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :25
3movieId_embedding/movieId_embedding_weights/stack/0?
1movieId_embedding/movieId_embedding_weights/stackPack<movieId_embedding/movieId_embedding_weights/stack/0:output:0BmovieId_embedding/movieId_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:23
1movieId_embedding/movieId_embedding_weights/stack?
0movieId_embedding/movieId_embedding_weights/TileTile>movieId_embedding/movieId_embedding_weights/Reshape_1:output:0:movieId_embedding/movieId_embedding_weights/stack:output:0*
T0
*0
_output_shapes
:??????????????????22
0movieId_embedding/movieId_embedding_weights/Tile?
6movieId_embedding/movieId_embedding_weights/zeros_like	ZerosLikeLmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????
28
6movieId_embedding/movieId_embedding_weights/zeros_like?
+movieId_embedding/movieId_embedding_weightsSelect9movieId_embedding/movieId_embedding_weights/Tile:output:0:movieId_embedding/movieId_embedding_weights/zeros_like:y:0LmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????
2-
+movieId_embedding/movieId_embedding_weights?
2movieId_embedding/movieId_embedding_weights/Cast_1Cast6movieId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:24
2movieId_embedding/movieId_embedding_weights/Cast_1?
9movieId_embedding/movieId_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 2;
9movieId_embedding/movieId_embedding_weights/Slice_1/begin?
8movieId_embedding/movieId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:2:
8movieId_embedding/movieId_embedding_weights/Slice_1/size?
3movieId_embedding/movieId_embedding_weights/Slice_1Slice6movieId_embedding/movieId_embedding_weights/Cast_1:y:0BmovieId_embedding/movieId_embedding_weights/Slice_1/begin:output:0AmovieId_embedding/movieId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:25
3movieId_embedding/movieId_embedding_weights/Slice_1?
3movieId_embedding/movieId_embedding_weights/Shape_1Shape4movieId_embedding/movieId_embedding_weights:output:0*
T0*
_output_shapes
:25
3movieId_embedding/movieId_embedding_weights/Shape_1?
9movieId_embedding/movieId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:2;
9movieId_embedding/movieId_embedding_weights/Slice_2/begin?
8movieId_embedding/movieId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2:
8movieId_embedding/movieId_embedding_weights/Slice_2/size?
3movieId_embedding/movieId_embedding_weights/Slice_2Slice<movieId_embedding/movieId_embedding_weights/Shape_1:output:0BmovieId_embedding/movieId_embedding_weights/Slice_2/begin:output:0AmovieId_embedding/movieId_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:25
3movieId_embedding/movieId_embedding_weights/Slice_2?
7movieId_embedding/movieId_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 29
7movieId_embedding/movieId_embedding_weights/concat/axis?
2movieId_embedding/movieId_embedding_weights/concatConcatV2<movieId_embedding/movieId_embedding_weights/Slice_1:output:0<movieId_embedding/movieId_embedding_weights/Slice_2:output:0@movieId_embedding/movieId_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:24
2movieId_embedding/movieId_embedding_weights/concat?
5movieId_embedding/movieId_embedding_weights/Reshape_2Reshape4movieId_embedding/movieId_embedding_weights:output:0;movieId_embedding/movieId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:?????????
27
5movieId_embedding/movieId_embedding_weights/Reshape_2?
movieId_embedding/ShapeShape>movieId_embedding/movieId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:2
movieId_embedding/Shape?
%movieId_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%movieId_embedding/strided_slice/stack?
'movieId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'movieId_embedding/strided_slice/stack_1?
'movieId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'movieId_embedding/strided_slice/stack_2?
movieId_embedding/strided_sliceStridedSlice movieId_embedding/Shape:output:0.movieId_embedding/strided_slice/stack:output:00movieId_embedding/strided_slice/stack_1:output:00movieId_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
movieId_embedding/strided_slice?
!movieId_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
2#
!movieId_embedding/Reshape/shape/1?
movieId_embedding/Reshape/shapePack(movieId_embedding/strided_slice:output:0*movieId_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2!
movieId_embedding/Reshape/shape?
movieId_embedding/ReshapeReshape>movieId_embedding/movieId_embedding_weights/Reshape_2:output:0(movieId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????
2
movieId_embedding/Reshapeq
concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/concat_dim?
concat/concatIdentity"movieId_embedding/Reshape:output:0*
T0*'
_output_shapes
:?????????
2
concat/concat?
IdentityIdentityconcat/concat:output:0U^movieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*5
_input_shapes$
":?????????:?????????:2?
TmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookupTmovieId_embedding/movieId_embedding_weights/embedding_lookup_sparse/embedding_lookup:M I
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features
??
?
L__inference_dense_features_1_layer_call_and_return_conditional_losses_212276
features

features_1]
Yuserid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_212236
identity??RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup?
userId_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
userId_embedding/ExpandDims/dim?
userId_embedding/ExpandDims
ExpandDims
features_1(userId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2
userId_embedding/ExpandDims?
/userId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????21
/userId_embedding/to_sparse_input/ignore_value/x?
)userId_embedding/to_sparse_input/NotEqualNotEqual$userId_embedding/ExpandDims:output:08userId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:?????????2+
)userId_embedding/to_sparse_input/NotEqual?
(userId_embedding/to_sparse_input/indicesWhere-userId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2*
(userId_embedding/to_sparse_input/indices?
'userId_embedding/to_sparse_input/valuesGatherNd$userId_embedding/ExpandDims:output:00userId_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:?????????2)
'userId_embedding/to_sparse_input/values?
,userId_embedding/to_sparse_input/dense_shapeShape$userId_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	2.
,userId_embedding/to_sparse_input/dense_shape?
userId_embedding/valuesCast0userId_embedding/to_sparse_input/values:output:0*

DstT0	*

SrcT0*#
_output_shapes
:?????????2
userId_embedding/values?
5userId_embedding/userId_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 27
5userId_embedding/userId_embedding_weights/Slice/begin?
4userId_embedding/userId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:26
4userId_embedding/userId_embedding_weights/Slice/size?
/userId_embedding/userId_embedding_weights/SliceSlice5userId_embedding/to_sparse_input/dense_shape:output:0>userId_embedding/userId_embedding_weights/Slice/begin:output:0=userId_embedding/userId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:21
/userId_embedding/userId_embedding_weights/Slice?
/userId_embedding/userId_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/userId_embedding/userId_embedding_weights/Const?
.userId_embedding/userId_embedding_weights/ProdProd8userId_embedding/userId_embedding_weights/Slice:output:08userId_embedding/userId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: 20
.userId_embedding/userId_embedding_weights/Prod?
:userId_embedding/userId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :2<
:userId_embedding/userId_embedding_weights/GatherV2/indices?
7userId_embedding/userId_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 29
7userId_embedding/userId_embedding_weights/GatherV2/axis?
2userId_embedding/userId_embedding_weights/GatherV2GatherV25userId_embedding/to_sparse_input/dense_shape:output:0CuserId_embedding/userId_embedding_weights/GatherV2/indices:output:0@userId_embedding/userId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 24
2userId_embedding/userId_embedding_weights/GatherV2?
0userId_embedding/userId_embedding_weights/Cast/xPack7userId_embedding/userId_embedding_weights/Prod:output:0;userId_embedding/userId_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:22
0userId_embedding/userId_embedding_weights/Cast/x?
7userId_embedding/userId_embedding_weights/SparseReshapeSparseReshape0userId_embedding/to_sparse_input/indices:index:05userId_embedding/to_sparse_input/dense_shape:output:09userId_embedding/userId_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:29
7userId_embedding/userId_embedding_weights/SparseReshape?
@userId_embedding/userId_embedding_weights/SparseReshape/IdentityIdentityuserId_embedding/values:y:0*
T0	*#
_output_shapes
:?????????2B
@userId_embedding/userId_embedding_weights/SparseReshape/Identity?
8userId_embedding/userId_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 2:
8userId_embedding/userId_embedding_weights/GreaterEqual/y?
6userId_embedding/userId_embedding_weights/GreaterEqualGreaterEqualIuserId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0AuserId_embedding/userId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:?????????28
6userId_embedding/userId_embedding_weights/GreaterEqual?
/userId_embedding/userId_embedding_weights/WhereWhere:userId_embedding/userId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:?????????21
/userId_embedding/userId_embedding_weights/Where?
7userId_embedding/userId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????29
7userId_embedding/userId_embedding_weights/Reshape/shape?
1userId_embedding/userId_embedding_weights/ReshapeReshape7userId_embedding/userId_embedding_weights/Where:index:0@userId_embedding/userId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:?????????23
1userId_embedding/userId_embedding_weights/Reshape?
9userId_embedding/userId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2;
9userId_embedding/userId_embedding_weights/GatherV2_1/axis?
4userId_embedding/userId_embedding_weights/GatherV2_1GatherV2HuserId_embedding/userId_embedding_weights/SparseReshape:output_indices:0:userId_embedding/userId_embedding_weights/Reshape:output:0BuserId_embedding/userId_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????26
4userId_embedding/userId_embedding_weights/GatherV2_1?
9userId_embedding/userId_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2;
9userId_embedding/userId_embedding_weights/GatherV2_2/axis?
4userId_embedding/userId_embedding_weights/GatherV2_2GatherV2IuserId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0:userId_embedding/userId_embedding_weights/Reshape:output:0BuserId_embedding/userId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????26
4userId_embedding/userId_embedding_weights/GatherV2_2?
2userId_embedding/userId_embedding_weights/IdentityIdentityFuserId_embedding/userId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:24
2userId_embedding/userId_embedding_weights/Identity?
CuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 2E
CuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/Const?
QuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows=userId_embedding/userId_embedding_weights/GatherV2_1:output:0=userId_embedding/userId_embedding_weights/GatherV2_2:output:0;userId_embedding/userId_embedding_weights/Identity:output:0LuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:?????????2S
QuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows?
UuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2W
UuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack?
WuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2Y
WuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1?
WuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2Y
WuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2?
OuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicebuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0^userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0`userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0`userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2Q
OuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice?
HuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/UniqueUniqueauserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:?????????2J
HuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique?
RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherYuserid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_212236LuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*l
_classb
`^loc:@userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/212236*'
_output_shapes
:?????????
*
dtype02T
RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup?
[userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity[userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*l
_classb
`^loc:@userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/212236*'
_output_shapes
:?????????
2]
[userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity?
]userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1IdentityduserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????
2_
]userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1?
AuserId_embedding/userId_embedding_weights/embedding_lookup_sparseSparseSegmentMeanfuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0NuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:idx:0XuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:?????????
2C
AuserId_embedding/userId_embedding_weights/embedding_lookup_sparse?
9userId_embedding/userId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2;
9userId_embedding/userId_embedding_weights/Reshape_1/shape?
3userId_embedding/userId_embedding_weights/Reshape_1ReshapeguserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0BuserId_embedding/userId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:?????????25
3userId_embedding/userId_embedding_weights/Reshape_1?
/userId_embedding/userId_embedding_weights/ShapeShapeJuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:21
/userId_embedding/userId_embedding_weights/Shape?
=userId_embedding/userId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2?
=userId_embedding/userId_embedding_weights/strided_slice/stack?
?userId_embedding/userId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2A
?userId_embedding/userId_embedding_weights/strided_slice/stack_1?
?userId_embedding/userId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2A
?userId_embedding/userId_embedding_weights/strided_slice/stack_2?
7userId_embedding/userId_embedding_weights/strided_sliceStridedSlice8userId_embedding/userId_embedding_weights/Shape:output:0FuserId_embedding/userId_embedding_weights/strided_slice/stack:output:0HuserId_embedding/userId_embedding_weights/strided_slice/stack_1:output:0HuserId_embedding/userId_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask29
7userId_embedding/userId_embedding_weights/strided_slice?
1userId_embedding/userId_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :23
1userId_embedding/userId_embedding_weights/stack/0?
/userId_embedding/userId_embedding_weights/stackPack:userId_embedding/userId_embedding_weights/stack/0:output:0@userId_embedding/userId_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:21
/userId_embedding/userId_embedding_weights/stack?
.userId_embedding/userId_embedding_weights/TileTile<userId_embedding/userId_embedding_weights/Reshape_1:output:08userId_embedding/userId_embedding_weights/stack:output:0*
T0
*0
_output_shapes
:??????????????????20
.userId_embedding/userId_embedding_weights/Tile?
4userId_embedding/userId_embedding_weights/zeros_like	ZerosLikeJuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????
26
4userId_embedding/userId_embedding_weights/zeros_like?
)userId_embedding/userId_embedding_weightsSelect7userId_embedding/userId_embedding_weights/Tile:output:08userId_embedding/userId_embedding_weights/zeros_like:y:0JuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????
2+
)userId_embedding/userId_embedding_weights?
0userId_embedding/userId_embedding_weights/Cast_1Cast5userId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:22
0userId_embedding/userId_embedding_weights/Cast_1?
7userId_embedding/userId_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 29
7userId_embedding/userId_embedding_weights/Slice_1/begin?
6userId_embedding/userId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:28
6userId_embedding/userId_embedding_weights/Slice_1/size?
1userId_embedding/userId_embedding_weights/Slice_1Slice4userId_embedding/userId_embedding_weights/Cast_1:y:0@userId_embedding/userId_embedding_weights/Slice_1/begin:output:0?userId_embedding/userId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:23
1userId_embedding/userId_embedding_weights/Slice_1?
1userId_embedding/userId_embedding_weights/Shape_1Shape2userId_embedding/userId_embedding_weights:output:0*
T0*
_output_shapes
:23
1userId_embedding/userId_embedding_weights/Shape_1?
7userId_embedding/userId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:29
7userId_embedding/userId_embedding_weights/Slice_2/begin?
6userId_embedding/userId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?????????28
6userId_embedding/userId_embedding_weights/Slice_2/size?
1userId_embedding/userId_embedding_weights/Slice_2Slice:userId_embedding/userId_embedding_weights/Shape_1:output:0@userId_embedding/userId_embedding_weights/Slice_2/begin:output:0?userId_embedding/userId_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:23
1userId_embedding/userId_embedding_weights/Slice_2?
5userId_embedding/userId_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5userId_embedding/userId_embedding_weights/concat/axis?
0userId_embedding/userId_embedding_weights/concatConcatV2:userId_embedding/userId_embedding_weights/Slice_1:output:0:userId_embedding/userId_embedding_weights/Slice_2:output:0>userId_embedding/userId_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:22
0userId_embedding/userId_embedding_weights/concat?
3userId_embedding/userId_embedding_weights/Reshape_2Reshape2userId_embedding/userId_embedding_weights:output:09userId_embedding/userId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:?????????
25
3userId_embedding/userId_embedding_weights/Reshape_2?
userId_embedding/ShapeShape<userId_embedding/userId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:2
userId_embedding/Shape?
$userId_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$userId_embedding/strided_slice/stack?
&userId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&userId_embedding/strided_slice/stack_1?
&userId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&userId_embedding/strided_slice/stack_2?
userId_embedding/strided_sliceStridedSliceuserId_embedding/Shape:output:0-userId_embedding/strided_slice/stack:output:0/userId_embedding/strided_slice/stack_1:output:0/userId_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
userId_embedding/strided_slice?
 userId_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
2"
 userId_embedding/Reshape/shape/1?
userId_embedding/Reshape/shapePack'userId_embedding/strided_slice:output:0)userId_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2 
userId_embedding/Reshape/shape?
userId_embedding/ReshapeReshape<userId_embedding/userId_embedding_weights/Reshape_2:output:0'userId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????
2
userId_embedding/Reshapeq
concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/concat_dim
concat/concatIdentity!userId_embedding/Reshape:output:0*
T0*'
_output_shapes
:?????????
2
concat/concat?
IdentityIdentityconcat/concat:output:0S^userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*5
_input_shapes$
":?????????:?????????:2?
RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupRuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:M I
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features
?(
?
A__inference_model_layer_call_and_return_conditional_losses_212875

inputs
inputs_1
dense_features_1_212842
dense_features_212845
dense_2_212848
dense_2_212850
dense_212853
dense_212855
dense_1_212858
dense_1_212860
dense_3_212863
dense_3_212865
dense_4_212869
dense_4_212871
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?&dense_features/StatefulPartitionedCall?(dense_features_1/StatefulPartitionedCall?
(dense_features_1/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1dense_features_1_212842*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_dense_features_1_layer_call_and_return_conditional_losses_2123612*
(dense_features_1/StatefulPartitionedCall?
&dense_features/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1dense_features_212845*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_2125522(
&dense_features/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall1dense_features_1/StatefulPartitionedCall:output:0dense_2_212848dense_2_212850*
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
GPU 2J 8? *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_2125842!
dense_2/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall/dense_features/StatefulPartitionedCall:output:0dense_212853dense_212855*
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
GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_2126112
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_212858dense_1_212860*
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
GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_2126382!
dense_1/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_212863dense_3_212865*
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
GPU 2J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_2126652!
dense_3/StatefulPartitionedCall?
dot/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dot_layer_call_and_return_conditional_losses_2126932
dot/PartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCalldot/PartitionedCall:output:0dense_4_212869dense_4_212871*
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
GPU 2J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_2127132!
dense_4/StatefulPartitionedCall?
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall)^dense_features_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*a
_input_shapesP
N:?????????:?????????::::::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall2T
(dense_features_1/StatefulPartitionedCall(dense_features_1/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
C__inference_dense_2_layer_call_and_return_conditional_losses_213819

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:

*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?

?
&__inference_model_layer_call_fn_212835
movieid

userid
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmovieiduseridunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_2128082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*a
_input_shapesP
N:?????????:?????????::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	movieId:KG
#
_output_shapes
:?????????
 
_user_specified_nameuserId
?
P
$__inference_dot_layer_call_fn_213886
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dot_layer_call_and_return_conditional_losses_2126932
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*9
_input_shapes(
&:?????????
:?????????
:Q M
'
_output_shapes
:?????????

"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????

"
_user_specified_name
inputs/1
??
?
L__inference_dense_features_1_layer_call_and_return_conditional_losses_213687
features_movieid
features_userid]
Yuserid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_213647
identity??RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup?
userId_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
userId_embedding/ExpandDims/dim?
userId_embedding/ExpandDims
ExpandDimsfeatures_userid(userId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2
userId_embedding/ExpandDims?
/userId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????21
/userId_embedding/to_sparse_input/ignore_value/x?
)userId_embedding/to_sparse_input/NotEqualNotEqual$userId_embedding/ExpandDims:output:08userId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:?????????2+
)userId_embedding/to_sparse_input/NotEqual?
(userId_embedding/to_sparse_input/indicesWhere-userId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2*
(userId_embedding/to_sparse_input/indices?
'userId_embedding/to_sparse_input/valuesGatherNd$userId_embedding/ExpandDims:output:00userId_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:?????????2)
'userId_embedding/to_sparse_input/values?
,userId_embedding/to_sparse_input/dense_shapeShape$userId_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	2.
,userId_embedding/to_sparse_input/dense_shape?
userId_embedding/valuesCast0userId_embedding/to_sparse_input/values:output:0*

DstT0	*

SrcT0*#
_output_shapes
:?????????2
userId_embedding/values?
5userId_embedding/userId_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 27
5userId_embedding/userId_embedding_weights/Slice/begin?
4userId_embedding/userId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:26
4userId_embedding/userId_embedding_weights/Slice/size?
/userId_embedding/userId_embedding_weights/SliceSlice5userId_embedding/to_sparse_input/dense_shape:output:0>userId_embedding/userId_embedding_weights/Slice/begin:output:0=userId_embedding/userId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:21
/userId_embedding/userId_embedding_weights/Slice?
/userId_embedding/userId_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/userId_embedding/userId_embedding_weights/Const?
.userId_embedding/userId_embedding_weights/ProdProd8userId_embedding/userId_embedding_weights/Slice:output:08userId_embedding/userId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: 20
.userId_embedding/userId_embedding_weights/Prod?
:userId_embedding/userId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :2<
:userId_embedding/userId_embedding_weights/GatherV2/indices?
7userId_embedding/userId_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 29
7userId_embedding/userId_embedding_weights/GatherV2/axis?
2userId_embedding/userId_embedding_weights/GatherV2GatherV25userId_embedding/to_sparse_input/dense_shape:output:0CuserId_embedding/userId_embedding_weights/GatherV2/indices:output:0@userId_embedding/userId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 24
2userId_embedding/userId_embedding_weights/GatherV2?
0userId_embedding/userId_embedding_weights/Cast/xPack7userId_embedding/userId_embedding_weights/Prod:output:0;userId_embedding/userId_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:22
0userId_embedding/userId_embedding_weights/Cast/x?
7userId_embedding/userId_embedding_weights/SparseReshapeSparseReshape0userId_embedding/to_sparse_input/indices:index:05userId_embedding/to_sparse_input/dense_shape:output:09userId_embedding/userId_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:29
7userId_embedding/userId_embedding_weights/SparseReshape?
@userId_embedding/userId_embedding_weights/SparseReshape/IdentityIdentityuserId_embedding/values:y:0*
T0	*#
_output_shapes
:?????????2B
@userId_embedding/userId_embedding_weights/SparseReshape/Identity?
8userId_embedding/userId_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 2:
8userId_embedding/userId_embedding_weights/GreaterEqual/y?
6userId_embedding/userId_embedding_weights/GreaterEqualGreaterEqualIuserId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0AuserId_embedding/userId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:?????????28
6userId_embedding/userId_embedding_weights/GreaterEqual?
/userId_embedding/userId_embedding_weights/WhereWhere:userId_embedding/userId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:?????????21
/userId_embedding/userId_embedding_weights/Where?
7userId_embedding/userId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????29
7userId_embedding/userId_embedding_weights/Reshape/shape?
1userId_embedding/userId_embedding_weights/ReshapeReshape7userId_embedding/userId_embedding_weights/Where:index:0@userId_embedding/userId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:?????????23
1userId_embedding/userId_embedding_weights/Reshape?
9userId_embedding/userId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2;
9userId_embedding/userId_embedding_weights/GatherV2_1/axis?
4userId_embedding/userId_embedding_weights/GatherV2_1GatherV2HuserId_embedding/userId_embedding_weights/SparseReshape:output_indices:0:userId_embedding/userId_embedding_weights/Reshape:output:0BuserId_embedding/userId_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????26
4userId_embedding/userId_embedding_weights/GatherV2_1?
9userId_embedding/userId_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2;
9userId_embedding/userId_embedding_weights/GatherV2_2/axis?
4userId_embedding/userId_embedding_weights/GatherV2_2GatherV2IuserId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0:userId_embedding/userId_embedding_weights/Reshape:output:0BuserId_embedding/userId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????26
4userId_embedding/userId_embedding_weights/GatherV2_2?
2userId_embedding/userId_embedding_weights/IdentityIdentityFuserId_embedding/userId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:24
2userId_embedding/userId_embedding_weights/Identity?
CuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 2E
CuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/Const?
QuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows=userId_embedding/userId_embedding_weights/GatherV2_1:output:0=userId_embedding/userId_embedding_weights/GatherV2_2:output:0;userId_embedding/userId_embedding_weights/Identity:output:0LuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:?????????2S
QuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows?
UuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2W
UuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack?
WuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2Y
WuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1?
WuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2Y
WuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2?
OuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicebuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0^userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0`userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0`userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2Q
OuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice?
HuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/UniqueUniqueauserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:?????????2J
HuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique?
RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherYuserid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_213647LuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*l
_classb
`^loc:@userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/213647*'
_output_shapes
:?????????
*
dtype02T
RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup?
[userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity[userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*l
_classb
`^loc:@userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/213647*'
_output_shapes
:?????????
2]
[userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity?
]userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1IdentityduserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????
2_
]userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1?
AuserId_embedding/userId_embedding_weights/embedding_lookup_sparseSparseSegmentMeanfuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0NuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:idx:0XuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:?????????
2C
AuserId_embedding/userId_embedding_weights/embedding_lookup_sparse?
9userId_embedding/userId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2;
9userId_embedding/userId_embedding_weights/Reshape_1/shape?
3userId_embedding/userId_embedding_weights/Reshape_1ReshapeguserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0BuserId_embedding/userId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:?????????25
3userId_embedding/userId_embedding_weights/Reshape_1?
/userId_embedding/userId_embedding_weights/ShapeShapeJuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:21
/userId_embedding/userId_embedding_weights/Shape?
=userId_embedding/userId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2?
=userId_embedding/userId_embedding_weights/strided_slice/stack?
?userId_embedding/userId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2A
?userId_embedding/userId_embedding_weights/strided_slice/stack_1?
?userId_embedding/userId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2A
?userId_embedding/userId_embedding_weights/strided_slice/stack_2?
7userId_embedding/userId_embedding_weights/strided_sliceStridedSlice8userId_embedding/userId_embedding_weights/Shape:output:0FuserId_embedding/userId_embedding_weights/strided_slice/stack:output:0HuserId_embedding/userId_embedding_weights/strided_slice/stack_1:output:0HuserId_embedding/userId_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask29
7userId_embedding/userId_embedding_weights/strided_slice?
1userId_embedding/userId_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :23
1userId_embedding/userId_embedding_weights/stack/0?
/userId_embedding/userId_embedding_weights/stackPack:userId_embedding/userId_embedding_weights/stack/0:output:0@userId_embedding/userId_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:21
/userId_embedding/userId_embedding_weights/stack?
.userId_embedding/userId_embedding_weights/TileTile<userId_embedding/userId_embedding_weights/Reshape_1:output:08userId_embedding/userId_embedding_weights/stack:output:0*
T0
*0
_output_shapes
:??????????????????20
.userId_embedding/userId_embedding_weights/Tile?
4userId_embedding/userId_embedding_weights/zeros_like	ZerosLikeJuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????
26
4userId_embedding/userId_embedding_weights/zeros_like?
)userId_embedding/userId_embedding_weightsSelect7userId_embedding/userId_embedding_weights/Tile:output:08userId_embedding/userId_embedding_weights/zeros_like:y:0JuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????
2+
)userId_embedding/userId_embedding_weights?
0userId_embedding/userId_embedding_weights/Cast_1Cast5userId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:22
0userId_embedding/userId_embedding_weights/Cast_1?
7userId_embedding/userId_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 29
7userId_embedding/userId_embedding_weights/Slice_1/begin?
6userId_embedding/userId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:28
6userId_embedding/userId_embedding_weights/Slice_1/size?
1userId_embedding/userId_embedding_weights/Slice_1Slice4userId_embedding/userId_embedding_weights/Cast_1:y:0@userId_embedding/userId_embedding_weights/Slice_1/begin:output:0?userId_embedding/userId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:23
1userId_embedding/userId_embedding_weights/Slice_1?
1userId_embedding/userId_embedding_weights/Shape_1Shape2userId_embedding/userId_embedding_weights:output:0*
T0*
_output_shapes
:23
1userId_embedding/userId_embedding_weights/Shape_1?
7userId_embedding/userId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:29
7userId_embedding/userId_embedding_weights/Slice_2/begin?
6userId_embedding/userId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?????????28
6userId_embedding/userId_embedding_weights/Slice_2/size?
1userId_embedding/userId_embedding_weights/Slice_2Slice:userId_embedding/userId_embedding_weights/Shape_1:output:0@userId_embedding/userId_embedding_weights/Slice_2/begin:output:0?userId_embedding/userId_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:23
1userId_embedding/userId_embedding_weights/Slice_2?
5userId_embedding/userId_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5userId_embedding/userId_embedding_weights/concat/axis?
0userId_embedding/userId_embedding_weights/concatConcatV2:userId_embedding/userId_embedding_weights/Slice_1:output:0:userId_embedding/userId_embedding_weights/Slice_2:output:0>userId_embedding/userId_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:22
0userId_embedding/userId_embedding_weights/concat?
3userId_embedding/userId_embedding_weights/Reshape_2Reshape2userId_embedding/userId_embedding_weights:output:09userId_embedding/userId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:?????????
25
3userId_embedding/userId_embedding_weights/Reshape_2?
userId_embedding/ShapeShape<userId_embedding/userId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:2
userId_embedding/Shape?
$userId_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$userId_embedding/strided_slice/stack?
&userId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&userId_embedding/strided_slice/stack_1?
&userId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&userId_embedding/strided_slice/stack_2?
userId_embedding/strided_sliceStridedSliceuserId_embedding/Shape:output:0-userId_embedding/strided_slice/stack:output:0/userId_embedding/strided_slice/stack_1:output:0/userId_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
userId_embedding/strided_slice?
 userId_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
2"
 userId_embedding/Reshape/shape/1?
userId_embedding/Reshape/shapePack'userId_embedding/strided_slice:output:0)userId_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2 
userId_embedding/Reshape/shape?
userId_embedding/ReshapeReshape<userId_embedding/userId_embedding_weights/Reshape_2:output:0'userId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????
2
userId_embedding/Reshapeq
concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/concat_dim
concat/concatIdentity!userId_embedding/Reshape:output:0*
T0*'
_output_shapes
:?????????
2
concat/concat?
IdentityIdentityconcat/concat:output:0S^userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*5
_input_shapes$
":?????????:?????????:2?
RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupRuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:U Q
#
_output_shapes
:?????????
*
_user_specified_namefeatures/movieId:TP
#
_output_shapes
:?????????
)
_user_specified_namefeatures/userId
?
}
(__inference_dense_1_layer_call_fn_213848

inputs
unknown
	unknown_0
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
GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_2126382
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????
::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?	
?
C__inference_dense_1_layer_call_and_return_conditional_losses_212638

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:

*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
/__inference_dense_features_layer_call_fn_213602
features_movieid
features_userid
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallfeatures_movieidfeatures_useridunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_2125522
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*5
_input_shapes$
":?????????:?????????:22
StatefulPartitionedCallStatefulPartitionedCall:U Q
#
_output_shapes
:?????????
*
_user_specified_namefeatures/movieId:TP
#
_output_shapes
:?????????
)
_user_specified_namefeatures/userId
?
}
(__inference_dense_2_layer_call_fn_213828

inputs
unknown
	unknown_0
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
GPU 2J 8? *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_2125842
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????
::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?

?
&__inference_model_layer_call_fn_212902
movieid

userid
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmovieiduseridunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_2128752
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*a
_input_shapesP
N:?????????:?????????::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	movieId:KG
#
_output_shapes
:?????????
 
_user_specified_nameuserId
??
?
L__inference_dense_features_1_layer_call_and_return_conditional_losses_213772
features_movieid
features_userid]
Yuserid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_213732
identity??RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup?
userId_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
userId_embedding/ExpandDims/dim?
userId_embedding/ExpandDims
ExpandDimsfeatures_userid(userId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2
userId_embedding/ExpandDims?
/userId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????21
/userId_embedding/to_sparse_input/ignore_value/x?
)userId_embedding/to_sparse_input/NotEqualNotEqual$userId_embedding/ExpandDims:output:08userId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:?????????2+
)userId_embedding/to_sparse_input/NotEqual?
(userId_embedding/to_sparse_input/indicesWhere-userId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:?????????2*
(userId_embedding/to_sparse_input/indices?
'userId_embedding/to_sparse_input/valuesGatherNd$userId_embedding/ExpandDims:output:00userId_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:?????????2)
'userId_embedding/to_sparse_input/values?
,userId_embedding/to_sparse_input/dense_shapeShape$userId_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	2.
,userId_embedding/to_sparse_input/dense_shape?
userId_embedding/valuesCast0userId_embedding/to_sparse_input/values:output:0*

DstT0	*

SrcT0*#
_output_shapes
:?????????2
userId_embedding/values?
5userId_embedding/userId_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 27
5userId_embedding/userId_embedding_weights/Slice/begin?
4userId_embedding/userId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:26
4userId_embedding/userId_embedding_weights/Slice/size?
/userId_embedding/userId_embedding_weights/SliceSlice5userId_embedding/to_sparse_input/dense_shape:output:0>userId_embedding/userId_embedding_weights/Slice/begin:output:0=userId_embedding/userId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:21
/userId_embedding/userId_embedding_weights/Slice?
/userId_embedding/userId_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/userId_embedding/userId_embedding_weights/Const?
.userId_embedding/userId_embedding_weights/ProdProd8userId_embedding/userId_embedding_weights/Slice:output:08userId_embedding/userId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: 20
.userId_embedding/userId_embedding_weights/Prod?
:userId_embedding/userId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :2<
:userId_embedding/userId_embedding_weights/GatherV2/indices?
7userId_embedding/userId_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 29
7userId_embedding/userId_embedding_weights/GatherV2/axis?
2userId_embedding/userId_embedding_weights/GatherV2GatherV25userId_embedding/to_sparse_input/dense_shape:output:0CuserId_embedding/userId_embedding_weights/GatherV2/indices:output:0@userId_embedding/userId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 24
2userId_embedding/userId_embedding_weights/GatherV2?
0userId_embedding/userId_embedding_weights/Cast/xPack7userId_embedding/userId_embedding_weights/Prod:output:0;userId_embedding/userId_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:22
0userId_embedding/userId_embedding_weights/Cast/x?
7userId_embedding/userId_embedding_weights/SparseReshapeSparseReshape0userId_embedding/to_sparse_input/indices:index:05userId_embedding/to_sparse_input/dense_shape:output:09userId_embedding/userId_embedding_weights/Cast/x:output:0*-
_output_shapes
:?????????:29
7userId_embedding/userId_embedding_weights/SparseReshape?
@userId_embedding/userId_embedding_weights/SparseReshape/IdentityIdentityuserId_embedding/values:y:0*
T0	*#
_output_shapes
:?????????2B
@userId_embedding/userId_embedding_weights/SparseReshape/Identity?
8userId_embedding/userId_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 2:
8userId_embedding/userId_embedding_weights/GreaterEqual/y?
6userId_embedding/userId_embedding_weights/GreaterEqualGreaterEqualIuserId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0AuserId_embedding/userId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:?????????28
6userId_embedding/userId_embedding_weights/GreaterEqual?
/userId_embedding/userId_embedding_weights/WhereWhere:userId_embedding/userId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:?????????21
/userId_embedding/userId_embedding_weights/Where?
7userId_embedding/userId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????29
7userId_embedding/userId_embedding_weights/Reshape/shape?
1userId_embedding/userId_embedding_weights/ReshapeReshape7userId_embedding/userId_embedding_weights/Where:index:0@userId_embedding/userId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:?????????23
1userId_embedding/userId_embedding_weights/Reshape?
9userId_embedding/userId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2;
9userId_embedding/userId_embedding_weights/GatherV2_1/axis?
4userId_embedding/userId_embedding_weights/GatherV2_1GatherV2HuserId_embedding/userId_embedding_weights/SparseReshape:output_indices:0:userId_embedding/userId_embedding_weights/Reshape:output:0BuserId_embedding/userId_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:?????????26
4userId_embedding/userId_embedding_weights/GatherV2_1?
9userId_embedding/userId_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2;
9userId_embedding/userId_embedding_weights/GatherV2_2/axis?
4userId_embedding/userId_embedding_weights/GatherV2_2GatherV2IuserId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0:userId_embedding/userId_embedding_weights/Reshape:output:0BuserId_embedding/userId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:?????????26
4userId_embedding/userId_embedding_weights/GatherV2_2?
2userId_embedding/userId_embedding_weights/IdentityIdentityFuserId_embedding/userId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:24
2userId_embedding/userId_embedding_weights/Identity?
CuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 2E
CuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/Const?
QuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows=userId_embedding/userId_embedding_weights/GatherV2_1:output:0=userId_embedding/userId_embedding_weights/GatherV2_2:output:0;userId_embedding/userId_embedding_weights/Identity:output:0LuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:?????????2S
QuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows?
UuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2W
UuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack?
WuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2Y
WuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1?
WuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2Y
WuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2?
OuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicebuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0^userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0`userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0`userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2Q
OuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice?
HuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/UniqueUniqueauserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:?????????:?????????2J
HuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique?
RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherYuserid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_213732LuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*l
_classb
`^loc:@userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/213732*'
_output_shapes
:?????????
*
dtype02T
RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup?
[userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity[userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*l
_classb
`^loc:@userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/213732*'
_output_shapes
:?????????
2]
[userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity?
]userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1IdentityduserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????
2_
]userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1?
AuserId_embedding/userId_embedding_weights/embedding_lookup_sparseSparseSegmentMeanfuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0NuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:idx:0XuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:?????????
2C
AuserId_embedding/userId_embedding_weights/embedding_lookup_sparse?
9userId_embedding/userId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2;
9userId_embedding/userId_embedding_weights/Reshape_1/shape?
3userId_embedding/userId_embedding_weights/Reshape_1ReshapeguserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0BuserId_embedding/userId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:?????????25
3userId_embedding/userId_embedding_weights/Reshape_1?
/userId_embedding/userId_embedding_weights/ShapeShapeJuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:21
/userId_embedding/userId_embedding_weights/Shape?
=userId_embedding/userId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2?
=userId_embedding/userId_embedding_weights/strided_slice/stack?
?userId_embedding/userId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2A
?userId_embedding/userId_embedding_weights/strided_slice/stack_1?
?userId_embedding/userId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2A
?userId_embedding/userId_embedding_weights/strided_slice/stack_2?
7userId_embedding/userId_embedding_weights/strided_sliceStridedSlice8userId_embedding/userId_embedding_weights/Shape:output:0FuserId_embedding/userId_embedding_weights/strided_slice/stack:output:0HuserId_embedding/userId_embedding_weights/strided_slice/stack_1:output:0HuserId_embedding/userId_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask29
7userId_embedding/userId_embedding_weights/strided_slice?
1userId_embedding/userId_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :23
1userId_embedding/userId_embedding_weights/stack/0?
/userId_embedding/userId_embedding_weights/stackPack:userId_embedding/userId_embedding_weights/stack/0:output:0@userId_embedding/userId_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:21
/userId_embedding/userId_embedding_weights/stack?
.userId_embedding/userId_embedding_weights/TileTile<userId_embedding/userId_embedding_weights/Reshape_1:output:08userId_embedding/userId_embedding_weights/stack:output:0*
T0
*0
_output_shapes
:??????????????????20
.userId_embedding/userId_embedding_weights/Tile?
4userId_embedding/userId_embedding_weights/zeros_like	ZerosLikeJuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????
26
4userId_embedding/userId_embedding_weights/zeros_like?
)userId_embedding/userId_embedding_weightsSelect7userId_embedding/userId_embedding_weights/Tile:output:08userId_embedding/userId_embedding_weights/zeros_like:y:0JuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:?????????
2+
)userId_embedding/userId_embedding_weights?
0userId_embedding/userId_embedding_weights/Cast_1Cast5userId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:22
0userId_embedding/userId_embedding_weights/Cast_1?
7userId_embedding/userId_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 29
7userId_embedding/userId_embedding_weights/Slice_1/begin?
6userId_embedding/userId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:28
6userId_embedding/userId_embedding_weights/Slice_1/size?
1userId_embedding/userId_embedding_weights/Slice_1Slice4userId_embedding/userId_embedding_weights/Cast_1:y:0@userId_embedding/userId_embedding_weights/Slice_1/begin:output:0?userId_embedding/userId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:23
1userId_embedding/userId_embedding_weights/Slice_1?
1userId_embedding/userId_embedding_weights/Shape_1Shape2userId_embedding/userId_embedding_weights:output:0*
T0*
_output_shapes
:23
1userId_embedding/userId_embedding_weights/Shape_1?
7userId_embedding/userId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:29
7userId_embedding/userId_embedding_weights/Slice_2/begin?
6userId_embedding/userId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?????????28
6userId_embedding/userId_embedding_weights/Slice_2/size?
1userId_embedding/userId_embedding_weights/Slice_2Slice:userId_embedding/userId_embedding_weights/Shape_1:output:0@userId_embedding/userId_embedding_weights/Slice_2/begin:output:0?userId_embedding/userId_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:23
1userId_embedding/userId_embedding_weights/Slice_2?
5userId_embedding/userId_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5userId_embedding/userId_embedding_weights/concat/axis?
0userId_embedding/userId_embedding_weights/concatConcatV2:userId_embedding/userId_embedding_weights/Slice_1:output:0:userId_embedding/userId_embedding_weights/Slice_2:output:0>userId_embedding/userId_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:22
0userId_embedding/userId_embedding_weights/concat?
3userId_embedding/userId_embedding_weights/Reshape_2Reshape2userId_embedding/userId_embedding_weights:output:09userId_embedding/userId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:?????????
25
3userId_embedding/userId_embedding_weights/Reshape_2?
userId_embedding/ShapeShape<userId_embedding/userId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:2
userId_embedding/Shape?
$userId_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$userId_embedding/strided_slice/stack?
&userId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&userId_embedding/strided_slice/stack_1?
&userId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&userId_embedding/strided_slice/stack_2?
userId_embedding/strided_sliceStridedSliceuserId_embedding/Shape:output:0-userId_embedding/strided_slice/stack:output:0/userId_embedding/strided_slice/stack_1:output:0/userId_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
userId_embedding/strided_slice?
 userId_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
2"
 userId_embedding/Reshape/shape/1?
userId_embedding/Reshape/shapePack'userId_embedding/strided_slice:output:0)userId_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2 
userId_embedding/Reshape/shape?
userId_embedding/ReshapeReshape<userId_embedding/userId_embedding_weights/Reshape_2:output:0'userId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????
2
userId_embedding/Reshapeq
concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/concat_dim
concat/concatIdentity!userId_embedding/Reshape:output:0*
T0*'
_output_shapes
:?????????
2
concat/concat?
IdentityIdentityconcat/concat:output:0S^userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*5
_input_shapes$
":?????????:?????????:2?
RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupRuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:U Q
#
_output_shapes
:?????????
*
_user_specified_namefeatures/movieId:TP
#
_output_shapes
:?????????
)
_user_specified_namefeatures/userId
?(
?
A__inference_model_layer_call_and_return_conditional_losses_212808

inputs
inputs_1
dense_features_1_212775
dense_features_212778
dense_2_212781
dense_2_212783
dense_212786
dense_212788
dense_1_212791
dense_1_212793
dense_3_212796
dense_3_212798
dense_4_212802
dense_4_212804
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?&dense_features/StatefulPartitionedCall?(dense_features_1/StatefulPartitionedCall?
(dense_features_1/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1dense_features_1_212775*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_dense_features_1_layer_call_and_return_conditional_losses_2122762*
(dense_features_1/StatefulPartitionedCall?
&dense_features/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1dense_features_212778*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_2124672(
&dense_features/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall1dense_features_1/StatefulPartitionedCall:output:0dense_2_212781dense_2_212783*
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
GPU 2J 8? *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_2125842!
dense_2/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall/dense_features/StatefulPartitionedCall:output:0dense_212786dense_212788*
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
GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_2126112
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_212791dense_1_212793*
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
GPU 2J 8? *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_2126382!
dense_1/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_212796dense_3_212798*
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
GPU 2J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_2126652!
dense_3/StatefulPartitionedCall?
dot/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dot_layer_call_and_return_conditional_losses_2126932
dot/PartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCalldot/PartitionedCall:output:0dense_4_212802dense_4_212804*
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
GPU 2J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_2127132!
dense_4/StatefulPartitionedCall?
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall)^dense_features_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*a
_input_shapesP
N:?????????:?????????::::::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall2T
(dense_features_1/StatefulPartitionedCall(dense_features_1/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
1__inference_dense_features_1_layer_call_fn_213788
features_movieid
features_userid
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallfeatures_movieidfeatures_useridunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_dense_features_1_layer_call_and_return_conditional_losses_2123612
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*5
_input_shapes$
":?????????:?????????:22
StatefulPartitionedCallStatefulPartitionedCall:U Q
#
_output_shapes
:?????????
*
_user_specified_namefeatures/movieId:TP
#
_output_shapes
:?????????
)
_user_specified_namefeatures/userId
?m
?
__inference__traced_save_214089
file_prefixQ
Msavev2_dense_features_movieid_embedding_embedding_weights_read_readvariableopR
Nsavev2_dense_features_1_userid_embedding_embedding_weights_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop-
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
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableopX
Tsavev2_adam_dense_features_movieid_embedding_embedding_weights_v_read_readvariableopY
Usavev2_adam_dense_features_1_userid_embedding_embedding_weights_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:6*
dtype0*?
value?B?6BTlayer_with_weights-0/movieId_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-1/userId_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-0/movieId_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBolayer_with_weights-1/userId_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBplayer_with_weights-0/movieId_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBolayer_with_weights-1/userId_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:6*
dtype0*
valuevBt6B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Msavev2_dense_features_movieid_embedding_embedding_weights_read_readvariableopNsavev2_dense_features_1_userid_embedding_embedding_weights_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop)savev2_true_positives_read_readvariableop)savev2_true_negatives_read_readvariableop*savev2_false_positives_read_readvariableop*savev2_false_negatives_read_readvariableop+savev2_true_positives_1_read_readvariableop+savev2_true_negatives_1_read_readvariableop,savev2_false_positives_1_read_readvariableop,savev2_false_negatives_1_read_readvariableopTsavev2_adam_dense_features_movieid_embedding_embedding_weights_m_read_readvariableopUsavev2_adam_dense_features_1_userid_embedding_embedding_weights_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableopTsavev2_adam_dense_features_movieid_embedding_embedding_weights_v_read_readvariableopUsavev2_adam_dense_features_1_userid_embedding_embedding_weights_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *D
dtypes:
826	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :	?
:
??
:

:
:

:
:

:
:

:
::: : : : : : : : : :?:?:?:?:?:?:?:?:	?
:
??
:

:
:

:
:

:
:

:
:::	?
:
??
:

:
:

:
:

:
:

:
::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?
:&"
 
_output_shapes
:
??
:$ 

_output_shapes

:

: 

_output_shapes
:
:$ 

_output_shapes

:

: 

_output_shapes
:
:$ 

_output_shapes

:

: 

_output_shapes
:
:$	 

_output_shapes

:

: 


_output_shapes
:
:$ 

_output_shapes

:: 

_output_shapes
::
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:%!

_output_shapes
:	?
:&"
 
_output_shapes
:
??
:$  

_output_shapes

:

: !

_output_shapes
:
:$" 

_output_shapes

:

: #

_output_shapes
:
:$$ 

_output_shapes

:

: %

_output_shapes
:
:$& 

_output_shapes

:

: '

_output_shapes
:
:$( 

_output_shapes

:: )

_output_shapes
::%*!

_output_shapes
:	?
:&+"
 
_output_shapes
:
??
:$, 

_output_shapes

:

: -

_output_shapes
:
:$. 

_output_shapes

:

: /

_output_shapes
:
:$0 

_output_shapes

:

: 1

_output_shapes
:
:$2 

_output_shapes

:

: 3

_output_shapes
:
:$4 

_output_shapes

:: 5

_output_shapes
::6

_output_shapes
: "?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
7
movieId,
serving_default_movieId:0?????????
5
userId+
serving_default_userId:0?????????;
dense_40
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
??
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer_with_weights-6

layer-9
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"??
_tf_keras_network??{"class_name": "Functional", "name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "movieId"}, "name": "movieId", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "userId"}, "name": "userId", "inbound_nodes": []}, {"class_name": "DenseFeatures", "config": {"name": "dense_features", "trainable": true, "dtype": "float32", "feature_columns": [{"class_name": "EmbeddingColumn", "config": {"categorical_column": {"class_name": "IdentityCategoricalColumn", "config": {"key": "movieId", "number_buckets": 1001, "default_value": null}}, "dimension": 10, "combiner": "mean", "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.31622776601683794, "seed": null, "dtype": "float32"}}, "ckpt_to_load_from": null, "tensor_name_in_ckpt": null, "max_norm": null, "trainable": true, "use_safe_embedding_lookup": true}}], "partitioner": null}, "name": "dense_features", "inbound_nodes": [{"movieId": ["movieId", 0, 0, {}], "userId": ["userId", 0, 0, {}]}]}, {"class_name": "DenseFeatures", "config": {"name": "dense_features_1", "trainable": true, "dtype": "float32", "feature_columns": [{"class_name": "EmbeddingColumn", "config": {"categorical_column": {"class_name": "IdentityCategoricalColumn", "config": {"key": "userId", "number_buckets": 30001, "default_value": null}}, "dimension": 10, "combiner": "mean", "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.31622776601683794, "seed": null, "dtype": "float32"}}, "ckpt_to_load_from": null, "tensor_name_in_ckpt": null, "max_norm": null, "trainable": true, "use_safe_embedding_lookup": true}}], "partitioner": null}, "name": "dense_features_1", "inbound_nodes": [{"movieId": ["movieId", 0, 0, {}], "userId": ["userId", 0, 0, {}]}]}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["dense_features", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["dense_features_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["dense", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3", "inbound_nodes": [[["dense_2", 0, 0, {}]]]}, {"class_name": "Dot", "config": {"name": "dot", "trainable": true, "dtype": "float32", "axes": 1, "normalize": false}, "name": "dot", "inbound_nodes": [[["dense_1", 0, 0, {}], ["dense_3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_4", "inbound_nodes": [[["dot", 0, 0, {}]]]}], "input_layers": {"movieId": ["movieId", 0, 0], "userId": ["userId", 0, 0]}, "output_layers": [["dense_4", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null]}, "ndim": 1, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null]}, "ndim": 1, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"movieId": {"class_name": "TensorShape", "items": [null]}, "userId": {"class_name": "TensorShape", "items": [null]}}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "movieId"}, "name": "movieId", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "userId"}, "name": "userId", "inbound_nodes": []}, {"class_name": "DenseFeatures", "config": {"name": "dense_features", "trainable": true, "dtype": "float32", "feature_columns": [{"class_name": "EmbeddingColumn", "config": {"categorical_column": {"class_name": "IdentityCategoricalColumn", "config": {"key": "movieId", "number_buckets": 1001, "default_value": null}}, "dimension": 10, "combiner": "mean", "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.31622776601683794, "seed": null, "dtype": "float32"}}, "ckpt_to_load_from": null, "tensor_name_in_ckpt": null, "max_norm": null, "trainable": true, "use_safe_embedding_lookup": true}}], "partitioner": null}, "name": "dense_features", "inbound_nodes": [{"movieId": ["movieId", 0, 0, {}], "userId": ["userId", 0, 0, {}]}]}, {"class_name": "DenseFeatures", "config": {"name": "dense_features_1", "trainable": true, "dtype": "float32", "feature_columns": [{"class_name": "EmbeddingColumn", "config": {"categorical_column": {"class_name": "IdentityCategoricalColumn", "config": {"key": "userId", "number_buckets": 30001, "default_value": null}}, "dimension": 10, "combiner": "mean", "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.31622776601683794, "seed": null, "dtype": "float32"}}, "ckpt_to_load_from": null, "tensor_name_in_ckpt": null, "max_norm": null, "trainable": true, "use_safe_embedding_lookup": true}}], "partitioner": null}, "name": "dense_features_1", "inbound_nodes": [{"movieId": ["movieId", 0, 0, {}], "userId": ["userId", 0, 0, {}]}]}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["dense_features", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["dense_features_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["dense", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3", "inbound_nodes": [[["dense_2", 0, 0, {}]]]}, {"class_name": "Dot", "config": {"name": "dot", "trainable": true, "dtype": "float32", "axes": 1, "normalize": false}, "name": "dot", "inbound_nodes": [[["dense_1", 0, 0, {}], ["dense_3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_4", "inbound_nodes": [[["dot", 0, 0, {}]]]}], "input_layers": {"movieId": ["movieId", 0, 0], "userId": ["userId", 0, 0]}, "output_layers": [["dense_4", 0, 0]]}}, "training_config": {"loss": "binary_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}, {"class_name": "AUC", "config": {"name": "auc", "dtype": "float32", "num_thresholds": 200, "curve": "ROC", "summation_method": "interpolation", "thresholds": [0.005025125628140704, 0.010050251256281407, 0.01507537688442211, 0.020100502512562814, 0.02512562814070352, 0.03015075376884422, 0.035175879396984924, 0.04020100502512563, 0.04522613065326633, 0.05025125628140704, 0.05527638190954774, 0.06030150753768844, 0.06532663316582915, 0.07035175879396985, 0.07537688442211055, 0.08040201005025126, 0.08542713567839195, 0.09045226130653267, 0.09547738693467336, 0.10050251256281408, 0.10552763819095477, 0.11055276381909548, 0.11557788944723618, 0.12060301507537688, 0.12562814070351758, 0.1306532663316583, 0.135678391959799, 0.1407035175879397, 0.1457286432160804, 0.1507537688442211, 0.15577889447236182, 0.16080402010050251, 0.1658291457286432, 0.1708542713567839, 0.17587939698492464, 0.18090452261306533, 0.18592964824120603, 0.19095477386934673, 0.19597989949748743, 0.20100502512562815, 0.20603015075376885, 0.21105527638190955, 0.21608040201005024, 0.22110552763819097, 0.22613065326633167, 0.23115577889447236, 0.23618090452261306, 0.24120603015075376, 0.24623115577889448, 0.25125628140703515, 0.2562814070351759, 0.2613065326633166, 0.2663316582914573, 0.271356783919598, 0.27638190954773867, 0.2814070351758794, 0.2864321608040201, 0.2914572864321608, 0.2964824120603015, 0.3015075376884422, 0.3065326633165829, 0.31155778894472363, 0.3165829145728643, 0.32160804020100503, 0.32663316582914576, 0.3316582914572864, 0.33668341708542715, 0.3417085427135678, 0.34673366834170855, 0.35175879396984927, 0.35678391959798994, 0.36180904522613067, 0.36683417085427134, 0.37185929648241206, 0.3768844221105528, 0.38190954773869346, 0.3869346733668342, 0.39195979899497485, 0.3969849246231156, 0.4020100502512563, 0.40703517587939697, 0.4120603015075377, 0.41708542713567837, 0.4221105527638191, 0.4271356783919598, 0.4321608040201005, 0.4371859296482412, 0.44221105527638194, 0.4472361809045226, 0.45226130653266333, 0.457286432160804, 0.4623115577889447, 0.46733668341708545, 0.4723618090452261, 0.47738693467336685, 0.4824120603015075, 0.48743718592964824, 0.49246231155778897, 0.49748743718592964, 0.5025125628140703, 0.507537688442211, 0.5125628140703518, 0.5175879396984925, 0.5226130653266332, 0.5276381909547738, 0.5326633165829145, 0.5376884422110553, 0.542713567839196, 0.5477386934673367, 0.5527638190954773, 0.5577889447236181, 0.5628140703517588, 0.5678391959798995, 0.5728643216080402, 0.5778894472361809, 0.5829145728643216, 0.5879396984924623, 0.592964824120603, 0.5979899497487438, 0.6030150753768844, 0.6080402010050251, 0.6130653266331658, 0.6180904522613065, 0.6231155778894473, 0.628140703517588, 0.6331658291457286, 0.6381909547738693, 0.6432160804020101, 0.6482412060301508, 0.6532663316582915, 0.6582914572864321, 0.6633165829145728, 0.6683417085427136, 0.6733668341708543, 0.678391959798995, 0.6834170854271356, 0.6884422110552764, 0.6934673366834171, 0.6984924623115578, 0.7035175879396985, 0.7085427135678392, 0.7135678391959799, 0.7185929648241206, 0.7236180904522613, 0.7286432160804021, 0.7336683417085427, 0.7386934673366834, 0.7437185929648241, 0.7487437185929648, 0.7537688442211056, 0.7587939698492462, 0.7638190954773869, 0.7688442211055276, 0.7738693467336684, 0.7788944723618091, 0.7839195979899497, 0.7889447236180904, 0.7939698492462312, 0.7989949748743719, 0.8040201005025126, 0.8090452261306532, 0.8140703517587939, 0.8190954773869347, 0.8241206030150754, 0.8291457286432161, 0.8341708542713567, 0.8391959798994975, 0.8442211055276382, 0.8492462311557789, 0.8542713567839196, 0.8592964824120602, 0.864321608040201, 0.8693467336683417, 0.8743718592964824, 0.8793969849246231, 0.8844221105527639, 0.8894472361809045, 0.8944723618090452, 0.8994974874371859, 0.9045226130653267, 0.9095477386934674, 0.914572864321608, 0.9195979899497487, 0.9246231155778895, 0.9296482412060302, 0.9346733668341709, 0.9396984924623115, 0.9447236180904522, 0.949748743718593, 0.9547738693467337, 0.9597989949748744, 0.964824120603015, 0.9698492462311558, 0.9748743718592965, 0.9798994974874372, 0.9849246231155779, 0.9899497487437185, 0.9949748743718593], "multi_label": false, "label_weights": null}}, {"class_name": "AUC", "config": {"name": "auc_1", "dtype": "float32", "num_thresholds": 200, "curve": "PR", "summation_method": "interpolation", "thresholds": [0.005025125628140704, 0.010050251256281407, 0.01507537688442211, 0.020100502512562814, 0.02512562814070352, 0.03015075376884422, 0.035175879396984924, 0.04020100502512563, 0.04522613065326633, 0.05025125628140704, 0.05527638190954774, 0.06030150753768844, 0.06532663316582915, 0.07035175879396985, 0.07537688442211055, 0.08040201005025126, 0.08542713567839195, 0.09045226130653267, 0.09547738693467336, 0.10050251256281408, 0.10552763819095477, 0.11055276381909548, 0.11557788944723618, 0.12060301507537688, 0.12562814070351758, 0.1306532663316583, 0.135678391959799, 0.1407035175879397, 0.1457286432160804, 0.1507537688442211, 0.15577889447236182, 0.16080402010050251, 0.1658291457286432, 0.1708542713567839, 0.17587939698492464, 0.18090452261306533, 0.18592964824120603, 0.19095477386934673, 0.19597989949748743, 0.20100502512562815, 0.20603015075376885, 0.21105527638190955, 0.21608040201005024, 0.22110552763819097, 0.22613065326633167, 0.23115577889447236, 0.23618090452261306, 0.24120603015075376, 0.24623115577889448, 0.25125628140703515, 0.2562814070351759, 0.2613065326633166, 0.2663316582914573, 0.271356783919598, 0.27638190954773867, 0.2814070351758794, 0.2864321608040201, 0.2914572864321608, 0.2964824120603015, 0.3015075376884422, 0.3065326633165829, 0.31155778894472363, 0.3165829145728643, 0.32160804020100503, 0.32663316582914576, 0.3316582914572864, 0.33668341708542715, 0.3417085427135678, 0.34673366834170855, 0.35175879396984927, 0.35678391959798994, 0.36180904522613067, 0.36683417085427134, 0.37185929648241206, 0.3768844221105528, 0.38190954773869346, 0.3869346733668342, 0.39195979899497485, 0.3969849246231156, 0.4020100502512563, 0.40703517587939697, 0.4120603015075377, 0.41708542713567837, 0.4221105527638191, 0.4271356783919598, 0.4321608040201005, 0.4371859296482412, 0.44221105527638194, 0.4472361809045226, 0.45226130653266333, 0.457286432160804, 0.4623115577889447, 0.46733668341708545, 0.4723618090452261, 0.47738693467336685, 0.4824120603015075, 0.48743718592964824, 0.49246231155778897, 0.49748743718592964, 0.5025125628140703, 0.507537688442211, 0.5125628140703518, 0.5175879396984925, 0.5226130653266332, 0.5276381909547738, 0.5326633165829145, 0.5376884422110553, 0.542713567839196, 0.5477386934673367, 0.5527638190954773, 0.5577889447236181, 0.5628140703517588, 0.5678391959798995, 0.5728643216080402, 0.5778894472361809, 0.5829145728643216, 0.5879396984924623, 0.592964824120603, 0.5979899497487438, 0.6030150753768844, 0.6080402010050251, 0.6130653266331658, 0.6180904522613065, 0.6231155778894473, 0.628140703517588, 0.6331658291457286, 0.6381909547738693, 0.6432160804020101, 0.6482412060301508, 0.6532663316582915, 0.6582914572864321, 0.6633165829145728, 0.6683417085427136, 0.6733668341708543, 0.678391959798995, 0.6834170854271356, 0.6884422110552764, 0.6934673366834171, 0.6984924623115578, 0.7035175879396985, 0.7085427135678392, 0.7135678391959799, 0.7185929648241206, 0.7236180904522613, 0.7286432160804021, 0.7336683417085427, 0.7386934673366834, 0.7437185929648241, 0.7487437185929648, 0.7537688442211056, 0.7587939698492462, 0.7638190954773869, 0.7688442211055276, 0.7738693467336684, 0.7788944723618091, 0.7839195979899497, 0.7889447236180904, 0.7939698492462312, 0.7989949748743719, 0.8040201005025126, 0.8090452261306532, 0.8140703517587939, 0.8190954773869347, 0.8241206030150754, 0.8291457286432161, 0.8341708542713567, 0.8391959798994975, 0.8442211055276382, 0.8492462311557789, 0.8542713567839196, 0.8592964824120602, 0.864321608040201, 0.8693467336683417, 0.8743718592964824, 0.8793969849246231, 0.8844221105527639, 0.8894472361809045, 0.8944723618090452, 0.8994974874371859, 0.9045226130653267, 0.9095477386934674, 0.914572864321608, 0.9195979899497487, 0.9246231155778895, 0.9296482412060302, 0.9346733668341709, 0.9396984924623115, 0.9447236180904522, 0.949748743718593, 0.9547738693467337, 0.9597989949748744, 0.964824120603015, 0.9698492462311558, 0.9748743718592965, 0.9798994974874372, 0.9849246231155779, 0.9899497487437185, 0.9949748743718593], "multi_label": false, "label_weights": null}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "movieId", "dtype": "int32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "movieId"}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "userId", "dtype": "int32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "userId"}}
?	
_feature_columns

_resources
'#movieId_embedding/embedding_weights
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "DenseFeatures", "name": "dense_features", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_features", "trainable": true, "dtype": "float32", "feature_columns": [{"class_name": "EmbeddingColumn", "config": {"categorical_column": {"class_name": "IdentityCategoricalColumn", "config": {"key": "movieId", "number_buckets": 1001, "default_value": null}}, "dimension": 10, "combiner": "mean", "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.31622776601683794, "seed": null, "dtype": "float32"}}, "ckpt_to_load_from": null, "tensor_name_in_ckpt": null, "max_norm": null, "trainable": true, "use_safe_embedding_lookup": true}}], "partitioner": null}, "build_input_shape": {"movieId": {"class_name": "TensorShape", "items": [null]}, "userId": {"class_name": "TensorShape", "items": [null]}}, "_is_feature_layer": true}
?	
_feature_columns

_resources
&"userId_embedding/embedding_weights
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "DenseFeatures", "name": "dense_features_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_features_1", "trainable": true, "dtype": "float32", "feature_columns": [{"class_name": "EmbeddingColumn", "config": {"categorical_column": {"class_name": "IdentityCategoricalColumn", "config": {"key": "userId", "number_buckets": 30001, "default_value": null}}, "dimension": 10, "combiner": "mean", "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.31622776601683794, "seed": null, "dtype": "float32"}}, "ckpt_to_load_from": null, "tensor_name_in_ckpt": null, "max_norm": null, "trainable": true, "use_safe_embedding_lookup": true}}], "partitioner": null}, "build_input_shape": {"movieId": {"class_name": "TensorShape", "items": [null]}, "userId": {"class_name": "TensorShape", "items": [null]}}, "_is_feature_layer": true}
?

kernel
 bias
!	variables
"regularization_losses
#trainable_variables
$	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}}
?

%kernel
&bias
'	variables
(regularization_losses
)trainable_variables
*	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}}
?

+kernel
,bias
-	variables
.regularization_losses
/trainable_variables
0	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}}
?

1kernel
2bias
3	variables
4regularization_losses
5trainable_variables
6	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}}
?
7	variables
8regularization_losses
9trainable_variables
:	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dot", "name": "dot", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dot", "trainable": true, "dtype": "float32", "axes": 1, "normalize": false}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 10]}, {"class_name": "TensorShape", "items": [null, 10]}]}
?

;kernel
<bias
=	variables
>regularization_losses
?trainable_variables
@	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1]}}
?
Aiter

Bbeta_1

Cbeta_2
	Ddecay
Elearning_ratem?m?m? m?%m?&m?+m?,m?1m?2m?;m?<m?v?v?v? v?%v?&v?+v?,v?1v?2v?;v?<v?"
	optimizer
v
0
1
2
 3
%4
&5
+6
,7
18
29
;10
<11"
trackable_list_wrapper
v
0
1
2
 3
%4
&5
+6
,7
18
29
;10
<11"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Fmetrics
Glayer_metrics
	variables
trainable_variables
Hnon_trainable_variables

Ilayers
Jlayer_regularization_losses
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_list_wrapper
"
_generic_user_object
E:C	?
22dense_features/movieId_embedding/embedding_weights
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
?
Kmetrics
Llayer_metrics
	variables
regularization_losses
trainable_variables
Mnon_trainable_variables

Nlayers
Olayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
"
_generic_user_object
G:E
??
23dense_features_1/userId_embedding/embedding_weights
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
?
Pmetrics
Qlayer_metrics
	variables
regularization_losses
trainable_variables
Rnon_trainable_variables

Slayers
Tlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:

2dense/kernel
:
2
dense/bias
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
?
Umetrics
Vlayer_metrics
!	variables
"regularization_losses
#trainable_variables
Wnon_trainable_variables

Xlayers
Ylayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :

2dense_2/kernel
:
2dense_2/bias
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
?
Zmetrics
[layer_metrics
'	variables
(regularization_losses
)trainable_variables
\non_trainable_variables

]layers
^layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :

2dense_1/kernel
:
2dense_1/bias
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
?
_metrics
`layer_metrics
-	variables
.regularization_losses
/trainable_variables
anon_trainable_variables

blayers
clayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :

2dense_3/kernel
:
2dense_3/bias
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
?
dmetrics
elayer_metrics
3	variables
4regularization_losses
5trainable_variables
fnon_trainable_variables

glayers
hlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
imetrics
jlayer_metrics
7	variables
8regularization_losses
9trainable_variables
knon_trainable_variables

llayers
mlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :2dense_4/kernel
:2dense_4/bias
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
?
nmetrics
olayer_metrics
=	variables
>regularization_losses
?trainable_variables
pnon_trainable_variables

qlayers
rlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
<
s0
t1
u2
v3"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
f
0
1
2
3
4
5
6
7
	8

9"
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
?
	wtotal
	xcount
y	variables
z	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?
	{total
	|count
}
_fn_kwargs
~	variables
	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}
?"
?true_positives
?true_negatives
?false_positives
?false_negatives
?	variables
?	keras_api"?!
_tf_keras_metric?!{"class_name": "AUC", "name": "auc", "dtype": "float32", "config": {"name": "auc", "dtype": "float32", "num_thresholds": 200, "curve": "ROC", "summation_method": "interpolation", "thresholds": [0.005025125628140704, 0.010050251256281407, 0.01507537688442211, 0.020100502512562814, 0.02512562814070352, 0.03015075376884422, 0.035175879396984924, 0.04020100502512563, 0.04522613065326633, 0.05025125628140704, 0.05527638190954774, 0.06030150753768844, 0.06532663316582915, 0.07035175879396985, 0.07537688442211055, 0.08040201005025126, 0.08542713567839195, 0.09045226130653267, 0.09547738693467336, 0.10050251256281408, 0.10552763819095477, 0.11055276381909548, 0.11557788944723618, 0.12060301507537688, 0.12562814070351758, 0.1306532663316583, 0.135678391959799, 0.1407035175879397, 0.1457286432160804, 0.1507537688442211, 0.15577889447236182, 0.16080402010050251, 0.1658291457286432, 0.1708542713567839, 0.17587939698492464, 0.18090452261306533, 0.18592964824120603, 0.19095477386934673, 0.19597989949748743, 0.20100502512562815, 0.20603015075376885, 0.21105527638190955, 0.21608040201005024, 0.22110552763819097, 0.22613065326633167, 0.23115577889447236, 0.23618090452261306, 0.24120603015075376, 0.24623115577889448, 0.25125628140703515, 0.2562814070351759, 0.2613065326633166, 0.2663316582914573, 0.271356783919598, 0.27638190954773867, 0.2814070351758794, 0.2864321608040201, 0.2914572864321608, 0.2964824120603015, 0.3015075376884422, 0.3065326633165829, 0.31155778894472363, 0.3165829145728643, 0.32160804020100503, 0.32663316582914576, 0.3316582914572864, 0.33668341708542715, 0.3417085427135678, 0.34673366834170855, 0.35175879396984927, 0.35678391959798994, 0.36180904522613067, 0.36683417085427134, 0.37185929648241206, 0.3768844221105528, 0.38190954773869346, 0.3869346733668342, 0.39195979899497485, 0.3969849246231156, 0.4020100502512563, 0.40703517587939697, 0.4120603015075377, 0.41708542713567837, 0.4221105527638191, 0.4271356783919598, 0.4321608040201005, 0.4371859296482412, 0.44221105527638194, 0.4472361809045226, 0.45226130653266333, 0.457286432160804, 0.4623115577889447, 0.46733668341708545, 0.4723618090452261, 0.47738693467336685, 0.4824120603015075, 0.48743718592964824, 0.49246231155778897, 0.49748743718592964, 0.5025125628140703, 0.507537688442211, 0.5125628140703518, 0.5175879396984925, 0.5226130653266332, 0.5276381909547738, 0.5326633165829145, 0.5376884422110553, 0.542713567839196, 0.5477386934673367, 0.5527638190954773, 0.5577889447236181, 0.5628140703517588, 0.5678391959798995, 0.5728643216080402, 0.5778894472361809, 0.5829145728643216, 0.5879396984924623, 0.592964824120603, 0.5979899497487438, 0.6030150753768844, 0.6080402010050251, 0.6130653266331658, 0.6180904522613065, 0.6231155778894473, 0.628140703517588, 0.6331658291457286, 0.6381909547738693, 0.6432160804020101, 0.6482412060301508, 0.6532663316582915, 0.6582914572864321, 0.6633165829145728, 0.6683417085427136, 0.6733668341708543, 0.678391959798995, 0.6834170854271356, 0.6884422110552764, 0.6934673366834171, 0.6984924623115578, 0.7035175879396985, 0.7085427135678392, 0.7135678391959799, 0.7185929648241206, 0.7236180904522613, 0.7286432160804021, 0.7336683417085427, 0.7386934673366834, 0.7437185929648241, 0.7487437185929648, 0.7537688442211056, 0.7587939698492462, 0.7638190954773869, 0.7688442211055276, 0.7738693467336684, 0.7788944723618091, 0.7839195979899497, 0.7889447236180904, 0.7939698492462312, 0.7989949748743719, 0.8040201005025126, 0.8090452261306532, 0.8140703517587939, 0.8190954773869347, 0.8241206030150754, 0.8291457286432161, 0.8341708542713567, 0.8391959798994975, 0.8442211055276382, 0.8492462311557789, 0.8542713567839196, 0.8592964824120602, 0.864321608040201, 0.8693467336683417, 0.8743718592964824, 0.8793969849246231, 0.8844221105527639, 0.8894472361809045, 0.8944723618090452, 0.8994974874371859, 0.9045226130653267, 0.9095477386934674, 0.914572864321608, 0.9195979899497487, 0.9246231155778895, 0.9296482412060302, 0.9346733668341709, 0.9396984924623115, 0.9447236180904522, 0.949748743718593, 0.9547738693467337, 0.9597989949748744, 0.964824120603015, 0.9698492462311558, 0.9748743718592965, 0.9798994974874372, 0.9849246231155779, 0.9899497487437185, 0.9949748743718593], "multi_label": false, "label_weights": null}}
?"
?true_positives
?true_negatives
?false_positives
?false_negatives
?	variables
?	keras_api"?!
_tf_keras_metric?!{"class_name": "AUC", "name": "auc_1", "dtype": "float32", "config": {"name": "auc_1", "dtype": "float32", "num_thresholds": 200, "curve": "PR", "summation_method": "interpolation", "thresholds": [0.005025125628140704, 0.010050251256281407, 0.01507537688442211, 0.020100502512562814, 0.02512562814070352, 0.03015075376884422, 0.035175879396984924, 0.04020100502512563, 0.04522613065326633, 0.05025125628140704, 0.05527638190954774, 0.06030150753768844, 0.06532663316582915, 0.07035175879396985, 0.07537688442211055, 0.08040201005025126, 0.08542713567839195, 0.09045226130653267, 0.09547738693467336, 0.10050251256281408, 0.10552763819095477, 0.11055276381909548, 0.11557788944723618, 0.12060301507537688, 0.12562814070351758, 0.1306532663316583, 0.135678391959799, 0.1407035175879397, 0.1457286432160804, 0.1507537688442211, 0.15577889447236182, 0.16080402010050251, 0.1658291457286432, 0.1708542713567839, 0.17587939698492464, 0.18090452261306533, 0.18592964824120603, 0.19095477386934673, 0.19597989949748743, 0.20100502512562815, 0.20603015075376885, 0.21105527638190955, 0.21608040201005024, 0.22110552763819097, 0.22613065326633167, 0.23115577889447236, 0.23618090452261306, 0.24120603015075376, 0.24623115577889448, 0.25125628140703515, 0.2562814070351759, 0.2613065326633166, 0.2663316582914573, 0.271356783919598, 0.27638190954773867, 0.2814070351758794, 0.2864321608040201, 0.2914572864321608, 0.2964824120603015, 0.3015075376884422, 0.3065326633165829, 0.31155778894472363, 0.3165829145728643, 0.32160804020100503, 0.32663316582914576, 0.3316582914572864, 0.33668341708542715, 0.3417085427135678, 0.34673366834170855, 0.35175879396984927, 0.35678391959798994, 0.36180904522613067, 0.36683417085427134, 0.37185929648241206, 0.3768844221105528, 0.38190954773869346, 0.3869346733668342, 0.39195979899497485, 0.3969849246231156, 0.4020100502512563, 0.40703517587939697, 0.4120603015075377, 0.41708542713567837, 0.4221105527638191, 0.4271356783919598, 0.4321608040201005, 0.4371859296482412, 0.44221105527638194, 0.4472361809045226, 0.45226130653266333, 0.457286432160804, 0.4623115577889447, 0.46733668341708545, 0.4723618090452261, 0.47738693467336685, 0.4824120603015075, 0.48743718592964824, 0.49246231155778897, 0.49748743718592964, 0.5025125628140703, 0.507537688442211, 0.5125628140703518, 0.5175879396984925, 0.5226130653266332, 0.5276381909547738, 0.5326633165829145, 0.5376884422110553, 0.542713567839196, 0.5477386934673367, 0.5527638190954773, 0.5577889447236181, 0.5628140703517588, 0.5678391959798995, 0.5728643216080402, 0.5778894472361809, 0.5829145728643216, 0.5879396984924623, 0.592964824120603, 0.5979899497487438, 0.6030150753768844, 0.6080402010050251, 0.6130653266331658, 0.6180904522613065, 0.6231155778894473, 0.628140703517588, 0.6331658291457286, 0.6381909547738693, 0.6432160804020101, 0.6482412060301508, 0.6532663316582915, 0.6582914572864321, 0.6633165829145728, 0.6683417085427136, 0.6733668341708543, 0.678391959798995, 0.6834170854271356, 0.6884422110552764, 0.6934673366834171, 0.6984924623115578, 0.7035175879396985, 0.7085427135678392, 0.7135678391959799, 0.7185929648241206, 0.7236180904522613, 0.7286432160804021, 0.7336683417085427, 0.7386934673366834, 0.7437185929648241, 0.7487437185929648, 0.7537688442211056, 0.7587939698492462, 0.7638190954773869, 0.7688442211055276, 0.7738693467336684, 0.7788944723618091, 0.7839195979899497, 0.7889447236180904, 0.7939698492462312, 0.7989949748743719, 0.8040201005025126, 0.8090452261306532, 0.8140703517587939, 0.8190954773869347, 0.8241206030150754, 0.8291457286432161, 0.8341708542713567, 0.8391959798994975, 0.8442211055276382, 0.8492462311557789, 0.8542713567839196, 0.8592964824120602, 0.864321608040201, 0.8693467336683417, 0.8743718592964824, 0.8793969849246231, 0.8844221105527639, 0.8894472361809045, 0.8944723618090452, 0.8994974874371859, 0.9045226130653267, 0.9095477386934674, 0.914572864321608, 0.9195979899497487, 0.9246231155778895, 0.9296482412060302, 0.9346733668341709, 0.9396984924623115, 0.9447236180904522, 0.949748743718593, 0.9547738693467337, 0.9597989949748744, 0.964824120603015, 0.9698492462311558, 0.9748743718592965, 0.9798994974874372, 0.9849246231155779, 0.9899497487437185, 0.9949748743718593], "multi_label": false, "label_weights": null}}
:  (2total
:  (2count
.
w0
x1"
trackable_list_wrapper
-
y	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
{0
|1"
trackable_list_wrapper
-
~	variables"
_generic_user_object
:? (2true_positives
:? (2true_negatives
 :? (2false_positives
 :? (2false_negatives
@
?0
?1
?2
?3"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:? (2true_positives
:? (2true_negatives
 :? (2false_positives
 :? (2false_negatives
@
?0
?1
?2
?3"
trackable_list_wrapper
.
?	variables"
_generic_user_object
J:H	?
29Adam/dense_features/movieId_embedding/embedding_weights/m
L:J
??
2:Adam/dense_features_1/userId_embedding/embedding_weights/m
#:!

2Adam/dense/kernel/m
:
2Adam/dense/bias/m
%:#

2Adam/dense_2/kernel/m
:
2Adam/dense_2/bias/m
%:#

2Adam/dense_1/kernel/m
:
2Adam/dense_1/bias/m
%:#

2Adam/dense_3/kernel/m
:
2Adam/dense_3/bias/m
%:#2Adam/dense_4/kernel/m
:2Adam/dense_4/bias/m
J:H	?
29Adam/dense_features/movieId_embedding/embedding_weights/v
L:J
??
2:Adam/dense_features_1/userId_embedding/embedding_weights/v
#:!

2Adam/dense/kernel/v
:
2Adam/dense/bias/v
%:#

2Adam/dense_2/kernel/v
:
2Adam/dense_2/bias/v
%:#

2Adam/dense_1/kernel/v
:
2Adam/dense_1/bias/v
%:#

2Adam/dense_3/kernel/v
:
2Adam/dense_3/bias/v
%:#2Adam/dense_4/kernel/v
:2Adam/dense_4/bias/v
?2?
!__inference__wrapped_model_212186?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *Z?W
U?R
(
movieId?
movieId?????????
&
userId?
userId?????????
?2?
&__inference_model_layer_call_fn_213416
&__inference_model_layer_call_fn_213386
&__inference_model_layer_call_fn_212902
&__inference_model_layer_call_fn_212835?
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
A__inference_model_layer_call_and_return_conditional_losses_213149
A__inference_model_layer_call_and_return_conditional_losses_212767
A__inference_model_layer_call_and_return_conditional_losses_213356
A__inference_model_layer_call_and_return_conditional_losses_212730?
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
?2?
/__inference_dense_features_layer_call_fn_213594
/__inference_dense_features_layer_call_fn_213602?
???
FullArgSpecE
args=?:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
J__inference_dense_features_layer_call_and_return_conditional_losses_213586
J__inference_dense_features_layer_call_and_return_conditional_losses_213501?
???
FullArgSpecE
args=?:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
1__inference_dense_features_1_layer_call_fn_213780
1__inference_dense_features_1_layer_call_fn_213788?
???
FullArgSpecE
args=?:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
L__inference_dense_features_1_layer_call_and_return_conditional_losses_213772
L__inference_dense_features_1_layer_call_and_return_conditional_losses_213687?
???
FullArgSpecE
args=?:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
&__inference_dense_layer_call_fn_213808?
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
A__inference_dense_layer_call_and_return_conditional_losses_213799?
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
(__inference_dense_2_layer_call_fn_213828?
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
C__inference_dense_2_layer_call_and_return_conditional_losses_213819?
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
(__inference_dense_1_layer_call_fn_213848?
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
C__inference_dense_1_layer_call_and_return_conditional_losses_213839?
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
(__inference_dense_3_layer_call_fn_213868?
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
C__inference_dense_3_layer_call_and_return_conditional_losses_213859?
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
$__inference_dot_layer_call_fn_213886?
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
?__inference_dot_layer_call_and_return_conditional_losses_213880?
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
(__inference_dense_4_layer_call_fn_213906?
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
C__inference_dense_4_layer_call_and_return_conditional_losses_213897?
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
$__inference_signature_wrapper_212942movieIduserId"?
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
!__inference__wrapped_model_212186?%& +,12;<d?a
Z?W
U?R
(
movieId?
movieId?????????
&
userId?
userId?????????
? "1?.
,
dense_4!?
dense_4??????????
C__inference_dense_1_layer_call_and_return_conditional_losses_213839\+,/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????

? {
(__inference_dense_1_layer_call_fn_213848O+,/?,
%?"
 ?
inputs?????????

? "??????????
?
C__inference_dense_2_layer_call_and_return_conditional_losses_213819\%&/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????

? {
(__inference_dense_2_layer_call_fn_213828O%&/?,
%?"
 ?
inputs?????????

? "??????????
?
C__inference_dense_3_layer_call_and_return_conditional_losses_213859\12/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????

? {
(__inference_dense_3_layer_call_fn_213868O12/?,
%?"
 ?
inputs?????????

? "??????????
?
C__inference_dense_4_layer_call_and_return_conditional_losses_213897\;</?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? {
(__inference_dense_4_layer_call_fn_213906O;</?,
%?"
 ?
inputs?????????
? "???????????
L__inference_dense_features_1_layer_call_and_return_conditional_losses_213687?~?{
t?q
g?d
1
movieId&?#
features/movieId?????????
/
userId%?"
features/userId?????????

 
p
? "%?"
?
0?????????

? ?
L__inference_dense_features_1_layer_call_and_return_conditional_losses_213772?~?{
t?q
g?d
1
movieId&?#
features/movieId?????????
/
userId%?"
features/userId?????????

 
p 
? "%?"
?
0?????????

? ?
1__inference_dense_features_1_layer_call_fn_213780?~?{
t?q
g?d
1
movieId&?#
features/movieId?????????
/
userId%?"
features/userId?????????

 
p
? "??????????
?
1__inference_dense_features_1_layer_call_fn_213788?~?{
t?q
g?d
1
movieId&?#
features/movieId?????????
/
userId%?"
features/userId?????????

 
p 
? "??????????
?
J__inference_dense_features_layer_call_and_return_conditional_losses_213501?~?{
t?q
g?d
1
movieId&?#
features/movieId?????????
/
userId%?"
features/userId?????????

 
p
? "%?"
?
0?????????

? ?
J__inference_dense_features_layer_call_and_return_conditional_losses_213586?~?{
t?q
g?d
1
movieId&?#
features/movieId?????????
/
userId%?"
features/userId?????????

 
p 
? "%?"
?
0?????????

? ?
/__inference_dense_features_layer_call_fn_213594?~?{
t?q
g?d
1
movieId&?#
features/movieId?????????
/
userId%?"
features/userId?????????

 
p
? "??????????
?
/__inference_dense_features_layer_call_fn_213602?~?{
t?q
g?d
1
movieId&?#
features/movieId?????????
/
userId%?"
features/userId?????????

 
p 
? "??????????
?
A__inference_dense_layer_call_and_return_conditional_losses_213799\ /?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????

? y
&__inference_dense_layer_call_fn_213808O /?,
%?"
 ?
inputs?????????

? "??????????
?
?__inference_dot_layer_call_and_return_conditional_losses_213880?Z?W
P?M
K?H
"?
inputs/0?????????

"?
inputs/1?????????

? "%?"
?
0?????????
? ?
$__inference_dot_layer_call_fn_213886vZ?W
P?M
K?H
"?
inputs/0?????????

"?
inputs/1?????????

? "???????????
A__inference_model_layer_call_and_return_conditional_losses_212730?%& +,12;<l?i
b?_
U?R
(
movieId?
movieId?????????
&
userId?
userId?????????
p

 
? "%?"
?
0?????????
? ?
A__inference_model_layer_call_and_return_conditional_losses_212767?%& +,12;<l?i
b?_
U?R
(
movieId?
movieId?????????
&
userId?
userId?????????
p 

 
? "%?"
?
0?????????
? ?
A__inference_model_layer_call_and_return_conditional_losses_213149?%& +,12;<z?w
p?m
c?`
/
movieId$?!
inputs/movieId?????????
-
userId#? 
inputs/userId?????????
p

 
? "%?"
?
0?????????
? ?
A__inference_model_layer_call_and_return_conditional_losses_213356?%& +,12;<z?w
p?m
c?`
/
movieId$?!
inputs/movieId?????????
-
userId#? 
inputs/userId?????????
p 

 
? "%?"
?
0?????????
? ?
&__inference_model_layer_call_fn_212835?%& +,12;<l?i
b?_
U?R
(
movieId?
movieId?????????
&
userId?
userId?????????
p

 
? "???????????
&__inference_model_layer_call_fn_212902?%& +,12;<l?i
b?_
U?R
(
movieId?
movieId?????????
&
userId?
userId?????????
p 

 
? "???????????
&__inference_model_layer_call_fn_213386?%& +,12;<z?w
p?m
c?`
/
movieId$?!
inputs/movieId?????????
-
userId#? 
inputs/userId?????????
p

 
? "???????????
&__inference_model_layer_call_fn_213416?%& +,12;<z?w
p?m
c?`
/
movieId$?!
inputs/movieId?????????
-
userId#? 
inputs/userId?????????
p 

 
? "???????????
$__inference_signature_wrapper_212942?%& +,12;<_?\
? 
U?R
(
movieId?
movieId?????????
&
userId?
userId?????????"1?.
,
dense_4!?
dense_4?????????