??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
G
	AdjustHue
images"T	
delta
output"T"
Ttype0:
2
N
AdjustSaturation
images"T	
scale
output"T"
Ttype0:
2
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint?
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
?
FloorMod
x"T
y"T
z"T"
Ttype:
2	
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
:
Less
x"T
y"T
z
"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
?
RandomUniformInt

shape"T
minval"Tout
maxval"Tout
output"Tout"
seedint "
seed2int "
Touttype:
2	"
Ttype:
2	?
e
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2		
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
?
StatelessIf
cond"Tcond
input2Tin
output2Tout"
Tcondtype"
Tin
list(type)("
Tout
list(type)("
then_branchfunc"
else_branchfunc" 
output_shapeslist(shape)
 
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??

NoOpNoOp
i
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*%
valueB B


signatures
 
?
serving_default_imagePlaceholder*4
_output_shapes"
 :??????????????????*
dtype0*)
shape :??????????????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_image*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference_signature_wrapper_189
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameConst*
Tin
2*
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
GPU 2J 8? *%
f R
__inference__traced_save_212
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename*
Tin
2*
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
__inference__traced_restore_222??
?
i
__inference__traced_save_212
file_prefix
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
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPHo
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0savev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2?
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

identity_1Identity_1:output:0*
_input_shapes
: : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: 
?
?
random_flip_up_down_true_89H
Drandom_flip_up_down_reversev2_random_flip_up_down_control_dependency 
random_flip_up_down_identityl
"random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ?
random_flip_up_down/ReverseV2	ReverseV2Drandom_flip_up_down_reversev2_random_flip_up_down_control_dependency+random_flip_up_down/ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :???????????????????
random_flip_up_down/IdentityIdentity&random_flip_up_down/ReverseV2:output:0*
T0*4
_output_shapes"
 :??????????????????"E
random_flip_up_down_identity%random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????????????:: 6
4
_output_shapes"
 :??????????????????
?
?
random_flip_left_right_true_42N
Jrandom_flip_left_right_reversev2_random_flip_left_right_control_dependency#
random_flip_left_right_identityo
%random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:?
 random_flip_left_right/ReverseV2	ReverseV2Jrandom_flip_left_right_reversev2_random_flip_left_right_control_dependency.random_flip_left_right/ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :???????????????????
random_flip_left_right/IdentityIdentity)random_flip_left_right/ReverseV2:output:0*
T0*4
_output_shapes"
 :??????????????????"K
random_flip_left_right_identity(random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????????????:: 6
4
_output_shapes"
 :??????????????????
?
?
random_flip_left_right_false_43M
Irandom_flip_left_right_identity_random_flip_left_right_control_dependency#
random_flip_left_right_identity?
random_flip_left_right/IdentityIdentityIrandom_flip_left_right_identity_random_flip_left_right_control_dependency*
T0*4
_output_shapes"
 :??????????????????"K
random_flip_left_right_identity(random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????????????:: 6
4
_output_shapes"
 :??????????????????
?
E
__inference__traced_restore_222
file_prefix

identity_1??
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPHr
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
:*
dtypes
21
NoOpNoOp"/device:CPU:0*
_output_shapes
 X
IdentityIdentityfile_prefix^NoOp"/device:CPU:0*
T0*
_output_shapes
: J

Identity_1IdentityIdentity:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0*
_input_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
??
?
__inference___call___182	
image
identity??random_crop/Assert/Assert?9random_flip_left_right/assert_greater_equal/Assert/Assert?@random_flip_left_right/assert_positive/assert_less/Assert/Assert?6random_flip_up_down/assert_greater_equal/Assert/Assert?=random_flip_up_down/assert_positive/assert_less/Assert/AssertQ
random_flip_left_right/ShapeShapeimage*
T0*
_output_shapes
:}
*random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????v
,random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$random_flip_left_right/strided_sliceStridedSlice%random_flip_left_right/Shape:output:03random_flip_left_right/strided_slice/stack:output:05random_flip_left_right/strided_slice/stack_1:output:05random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskn
,random_flip_left_right/assert_positive/ConstConst*
_output_shapes
: *
dtype0*
value	B : ?
7random_flip_left_right/assert_positive/assert_less/LessLess5random_flip_left_right/assert_positive/Const:output:0-random_flip_left_right/strided_slice:output:0*
T0*
_output_shapes
:?
8random_flip_left_right/assert_positive/assert_less/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
6random_flip_left_right/assert_positive/assert_less/AllAll;random_flip_left_right/assert_positive/assert_less/Less:z:0Arandom_flip_left_right/assert_positive/assert_less/Const:output:0*
_output_shapes
: ?
?random_flip_left_right/assert_positive/assert_less/Assert/ConstConst*
_output_shapes
: *
dtype0*;
value2B0 B*inner 3 dims of 'image.shape' must be > 0.?
Grandom_flip_left_right/assert_positive/assert_less/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*;
value2B0 B*inner 3 dims of 'image.shape' must be > 0.?
@random_flip_left_right/assert_positive/assert_less/Assert/AssertAssert?random_flip_left_right/assert_positive/assert_less/All:output:0Prandom_flip_left_right/assert_positive/assert_less/Assert/Assert/data_0:output:0*

T
2*
_output_shapes
 ]
random_flip_left_right/RankConst*
_output_shapes
: *
dtype0*
value	B :o
-random_flip_left_right/assert_greater_equal/yConst*
_output_shapes
: *
dtype0*
value	B :?
8random_flip_left_right/assert_greater_equal/GreaterEqualGreaterEqual$random_flip_left_right/Rank:output:06random_flip_left_right/assert_greater_equal/y:output:0*
T0*
_output_shapes
: r
0random_flip_left_right/assert_greater_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : y
7random_flip_left_right/assert_greater_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : y
7random_flip_left_right/assert_greater_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
1random_flip_left_right/assert_greater_equal/rangeRange@random_flip_left_right/assert_greater_equal/range/start:output:09random_flip_left_right/assert_greater_equal/Rank:output:0@random_flip_left_right/assert_greater_equal/range/delta:output:0*
_output_shapes
: ?
/random_flip_left_right/assert_greater_equal/AllAll<random_flip_left_right/assert_greater_equal/GreaterEqual:z:0:random_flip_left_right/assert_greater_equal/range:output:0*
_output_shapes
: ?
8random_flip_left_right/assert_greater_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*<
value3B1 B+'image' must be at least three-dimensional.?
:random_flip_left_right/assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:?
:random_flip_left_right/assert_greater_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*5
value,B* B$x (random_flip_left_right/Rank:0) = ?
:random_flip_left_right/assert_greater_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*G
value>B< B6y (random_flip_left_right/assert_greater_equal/y:0) = ?
@random_flip_left_right/assert_greater_equal/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+'image' must be at least three-dimensional.?
@random_flip_left_right/assert_greater_equal/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:?
@random_flip_left_right/assert_greater_equal/Assert/Assert/data_2Const*
_output_shapes
: *
dtype0*5
value,B* B$x (random_flip_left_right/Rank:0) = ?
@random_flip_left_right/assert_greater_equal/Assert/Assert/data_4Const*
_output_shapes
: *
dtype0*G
value>B< B6y (random_flip_left_right/assert_greater_equal/y:0) = ?
9random_flip_left_right/assert_greater_equal/Assert/AssertAssert8random_flip_left_right/assert_greater_equal/All:output:0Irandom_flip_left_right/assert_greater_equal/Assert/Assert/data_0:output:0Irandom_flip_left_right/assert_greater_equal/Assert/Assert/data_1:output:0Irandom_flip_left_right/assert_greater_equal/Assert/Assert/data_2:output:0$random_flip_left_right/Rank:output:0Irandom_flip_left_right/assert_greater_equal/Assert/Assert/data_4:output:06random_flip_left_right/assert_greater_equal/y:output:0A^random_flip_left_right/assert_positive/assert_less/Assert/Assert*
T

2*
_output_shapes
 ?
)random_flip_left_right/control_dependencyIdentityimage:^random_flip_left_right/assert_greater_equal/Assert/AssertA^random_flip_left_right/assert_positive/assert_less/Assert/Assert*
T0*
_class

loc:@image*4
_output_shapes"
 :??????????????????n
+random_flip_left_right/random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB n
)random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    n
)random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
3random_flip_left_right/random_uniform/RandomUniformRandomUniform4random_flip_left_right/random_uniform/shape:output:0*
T0*
_output_shapes
: *
dtype0?
)random_flip_left_right/random_uniform/MulMul<random_flip_left_right/random_uniform/RandomUniform:output:02random_flip_left_right/random_uniform/max:output:0*
T0*
_output_shapes
: b
random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
random_flip_left_right/LessLess-random_flip_left_right/random_uniform/Mul:z:0&random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: ?
random_flip_left_rightStatelessIfrandom_flip_left_right/Less:z:02random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*4
_output_shapes"
 :??????????????????* 
_read_only_resource_inputs
 *2
else_branch#R!
random_flip_left_right_false_43*3
output_shapes"
 :??????????????????*1
then_branch"R 
random_flip_left_right_true_42?
random_flip_left_right/IdentityIdentityrandom_flip_left_right:output:0*
T0*4
_output_shapes"
 :??????????????????q
random_flip_up_down/ShapeShape(random_flip_left_right/Identity:output:0*
T0*
_output_shapes
:z
'random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????s
)random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: s
)random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!random_flip_up_down/strided_sliceStridedSlice"random_flip_up_down/Shape:output:00random_flip_up_down/strided_slice/stack:output:02random_flip_up_down/strided_slice/stack_1:output:02random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskk
)random_flip_up_down/assert_positive/ConstConst*
_output_shapes
: *
dtype0*
value	B : ?
4random_flip_up_down/assert_positive/assert_less/LessLess2random_flip_up_down/assert_positive/Const:output:0*random_flip_up_down/strided_slice:output:0*
T0*
_output_shapes
:
5random_flip_up_down/assert_positive/assert_less/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
3random_flip_up_down/assert_positive/assert_less/AllAll8random_flip_up_down/assert_positive/assert_less/Less:z:0>random_flip_up_down/assert_positive/assert_less/Const:output:0*
_output_shapes
: ?
<random_flip_up_down/assert_positive/assert_less/Assert/ConstConst*
_output_shapes
: *
dtype0*;
value2B0 B*inner 3 dims of 'image.shape' must be > 0.?
Drandom_flip_up_down/assert_positive/assert_less/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*;
value2B0 B*inner 3 dims of 'image.shape' must be > 0.?
=random_flip_up_down/assert_positive/assert_less/Assert/AssertAssert<random_flip_up_down/assert_positive/assert_less/All:output:0Mrandom_flip_up_down/assert_positive/assert_less/Assert/Assert/data_0:output:0:^random_flip_left_right/assert_greater_equal/Assert/Assert*

T
2*
_output_shapes
 Z
random_flip_up_down/RankConst*
_output_shapes
: *
dtype0*
value	B :l
*random_flip_up_down/assert_greater_equal/yConst*
_output_shapes
: *
dtype0*
value	B :?
5random_flip_up_down/assert_greater_equal/GreaterEqualGreaterEqual!random_flip_up_down/Rank:output:03random_flip_up_down/assert_greater_equal/y:output:0*
T0*
_output_shapes
: o
-random_flip_up_down/assert_greater_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : v
4random_flip_up_down/assert_greater_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : v
4random_flip_up_down/assert_greater_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
.random_flip_up_down/assert_greater_equal/rangeRange=random_flip_up_down/assert_greater_equal/range/start:output:06random_flip_up_down/assert_greater_equal/Rank:output:0=random_flip_up_down/assert_greater_equal/range/delta:output:0*
_output_shapes
: ?
,random_flip_up_down/assert_greater_equal/AllAll9random_flip_up_down/assert_greater_equal/GreaterEqual:z:07random_flip_up_down/assert_greater_equal/range:output:0*
_output_shapes
: ?
5random_flip_up_down/assert_greater_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*<
value3B1 B+'image' must be at least three-dimensional.?
7random_flip_up_down/assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:?
7random_flip_up_down/assert_greater_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*2
value)B' B!x (random_flip_up_down/Rank:0) = ?
7random_flip_up_down/assert_greater_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*D
value;B9 B3y (random_flip_up_down/assert_greater_equal/y:0) = ?
=random_flip_up_down/assert_greater_equal/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+'image' must be at least three-dimensional.?
=random_flip_up_down/assert_greater_equal/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:?
=random_flip_up_down/assert_greater_equal/Assert/Assert/data_2Const*
_output_shapes
: *
dtype0*2
value)B' B!x (random_flip_up_down/Rank:0) = ?
=random_flip_up_down/assert_greater_equal/Assert/Assert/data_4Const*
_output_shapes
: *
dtype0*D
value;B9 B3y (random_flip_up_down/assert_greater_equal/y:0) = ?
6random_flip_up_down/assert_greater_equal/Assert/AssertAssert5random_flip_up_down/assert_greater_equal/All:output:0Frandom_flip_up_down/assert_greater_equal/Assert/Assert/data_0:output:0Frandom_flip_up_down/assert_greater_equal/Assert/Assert/data_1:output:0Frandom_flip_up_down/assert_greater_equal/Assert/Assert/data_2:output:0!random_flip_up_down/Rank:output:0Frandom_flip_up_down/assert_greater_equal/Assert/Assert/data_4:output:03random_flip_up_down/assert_greater_equal/y:output:0>^random_flip_up_down/assert_positive/assert_less/Assert/Assert*
T

2*
_output_shapes
 ?
&random_flip_up_down/control_dependencyIdentity(random_flip_left_right/Identity:output:07^random_flip_up_down/assert_greater_equal/Assert/Assert>^random_flip_up_down/assert_positive/assert_less/Assert/Assert*
T0*2
_class(
&$loc:@random_flip_left_right/Identity*4
_output_shapes"
 :??????????????????k
(random_flip_up_down/random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB k
&random_flip_up_down/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    k
&random_flip_up_down/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
0random_flip_up_down/random_uniform/RandomUniformRandomUniform1random_flip_up_down/random_uniform/shape:output:0*
T0*
_output_shapes
: *
dtype0?
&random_flip_up_down/random_uniform/MulMul9random_flip_up_down/random_uniform/RandomUniform:output:0/random_flip_up_down/random_uniform/max:output:0*
T0*
_output_shapes
: _
random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
random_flip_up_down/LessLess*random_flip_up_down/random_uniform/Mul:z:0#random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: ?
random_flip_up_downStatelessIfrandom_flip_up_down/Less:z:0/random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*4
_output_shapes"
 :??????????????????* 
_read_only_resource_inputs
 */
else_branch R
random_flip_up_down_false_90*3
output_shapes"
 :??????????????????*.
then_branchR
random_flip_up_down_true_89?
random_flip_up_down/IdentityIdentityrandom_flip_up_down:output:0*
T0*4
_output_shapes"
 :??????????????????W
random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB W
random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *??L?W
random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *????z
random_uniform/RandomUniformRandomUniformrandom_uniform/shape:output:0*
T0*
_output_shapes
: *
dtype0t
random_uniform/subSubrandom_uniform/max:output:0random_uniform/min:output:0*
T0*
_output_shapes
: y
random_uniform/mulMul%random_uniform/RandomUniform:output:0random_uniform/sub:z:0*
T0*
_output_shapes
: m
random_uniformAddV2random_uniform/mul:z:0random_uniform/min:output:0*
T0*
_output_shapes
: ?
$adjust_saturation/convert_image/CastCast%random_flip_up_down/Identity:output:0*

DstT0*

SrcT0*4
_output_shapes"
 :??????????????????f
!adjust_saturation/convert_image/yConst*
_output_shapes
: *
dtype0*
valueB
 *???;?
adjust_saturation/convert_imageMul(adjust_saturation/convert_image/Cast:y:0*adjust_saturation/convert_image/y:output:0*
T0*4
_output_shapes"
 :???????????????????
"adjust_saturation/AdjustSaturationAdjustSaturation#adjust_saturation/convert_image:z:0random_uniform:z:0*4
_output_shapes"
 :??????????????????l
'adjust_saturation/convert_image_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 * ?C?
%adjust_saturation/convert_image_1/MulMul+adjust_saturation/AdjustSaturation:output:00adjust_saturation/convert_image_1/Mul/y:output:0*
T0*4
_output_shapes"
 :???????????????????
!adjust_saturation/convert_image_1Cast)adjust_saturation/convert_image_1/Mul:z:0*

DstT0*

SrcT0*4
_output_shapes"
 :??????????????????Y
random_uniform_1/shapeConst*
_output_shapes
: *
dtype0*
valueB Y
random_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *??L?Y
random_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *??L>~
random_uniform_1/RandomUniformRandomUniformrandom_uniform_1/shape:output:0*
T0*
_output_shapes
: *
dtype0z
random_uniform_1/subSubrandom_uniform_1/max:output:0random_uniform_1/min:output:0*
T0*
_output_shapes
: 
random_uniform_1/mulMul'random_uniform_1/RandomUniform:output:0random_uniform_1/sub:z:0*
T0*
_output_shapes
: s
random_uniform_1AddV2random_uniform_1/mul:z:0random_uniform_1/min:output:0*
T0*
_output_shapes
: ?
adjust_hue/convert_image/CastCast%adjust_saturation/convert_image_1:y:0*

DstT0*

SrcT0*4
_output_shapes"
 :??????????????????_
adjust_hue/convert_image/yConst*
_output_shapes
: *
dtype0*
valueB
 *???;?
adjust_hue/convert_imageMul!adjust_hue/convert_image/Cast:y:0#adjust_hue/convert_image/y:output:0*
T0*4
_output_shapes"
 :???????????????????
adjust_hue/AdjustHue	AdjustHueadjust_hue/convert_image:z:0random_uniform_1:z:0*4
_output_shapes"
 :??????????????????e
 adjust_hue/convert_image_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 * ?C?
adjust_hue/convert_image_1/MulMuladjust_hue/AdjustHue:output:0)adjust_hue/convert_image_1/Mul/y:output:0*
T0*4
_output_shapes"
 :???????????????????
adjust_hue/convert_image_1Cast"adjust_hue/convert_image_1/Mul:z:0*

DstT0*

SrcT0*4
_output_shapes"
 :??????????????????S
ShapeShapeadjust_hue/convert_image_1:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskK
	truediv/yConst*
_output_shapes
: *
dtype0*
value	B :\
truediv/CastCaststrided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
truediv/Cast_1Casttruediv/y:output:0*

DstT0*

SrcT0*
_output_shapes
: Y
truedivRealDivtruediv/Cast:y:0truediv/Cast_1:y:0*
T0*
_output_shapes
: I
CastCasttruediv:z:0*

DstT0*

SrcT0*
_output_shapes
: U
Shape_1Shapeadjust_hue/convert_image_1:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
truediv_1/yConst*
_output_shapes
: *
dtype0*
value	B :`
truediv_1/CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: ^
truediv_1/Cast_1Casttruediv_1/y:output:0*

DstT0*

SrcT0*
_output_shapes
: _
	truediv_1RealDivtruediv_1/Cast:y:0truediv_1/Cast_1:y:0*
T0*
_output_shapes
: M
Cast_1Casttruediv_1:z:0*

DstT0*

SrcT0*
_output_shapes
: U
Shape_2Shapeadjust_hue/convert_image_1:y:0*
T0*
_output_shapes
:_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape_2:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
random_uniform_2/shapeConst*
_output_shapes
: *
dtype0*
valueB ?
random_uniform_2RandomUniformIntrandom_uniform_2/shape:output:0Cast:y:0strided_slice_2:output:0*
T0*

Tout0*
_output_shapes
: U
Shape_3Shapeadjust_hue/convert_image_1:y:0*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSliceShape_3:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
random_uniform_3/shapeConst*
_output_shapes
: *
dtype0*
valueB ?
random_uniform_3RandomUniformIntrandom_uniform_3/shape:output:0
Cast_1:y:0strided_slice_3:output:0*
T0*

Tout0*
_output_shapes
: T
random_crop/size/2Const*
_output_shapes
: *
dtype0*
value	B :?
random_crop/sizePackrandom_uniform_2:output:0random_uniform_3:output:0random_crop/size/2:output:0*
N*
T0*
_output_shapes
:_
random_crop/ShapeShapeadjust_hue/convert_image_1:y:0*
T0*
_output_shapes
:?
random_crop/GreaterEqualGreaterEqualrandom_crop/Shape:output:0random_crop/size:output:0*
T0*
_output_shapes
:[
random_crop/ConstConst*
_output_shapes
:*
dtype0*
valueB: h
random_crop/AllAllrandom_crop/GreaterEqual:z:0random_crop/Const:output:0*
_output_shapes
: w
random_crop/Assert/ConstConst*
_output_shapes
: *
dtype0*/
value&B$ BNeed value.shape >= size, got 
 random_crop/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*/
value&B$ BNeed value.shape >= size, got ?
random_crop/Assert/AssertAssertrandom_crop/All:output:0)random_crop/Assert/Assert/data_0:output:0random_crop/Shape:output:0random_crop/size:output:07^random_flip_up_down/assert_greater_equal/Assert/Assert*
T
2*
_output_shapes
 *
	summarize??
random_crop/control_dependencyIdentityrandom_crop/Shape:output:0^random_crop/Assert/Assert*
T0*$
_class
loc:@random_crop/Shape*
_output_shapes
:
random_crop/subSub'random_crop/control_dependency:output:0random_crop/size:output:0*
T0*
_output_shapes
:S
random_crop/add/yConst*
_output_shapes
: *
dtype0*
value	B :n
random_crop/addAddV2random_crop/sub:z:0random_crop/add/y:output:0*
T0*
_output_shapes
:]
random_crop/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:`
random_crop/random_uniform/minConst*
_output_shapes
: *
dtype0*
value	B : d
random_crop/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB :?????
random_crop/random_uniformRandomUniformIntrandom_crop/Shape_1:output:0'random_crop/random_uniform/min:output:0'random_crop/random_uniform/max:output:0*
T0*

Tout0*
_output_shapes
:z
random_crop/modFloorMod#random_crop/random_uniform:output:0random_crop/add:z:0*
T0*
_output_shapes
:?
random_cropSliceadjust_hue/convert_image_1:y:0random_crop/mod:z:0random_crop/size:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????p
IdentityIdentityrandom_crop:output:0^NoOp*
T0*4
_output_shapes"
 :???????????????????
NoOpNoOp^random_crop/Assert/Assert:^random_flip_left_right/assert_greater_equal/Assert/AssertA^random_flip_left_right/assert_positive/assert_less/Assert/Assert7^random_flip_up_down/assert_greater_equal/Assert/Assert>^random_flip_up_down/assert_positive/assert_less/Assert/Assert*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????????????26
random_crop/Assert/Assertrandom_crop/Assert/Assert2v
9random_flip_left_right/assert_greater_equal/Assert/Assert9random_flip_left_right/assert_greater_equal/Assert/Assert2?
@random_flip_left_right/assert_positive/assert_less/Assert/Assert@random_flip_left_right/assert_positive/assert_less/Assert/Assert2p
6random_flip_up_down/assert_greater_equal/Assert/Assert6random_flip_up_down/assert_greater_equal/Assert/Assert2~
=random_flip_up_down/assert_positive/assert_less/Assert/Assert=random_flip_up_down/assert_positive/assert_less/Assert/Assert:[ W
4
_output_shapes"
 :??????????????????

_user_specified_nameimage
?
?
random_flip_up_down_false_90G
Crandom_flip_up_down_identity_random_flip_up_down_control_dependency 
random_flip_up_down_identity?
random_flip_up_down/IdentityIdentityCrandom_flip_up_down_identity_random_flip_up_down_control_dependency*
T0*4
_output_shapes"
 :??????????????????"E
random_flip_up_down_identity%random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????????????:: 6
4
_output_shapes"
 :??????????????????
?
Y
!__inference_signature_wrapper_189	
image
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallimage*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *!
fR
__inference___call___182|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????????????22
StatefulPartitionedCallStatefulPartitionedCall:[ W
4
_output_shapes"
 :??????????????????

_user_specified_nameimage"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
D
image;
serving_default_image:0??????????????????I
output_0=
StatefulPartitionedCall:0??????????????????tensorflow/serving/predict:?
<

signatures
__call__"
_generic_user_object
,
serving_default"
signature_map
?2?
__inference___call___182?
???
FullArgSpec
args?
jself
jimage
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? **?'
%?"??????????????????
?B?
!__inference_signature_wrapper_189image"?
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
__inference___call___182d;?8
1?.
,?)
image??????????????????
? "%?"???????????????????
!__inference_signature_wrapper_189?D?A
? 
:?7
5
image,?)
image??????????????????"@?=
;
output_0/?,
output_0??????????????????