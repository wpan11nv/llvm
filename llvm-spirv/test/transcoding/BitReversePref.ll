; RUN: llvm-as < %s -o %t.bc
; RUN: llvm-spirv %t.bc -spirv-text -o - | FileCheck %s

;CHECK: Decorate [[#FUNC_NAME:]] LinkageAttributes "_Z10BitReverseILi4EEii"
;CHECK-NOT: BitReverse
;CHECK: FunctionCall [[#]] [[#]] [[#FUNC_NAME]] 


target datalayout = "e-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-n8:16:32:64"
target triple = "spir64-unknown-linux-sycldevice"

%"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" = type { %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" }
%"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" = type { [1 x i64] }
%"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id" = type { %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" }
%"class._ZTSZZ7ComputeRN2cl4sycl5queueEPiS3_ENK3$_0clERNS0_7handlerEEUlNS0_7nd_itemILi2EEEE_.anon" = type { %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor", %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" }
%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" = type { %"class._ZTSN2cl4sycl6detail18AccessorImplDeviceILi1EEE.cl::sycl::detail::AccessorImplDevice", %union._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEUt_E.anon }
%"class._ZTSN2cl4sycl6detail18AccessorImplDeviceILi1EEE.cl::sycl::detail::AccessorImplDevice" = type { %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id", %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range", %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" }
%union._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEUt_E.anon = type { i32 addrspace(1)* }
%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" = type { %"class._ZTSN2cl4sycl6detail18AccessorImplDeviceILi1EEE.cl::sycl::detail::AccessorImplDevice", %union._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEUt_E.anon }
%union._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEUt_E.anon = type { i32 addrspace(1)* }
%"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item" = type { %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item", %"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item", %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" }
%"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" = type { %"struct._ZTSN2cl4sycl6detail8ItemBaseILi2ELb1EEE.cl::sycl::detail::ItemBase" }
%"struct._ZTSN2cl4sycl6detail8ItemBaseILi2ELb1EEE.cl::sycl::detail::ItemBase" = type { %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range", %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id", %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" }
%"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" = type { %"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" }
%"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" = type { [2 x i64] }
%"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" = type { %"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" }
%"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item" = type { %"struct._ZTSN2cl4sycl6detail8ItemBaseILi2ELb0EEE.cl::sycl::detail::ItemBase" }
%"struct._ZTSN2cl4sycl6detail8ItemBaseILi2ELb0EEE.cl::sycl::detail::ItemBase" = type { %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range", %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" }
%"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" = type { %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range", %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range", %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range", %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" }

$"_ZTSZZ7ComputeRN2cl4sycl5queueEPiS3_ENK3$_0clERNS0_7handlerEE9Histogram" = comdat any

$_ZN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEC2Ev = comdat any

$_ZN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEC2Ev = comdat any

$_ZN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EE6__initEPU3AS1iNS0_5rangeILi1EEESA_NS0_2idILi1EEE = comdat any

$_ZN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EE6__initEPU3AS1iNS0_5rangeILi1EEESA_NS0_2idILi1EEE = comdat any

$_ZN2cl4sycl6detail7Builder10getElementILi2EEEKNS0_7nd_itemIXT_EEEPS5_ = comdat any

$_ZN2cl4sycl2idILi1EEC2Ev = comdat any

$_ZN2cl4sycl6detail14InitializedValILi1ENS0_5rangeEE3getILi0EEENS3_ILi1EEEv = comdat any

$_ZN2cl4sycl6detail18AccessorImplDeviceILi1EEC2ENS0_2idILi1EEENS0_5rangeILi1EEES7_ = comdat any

$_ZN2cl4sycl6detail5arrayILi1EEC2ILi1EEENSt9enable_ifIXeqT_Li1EEmE4typeE = comdat any

$_ZN2cl4sycl5rangeILi1EEC2ILi1EEENSt9enable_ifIXeqT_Li1EEmE4typeE = comdat any

$_ZN2cl4sycl6detail5arrayILi1EEixEi = comdat any

$_ZN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EE9getOffsetEv = comdat any

$_ZN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EE14getAccessRangeEv = comdat any

$_ZN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EE14getMemoryRangeEv = comdat any

$_ZNK2cl4sycl6detail5arrayILi1EE15check_dimensionEi = comdat any

$_ZN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EE9getOffsetEv = comdat any

$_ZN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EE14getAccessRangeEv = comdat any

$_ZN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EE14getMemoryRangeEv = comdat any

$_ZNK2cl4sycl7nd_itemILi2EE20get_global_linear_idEv = comdat any

$_Z10BitReverseILi4EEii = comdat any

$_ZNK2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEixILi1EvEEiNS0_2idILi1EEE = comdat any

$_ZN2cl4sycl2idILi1EEC2ILi1EEENSt9enable_ifIXeqT_Li1EEmE4typeE = comdat any

$_ZNK2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEixILi1EvEERiNS0_2idILi1EEE = comdat any

$_ZNK2cl4sycl4itemILi2ELb1EE13get_linear_idEv = comdat any

$_ZNK2cl4sycl6detail8ItemBaseILi2ELb1EE13get_linear_idEv = comdat any

$_ZNK2cl4sycl6detail5arrayILi2EEixEi = comdat any

$_ZNK2cl4sycl6detail5arrayILi2EE15check_dimensionEi = comdat any

$_ZNK2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EE14getLinearIndexILi1EEEmNS0_2idIXT_EEE = comdat any

$_ZNK2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EE15getQualifiedPtrEv = comdat any

$_ZNK2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EE14getLinearIndexILi1EEEmNS0_2idIXT_EEE = comdat any

$_ZNK2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EE15getQualifiedPtrEv = comdat any

$_ZN2cl4sycl6detail7Builder11createGroupILi2EEENS0_5groupIXT_EEERKNS0_5rangeIXT_EEES9_S9_RKNS0_2idIXT_EEE = comdat any

$_ZN2cl4sycl6detail7Builder10createItemILi2ELb1EEENSt9enable_ifIXT0_ENS0_4itemIXT_EXT0_EEEE4typeERKNS0_5rangeIXT_EEERKNS0_2idIXT_EEESG_ = comdat any

$_ZN2cl4sycl6detail7Builder10createItemILi2ELb0EEENSt9enable_ifIXntT0_ENS0_4itemIXT_EXT0_EEEE4typeERKNS0_5rangeIXT_EEERKNS0_2idIXT_EEE = comdat any

$_ZN2cl4sycl6detail7Builder12createNDItemILi2EEENS0_7nd_itemIXT_EEERKNS0_4itemIXT_ELb1EEERKNS6_IXT_ELb0EEERKNS0_5groupIXT_EEE = comdat any

$_ZN7__spirv21InitSizesSTGlobalSizeILi2EN2cl4sycl5rangeILi2EEEE8initSizeEv = comdat any

$_ZN2cl4sycl5rangeILi2EEC2ILi2EEENSt9enable_ifIXeqT_Li2EEmE4typeEm = comdat any

$_Z20__spirv_GlobalSize_yv = comdat any

$_Z20__spirv_GlobalSize_xv = comdat any

$_ZN2cl4sycl6detail5arrayILi2EEC2ILi2EEENSt9enable_ifIXeqT_Li2EEmE4typeEm = comdat any

$_ZN7__spirv24InitSizesSTWorkgroupSizeILi2EN2cl4sycl5rangeILi2EEEE8initSizeEv = comdat any

$_Z23__spirv_WorkgroupSize_yv = comdat any

$_Z23__spirv_WorkgroupSize_xv = comdat any

$_ZN7__spirv24InitSizesSTNumWorkgroupsILi2EN2cl4sycl5rangeILi2EEEE8initSizeEv = comdat any

$_Z23__spirv_NumWorkgroups_yv = comdat any

$_Z23__spirv_NumWorkgroups_xv = comdat any

$_ZN7__spirv22InitSizesSTWorkgroupIdILi2EN2cl4sycl2idILi2EEEE8initSizeEv = comdat any

$_ZN2cl4sycl2idILi2EEC2ILi2EEENSt9enable_ifIXeqT_Li2EEmE4typeEm = comdat any

$_Z21__spirv_WorkgroupId_yv = comdat any

$_Z21__spirv_WorkgroupId_xv = comdat any

$_ZN7__spirv29InitSizesSTGlobalInvocationIdILi2EN2cl4sycl2idILi2EEEE8initSizeEv = comdat any

$_Z28__spirv_GlobalInvocationId_yv = comdat any

$_Z28__spirv_GlobalInvocationId_xv = comdat any

$_ZN7__spirv28InitSizesSTLocalInvocationIdILi2EN2cl4sycl2idILi2EEEE8initSizeEv = comdat any

$_Z27__spirv_LocalInvocationId_yv = comdat any

$_Z27__spirv_LocalInvocationId_xv = comdat any

$_ZN7__spirv23InitSizesSTGlobalOffsetILi2EN2cl4sycl2idILi2EEEE8initSizeEv = comdat any

$_Z22__spirv_GlobalOffset_yv = comdat any

$_Z22__spirv_GlobalOffset_xv = comdat any

$_ZN2cl4sycl5groupILi2EEC2ERKNS0_5rangeILi2EEES6_S4_RKNS0_2idILi2EEE = comdat any

$_ZN2cl4sycl4itemILi2ELb1EEC2ILb1EEERNSt9enable_ifIXT_EKNS0_5rangeILi2EEEE4typeERKNS0_2idILi2EEESE_ = comdat any

$_ZN2cl4sycl4itemILi2ELb0EEC2ILb0EEERNSt9enable_ifIXntT_EKNS0_5rangeILi2EEEE4typeERKNS0_2idILi2EEE = comdat any

$_ZN2cl4sycl7nd_itemILi2EEC2ERKNS0_4itemILi2ELb1EEERKNS3_ILi2ELb0EEERKNS0_5groupILi2EEE = comdat any

@__spirv_BuiltInGlobalSize = external dso_local addrspace(1) constant <3 x i64>, align 32
@__spirv_BuiltInWorkgroupSize = external dso_local addrspace(1) constant <3 x i64>, align 32
@__spirv_BuiltInNumWorkgroups = external dso_local addrspace(1) constant <3 x i64>, align 32
@__spirv_BuiltInWorkgroupId = external dso_local addrspace(1) constant <3 x i64>, align 32
@__spirv_BuiltInGlobalInvocationId = external dso_local addrspace(1) constant <3 x i64>, align 32
@__spirv_BuiltInLocalInvocationId = external dso_local addrspace(1) constant <3 x i64>, align 32
@__spirv_BuiltInGlobalOffset = external dso_local addrspace(1) constant <3 x i64>, align 32

; Function Attrs: norecurse
define weak_odr dso_local spir_kernel void @"_ZTSZZ7ComputeRN2cl4sycl5queueEPiS3_ENK3$_0clERNS0_7handlerEE9Histogram"(i32 addrspace(1)* %_arg_, %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* byval(%"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range") align 8 %_arg_1, %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* byval(%"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range") align 8 %_arg_2, %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* byval(%"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id") align 8 %_arg_3, i32 addrspace(1)* %_arg_4, %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* byval(%"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range") align 8 %_arg_6, %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* byval(%"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range") align 8 %_arg_7, %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* byval(%"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id") align 8 %_arg_8) #0 comdat !kernel_arg_addr_space !4 !kernel_arg_access_qual !5 !kernel_arg_type !6 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
entry:
  %_arg_.addr = alloca i32 addrspace(1)*, align 8
  %_arg_.addr5 = alloca i32 addrspace(1)*, align 8
  %0 = alloca %"class._ZTSZZ7ComputeRN2cl4sycl5queueEPiS3_ENK3$_0clERNS0_7handlerEEUlNS0_7nd_itemILi2EEEE_.anon", align 8
  %agg.tmp = alloca %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range", align 8
  %agg.tmp9 = alloca %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range", align 8
  %agg.tmp10 = alloca %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id", align 8
  %agg.tmp11 = alloca %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range", align 8
  %agg.tmp12 = alloca %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range", align 8
  %agg.tmp13 = alloca %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id", align 8
  %agg.tmp14 = alloca %"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item", align 8
  store i32 addrspace(1)* %_arg_, i32 addrspace(1)** %_arg_.addr, align 8, !tbaa !8
  store i32 addrspace(1)* %_arg_4, i32 addrspace(1)** %_arg_.addr5, align 8, !tbaa !8
  %1 = bitcast %"class._ZTSZZ7ComputeRN2cl4sycl5queueEPiS3_ENK3$_0clERNS0_7handlerEEUlNS0_7nd_itemILi2EEEE_.anon"* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %1) #9
  %2 = getelementptr inbounds %"class._ZTSZZ7ComputeRN2cl4sycl5queueEPiS3_ENK3$_0clERNS0_7handlerEEUlNS0_7nd_itemILi2EEEE_.anon", %"class._ZTSZZ7ComputeRN2cl4sycl5queueEPiS3_ENK3$_0clERNS0_7handlerEEUlNS0_7nd_itemILi2EEEE_.anon"* %0, i32 0, i32 0
  %3 = addrspacecast %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor"* %2 to %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*
  call spir_func void @_ZN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEC2Ev(%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %3)
  %4 = getelementptr inbounds %"class._ZTSZZ7ComputeRN2cl4sycl5queueEPiS3_ENK3$_0clERNS0_7handlerEEUlNS0_7nd_itemILi2EEEE_.anon", %"class._ZTSZZ7ComputeRN2cl4sycl5queueEPiS3_ENK3$_0clERNS0_7handlerEEUlNS0_7nd_itemILi2EEEE_.anon"* %0, i32 0, i32 1
  %5 = addrspacecast %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor"* %4 to %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*
  call spir_func void @_ZN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEC2Ev(%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %5)
  %6 = getelementptr inbounds %"class._ZTSZZ7ComputeRN2cl4sycl5queueEPiS3_ENK3$_0clERNS0_7handlerEEUlNS0_7nd_itemILi2EEEE_.anon", %"class._ZTSZZ7ComputeRN2cl4sycl5queueEPiS3_ENK3$_0clERNS0_7handlerEEUlNS0_7nd_itemILi2EEEE_.anon"* %0, i32 0, i32 0
  %7 = load i32 addrspace(1)*, i32 addrspace(1)** %_arg_.addr, align 8, !tbaa !8
  %8 = bitcast %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* %agg.tmp to i8*
  %9 = bitcast %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* %_arg_1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 8, i1 false)
  %10 = bitcast %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* %agg.tmp9 to i8*
  %11 = bitcast %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* %_arg_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 8, i1 false)
  %12 = bitcast %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* %agg.tmp10 to i8*
  %13 = bitcast %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* %_arg_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 8, i1 false)
  %14 = addrspacecast %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor"* %6 to %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*
  call spir_func void @_ZN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EE6__initEPU3AS1iNS0_5rangeILi1EEESA_NS0_2idILi1EEE(%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %14, i32 addrspace(1)* %7, %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* byval(%"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range") align 8 %agg.tmp, %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* byval(%"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range") align 8 %agg.tmp9, %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* byval(%"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id") align 8 %agg.tmp10)
  %15 = getelementptr inbounds %"class._ZTSZZ7ComputeRN2cl4sycl5queueEPiS3_ENK3$_0clERNS0_7handlerEEUlNS0_7nd_itemILi2EEEE_.anon", %"class._ZTSZZ7ComputeRN2cl4sycl5queueEPiS3_ENK3$_0clERNS0_7handlerEEUlNS0_7nd_itemILi2EEEE_.anon"* %0, i32 0, i32 1
  %16 = load i32 addrspace(1)*, i32 addrspace(1)** %_arg_.addr5, align 8, !tbaa !8
  %17 = bitcast %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* %agg.tmp11 to i8*
  %18 = bitcast %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* %_arg_6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 8, i1 false)
  %19 = bitcast %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* %agg.tmp12 to i8*
  %20 = bitcast %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* %_arg_7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 8, i1 false)
  %21 = bitcast %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* %agg.tmp13 to i8*
  %22 = bitcast %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* %_arg_8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 8, i1 false)
  %23 = addrspacecast %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor"* %15 to %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*
  call spir_func void @_ZN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EE6__initEPU3AS1iNS0_5rangeILi1EEESA_NS0_2idILi1EEE(%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %23, i32 addrspace(1)* %16, %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* byval(%"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range") align 8 %agg.tmp11, %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* byval(%"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range") align 8 %agg.tmp12, %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* byval(%"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id") align 8 %agg.tmp13)
  %24 = addrspacecast %"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item"* %agg.tmp14 to %"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item" addrspace(4)*
  call spir_func void @_ZN2cl4sycl6detail7Builder10getElementILi2EEEKNS0_7nd_itemIXT_EEEPS5_(%"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item" addrspace(4)* sret align 8 %24, %"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item" addrspace(4)* null)
  %25 = addrspacecast %"class._ZTSZZ7ComputeRN2cl4sycl5queueEPiS3_ENK3$_0clERNS0_7handlerEEUlNS0_7nd_itemILi2EEEE_.anon"* %0 to %"class._ZTSZZ7ComputeRN2cl4sycl5queueEPiS3_ENK3$_0clERNS0_7handlerEEUlNS0_7nd_itemILi2EEEE_.anon" addrspace(4)*
  call spir_func void @"_ZZZ7ComputeRN2cl4sycl5queueEPiS3_ENK3$_0clERNS0_7handlerEENKUlNS0_7nd_itemILi2EEEE_clES8_"(%"class._ZTSZZ7ComputeRN2cl4sycl5queueEPiS3_ENK3$_0clERNS0_7handlerEEUlNS0_7nd_itemILi2EEEE_.anon" addrspace(4)* %25, %"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item"* byval(%"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item") align 8 %agg.tmp14)
  %26 = bitcast %"class._ZTSZZ7ComputeRN2cl4sycl5queueEPiS3_ENK3$_0clERNS0_7handlerEEUlNS0_7nd_itemILi2EEEE_.anon"* %0 to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %26) #9
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse
define linkonce_odr dso_local spir_func void @_ZN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEC2Ev(%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*, align 8
  %agg.tmp = alloca %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id", align 8
  %agg.tmp2 = alloca %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range", align 8
  %agg.tmp3 = alloca %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range", align 8
  store %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this, %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)** %this.addr, align 8, !tbaa !8
  %this1 = load %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*, %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)** %this.addr, align 8
  %impl = getelementptr inbounds %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor", %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this1, i32 0, i32 0
  %0 = bitcast %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* %agg.tmp to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 8, i1 false)
  %1 = addrspacecast %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* %agg.tmp to %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id" addrspace(4)*
  call spir_func void @_ZN2cl4sycl2idILi1EEC2Ev(%"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id" addrspace(4)* %1)
  %2 = addrspacecast %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* %agg.tmp2 to %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)*
  call spir_func void @_ZN2cl4sycl6detail14InitializedValILi1ENS0_5rangeEE3getILi0EEENS3_ILi1EEEv(%"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)* sret align 8 %2)
  %3 = addrspacecast %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* %agg.tmp3 to %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)*
  call spir_func void @_ZN2cl4sycl6detail14InitializedValILi1ENS0_5rangeEE3getILi0EEENS3_ILi1EEEv(%"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)* sret align 8 %3)
  call spir_func void @_ZN2cl4sycl6detail18AccessorImplDeviceILi1EEC2ENS0_2idILi1EEENS0_5rangeILi1EEES7_(%"class._ZTSN2cl4sycl6detail18AccessorImplDeviceILi1EEE.cl::sycl::detail::AccessorImplDevice" addrspace(4)* %impl, %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* byval(%"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id") align 8 %agg.tmp, %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* byval(%"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range") align 8 %agg.tmp2, %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* byval(%"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range") align 8 %agg.tmp3)
  ret void
}

; Function Attrs: norecurse
define linkonce_odr dso_local spir_func void @_ZN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEC2Ev(%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*, align 8
  %agg.tmp = alloca %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id", align 8
  %agg.tmp2 = alloca %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range", align 8
  %agg.tmp3 = alloca %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range", align 8
  store %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this, %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)** %this.addr, align 8, !tbaa !8
  %this1 = load %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*, %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)** %this.addr, align 8
  %impl = getelementptr inbounds %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor", %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this1, i32 0, i32 0
  %0 = bitcast %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* %agg.tmp to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 8, i1 false)
  %1 = addrspacecast %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* %agg.tmp to %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id" addrspace(4)*
  call spir_func void @_ZN2cl4sycl2idILi1EEC2Ev(%"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id" addrspace(4)* %1)
  %2 = addrspacecast %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* %agg.tmp2 to %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)*
  call spir_func void @_ZN2cl4sycl6detail14InitializedValILi1ENS0_5rangeEE3getILi0EEENS3_ILi1EEEv(%"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)* sret align 8 %2)
  %3 = addrspacecast %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* %agg.tmp3 to %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)*
  call spir_func void @_ZN2cl4sycl6detail14InitializedValILi1ENS0_5rangeEE3getILi0EEENS3_ILi1EEEv(%"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)* sret align 8 %3)
  call spir_func void @_ZN2cl4sycl6detail18AccessorImplDeviceILi1EEC2ENS0_2idILi1EEENS0_5rangeILi1EEES7_(%"class._ZTSN2cl4sycl6detail18AccessorImplDeviceILi1EEE.cl::sycl::detail::AccessorImplDevice" addrspace(4)* %impl, %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* byval(%"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id") align 8 %agg.tmp, %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* byval(%"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range") align 8 %agg.tmp2, %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* byval(%"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range") align 8 %agg.tmp3)
  ret void
}

; Function Attrs: norecurse
define linkonce_odr dso_local spir_func void @_ZN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EE6__initEPU3AS1iNS0_5rangeILi1EEESA_NS0_2idILi1EEE(%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this, i32 addrspace(1)* %Ptr, %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* byval(%"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range") align 8 %AccessRange, %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* byval(%"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range") align 8 %MemRange, %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* byval(%"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id") align 8 %Offset) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*, align 8
  %Ptr.addr = alloca i32 addrspace(1)*, align 8
  %I = alloca i32, align 4
  store %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this, %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)** %this.addr, align 8, !tbaa !8
  store i32 addrspace(1)* %Ptr, i32 addrspace(1)** %Ptr.addr, align 8, !tbaa !8
  %this1 = load %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*, %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)** %this.addr, align 8
  %0 = load i32 addrspace(1)*, i32 addrspace(1)** %Ptr.addr, align 8, !tbaa !8
  %1 = getelementptr inbounds %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor", %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this1, i32 0, i32 1
  %MData = bitcast %union._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEUt_E.anon addrspace(4)* %1 to i32 addrspace(1)* addrspace(4)*
  store i32 addrspace(1)* %0, i32 addrspace(1)* addrspace(4)* %MData, align 8, !tbaa !12
  %2 = bitcast i32* %I to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #9
  store i32 0, i32* %I, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %I, align 4, !tbaa !13
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %4 = bitcast i32* %I to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #9
  br label %for.end

for.body:                                         ; preds = %for.cond
  %5 = bitcast %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* %Offset to %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array"*
  %6 = load i32, i32* %I, align 4, !tbaa !13
  %7 = addrspacecast %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array"* %5 to %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)*
  %call = call spir_func align 8 dereferenceable(8) i64 addrspace(4)* @_ZN2cl4sycl6detail5arrayILi1EEixEi(%"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)* %7, i32 %6)
  %8 = load i64, i64 addrspace(4)* %call, align 8, !tbaa !15
  %call2 = call spir_func align 8 dereferenceable(8) %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id" addrspace(4)* @_ZN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EE9getOffsetEv(%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this1)
  %9 = bitcast %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id" addrspace(4)* %call2 to %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)*
  %10 = load i32, i32* %I, align 4, !tbaa !13
  %call3 = call spir_func align 8 dereferenceable(8) i64 addrspace(4)* @_ZN2cl4sycl6detail5arrayILi1EEixEi(%"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)* %9, i32 %10)
  store i64 %8, i64 addrspace(4)* %call3, align 8, !tbaa !15
  %11 = bitcast %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* %AccessRange to %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array"*
  %12 = load i32, i32* %I, align 4, !tbaa !13
  %13 = addrspacecast %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array"* %11 to %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)*
  %call4 = call spir_func align 8 dereferenceable(8) i64 addrspace(4)* @_ZN2cl4sycl6detail5arrayILi1EEixEi(%"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)* %13, i32 %12)
  %14 = load i64, i64 addrspace(4)* %call4, align 8, !tbaa !15
  %call5 = call spir_func align 8 dereferenceable(8) %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)* @_ZN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EE14getAccessRangeEv(%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this1)
  %15 = bitcast %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)* %call5 to %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)*
  %16 = load i32, i32* %I, align 4, !tbaa !13
  %call6 = call spir_func align 8 dereferenceable(8) i64 addrspace(4)* @_ZN2cl4sycl6detail5arrayILi1EEixEi(%"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)* %15, i32 %16)
  store i64 %14, i64 addrspace(4)* %call6, align 8, !tbaa !15
  %17 = bitcast %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* %MemRange to %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array"*
  %18 = load i32, i32* %I, align 4, !tbaa !13
  %19 = addrspacecast %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array"* %17 to %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)*
  %call7 = call spir_func align 8 dereferenceable(8) i64 addrspace(4)* @_ZN2cl4sycl6detail5arrayILi1EEixEi(%"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)* %19, i32 %18)
  %20 = load i64, i64 addrspace(4)* %call7, align 8, !tbaa !15
  %call8 = call spir_func align 8 dereferenceable(8) %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)* @_ZN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EE14getMemoryRangeEv(%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this1)
  %21 = bitcast %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)* %call8 to %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)*
  %22 = load i32, i32* %I, align 4, !tbaa !13
  %call9 = call spir_func align 8 dereferenceable(8) i64 addrspace(4)* @_ZN2cl4sycl6detail5arrayILi1EEixEi(%"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)* %21, i32 %22)
  store i64 %20, i64 addrspace(4)* %call9, align 8, !tbaa !15
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %I, align 4, !tbaa !13
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %I, align 4, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  %24 = bitcast %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* %Offset to %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array"*
  %25 = addrspacecast %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array"* %24 to %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)*
  %call10 = call spir_func align 8 dereferenceable(8) i64 addrspace(4)* @_ZN2cl4sycl6detail5arrayILi1EEixEi(%"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)* %25, i32 0)
  %26 = load i64, i64 addrspace(4)* %call10, align 8, !tbaa !15
  %27 = getelementptr inbounds %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor", %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this1, i32 0, i32 1
  %MData11 = bitcast %union._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEUt_E.anon addrspace(4)* %27 to i32 addrspace(1)* addrspace(4)*
  %28 = load i32 addrspace(1)*, i32 addrspace(1)* addrspace(4)* %MData11, align 8, !tbaa !12
  %add.ptr = getelementptr inbounds i32, i32 addrspace(1)* %28, i64 %26
  store i32 addrspace(1)* %add.ptr, i32 addrspace(1)* addrspace(4)* %MData11, align 8, !tbaa !12
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: norecurse
define linkonce_odr dso_local spir_func void @_ZN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EE6__initEPU3AS1iNS0_5rangeILi1EEESA_NS0_2idILi1EEE(%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this, i32 addrspace(1)* %Ptr, %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* byval(%"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range") align 8 %AccessRange, %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* byval(%"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range") align 8 %MemRange, %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* byval(%"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id") align 8 %Offset) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*, align 8
  %Ptr.addr = alloca i32 addrspace(1)*, align 8
  %I = alloca i32, align 4
  store %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this, %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)** %this.addr, align 8, !tbaa !8
  store i32 addrspace(1)* %Ptr, i32 addrspace(1)** %Ptr.addr, align 8, !tbaa !8
  %this1 = load %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*, %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)** %this.addr, align 8
  %0 = load i32 addrspace(1)*, i32 addrspace(1)** %Ptr.addr, align 8, !tbaa !8
  %1 = getelementptr inbounds %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor", %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this1, i32 0, i32 1
  %MData = bitcast %union._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEUt_E.anon addrspace(4)* %1 to i32 addrspace(1)* addrspace(4)*
  store i32 addrspace(1)* %0, i32 addrspace(1)* addrspace(4)* %MData, align 8, !tbaa !12
  %2 = bitcast i32* %I to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #9
  store i32 0, i32* %I, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %I, align 4, !tbaa !13
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %4 = bitcast i32* %I to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #9
  br label %for.end

for.body:                                         ; preds = %for.cond
  %5 = bitcast %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* %Offset to %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array"*
  %6 = load i32, i32* %I, align 4, !tbaa !13
  %7 = addrspacecast %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array"* %5 to %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)*
  %call = call spir_func align 8 dereferenceable(8) i64 addrspace(4)* @_ZN2cl4sycl6detail5arrayILi1EEixEi(%"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)* %7, i32 %6)
  %8 = load i64, i64 addrspace(4)* %call, align 8, !tbaa !15
  %call2 = call spir_func align 8 dereferenceable(8) %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id" addrspace(4)* @_ZN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EE9getOffsetEv(%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this1)
  %9 = bitcast %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id" addrspace(4)* %call2 to %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)*
  %10 = load i32, i32* %I, align 4, !tbaa !13
  %call3 = call spir_func align 8 dereferenceable(8) i64 addrspace(4)* @_ZN2cl4sycl6detail5arrayILi1EEixEi(%"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)* %9, i32 %10)
  store i64 %8, i64 addrspace(4)* %call3, align 8, !tbaa !15
  %11 = bitcast %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* %AccessRange to %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array"*
  %12 = load i32, i32* %I, align 4, !tbaa !13
  %13 = addrspacecast %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array"* %11 to %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)*
  %call4 = call spir_func align 8 dereferenceable(8) i64 addrspace(4)* @_ZN2cl4sycl6detail5arrayILi1EEixEi(%"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)* %13, i32 %12)
  %14 = load i64, i64 addrspace(4)* %call4, align 8, !tbaa !15
  %call5 = call spir_func align 8 dereferenceable(8) %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)* @_ZN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EE14getAccessRangeEv(%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this1)
  %15 = bitcast %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)* %call5 to %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)*
  %16 = load i32, i32* %I, align 4, !tbaa !13
  %call6 = call spir_func align 8 dereferenceable(8) i64 addrspace(4)* @_ZN2cl4sycl6detail5arrayILi1EEixEi(%"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)* %15, i32 %16)
  store i64 %14, i64 addrspace(4)* %call6, align 8, !tbaa !15
  %17 = bitcast %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* %MemRange to %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array"*
  %18 = load i32, i32* %I, align 4, !tbaa !13
  %19 = addrspacecast %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array"* %17 to %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)*
  %call7 = call spir_func align 8 dereferenceable(8) i64 addrspace(4)* @_ZN2cl4sycl6detail5arrayILi1EEixEi(%"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)* %19, i32 %18)
  %20 = load i64, i64 addrspace(4)* %call7, align 8, !tbaa !15
  %call8 = call spir_func align 8 dereferenceable(8) %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)* @_ZN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EE14getMemoryRangeEv(%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this1)
  %21 = bitcast %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)* %call8 to %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)*
  %22 = load i32, i32* %I, align 4, !tbaa !13
  %call9 = call spir_func align 8 dereferenceable(8) i64 addrspace(4)* @_ZN2cl4sycl6detail5arrayILi1EEixEi(%"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)* %21, i32 %22)
  store i64 %20, i64 addrspace(4)* %call9, align 8, !tbaa !15
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %I, align 4, !tbaa !13
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %I, align 4, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  %24 = bitcast %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* %Offset to %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array"*
  %25 = addrspacecast %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array"* %24 to %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)*
  %call10 = call spir_func align 8 dereferenceable(8) i64 addrspace(4)* @_ZN2cl4sycl6detail5arrayILi1EEixEi(%"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)* %25, i32 0)
  %26 = load i64, i64 addrspace(4)* %call10, align 8, !tbaa !15
  %27 = getelementptr inbounds %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor", %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this1, i32 0, i32 1
  %MData11 = bitcast %union._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEUt_E.anon addrspace(4)* %27 to i32 addrspace(1)* addrspace(4)*
  %28 = load i32 addrspace(1)*, i32 addrspace(1)* addrspace(4)* %MData11, align 8, !tbaa !12
  %add.ptr = getelementptr inbounds i32, i32 addrspace(1)* %28, i64 %26
  store i32 addrspace(1)* %add.ptr, i32 addrspace(1)* addrspace(4)* %MData11, align 8, !tbaa !12
  ret void
}

; Function Attrs: inlinehint norecurse
define internal spir_func void @"_ZZZ7ComputeRN2cl4sycl5queueEPiS3_ENK3$_0clERNS0_7handlerEENKUlNS0_7nd_itemILi2EEEE_clES8_"(%"class._ZTSZZ7ComputeRN2cl4sycl5queueEPiS3_ENK3$_0clERNS0_7handlerEEUlNS0_7nd_itemILi2EEEE_.anon" addrspace(4)* %this, %"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item"* byval(%"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item") align 8 %it) #3 align 2 {
entry:
  %this.addr = alloca %"class._ZTSZZ7ComputeRN2cl4sycl5queueEPiS3_ENK3$_0clERNS0_7handlerEEUlNS0_7nd_itemILi2EEEE_.anon" addrspace(4)*, align 8
  %agg.tmp = alloca %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id", align 8
  %agg.tmp4 = alloca %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id", align 8
  store %"class._ZTSZZ7ComputeRN2cl4sycl5queueEPiS3_ENK3$_0clERNS0_7handlerEEUlNS0_7nd_itemILi2EEEE_.anon" addrspace(4)* %this, %"class._ZTSZZ7ComputeRN2cl4sycl5queueEPiS3_ENK3$_0clERNS0_7handlerEEUlNS0_7nd_itemILi2EEEE_.anon" addrspace(4)** %this.addr, align 8, !tbaa !8
  %this1 = load %"class._ZTSZZ7ComputeRN2cl4sycl5queueEPiS3_ENK3$_0clERNS0_7handlerEEUlNS0_7nd_itemILi2EEEE_.anon" addrspace(4)*, %"class._ZTSZZ7ComputeRN2cl4sycl5queueEPiS3_ENK3$_0clERNS0_7handlerEEUlNS0_7nd_itemILi2EEEE_.anon" addrspace(4)** %this.addr, align 8
  %0 = addrspacecast %"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item"* %it to %"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item" addrspace(4)*
  %call = call spir_func i64 @_ZNK2cl4sycl7nd_itemILi2EE20get_global_linear_idEv(%"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item" addrspace(4)* %0)
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds %"class._ZTSZZ7ComputeRN2cl4sycl5queueEPiS3_ENK3$_0clERNS0_7handlerEEUlNS0_7nd_itemILi2EEEE_.anon", %"class._ZTSZZ7ComputeRN2cl4sycl5queueEPiS3_ENK3$_0clERNS0_7handlerEEUlNS0_7nd_itemILi2EEEE_.anon" addrspace(4)* %this1, i32 0, i32 1
  %2 = addrspacecast %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* %agg.tmp to %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id" addrspace(4)*
  call spir_func void @_ZN2cl4sycl2idILi1EEC2ILi1EEENSt9enable_ifIXeqT_Li1EEmE4typeE(%"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id" addrspace(4)* %2, i64 0)
  %call2 = call spir_func i32 @_ZNK2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEixILi1EvEEiNS0_2idILi1EEE(%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %1, %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* byval(%"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id") align 8 %agg.tmp)
  %call3 = call spir_func i32 @_Z10BitReverseILi4EEii(i32 %call2)
  %3 = getelementptr inbounds %"class._ZTSZZ7ComputeRN2cl4sycl5queueEPiS3_ENK3$_0clERNS0_7handlerEEUlNS0_7nd_itemILi2EEEE_.anon", %"class._ZTSZZ7ComputeRN2cl4sycl5queueEPiS3_ENK3$_0clERNS0_7handlerEEUlNS0_7nd_itemILi2EEEE_.anon" addrspace(4)* %this1, i32 0, i32 0
  %4 = addrspacecast %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* %agg.tmp4 to %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id" addrspace(4)*
  call spir_func void @_ZN2cl4sycl2idILi1EEC2ILi1EEENSt9enable_ifIXeqT_Li1EEmE4typeE(%"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id" addrspace(4)* %4, i64 0)
  %call5 = call spir_func align 4 dereferenceable(4) i32 addrspace(4)* @_ZNK2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEixILi1EvEERiNS0_2idILi1EEE(%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %3, %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* byval(%"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id") align 8 %agg.tmp4)
  store i32 %call3, i32 addrspace(4)* %call5, align 4, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: norecurse
define linkonce_odr dso_local spir_func void @_ZN2cl4sycl6detail7Builder10getElementILi2EEEKNS0_7nd_itemIXT_EEEPS5_(%"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item" addrspace(4)* noalias sret align 8 %agg.result, %"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item" addrspace(4)* %0) #2 comdat align 2 {
entry:
  %.addr = alloca %"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item" addrspace(4)*, align 8
  %GlobalSize = alloca %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range", align 8
  %LocalSize = alloca %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range", align 8
  %GroupRange = alloca %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range", align 8
  %GroupId = alloca %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id", align 8
  %GlobalId = alloca %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id", align 8
  %LocalId = alloca %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id", align 8
  %GlobalOffset = alloca %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id", align 8
  %Group = alloca %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group", align 8
  %GlobalItem = alloca %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item", align 8
  %LocalItem = alloca %"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item", align 8
  store %"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item" addrspace(4)* %0, %"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item" addrspace(4)** %.addr, align 8, !tbaa !8
  %1 = bitcast %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range"* %GlobalSize to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #9
  %2 = addrspacecast %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range"* %GlobalSize to %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)*
  call spir_func void @_ZN7__spirvL14initGlobalSizeILi2EN2cl4sycl5rangeILi2EEEEET0_v(%"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* sret align 8 %2)
  %3 = bitcast %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range"* %LocalSize to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %3) #9
  %4 = addrspacecast %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range"* %LocalSize to %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)*
  call spir_func void @_ZN7__spirvL17initWorkgroupSizeILi2EN2cl4sycl5rangeILi2EEEEET0_v(%"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* sret align 8 %4)
  %5 = bitcast %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range"* %GroupRange to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %5) #9
  %6 = addrspacecast %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range"* %GroupRange to %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)*
  call spir_func void @_ZN7__spirvL17initNumWorkgroupsILi2EN2cl4sycl5rangeILi2EEEEET0_v(%"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* sret align 8 %6)
  %7 = bitcast %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id"* %GroupId to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %7) #9
  %8 = addrspacecast %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id"* %GroupId to %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)*
  call spir_func void @_ZN7__spirvL15initWorkgroupIdILi2EN2cl4sycl2idILi2EEEEET0_v(%"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* sret align 8 %8)
  %9 = bitcast %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id"* %GlobalId to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %9) #9
  %10 = addrspacecast %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id"* %GlobalId to %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)*
  call spir_func void @_ZN7__spirvL22initGlobalInvocationIdILi2EN2cl4sycl2idILi2EEEEET0_v(%"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* sret align 8 %10)
  %11 = bitcast %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id"* %LocalId to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %11) #9
  %12 = addrspacecast %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id"* %LocalId to %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)*
  call spir_func void @_ZN7__spirvL21initLocalInvocationIdILi2EN2cl4sycl2idILi2EEEEET0_v(%"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* sret align 8 %12)
  %13 = bitcast %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id"* %GlobalOffset to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %13) #9
  %14 = addrspacecast %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id"* %GlobalOffset to %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)*
  call spir_func void @_ZN7__spirvL16initGlobalOffsetILi2EN2cl4sycl2idILi2EEEEET0_v(%"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* sret align 8 %14)
  %15 = bitcast %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group"* %Group to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %15) #9
  %16 = addrspacecast %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range"* %GlobalSize to %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)*
  %17 = addrspacecast %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range"* %LocalSize to %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)*
  %18 = addrspacecast %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range"* %GroupRange to %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)*
  %19 = addrspacecast %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id"* %GroupId to %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)*
  %20 = addrspacecast %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group"* %Group to %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" addrspace(4)*
  call spir_func void @_ZN2cl4sycl6detail7Builder11createGroupILi2EEENS0_5groupIXT_EEERKNS0_5rangeIXT_EEES9_S9_RKNS0_2idIXT_EEE(%"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" addrspace(4)* sret align 8 %20, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* align 8 dereferenceable(16) %16, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* align 8 dereferenceable(16) %17, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* align 8 dereferenceable(16) %18, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* align 8 dereferenceable(16) %19)
  %21 = bitcast %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item"* %GlobalItem to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* %21) #9
  %22 = addrspacecast %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range"* %GlobalSize to %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)*
  %23 = addrspacecast %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id"* %GlobalId to %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)*
  %24 = addrspacecast %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id"* %GlobalOffset to %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)*
  %25 = addrspacecast %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item"* %GlobalItem to %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)*
  call spir_func void @_ZN2cl4sycl6detail7Builder10createItemILi2ELb1EEENSt9enable_ifIXT0_ENS0_4itemIXT_EXT0_EEEE4typeERKNS0_5rangeIXT_EEERKNS0_2idIXT_EEESG_(%"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)* sret align 8 %25, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* align 8 dereferenceable(16) %22, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* align 8 dereferenceable(16) %23, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* align 8 dereferenceable(16) %24)
  %26 = bitcast %"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item"* %LocalItem to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %26) #9
  %27 = addrspacecast %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range"* %LocalSize to %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)*
  %28 = addrspacecast %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id"* %LocalId to %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)*
  %29 = addrspacecast %"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item"* %LocalItem to %"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item" addrspace(4)*
  call spir_func void @_ZN2cl4sycl6detail7Builder10createItemILi2ELb0EEENSt9enable_ifIXntT0_ENS0_4itemIXT_EXT0_EEEE4typeERKNS0_5rangeIXT_EEERKNS0_2idIXT_EEE(%"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item" addrspace(4)* sret align 8 %29, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* align 8 dereferenceable(16) %27, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* align 8 dereferenceable(16) %28)
  %30 = addrspacecast %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item"* %GlobalItem to %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)*
  %31 = addrspacecast %"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item"* %LocalItem to %"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item" addrspace(4)*
  %32 = addrspacecast %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group"* %Group to %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" addrspace(4)*
  call spir_func void @_ZN2cl4sycl6detail7Builder12createNDItemILi2EEENS0_7nd_itemIXT_EEERKNS0_4itemIXT_ELb1EEERKNS6_IXT_ELb0EEERKNS0_5groupIXT_EEE(%"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item" addrspace(4)* sret align 8 %agg.result, %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)* align 8 dereferenceable(48) %30, %"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item" addrspace(4)* align 8 dereferenceable(32) %31, %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" addrspace(4)* align 8 dereferenceable(64) %32)
  %33 = bitcast %"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item"* %LocalItem to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %33) #9
  %34 = bitcast %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item"* %GlobalItem to i8*
  call void @llvm.lifetime.end.p0i8(i64 48, i8* %34) #9
  %35 = bitcast %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group"* %Group to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %35) #9
  %36 = bitcast %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id"* %GlobalOffset to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %36) #9
  %37 = bitcast %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id"* %LocalId to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %37) #9
  %38 = bitcast %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id"* %GlobalId to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %38) #9
  %39 = bitcast %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id"* %GroupId to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %39) #9
  %40 = bitcast %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range"* %GroupRange to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %40) #9
  %41 = bitcast %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range"* %LocalSize to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %41) #9
  %42 = bitcast %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range"* %GlobalSize to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %42) #9
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: norecurse
define linkonce_odr dso_local spir_func void @_ZN2cl4sycl2idILi1EEC2Ev(%"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id" addrspace(4)* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id" addrspace(4)*, align 8
  store %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id" addrspace(4)* %this, %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id" addrspace(4)** %this.addr, align 8, !tbaa !8
  %this1 = load %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id" addrspace(4)*, %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id" addrspace(4)** %this.addr, align 8
  %0 = bitcast %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id" addrspace(4)* %this1 to %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)*
  call spir_func void @_ZN2cl4sycl6detail5arrayILi1EEC2ILi1EEENSt9enable_ifIXeqT_Li1EEmE4typeE(%"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)* %0, i64 0)
  ret void
}

; Function Attrs: norecurse
define linkonce_odr dso_local spir_func void @_ZN2cl4sycl6detail14InitializedValILi1ENS0_5rangeEE3getILi0EEENS3_ILi1EEEv(%"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)* noalias sret align 8 %agg.result) #2 comdat align 2 {
entry:
  call spir_func void @_ZN2cl4sycl5rangeILi1EEC2ILi1EEENSt9enable_ifIXeqT_Li1EEmE4typeE(%"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)* %agg.result, i64 0)
  ret void
}

; Function Attrs: norecurse nounwind
define linkonce_odr dso_local spir_func void @_ZN2cl4sycl6detail18AccessorImplDeviceILi1EEC2ENS0_2idILi1EEENS0_5rangeILi1EEES7_(%"class._ZTSN2cl4sycl6detail18AccessorImplDeviceILi1EEE.cl::sycl::detail::AccessorImplDevice" addrspace(4)* %this, %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* byval(%"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id") align 8 %Offset, %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* byval(%"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range") align 8 %AccessRange, %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* byval(%"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range") align 8 %MemoryRange) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl6detail18AccessorImplDeviceILi1EEE.cl::sycl::detail::AccessorImplDevice" addrspace(4)*, align 8
  store %"class._ZTSN2cl4sycl6detail18AccessorImplDeviceILi1EEE.cl::sycl::detail::AccessorImplDevice" addrspace(4)* %this, %"class._ZTSN2cl4sycl6detail18AccessorImplDeviceILi1EEE.cl::sycl::detail::AccessorImplDevice" addrspace(4)** %this.addr, align 8, !tbaa !8
  %this1 = load %"class._ZTSN2cl4sycl6detail18AccessorImplDeviceILi1EEE.cl::sycl::detail::AccessorImplDevice" addrspace(4)*, %"class._ZTSN2cl4sycl6detail18AccessorImplDeviceILi1EEE.cl::sycl::detail::AccessorImplDevice" addrspace(4)** %this.addr, align 8
  %Offset2 = getelementptr inbounds %"class._ZTSN2cl4sycl6detail18AccessorImplDeviceILi1EEE.cl::sycl::detail::AccessorImplDevice", %"class._ZTSN2cl4sycl6detail18AccessorImplDeviceILi1EEE.cl::sycl::detail::AccessorImplDevice" addrspace(4)* %this1, i32 0, i32 0
  %0 = bitcast %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id" addrspace(4)* %Offset2 to i8 addrspace(4)*
  %1 = bitcast %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* %Offset to i8*
  call void @llvm.memcpy.p4i8.p0i8.i64(i8 addrspace(4)* align 8 %0, i8* align 8 %1, i64 8, i1 false)
  %AccessRange3 = getelementptr inbounds %"class._ZTSN2cl4sycl6detail18AccessorImplDeviceILi1EEE.cl::sycl::detail::AccessorImplDevice", %"class._ZTSN2cl4sycl6detail18AccessorImplDeviceILi1EEE.cl::sycl::detail::AccessorImplDevice" addrspace(4)* %this1, i32 0, i32 1
  %2 = bitcast %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)* %AccessRange3 to i8 addrspace(4)*
  %3 = bitcast %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* %AccessRange to i8*
  call void @llvm.memcpy.p4i8.p0i8.i64(i8 addrspace(4)* align 8 %2, i8* align 8 %3, i64 8, i1 false)
  %MemRange = getelementptr inbounds %"class._ZTSN2cl4sycl6detail18AccessorImplDeviceILi1EEE.cl::sycl::detail::AccessorImplDevice", %"class._ZTSN2cl4sycl6detail18AccessorImplDeviceILi1EEE.cl::sycl::detail::AccessorImplDevice" addrspace(4)* %this1, i32 0, i32 2
  %4 = bitcast %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)* %MemRange to i8 addrspace(4)*
  %5 = bitcast %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range"* %MemoryRange to i8*
  call void @llvm.memcpy.p4i8.p0i8.i64(i8 addrspace(4)* align 8 %4, i8* align 8 %5, i64 8, i1 false)
  ret void
}

; Function Attrs: norecurse nounwind
define linkonce_odr dso_local spir_func void @_ZN2cl4sycl6detail5arrayILi1EEC2ILi1EEENSt9enable_ifIXeqT_Li1EEmE4typeE(%"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)* %this, i64 %dim0) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)*, align 8
  %dim0.addr = alloca i64, align 8
  store %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)* %this, %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)** %this.addr, align 8, !tbaa !8
  store i64 %dim0, i64* %dim0.addr, align 8, !tbaa !15
  %this1 = load %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)*, %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)** %this.addr, align 8
  %common_array = getelementptr inbounds %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array", %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)* %this1, i32 0, i32 0
  %arrayinit.begin = getelementptr inbounds [1 x i64], [1 x i64] addrspace(4)* %common_array, i64 0, i64 0
  %0 = load i64, i64* %dim0.addr, align 8, !tbaa !15
  store i64 %0, i64 addrspace(4)* %arrayinit.begin, align 8, !tbaa !15
  ret void
}

; Function Attrs: norecurse nounwind
define linkonce_odr dso_local spir_func void @_ZN2cl4sycl5rangeILi1EEC2ILi1EEENSt9enable_ifIXeqT_Li1EEmE4typeE(%"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)* %this, i64 %dim0) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)*, align 8
  %dim0.addr = alloca i64, align 8
  store %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)* %this, %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)** %this.addr, align 8, !tbaa !8
  store i64 %dim0, i64* %dim0.addr, align 8, !tbaa !15
  %this1 = load %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)*, %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)** %this.addr, align 8
  %0 = bitcast %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)* %this1 to %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)*
  %1 = load i64, i64* %dim0.addr, align 8, !tbaa !15
  call spir_func void @_ZN2cl4sycl6detail5arrayILi1EEC2ILi1EEENSt9enable_ifIXeqT_Li1EEmE4typeE(%"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)* %0, i64 %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p4i8.p0i8.i64(i8 addrspace(4)* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: norecurse
define linkonce_odr dso_local spir_func align 8 dereferenceable(8) i64 addrspace(4)* @_ZN2cl4sycl6detail5arrayILi1EEixEi(%"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)* %this, i32 %dimension) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)*, align 8
  %dimension.addr = alloca i32, align 4
  store %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)* %this, %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)** %this.addr, align 8, !tbaa !8
  store i32 %dimension, i32* %dimension.addr, align 4, !tbaa !13
  %this1 = load %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)*, %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)** %this.addr, align 8
  %0 = load i32, i32* %dimension.addr, align 4, !tbaa !13
  call spir_func void @_ZNK2cl4sycl6detail5arrayILi1EE15check_dimensionEi(%"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)* %this1, i32 %0)
  %common_array = getelementptr inbounds %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array", %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)* %this1, i32 0, i32 0
  %1 = load i32, i32* %dimension.addr, align 4, !tbaa !13
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64] addrspace(4)* %common_array, i64 0, i64 %idxprom
  ret i64 addrspace(4)* %arrayidx
}

; Function Attrs: norecurse nounwind
define linkonce_odr dso_local spir_func align 8 dereferenceable(8) %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id" addrspace(4)* @_ZN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EE9getOffsetEv(%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*, align 8
  store %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this, %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)** %this.addr, align 8, !tbaa !8
  %this1 = load %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*, %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)** %this.addr, align 8
  %impl = getelementptr inbounds %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor", %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this1, i32 0, i32 0
  %Offset = getelementptr inbounds %"class._ZTSN2cl4sycl6detail18AccessorImplDeviceILi1EEE.cl::sycl::detail::AccessorImplDevice", %"class._ZTSN2cl4sycl6detail18AccessorImplDeviceILi1EEE.cl::sycl::detail::AccessorImplDevice" addrspace(4)* %impl, i32 0, i32 0
  ret %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id" addrspace(4)* %Offset
}

; Function Attrs: norecurse nounwind
define linkonce_odr dso_local spir_func align 8 dereferenceable(8) %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)* @_ZN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EE14getAccessRangeEv(%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*, align 8
  store %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this, %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)** %this.addr, align 8, !tbaa !8
  %this1 = load %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*, %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)** %this.addr, align 8
  %impl = getelementptr inbounds %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor", %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this1, i32 0, i32 0
  %AccessRange = getelementptr inbounds %"class._ZTSN2cl4sycl6detail18AccessorImplDeviceILi1EEE.cl::sycl::detail::AccessorImplDevice", %"class._ZTSN2cl4sycl6detail18AccessorImplDeviceILi1EEE.cl::sycl::detail::AccessorImplDevice" addrspace(4)* %impl, i32 0, i32 1
  ret %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)* %AccessRange
}

; Function Attrs: norecurse nounwind
define linkonce_odr dso_local spir_func align 8 dereferenceable(8) %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)* @_ZN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EE14getMemoryRangeEv(%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*, align 8
  store %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this, %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)** %this.addr, align 8, !tbaa !8
  %this1 = load %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*, %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)** %this.addr, align 8
  %impl = getelementptr inbounds %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor", %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this1, i32 0, i32 0
  %MemRange = getelementptr inbounds %"class._ZTSN2cl4sycl6detail18AccessorImplDeviceILi1EEE.cl::sycl::detail::AccessorImplDevice", %"class._ZTSN2cl4sycl6detail18AccessorImplDeviceILi1EEE.cl::sycl::detail::AccessorImplDevice" addrspace(4)* %impl, i32 0, i32 2
  ret %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)* %MemRange
}

; Function Attrs: alwaysinline norecurse nounwind
define linkonce_odr dso_local spir_func void @_ZNK2cl4sycl6detail5arrayILi1EE15check_dimensionEi(%"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)* %this, i32 %dimension) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)*, align 8
  %dimension.addr = alloca i32, align 4
  store %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)* %this, %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)** %this.addr, align 8, !tbaa !8
  store i32 %dimension, i32* %dimension.addr, align 4, !tbaa !13
  ret void
}

; Function Attrs: norecurse nounwind
define linkonce_odr dso_local spir_func align 8 dereferenceable(8) %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id" addrspace(4)* @_ZN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EE9getOffsetEv(%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*, align 8
  store %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this, %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)** %this.addr, align 8, !tbaa !8
  %this1 = load %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*, %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)** %this.addr, align 8
  %impl = getelementptr inbounds %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor", %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this1, i32 0, i32 0
  %Offset = getelementptr inbounds %"class._ZTSN2cl4sycl6detail18AccessorImplDeviceILi1EEE.cl::sycl::detail::AccessorImplDevice", %"class._ZTSN2cl4sycl6detail18AccessorImplDeviceILi1EEE.cl::sycl::detail::AccessorImplDevice" addrspace(4)* %impl, i32 0, i32 0
  ret %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id" addrspace(4)* %Offset
}

; Function Attrs: norecurse nounwind
define linkonce_odr dso_local spir_func align 8 dereferenceable(8) %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)* @_ZN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EE14getAccessRangeEv(%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*, align 8
  store %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this, %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)** %this.addr, align 8, !tbaa !8
  %this1 = load %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*, %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)** %this.addr, align 8
  %impl = getelementptr inbounds %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor", %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this1, i32 0, i32 0
  %AccessRange = getelementptr inbounds %"class._ZTSN2cl4sycl6detail18AccessorImplDeviceILi1EEE.cl::sycl::detail::AccessorImplDevice", %"class._ZTSN2cl4sycl6detail18AccessorImplDeviceILi1EEE.cl::sycl::detail::AccessorImplDevice" addrspace(4)* %impl, i32 0, i32 1
  ret %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)* %AccessRange
}

; Function Attrs: norecurse nounwind
define linkonce_odr dso_local spir_func align 8 dereferenceable(8) %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)* @_ZN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EE14getMemoryRangeEv(%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*, align 8
  store %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this, %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)** %this.addr, align 8, !tbaa !8
  %this1 = load %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*, %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)** %this.addr, align 8
  %impl = getelementptr inbounds %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor", %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this1, i32 0, i32 0
  %MemRange = getelementptr inbounds %"class._ZTSN2cl4sycl6detail18AccessorImplDeviceILi1EEE.cl::sycl::detail::AccessorImplDevice", %"class._ZTSN2cl4sycl6detail18AccessorImplDeviceILi1EEE.cl::sycl::detail::AccessorImplDevice" addrspace(4)* %impl, i32 0, i32 2
  ret %"class._ZTSN2cl4sycl5rangeILi1EEE.cl::sycl::range" addrspace(4)* %MemRange
}

; Function Attrs: alwaysinline norecurse
define linkonce_odr dso_local spir_func i64 @_ZNK2cl4sycl7nd_itemILi2EE20get_global_linear_idEv(%"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item" addrspace(4)* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item" addrspace(4)*, align 8
  %Id = alloca i64, align 8
  store %"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item" addrspace(4)* %this, %"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item" addrspace(4)** %this.addr, align 8, !tbaa !8
  %this1 = load %"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item" addrspace(4)*, %"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item" addrspace(4)** %this.addr, align 8
  %0 = bitcast i64* %Id to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #9
  %globalItem = getelementptr inbounds %"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item", %"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item" addrspace(4)* %this1, i32 0, i32 0
  %call = call spir_func i64 @_ZNK2cl4sycl4itemILi2ELb1EE13get_linear_idEv(%"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)* %globalItem)
  store i64 %call, i64* %Id, align 8, !tbaa !15
  %1 = load i64, i64* %Id, align 8, !tbaa !15
  %2 = bitcast i64* %Id to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %2) #9
  ret i64 %1
}

; Function Attrs: inlinehint norecurse nounwind
define linkonce_odr dso_local spir_func i32 @_Z10BitReverseILi4EEii(i32 %value) #8 comdat {
entry:
  %value.addr = alloca i32, align 4
  %reversed = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %value, i32* %value.addr, align 4, !tbaa !13
  %0 = bitcast i32* %reversed to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #9
  store i32 0, i32* %reversed, align 4, !tbaa !13
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #9
  store i32 0, i32* %j, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %j, align 4, !tbaa !13
  %cmp = icmp slt i32 %2, 4
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %3 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #9
  br label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %reversed, align 4, !tbaa !13
  %shl = shl i32 %4, 1
  store i32 %shl, i32* %reversed, align 4, !tbaa !13
  %5 = load i32, i32* %value.addr, align 4, !tbaa !13
  %and = and i32 %5, 1
  %6 = load i32, i32* %reversed, align 4, !tbaa !13
  %add = add nsw i32 %6, %and
  store i32 %add, i32* %reversed, align 4, !tbaa !13
  %7 = load i32, i32* %value.addr, align 4, !tbaa !13
  %shr = ashr i32 %7, 1
  store i32 %shr, i32* %value.addr, align 4, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %j, align 4, !tbaa !13
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %j, align 4, !tbaa !13
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond.cleanup
  %9 = load i32, i32* %reversed, align 4, !tbaa !13
  %10 = bitcast i32* %reversed to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #9
  ret i32 %9
}

; Function Attrs: norecurse
define linkonce_odr dso_local spir_func i32 @_ZNK2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEixILi1EvEEiNS0_2idILi1EEE(%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this, %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* byval(%"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id") align 8 %Index) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*, align 8
  %LinearIndex = alloca i64, align 8
  %agg.tmp = alloca %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id", align 8
  store %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this, %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)** %this.addr, align 8, !tbaa !8
  %this1 = load %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*, %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)** %this.addr, align 8
  %0 = bitcast i64* %LinearIndex to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #9
  %1 = bitcast %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* %agg.tmp to i8*
  %2 = bitcast %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* %Index to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  %call = call spir_func i64 @_ZNK2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EE14getLinearIndexILi1EEEmNS0_2idIXT_EEE(%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this1, %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* byval(%"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id") align 8 %agg.tmp)
  store i64 %call, i64* %LinearIndex, align 8, !tbaa !15
  %call2 = call spir_func i32 addrspace(1)* @_ZNK2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EE15getQualifiedPtrEv(%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this1)
  %3 = load i64, i64* %LinearIndex, align 8, !tbaa !15
  %ptridx = getelementptr inbounds i32, i32 addrspace(1)* %call2, i64 %3
  %4 = load i32, i32 addrspace(1)* %ptridx, align 4, !tbaa !13
  %5 = bitcast i64* %LinearIndex to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #9
  ret i32 %4
}

; Function Attrs: norecurse nounwind
define linkonce_odr dso_local spir_func void @_ZN2cl4sycl2idILi1EEC2ILi1EEENSt9enable_ifIXeqT_Li1EEmE4typeE(%"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id" addrspace(4)* %this, i64 %dim0) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id" addrspace(4)*, align 8
  %dim0.addr = alloca i64, align 8
  store %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id" addrspace(4)* %this, %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id" addrspace(4)** %this.addr, align 8, !tbaa !8
  store i64 %dim0, i64* %dim0.addr, align 8, !tbaa !15
  %this1 = load %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id" addrspace(4)*, %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id" addrspace(4)** %this.addr, align 8
  %0 = bitcast %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id" addrspace(4)* %this1 to %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)*
  %1 = load i64, i64* %dim0.addr, align 8, !tbaa !15
  call spir_func void @_ZN2cl4sycl6detail5arrayILi1EEC2ILi1EEENSt9enable_ifIXeqT_Li1EEmE4typeE(%"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)* %0, i64 %1)
  ret void
}

; Function Attrs: norecurse
define linkonce_odr dso_local spir_func align 4 dereferenceable(4) i32 addrspace(4)* @_ZNK2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEixILi1EvEERiNS0_2idILi1EEE(%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this, %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* byval(%"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id") align 8 %Index) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*, align 8
  %LinearIndex = alloca i64, align 8
  %agg.tmp = alloca %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id", align 8
  store %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this, %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)** %this.addr, align 8, !tbaa !8
  %this1 = load %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*, %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)** %this.addr, align 8
  %0 = bitcast i64* %LinearIndex to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #9
  %1 = bitcast %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* %agg.tmp to i8*
  %2 = bitcast %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* %Index to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  %call = call spir_func i64 @_ZNK2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EE14getLinearIndexILi1EEEmNS0_2idIXT_EEE(%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this1, %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* byval(%"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id") align 8 %agg.tmp)
  store i64 %call, i64* %LinearIndex, align 8, !tbaa !15
  %call2 = call spir_func i32 addrspace(1)* @_ZNK2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EE15getQualifiedPtrEv(%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this1)
  %3 = load i64, i64* %LinearIndex, align 8, !tbaa !15
  %ptridx = getelementptr inbounds i32, i32 addrspace(1)* %call2, i64 %3
  %ptridx.ascast = addrspacecast i32 addrspace(1)* %ptridx to i32 addrspace(4)*
  %4 = bitcast i64* %LinearIndex to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #9
  ret i32 addrspace(4)* %ptridx.ascast
}

; Function Attrs: alwaysinline norecurse
define linkonce_odr dso_local spir_func i64 @_ZNK2cl4sycl4itemILi2ELb1EE13get_linear_idEv(%"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)*, align 8
  %Id = alloca i64, align 8
  store %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)* %this, %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)** %this.addr, align 8, !tbaa !8
  %this1 = load %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)*, %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)** %this.addr, align 8
  %0 = bitcast i64* %Id to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #9
  %MImpl = getelementptr inbounds %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item", %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)* %this1, i32 0, i32 0
  %call = call spir_func i64 @_ZNK2cl4sycl6detail8ItemBaseILi2ELb1EE13get_linear_idEv(%"struct._ZTSN2cl4sycl6detail8ItemBaseILi2ELb1EEE.cl::sycl::detail::ItemBase" addrspace(4)* %MImpl)
  store i64 %call, i64* %Id, align 8, !tbaa !15
  %1 = load i64, i64* %Id, align 8, !tbaa !15
  %2 = bitcast i64* %Id to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %2) #9
  ret i64 %1
}

; Function Attrs: norecurse
define linkonce_odr dso_local spir_func i64 @_ZNK2cl4sycl6detail8ItemBaseILi2ELb1EE13get_linear_idEv(%"struct._ZTSN2cl4sycl6detail8ItemBaseILi2ELb1EEE.cl::sycl::detail::ItemBase" addrspace(4)* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct._ZTSN2cl4sycl6detail8ItemBaseILi2ELb1EEE.cl::sycl::detail::ItemBase" addrspace(4)*, align 8
  store %"struct._ZTSN2cl4sycl6detail8ItemBaseILi2ELb1EEE.cl::sycl::detail::ItemBase" addrspace(4)* %this, %"struct._ZTSN2cl4sycl6detail8ItemBaseILi2ELb1EEE.cl::sycl::detail::ItemBase" addrspace(4)** %this.addr, align 8, !tbaa !8
  %this1 = load %"struct._ZTSN2cl4sycl6detail8ItemBaseILi2ELb1EEE.cl::sycl::detail::ItemBase" addrspace(4)*, %"struct._ZTSN2cl4sycl6detail8ItemBaseILi2ELb1EEE.cl::sycl::detail::ItemBase" addrspace(4)** %this.addr, align 8
  %MIndex = getelementptr inbounds %"struct._ZTSN2cl4sycl6detail8ItemBaseILi2ELb1EEE.cl::sycl::detail::ItemBase", %"struct._ZTSN2cl4sycl6detail8ItemBaseILi2ELb1EEE.cl::sycl::detail::ItemBase" addrspace(4)* %this1, i32 0, i32 1
  %0 = bitcast %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* %MIndex to %"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)*
  %call = call spir_func i64 @_ZNK2cl4sycl6detail5arrayILi2EEixEi(%"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)* %0, i32 0)
  %MOffset = getelementptr inbounds %"struct._ZTSN2cl4sycl6detail8ItemBaseILi2ELb1EEE.cl::sycl::detail::ItemBase", %"struct._ZTSN2cl4sycl6detail8ItemBaseILi2ELb1EEE.cl::sycl::detail::ItemBase" addrspace(4)* %this1, i32 0, i32 2
  %1 = bitcast %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* %MOffset to %"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)*
  %call2 = call spir_func i64 @_ZNK2cl4sycl6detail5arrayILi2EEixEi(%"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)* %1, i32 0)
  %sub = sub i64 %call, %call2
  %MExtent = getelementptr inbounds %"struct._ZTSN2cl4sycl6detail8ItemBaseILi2ELb1EEE.cl::sycl::detail::ItemBase", %"struct._ZTSN2cl4sycl6detail8ItemBaseILi2ELb1EEE.cl::sycl::detail::ItemBase" addrspace(4)* %this1, i32 0, i32 0
  %2 = bitcast %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* %MExtent to %"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)*
  %call3 = call spir_func i64 @_ZNK2cl4sycl6detail5arrayILi2EEixEi(%"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)* %2, i32 1)
  %mul = mul i64 %sub, %call3
  %MIndex4 = getelementptr inbounds %"struct._ZTSN2cl4sycl6detail8ItemBaseILi2ELb1EEE.cl::sycl::detail::ItemBase", %"struct._ZTSN2cl4sycl6detail8ItemBaseILi2ELb1EEE.cl::sycl::detail::ItemBase" addrspace(4)* %this1, i32 0, i32 1
  %3 = bitcast %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* %MIndex4 to %"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)*
  %call5 = call spir_func i64 @_ZNK2cl4sycl6detail5arrayILi2EEixEi(%"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)* %3, i32 1)
  %MOffset6 = getelementptr inbounds %"struct._ZTSN2cl4sycl6detail8ItemBaseILi2ELb1EEE.cl::sycl::detail::ItemBase", %"struct._ZTSN2cl4sycl6detail8ItemBaseILi2ELb1EEE.cl::sycl::detail::ItemBase" addrspace(4)* %this1, i32 0, i32 2
  %4 = bitcast %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* %MOffset6 to %"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)*
  %call7 = call spir_func i64 @_ZNK2cl4sycl6detail5arrayILi2EEixEi(%"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)* %4, i32 1)
  %sub8 = sub i64 %call5, %call7
  %add = add i64 %mul, %sub8
  ret i64 %add
}

; Function Attrs: norecurse
define linkonce_odr dso_local spir_func i64 @_ZNK2cl4sycl6detail5arrayILi2EEixEi(%"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)* %this, i32 %dimension) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)*, align 8
  %dimension.addr = alloca i32, align 4
  store %"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)* %this, %"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)** %this.addr, align 8, !tbaa !8
  store i32 %dimension, i32* %dimension.addr, align 4, !tbaa !13
  %this1 = load %"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)*, %"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)** %this.addr, align 8
  %0 = load i32, i32* %dimension.addr, align 4, !tbaa !13
  call spir_func void @_ZNK2cl4sycl6detail5arrayILi2EE15check_dimensionEi(%"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)* %this1, i32 %0)
  %common_array = getelementptr inbounds %"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array", %"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)* %this1, i32 0, i32 0
  %1 = load i32, i32* %dimension.addr, align 4, !tbaa !13
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64] addrspace(4)* %common_array, i64 0, i64 %idxprom
  %2 = load i64, i64 addrspace(4)* %arrayidx, align 8, !tbaa !15
  ret i64 %2
}

; Function Attrs: alwaysinline norecurse nounwind
define linkonce_odr dso_local spir_func void @_ZNK2cl4sycl6detail5arrayILi2EE15check_dimensionEi(%"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)* %this, i32 %dimension) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)*, align 8
  %dimension.addr = alloca i32, align 4
  store %"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)* %this, %"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)** %this.addr, align 8, !tbaa !8
  store i32 %dimension, i32* %dimension.addr, align 4, !tbaa !13
  ret void
}

; Function Attrs: norecurse
define linkonce_odr dso_local spir_func i64 @_ZNK2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EE14getLinearIndexILi1EEEmNS0_2idIXT_EEE(%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this, %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* byval(%"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id") align 8 %Id) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*, align 8
  store %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this, %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)** %this.addr, align 8, !tbaa !8
  %0 = bitcast %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* %Id to %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array"*
  %1 = addrspacecast %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array"* %0 to %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)*
  %call = call spir_func align 8 dereferenceable(8) i64 addrspace(4)* @_ZN2cl4sycl6detail5arrayILi1EEixEi(%"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)* %1, i32 0)
  %2 = load i64, i64 addrspace(4)* %call, align 8, !tbaa !15
  ret i64 %2
}

; Function Attrs: norecurse nounwind
define linkonce_odr dso_local spir_func i32 addrspace(1)* @_ZNK2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EE15getQualifiedPtrEv(%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*, align 8
  store %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this, %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)** %this.addr, align 8, !tbaa !8
  %this1 = load %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*, %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)** %this.addr, align 8
  %0 = getelementptr inbounds %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor", %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this1, i32 0, i32 1
  %MData = bitcast %union._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1024ELNS2_6targetE2014ELNS2_11placeholderE0EEUt_E.anon addrspace(4)* %0 to i32 addrspace(1)* addrspace(4)*
  %1 = load i32 addrspace(1)*, i32 addrspace(1)* addrspace(4)* %MData, align 8, !tbaa !12
  ret i32 addrspace(1)* %1
}

; Function Attrs: norecurse
define linkonce_odr dso_local spir_func i64 @_ZNK2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EE14getLinearIndexILi1EEEmNS0_2idIXT_EEE(%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this, %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* byval(%"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id") align 8 %Id) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*, align 8
  store %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this, %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)** %this.addr, align 8, !tbaa !8
  %0 = bitcast %"class._ZTSN2cl4sycl2idILi1EEE.cl::sycl::id"* %Id to %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array"*
  %1 = addrspacecast %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array"* %0 to %"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)*
  %call = call spir_func align 8 dereferenceable(8) i64 addrspace(4)* @_ZN2cl4sycl6detail5arrayILi1EEixEi(%"class._ZTSN2cl4sycl6detail5arrayILi1EEE.cl::sycl::detail::array" addrspace(4)* %1, i32 0)
  %2 = load i64, i64 addrspace(4)* %call, align 8, !tbaa !15
  ret i64 %2
}

; Function Attrs: norecurse nounwind
define linkonce_odr dso_local spir_func i32 addrspace(1)* @_ZNK2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EE15getQualifiedPtrEv(%"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*, align 8
  store %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this, %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)** %this.addr, align 8, !tbaa !8
  %this1 = load %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)*, %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)** %this.addr, align 8
  %0 = getelementptr inbounds %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor", %"class._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEE.cl::sycl::accessor" addrspace(4)* %this1, i32 0, i32 1
  %MData = bitcast %union._ZTSN2cl4sycl8accessorIiLi1ELNS0_6access4modeE1025ELNS2_6targetE2014ELNS2_11placeholderE0EEUt_E.anon addrspace(4)* %0 to i32 addrspace(1)* addrspace(4)*
  %1 = load i32 addrspace(1)*, i32 addrspace(1)* addrspace(4)* %MData, align 8, !tbaa !12
  ret i32 addrspace(1)* %1
}

; Function Attrs: norecurse
define internal spir_func void @_ZN7__spirvL14initGlobalSizeILi2EN2cl4sycl5rangeILi2EEEEET0_v(%"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* noalias sret align 8 %agg.result) #2 {
entry:
  call spir_func void @_ZN7__spirv21InitSizesSTGlobalSizeILi2EN2cl4sycl5rangeILi2EEEE8initSizeEv(%"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* sret align 8 %agg.result)
  ret void
}

; Function Attrs: norecurse
define internal spir_func void @_ZN7__spirvL17initWorkgroupSizeILi2EN2cl4sycl5rangeILi2EEEEET0_v(%"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* noalias sret align 8 %agg.result) #2 {
entry:
  call spir_func void @_ZN7__spirv24InitSizesSTWorkgroupSizeILi2EN2cl4sycl5rangeILi2EEEE8initSizeEv(%"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* sret align 8 %agg.result)
  ret void
}

; Function Attrs: norecurse
define internal spir_func void @_ZN7__spirvL17initNumWorkgroupsILi2EN2cl4sycl5rangeILi2EEEEET0_v(%"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* noalias sret align 8 %agg.result) #2 {
entry:
  call spir_func void @_ZN7__spirv24InitSizesSTNumWorkgroupsILi2EN2cl4sycl5rangeILi2EEEE8initSizeEv(%"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* sret align 8 %agg.result)
  ret void
}

; Function Attrs: norecurse
define internal spir_func void @_ZN7__spirvL15initWorkgroupIdILi2EN2cl4sycl2idILi2EEEEET0_v(%"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* noalias sret align 8 %agg.result) #2 {
entry:
  call spir_func void @_ZN7__spirv22InitSizesSTWorkgroupIdILi2EN2cl4sycl2idILi2EEEE8initSizeEv(%"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* sret align 8 %agg.result)
  ret void
}

; Function Attrs: norecurse
define internal spir_func void @_ZN7__spirvL22initGlobalInvocationIdILi2EN2cl4sycl2idILi2EEEEET0_v(%"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* noalias sret align 8 %agg.result) #2 {
entry:
  call spir_func void @_ZN7__spirv29InitSizesSTGlobalInvocationIdILi2EN2cl4sycl2idILi2EEEE8initSizeEv(%"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* sret align 8 %agg.result)
  ret void
}

; Function Attrs: norecurse
define internal spir_func void @_ZN7__spirvL21initLocalInvocationIdILi2EN2cl4sycl2idILi2EEEEET0_v(%"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* noalias sret align 8 %agg.result) #2 {
entry:
  call spir_func void @_ZN7__spirv28InitSizesSTLocalInvocationIdILi2EN2cl4sycl2idILi2EEEE8initSizeEv(%"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* sret align 8 %agg.result)
  ret void
}

; Function Attrs: norecurse
define internal spir_func void @_ZN7__spirvL16initGlobalOffsetILi2EN2cl4sycl2idILi2EEEEET0_v(%"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* noalias sret align 8 %agg.result) #2 {
entry:
  call spir_func void @_ZN7__spirv23InitSizesSTGlobalOffsetILi2EN2cl4sycl2idILi2EEEE8initSizeEv(%"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* sret align 8 %agg.result)
  ret void
}

; Function Attrs: norecurse
define linkonce_odr dso_local spir_func void @_ZN2cl4sycl6detail7Builder11createGroupILi2EEENS0_5groupIXT_EEERKNS0_5rangeIXT_EEES9_S9_RKNS0_2idIXT_EEE(%"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" addrspace(4)* noalias sret align 8 %agg.result, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* align 8 dereferenceable(16) %Global, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* align 8 dereferenceable(16) %Local, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* align 8 dereferenceable(16) %Group, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* align 8 dereferenceable(16) %Index) #2 comdat align 2 {
entry:
  %Global.addr = alloca %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)*, align 8
  %Local.addr = alloca %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)*, align 8
  %Group.addr = alloca %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)*, align 8
  %Index.addr = alloca %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)*, align 8
  %agg.tmp = alloca %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range", align 8
  store %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* %Global, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)** %Global.addr, align 8, !tbaa !8
  store %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* %Local, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)** %Local.addr, align 8, !tbaa !8
  store %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* %Group, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)** %Group.addr, align 8, !tbaa !8
  store %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* %Index, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)** %Index.addr, align 8, !tbaa !8
  %0 = load %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)*, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)** %Global.addr, align 8, !tbaa !8
  %1 = load %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)*, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)** %Local.addr, align 8, !tbaa !8
  %2 = load %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)*, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)** %Group.addr, align 8, !tbaa !8
  %3 = bitcast %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range"* %agg.tmp to i8*
  %4 = bitcast %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* %2 to i8 addrspace(4)*
  call void @llvm.memcpy.p0i8.p4i8.i64(i8* align 8 %3, i8 addrspace(4)* align 8 %4, i64 16, i1 false)
  %5 = load %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)*, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)** %Index.addr, align 8, !tbaa !8
  call spir_func void @_ZN2cl4sycl5groupILi2EEC2ERKNS0_5rangeILi2EEES6_S4_RKNS0_2idILi2EEE(%"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" addrspace(4)* %agg.result, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* align 8 dereferenceable(16) %0, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* align 8 dereferenceable(16) %1, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range"* byval(%"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range") align 8 %agg.tmp, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* align 8 dereferenceable(16) %5)
  ret void
}

; Function Attrs: norecurse
define linkonce_odr dso_local spir_func void @_ZN2cl4sycl6detail7Builder10createItemILi2ELb1EEENSt9enable_ifIXT0_ENS0_4itemIXT_EXT0_EEEE4typeERKNS0_5rangeIXT_EEERKNS0_2idIXT_EEESG_(%"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)* noalias sret align 8 %agg.result, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* align 8 dereferenceable(16) %Extent, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* align 8 dereferenceable(16) %Index, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* align 8 dereferenceable(16) %Offset) #2 comdat align 2 {
entry:
  %Extent.addr = alloca %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)*, align 8
  %Index.addr = alloca %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)*, align 8
  %Offset.addr = alloca %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)*, align 8
  store %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* %Extent, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)** %Extent.addr, align 8, !tbaa !8
  store %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* %Index, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)** %Index.addr, align 8, !tbaa !8
  store %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* %Offset, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)** %Offset.addr, align 8, !tbaa !8
  %0 = load %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)*, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)** %Extent.addr, align 8, !tbaa !8
  %1 = load %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)*, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)** %Index.addr, align 8, !tbaa !8
  %2 = load %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)*, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)** %Offset.addr, align 8, !tbaa !8
  call spir_func void @_ZN2cl4sycl4itemILi2ELb1EEC2ILb1EEERNSt9enable_ifIXT_EKNS0_5rangeILi2EEEE4typeERKNS0_2idILi2EEESE_(%"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)* %agg.result, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* align 8 dereferenceable(16) %0, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* align 8 dereferenceable(16) %1, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* align 8 dereferenceable(16) %2)
  ret void
}

; Function Attrs: norecurse
define linkonce_odr dso_local spir_func void @_ZN2cl4sycl6detail7Builder10createItemILi2ELb0EEENSt9enable_ifIXntT0_ENS0_4itemIXT_EXT0_EEEE4typeERKNS0_5rangeIXT_EEERKNS0_2idIXT_EEE(%"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item" addrspace(4)* noalias sret align 8 %agg.result, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* align 8 dereferenceable(16) %Extent, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* align 8 dereferenceable(16) %Index) #2 comdat align 2 {
entry:
  %Extent.addr = alloca %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)*, align 8
  %Index.addr = alloca %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)*, align 8
  store %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* %Extent, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)** %Extent.addr, align 8, !tbaa !8
  store %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* %Index, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)** %Index.addr, align 8, !tbaa !8
  %0 = load %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)*, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)** %Extent.addr, align 8, !tbaa !8
  %1 = load %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)*, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)** %Index.addr, align 8, !tbaa !8
  call spir_func void @_ZN2cl4sycl4itemILi2ELb0EEC2ILb0EEERNSt9enable_ifIXntT_EKNS0_5rangeILi2EEEE4typeERKNS0_2idILi2EEE(%"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item" addrspace(4)* %agg.result, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* align 8 dereferenceable(16) %0, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* align 8 dereferenceable(16) %1)
  ret void
}

; Function Attrs: norecurse
define linkonce_odr dso_local spir_func void @_ZN2cl4sycl6detail7Builder12createNDItemILi2EEENS0_7nd_itemIXT_EEERKNS0_4itemIXT_ELb1EEERKNS6_IXT_ELb0EEERKNS0_5groupIXT_EEE(%"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item" addrspace(4)* noalias sret align 8 %agg.result, %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)* align 8 dereferenceable(48) %Global, %"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item" addrspace(4)* align 8 dereferenceable(32) %Local, %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" addrspace(4)* align 8 dereferenceable(64) %Group) #2 comdat align 2 {
entry:
  %Global.addr = alloca %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)*, align 8
  %Local.addr = alloca %"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item" addrspace(4)*, align 8
  %Group.addr = alloca %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" addrspace(4)*, align 8
  store %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)* %Global, %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)** %Global.addr, align 8, !tbaa !8
  store %"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item" addrspace(4)* %Local, %"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item" addrspace(4)** %Local.addr, align 8, !tbaa !8
  store %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" addrspace(4)* %Group, %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" addrspace(4)** %Group.addr, align 8, !tbaa !8
  %0 = load %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)*, %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)** %Global.addr, align 8, !tbaa !8
  %1 = load %"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item" addrspace(4)*, %"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item" addrspace(4)** %Local.addr, align 8, !tbaa !8
  %2 = load %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" addrspace(4)*, %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" addrspace(4)** %Group.addr, align 8, !tbaa !8
  call spir_func void @_ZN2cl4sycl7nd_itemILi2EEC2ERKNS0_4itemILi2ELb1EEERKNS3_ILi2ELb0EEERKNS0_5groupILi2EEE(%"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item" addrspace(4)* %agg.result, %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)* align 8 dereferenceable(48) %0, %"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item" addrspace(4)* align 8 dereferenceable(32) %1, %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" addrspace(4)* align 8 dereferenceable(64) %2)
  ret void
}

; Function Attrs: norecurse
define linkonce_odr dso_local spir_func void @_ZN7__spirv21InitSizesSTGlobalSizeILi2EN2cl4sycl5rangeILi2EEEE8initSizeEv(%"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* noalias sret align 8 %agg.result) #2 comdat align 2 {
entry:
  %call = call spir_func i64 @_ZN7__spirvL13getGlobalSizeILi1EEEmv()
  %call1 = call spir_func i64 @_ZN7__spirvL13getGlobalSizeILi0EEEmv()
  call spir_func void @_ZN2cl4sycl5rangeILi2EEC2ILi2EEENSt9enable_ifIXeqT_Li2EEmE4typeEm(%"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* %agg.result, i64 %call, i64 %call1)
  ret void
}

; Function Attrs: norecurse
define internal spir_func i64 @_ZN7__spirvL13getGlobalSizeILi1EEEmv() #2 {
entry:
  %call = call spir_func i64 @_Z20__spirv_GlobalSize_yv()
  ret i64 %call
}

; Function Attrs: norecurse
define internal spir_func i64 @_ZN7__spirvL13getGlobalSizeILi0EEEmv() #2 {
entry:
  %call = call spir_func i64 @_Z20__spirv_GlobalSize_xv()
  ret i64 %call
}

; Function Attrs: norecurse
define linkonce_odr dso_local spir_func void @_ZN2cl4sycl5rangeILi2EEC2ILi2EEENSt9enable_ifIXeqT_Li2EEmE4typeEm(%"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* %this, i64 %dim0, i64 %dim1) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)*, align 8
  %dim0.addr = alloca i64, align 8
  %dim1.addr = alloca i64, align 8
  store %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* %this, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)** %this.addr, align 8, !tbaa !8
  store i64 %dim0, i64* %dim0.addr, align 8, !tbaa !15
  store i64 %dim1, i64* %dim1.addr, align 8, !tbaa !15
  %this1 = load %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)*, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)** %this.addr, align 8
  %0 = bitcast %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* %this1 to %"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)*
  %1 = load i64, i64* %dim0.addr, align 8, !tbaa !15
  %2 = load i64, i64* %dim1.addr, align 8, !tbaa !15
  call spir_func void @_ZN2cl4sycl6detail5arrayILi2EEC2ILi2EEENSt9enable_ifIXeqT_Li2EEmE4typeEm(%"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)* %0, i64 %1, i64 %2)
  ret void
}

; Function Attrs: inlinehint norecurse nounwind
define linkonce_odr dso_local spir_func i64 @_Z20__spirv_GlobalSize_yv() #8 comdat {
entry:
  %0 = load <3 x i64>, <3 x i64> addrspace(4)* addrspacecast (<3 x i64> addrspace(1)* @__spirv_BuiltInGlobalSize to <3 x i64> addrspace(4)*), align 32
  %1 = extractelement <3 x i64> %0, i64 1
  ret i64 %1
}

; Function Attrs: inlinehint norecurse nounwind
define linkonce_odr dso_local spir_func i64 @_Z20__spirv_GlobalSize_xv() #8 comdat {
entry:
  %0 = load <3 x i64>, <3 x i64> addrspace(4)* addrspacecast (<3 x i64> addrspace(1)* @__spirv_BuiltInGlobalSize to <3 x i64> addrspace(4)*), align 32
  %1 = extractelement <3 x i64> %0, i64 0
  ret i64 %1
}

; Function Attrs: norecurse nounwind
define linkonce_odr dso_local spir_func void @_ZN2cl4sycl6detail5arrayILi2EEC2ILi2EEENSt9enable_ifIXeqT_Li2EEmE4typeEm(%"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)* %this, i64 %dim0, i64 %dim1) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)*, align 8
  %dim0.addr = alloca i64, align 8
  %dim1.addr = alloca i64, align 8
  store %"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)* %this, %"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)** %this.addr, align 8, !tbaa !8
  store i64 %dim0, i64* %dim0.addr, align 8, !tbaa !15
  store i64 %dim1, i64* %dim1.addr, align 8, !tbaa !15
  %this1 = load %"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)*, %"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)** %this.addr, align 8
  %common_array = getelementptr inbounds %"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array", %"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)* %this1, i32 0, i32 0
  %arrayinit.begin = getelementptr inbounds [2 x i64], [2 x i64] addrspace(4)* %common_array, i64 0, i64 0
  %0 = load i64, i64* %dim0.addr, align 8, !tbaa !15
  store i64 %0, i64 addrspace(4)* %arrayinit.begin, align 8, !tbaa !15
  %arrayinit.element = getelementptr inbounds i64, i64 addrspace(4)* %arrayinit.begin, i64 1
  %1 = load i64, i64* %dim1.addr, align 8, !tbaa !15
  store i64 %1, i64 addrspace(4)* %arrayinit.element, align 8, !tbaa !15
  ret void
}

; Function Attrs: norecurse
define linkonce_odr dso_local spir_func void @_ZN7__spirv24InitSizesSTWorkgroupSizeILi2EN2cl4sycl5rangeILi2EEEE8initSizeEv(%"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* noalias sret align 8 %agg.result) #2 comdat align 2 {
entry:
  %call = call spir_func i64 @_ZN7__spirvL16getWorkgroupSizeILi1EEEmv()
  %call1 = call spir_func i64 @_ZN7__spirvL16getWorkgroupSizeILi0EEEmv()
  call spir_func void @_ZN2cl4sycl5rangeILi2EEC2ILi2EEENSt9enable_ifIXeqT_Li2EEmE4typeEm(%"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* %agg.result, i64 %call, i64 %call1)
  ret void
}

; Function Attrs: norecurse
define internal spir_func i64 @_ZN7__spirvL16getWorkgroupSizeILi1EEEmv() #2 {
entry:
  %call = call spir_func i64 @_Z23__spirv_WorkgroupSize_yv()
  ret i64 %call
}

; Function Attrs: norecurse
define internal spir_func i64 @_ZN7__spirvL16getWorkgroupSizeILi0EEEmv() #2 {
entry:
  %call = call spir_func i64 @_Z23__spirv_WorkgroupSize_xv()
  ret i64 %call
}

; Function Attrs: inlinehint norecurse nounwind
define linkonce_odr dso_local spir_func i64 @_Z23__spirv_WorkgroupSize_yv() #8 comdat {
entry:
  %0 = load <3 x i64>, <3 x i64> addrspace(4)* addrspacecast (<3 x i64> addrspace(1)* @__spirv_BuiltInWorkgroupSize to <3 x i64> addrspace(4)*), align 32
  %1 = extractelement <3 x i64> %0, i64 1
  ret i64 %1
}

; Function Attrs: inlinehint norecurse nounwind
define linkonce_odr dso_local spir_func i64 @_Z23__spirv_WorkgroupSize_xv() #8 comdat {
entry:
  %0 = load <3 x i64>, <3 x i64> addrspace(4)* addrspacecast (<3 x i64> addrspace(1)* @__spirv_BuiltInWorkgroupSize to <3 x i64> addrspace(4)*), align 32
  %1 = extractelement <3 x i64> %0, i64 0
  ret i64 %1
}

; Function Attrs: norecurse
define linkonce_odr dso_local spir_func void @_ZN7__spirv24InitSizesSTNumWorkgroupsILi2EN2cl4sycl5rangeILi2EEEE8initSizeEv(%"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* noalias sret align 8 %agg.result) #2 comdat align 2 {
entry:
  %call = call spir_func i64 @_ZN7__spirvL16getNumWorkgroupsILi1EEEmv()
  %call1 = call spir_func i64 @_ZN7__spirvL16getNumWorkgroupsILi0EEEmv()
  call spir_func void @_ZN2cl4sycl5rangeILi2EEC2ILi2EEENSt9enable_ifIXeqT_Li2EEmE4typeEm(%"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* %agg.result, i64 %call, i64 %call1)
  ret void
}

; Function Attrs: norecurse
define internal spir_func i64 @_ZN7__spirvL16getNumWorkgroupsILi1EEEmv() #2 {
entry:
  %call = call spir_func i64 @_Z23__spirv_NumWorkgroups_yv()
  ret i64 %call
}

; Function Attrs: norecurse
define internal spir_func i64 @_ZN7__spirvL16getNumWorkgroupsILi0EEEmv() #2 {
entry:
  %call = call spir_func i64 @_Z23__spirv_NumWorkgroups_xv()
  ret i64 %call
}

; Function Attrs: inlinehint norecurse nounwind
define linkonce_odr dso_local spir_func i64 @_Z23__spirv_NumWorkgroups_yv() #8 comdat {
entry:
  %0 = load <3 x i64>, <3 x i64> addrspace(4)* addrspacecast (<3 x i64> addrspace(1)* @__spirv_BuiltInNumWorkgroups to <3 x i64> addrspace(4)*), align 32
  %1 = extractelement <3 x i64> %0, i64 1
  ret i64 %1
}

; Function Attrs: inlinehint norecurse nounwind
define linkonce_odr dso_local spir_func i64 @_Z23__spirv_NumWorkgroups_xv() #8 comdat {
entry:
  %0 = load <3 x i64>, <3 x i64> addrspace(4)* addrspacecast (<3 x i64> addrspace(1)* @__spirv_BuiltInNumWorkgroups to <3 x i64> addrspace(4)*), align 32
  %1 = extractelement <3 x i64> %0, i64 0
  ret i64 %1
}

; Function Attrs: norecurse
define linkonce_odr dso_local spir_func void @_ZN7__spirv22InitSizesSTWorkgroupIdILi2EN2cl4sycl2idILi2EEEE8initSizeEv(%"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* noalias sret align 8 %agg.result) #2 comdat align 2 {
entry:
  %call = call spir_func i64 @_ZN7__spirvL14getWorkgroupIdILi1EEEmv()
  %call1 = call spir_func i64 @_ZN7__spirvL14getWorkgroupIdILi0EEEmv()
  call spir_func void @_ZN2cl4sycl2idILi2EEC2ILi2EEENSt9enable_ifIXeqT_Li2EEmE4typeEm(%"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* %agg.result, i64 %call, i64 %call1)
  ret void
}

; Function Attrs: norecurse
define internal spir_func i64 @_ZN7__spirvL14getWorkgroupIdILi1EEEmv() #2 {
entry:
  %call = call spir_func i64 @_Z21__spirv_WorkgroupId_yv()
  ret i64 %call
}

; Function Attrs: norecurse
define internal spir_func i64 @_ZN7__spirvL14getWorkgroupIdILi0EEEmv() #2 {
entry:
  %call = call spir_func i64 @_Z21__spirv_WorkgroupId_xv()
  ret i64 %call
}

; Function Attrs: norecurse nounwind
define linkonce_odr dso_local spir_func void @_ZN2cl4sycl2idILi2EEC2ILi2EEENSt9enable_ifIXeqT_Li2EEmE4typeEm(%"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* %this, i64 %dim0, i64 %dim1) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)*, align 8
  %dim0.addr = alloca i64, align 8
  %dim1.addr = alloca i64, align 8
  store %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* %this, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)** %this.addr, align 8, !tbaa !8
  store i64 %dim0, i64* %dim0.addr, align 8, !tbaa !15
  store i64 %dim1, i64* %dim1.addr, align 8, !tbaa !15
  %this1 = load %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)*, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)** %this.addr, align 8
  %0 = bitcast %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* %this1 to %"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)*
  %1 = load i64, i64* %dim0.addr, align 8, !tbaa !15
  %2 = load i64, i64* %dim1.addr, align 8, !tbaa !15
  call spir_func void @_ZN2cl4sycl6detail5arrayILi2EEC2ILi2EEENSt9enable_ifIXeqT_Li2EEmE4typeEm(%"class._ZTSN2cl4sycl6detail5arrayILi2EEE.cl::sycl::detail::array" addrspace(4)* %0, i64 %1, i64 %2)
  ret void
}

; Function Attrs: inlinehint norecurse nounwind
define linkonce_odr dso_local spir_func i64 @_Z21__spirv_WorkgroupId_yv() #8 comdat {
entry:
  %0 = load <3 x i64>, <3 x i64> addrspace(4)* addrspacecast (<3 x i64> addrspace(1)* @__spirv_BuiltInWorkgroupId to <3 x i64> addrspace(4)*), align 32
  %1 = extractelement <3 x i64> %0, i64 1
  ret i64 %1
}

; Function Attrs: inlinehint norecurse nounwind
define linkonce_odr dso_local spir_func i64 @_Z21__spirv_WorkgroupId_xv() #8 comdat {
entry:
  %0 = load <3 x i64>, <3 x i64> addrspace(4)* addrspacecast (<3 x i64> addrspace(1)* @__spirv_BuiltInWorkgroupId to <3 x i64> addrspace(4)*), align 32
  %1 = extractelement <3 x i64> %0, i64 0
  ret i64 %1
}

; Function Attrs: norecurse
define linkonce_odr dso_local spir_func void @_ZN7__spirv29InitSizesSTGlobalInvocationIdILi2EN2cl4sycl2idILi2EEEE8initSizeEv(%"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* noalias sret align 8 %agg.result) #2 comdat align 2 {
entry:
  %call = call spir_func i64 @_ZN7__spirvL21getGlobalInvocationIdILi1EEEmv()
  %call1 = call spir_func i64 @_ZN7__spirvL21getGlobalInvocationIdILi0EEEmv()
  call spir_func void @_ZN2cl4sycl2idILi2EEC2ILi2EEENSt9enable_ifIXeqT_Li2EEmE4typeEm(%"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* %agg.result, i64 %call, i64 %call1)
  ret void
}

; Function Attrs: norecurse
define internal spir_func i64 @_ZN7__spirvL21getGlobalInvocationIdILi1EEEmv() #2 {
entry:
  %call = call spir_func i64 @_Z28__spirv_GlobalInvocationId_yv()
  ret i64 %call
}

; Function Attrs: norecurse
define internal spir_func i64 @_ZN7__spirvL21getGlobalInvocationIdILi0EEEmv() #2 {
entry:
  %call = call spir_func i64 @_Z28__spirv_GlobalInvocationId_xv()
  ret i64 %call
}

; Function Attrs: inlinehint norecurse nounwind
define linkonce_odr dso_local spir_func i64 @_Z28__spirv_GlobalInvocationId_yv() #8 comdat {
entry:
  %0 = load <3 x i64>, <3 x i64> addrspace(4)* addrspacecast (<3 x i64> addrspace(1)* @__spirv_BuiltInGlobalInvocationId to <3 x i64> addrspace(4)*), align 32
  %1 = extractelement <3 x i64> %0, i64 1
  ret i64 %1
}

; Function Attrs: inlinehint norecurse nounwind
define linkonce_odr dso_local spir_func i64 @_Z28__spirv_GlobalInvocationId_xv() #8 comdat {
entry:
  %0 = load <3 x i64>, <3 x i64> addrspace(4)* addrspacecast (<3 x i64> addrspace(1)* @__spirv_BuiltInGlobalInvocationId to <3 x i64> addrspace(4)*), align 32
  %1 = extractelement <3 x i64> %0, i64 0
  ret i64 %1
}

; Function Attrs: norecurse
define linkonce_odr dso_local spir_func void @_ZN7__spirv28InitSizesSTLocalInvocationIdILi2EN2cl4sycl2idILi2EEEE8initSizeEv(%"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* noalias sret align 8 %agg.result) #2 comdat align 2 {
entry:
  %call = call spir_func i64 @_ZN7__spirvL20getLocalInvocationIdILi1EEEmv()
  %call1 = call spir_func i64 @_ZN7__spirvL20getLocalInvocationIdILi0EEEmv()
  call spir_func void @_ZN2cl4sycl2idILi2EEC2ILi2EEENSt9enable_ifIXeqT_Li2EEmE4typeEm(%"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* %agg.result, i64 %call, i64 %call1)
  ret void
}

; Function Attrs: norecurse
define internal spir_func i64 @_ZN7__spirvL20getLocalInvocationIdILi1EEEmv() #2 {
entry:
  %call = call spir_func i64 @_Z27__spirv_LocalInvocationId_yv()
  ret i64 %call
}

; Function Attrs: norecurse
define internal spir_func i64 @_ZN7__spirvL20getLocalInvocationIdILi0EEEmv() #2 {
entry:
  %call = call spir_func i64 @_Z27__spirv_LocalInvocationId_xv()
  ret i64 %call
}

; Function Attrs: inlinehint norecurse nounwind
define linkonce_odr dso_local spir_func i64 @_Z27__spirv_LocalInvocationId_yv() #8 comdat {
entry:
  %0 = load <3 x i64>, <3 x i64> addrspace(4)* addrspacecast (<3 x i64> addrspace(1)* @__spirv_BuiltInLocalInvocationId to <3 x i64> addrspace(4)*), align 32
  %1 = extractelement <3 x i64> %0, i64 1
  ret i64 %1
}

; Function Attrs: inlinehint norecurse nounwind
define linkonce_odr dso_local spir_func i64 @_Z27__spirv_LocalInvocationId_xv() #8 comdat {
entry:
  %0 = load <3 x i64>, <3 x i64> addrspace(4)* addrspacecast (<3 x i64> addrspace(1)* @__spirv_BuiltInLocalInvocationId to <3 x i64> addrspace(4)*), align 32
  %1 = extractelement <3 x i64> %0, i64 0
  ret i64 %1
}

; Function Attrs: norecurse
define linkonce_odr dso_local spir_func void @_ZN7__spirv23InitSizesSTGlobalOffsetILi2EN2cl4sycl2idILi2EEEE8initSizeEv(%"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* noalias sret align 8 %agg.result) #2 comdat align 2 {
entry:
  %call = call spir_func i64 @_ZN7__spirvL15getGlobalOffsetILi1EEEmv()
  %call1 = call spir_func i64 @_ZN7__spirvL15getGlobalOffsetILi0EEEmv()
  call spir_func void @_ZN2cl4sycl2idILi2EEC2ILi2EEENSt9enable_ifIXeqT_Li2EEmE4typeEm(%"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* %agg.result, i64 %call, i64 %call1)
  ret void
}

; Function Attrs: norecurse
define internal spir_func i64 @_ZN7__spirvL15getGlobalOffsetILi1EEEmv() #2 {
entry:
  %call = call spir_func i64 @_Z22__spirv_GlobalOffset_yv()
  ret i64 %call
}

; Function Attrs: norecurse
define internal spir_func i64 @_ZN7__spirvL15getGlobalOffsetILi0EEEmv() #2 {
entry:
  %call = call spir_func i64 @_Z22__spirv_GlobalOffset_xv()
  ret i64 %call
}

; Function Attrs: inlinehint norecurse nounwind
define linkonce_odr dso_local spir_func i64 @_Z22__spirv_GlobalOffset_yv() #8 comdat {
entry:
  %0 = load <3 x i64>, <3 x i64> addrspace(4)* addrspacecast (<3 x i64> addrspace(1)* @__spirv_BuiltInGlobalOffset to <3 x i64> addrspace(4)*), align 32
  %1 = extractelement <3 x i64> %0, i64 1
  ret i64 %1
}

; Function Attrs: inlinehint norecurse nounwind
define linkonce_odr dso_local spir_func i64 @_Z22__spirv_GlobalOffset_xv() #8 comdat {
entry:
  %0 = load <3 x i64>, <3 x i64> addrspace(4)* addrspacecast (<3 x i64> addrspace(1)* @__spirv_BuiltInGlobalOffset to <3 x i64> addrspace(4)*), align 32
  %1 = extractelement <3 x i64> %0, i64 0
  ret i64 %1
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p4i8.i64(i8* noalias nocapture writeonly, i8 addrspace(4)* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: norecurse nounwind
define linkonce_odr dso_local spir_func void @_ZN2cl4sycl5groupILi2EEC2ERKNS0_5rangeILi2EEES6_S4_RKNS0_2idILi2EEE(%"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" addrspace(4)* %this, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* align 8 dereferenceable(16) %G, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* align 8 dereferenceable(16) %L, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range"* byval(%"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range") align 8 %GroupRange, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* align 8 dereferenceable(16) %I) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" addrspace(4)*, align 8
  %G.addr = alloca %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)*, align 8
  %L.addr = alloca %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)*, align 8
  %I.addr = alloca %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)*, align 8
  store %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" addrspace(4)* %this, %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" addrspace(4)** %this.addr, align 8, !tbaa !8
  store %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* %G, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)** %G.addr, align 8, !tbaa !8
  store %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* %L, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)** %L.addr, align 8, !tbaa !8
  store %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* %I, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)** %I.addr, align 8, !tbaa !8
  %this1 = load %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" addrspace(4)*, %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" addrspace(4)** %this.addr, align 8
  %globalRange = getelementptr inbounds %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group", %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" addrspace(4)* %this1, i32 0, i32 0
  %0 = load %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)*, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)** %G.addr, align 8, !tbaa !8
  %1 = bitcast %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* %globalRange to i8 addrspace(4)*
  %2 = bitcast %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* %0 to i8 addrspace(4)*
  call void @llvm.memcpy.p4i8.p4i8.i64(i8 addrspace(4)* align 8 %1, i8 addrspace(4)* align 8 %2, i64 16, i1 false)
  %localRange = getelementptr inbounds %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group", %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" addrspace(4)* %this1, i32 0, i32 1
  %3 = load %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)*, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)** %L.addr, align 8, !tbaa !8
  %4 = bitcast %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* %localRange to i8 addrspace(4)*
  %5 = bitcast %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* %3 to i8 addrspace(4)*
  call void @llvm.memcpy.p4i8.p4i8.i64(i8 addrspace(4)* align 8 %4, i8 addrspace(4)* align 8 %5, i64 16, i1 false)
  %groupRange = getelementptr inbounds %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group", %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" addrspace(4)* %this1, i32 0, i32 2
  %6 = bitcast %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* %groupRange to i8 addrspace(4)*
  %7 = bitcast %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range"* %GroupRange to i8*
  call void @llvm.memcpy.p4i8.p0i8.i64(i8 addrspace(4)* align 8 %6, i8* align 8 %7, i64 16, i1 false)
  %index = getelementptr inbounds %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group", %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" addrspace(4)* %this1, i32 0, i32 3
  %8 = load %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)*, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)** %I.addr, align 8, !tbaa !8
  %9 = bitcast %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* %index to i8 addrspace(4)*
  %10 = bitcast %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* %8 to i8 addrspace(4)*
  call void @llvm.memcpy.p4i8.p4i8.i64(i8 addrspace(4)* align 8 %9, i8 addrspace(4)* align 8 %10, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p4i8.p4i8.i64(i8 addrspace(4)* noalias nocapture writeonly, i8 addrspace(4)* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: norecurse nounwind
define linkonce_odr dso_local spir_func void @_ZN2cl4sycl4itemILi2ELb1EEC2ILb1EEERNSt9enable_ifIXT_EKNS0_5rangeILi2EEEE4typeERKNS0_2idILi2EEESE_(%"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)* %this, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* align 8 dereferenceable(16) %extent, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* align 8 dereferenceable(16) %index, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* align 8 dereferenceable(16) %offset) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)*, align 8
  %extent.addr = alloca %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)*, align 8
  %index.addr = alloca %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)*, align 8
  %offset.addr = alloca %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)*, align 8
  store %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)* %this, %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)** %this.addr, align 8, !tbaa !8
  store %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* %extent, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)** %extent.addr, align 8, !tbaa !8
  store %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* %index, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)** %index.addr, align 8, !tbaa !8
  store %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* %offset, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)** %offset.addr, align 8, !tbaa !8
  %this1 = load %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)*, %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)** %this.addr, align 8
  %MImpl = getelementptr inbounds %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item", %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)* %this1, i32 0, i32 0
  %MExtent = getelementptr inbounds %"struct._ZTSN2cl4sycl6detail8ItemBaseILi2ELb1EEE.cl::sycl::detail::ItemBase", %"struct._ZTSN2cl4sycl6detail8ItemBaseILi2ELb1EEE.cl::sycl::detail::ItemBase" addrspace(4)* %MImpl, i32 0, i32 0
  %0 = load %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)*, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)** %extent.addr, align 8, !tbaa !8
  %1 = bitcast %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* %MExtent to i8 addrspace(4)*
  %2 = bitcast %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* %0 to i8 addrspace(4)*
  call void @llvm.memcpy.p4i8.p4i8.i64(i8 addrspace(4)* align 8 %1, i8 addrspace(4)* align 8 %2, i64 16, i1 false)
  %MIndex = getelementptr inbounds %"struct._ZTSN2cl4sycl6detail8ItemBaseILi2ELb1EEE.cl::sycl::detail::ItemBase", %"struct._ZTSN2cl4sycl6detail8ItemBaseILi2ELb1EEE.cl::sycl::detail::ItemBase" addrspace(4)* %MImpl, i32 0, i32 1
  %3 = load %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)*, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)** %index.addr, align 8, !tbaa !8
  %4 = bitcast %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* %MIndex to i8 addrspace(4)*
  %5 = bitcast %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* %3 to i8 addrspace(4)*
  call void @llvm.memcpy.p4i8.p4i8.i64(i8 addrspace(4)* align 8 %4, i8 addrspace(4)* align 8 %5, i64 16, i1 false)
  %MOffset = getelementptr inbounds %"struct._ZTSN2cl4sycl6detail8ItemBaseILi2ELb1EEE.cl::sycl::detail::ItemBase", %"struct._ZTSN2cl4sycl6detail8ItemBaseILi2ELb1EEE.cl::sycl::detail::ItemBase" addrspace(4)* %MImpl, i32 0, i32 2
  %6 = load %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)*, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)** %offset.addr, align 8, !tbaa !8
  %7 = bitcast %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* %MOffset to i8 addrspace(4)*
  %8 = bitcast %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* %6 to i8 addrspace(4)*
  call void @llvm.memcpy.p4i8.p4i8.i64(i8 addrspace(4)* align 8 %7, i8 addrspace(4)* align 8 %8, i64 16, i1 false)
  ret void
}

; Function Attrs: norecurse nounwind
define linkonce_odr dso_local spir_func void @_ZN2cl4sycl4itemILi2ELb0EEC2ILb0EEERNSt9enable_ifIXntT_EKNS0_5rangeILi2EEEE4typeERKNS0_2idILi2EEE(%"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item" addrspace(4)* %this, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* align 8 dereferenceable(16) %extent, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* align 8 dereferenceable(16) %index) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item" addrspace(4)*, align 8
  %extent.addr = alloca %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)*, align 8
  %index.addr = alloca %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)*, align 8
  store %"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item" addrspace(4)* %this, %"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item" addrspace(4)** %this.addr, align 8, !tbaa !8
  store %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* %extent, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)** %extent.addr, align 8, !tbaa !8
  store %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* %index, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)** %index.addr, align 8, !tbaa !8
  %this1 = load %"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item" addrspace(4)*, %"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item" addrspace(4)** %this.addr, align 8
  %MImpl = getelementptr inbounds %"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item", %"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item" addrspace(4)* %this1, i32 0, i32 0
  %MExtent = getelementptr inbounds %"struct._ZTSN2cl4sycl6detail8ItemBaseILi2ELb0EEE.cl::sycl::detail::ItemBase", %"struct._ZTSN2cl4sycl6detail8ItemBaseILi2ELb0EEE.cl::sycl::detail::ItemBase" addrspace(4)* %MImpl, i32 0, i32 0
  %0 = load %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)*, %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)** %extent.addr, align 8, !tbaa !8
  %1 = bitcast %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* %MExtent to i8 addrspace(4)*
  %2 = bitcast %"class._ZTSN2cl4sycl5rangeILi2EEE.cl::sycl::range" addrspace(4)* %0 to i8 addrspace(4)*
  call void @llvm.memcpy.p4i8.p4i8.i64(i8 addrspace(4)* align 8 %1, i8 addrspace(4)* align 8 %2, i64 16, i1 false)
  %MIndex = getelementptr inbounds %"struct._ZTSN2cl4sycl6detail8ItemBaseILi2ELb0EEE.cl::sycl::detail::ItemBase", %"struct._ZTSN2cl4sycl6detail8ItemBaseILi2ELb0EEE.cl::sycl::detail::ItemBase" addrspace(4)* %MImpl, i32 0, i32 1
  %3 = load %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)*, %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)** %index.addr, align 8, !tbaa !8
  %4 = bitcast %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* %MIndex to i8 addrspace(4)*
  %5 = bitcast %"class._ZTSN2cl4sycl2idILi2EEE.cl::sycl::id" addrspace(4)* %3 to i8 addrspace(4)*
  call void @llvm.memcpy.p4i8.p4i8.i64(i8 addrspace(4)* align 8 %4, i8 addrspace(4)* align 8 %5, i64 16, i1 false)
  ret void
}

; Function Attrs: norecurse nounwind
define linkonce_odr dso_local spir_func void @_ZN2cl4sycl7nd_itemILi2EEC2ERKNS0_4itemILi2ELb1EEERKNS3_ILi2ELb0EEERKNS0_5groupILi2EEE(%"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item" addrspace(4)* %this, %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)* align 8 dereferenceable(48) %GL, %"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item" addrspace(4)* align 8 dereferenceable(32) %L, %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" addrspace(4)* align 8 dereferenceable(64) %GR) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item" addrspace(4)*, align 8
  %GL.addr = alloca %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)*, align 8
  %L.addr = alloca %"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item" addrspace(4)*, align 8
  %GR.addr = alloca %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" addrspace(4)*, align 8
  store %"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item" addrspace(4)* %this, %"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item" addrspace(4)** %this.addr, align 8, !tbaa !8
  store %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)* %GL, %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)** %GL.addr, align 8, !tbaa !8
  store %"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item" addrspace(4)* %L, %"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item" addrspace(4)** %L.addr, align 8, !tbaa !8
  store %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" addrspace(4)* %GR, %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" addrspace(4)** %GR.addr, align 8, !tbaa !8
  %this1 = load %"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item" addrspace(4)*, %"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item" addrspace(4)** %this.addr, align 8
  %globalItem = getelementptr inbounds %"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item", %"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item" addrspace(4)* %this1, i32 0, i32 0
  %0 = load %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)*, %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)** %GL.addr, align 8, !tbaa !8
  %1 = bitcast %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)* %globalItem to i8 addrspace(4)*
  %2 = bitcast %"class._ZTSN2cl4sycl4itemILi2ELb1EEE.cl::sycl::item" addrspace(4)* %0 to i8 addrspace(4)*
  call void @llvm.memcpy.p4i8.p4i8.i64(i8 addrspace(4)* align 8 %1, i8 addrspace(4)* align 8 %2, i64 48, i1 false)
  %localItem = getelementptr inbounds %"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item", %"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item" addrspace(4)* %this1, i32 0, i32 1
  %3 = load %"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item" addrspace(4)*, %"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item" addrspace(4)** %L.addr, align 8, !tbaa !8
  %4 = bitcast %"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item" addrspace(4)* %localItem to i8 addrspace(4)*
  %5 = bitcast %"class._ZTSN2cl4sycl4itemILi2ELb0EEE.cl::sycl::item" addrspace(4)* %3 to i8 addrspace(4)*
  call void @llvm.memcpy.p4i8.p4i8.i64(i8 addrspace(4)* align 8 %4, i8 addrspace(4)* align 8 %5, i64 32, i1 false)
  %Group = getelementptr inbounds %"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item", %"class._ZTSN2cl4sycl7nd_itemILi2EEE.cl::sycl::nd_item" addrspace(4)* %this1, i32 0, i32 2
  %6 = load %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" addrspace(4)*, %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" addrspace(4)** %GR.addr, align 8, !tbaa !8
  %7 = bitcast %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" addrspace(4)* %Group to i8 addrspace(4)*
  %8 = bitcast %"class._ZTSN2cl4sycl5groupILi2EEE.cl::sycl::group" addrspace(4)* %6 to i8 addrspace(4)*
  call void @llvm.memcpy.p4i8.p4i8.i64(i8 addrspace(4)* align 8 %7, i8 addrspace(4)* align 8 %8, i64 64, i1 false)
  ret void
}

attributes #0 = { norecurse "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "sycl-module-id"="Bitreverse.cpp" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { norecurse "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint norecurse "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn writeonly }
attributes #5 = { norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { alwaysinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { alwaysinline norecurse "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0}
!opencl.spir.version = !{!1}
!spirv.Source = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, i32 2}
!2 = !{i32 4, i32 100000}
!3 = !{!"clang version 11.0.0 (https://github.com/c199914007/llvm.git 13a1e49eeb2e51c6d0b90ba4ee39dc33dd6bf640)"}
!4 = !{i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0}
!5 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!6 = !{!"int*", !"cl::sycl::range<1>", !"cl::sycl::range<1>", !"cl::sycl::id<1>", !"int*", !"cl::sycl::range<1>", !"cl::sycl::range<1>", !"cl::sycl::id<1>"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!10, !10, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !10, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !10, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.enable"}
