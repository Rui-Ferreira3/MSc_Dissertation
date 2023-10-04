; ModuleID = 'C:/Users/Rui/Rui/MSc_Dissertation/SoC/Acelerador/axi4_conv2D/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"struct.ssdm_int<8, false>" }
%"struct.ssdm_int<8, false>" = type { i8 }
%"struct.ap_int<32>" = type { %"struct.ap_int_base<32, true>" }
%"struct.ap_int_base<32, true>" = type { %"struct.ssdm_int<32, true>" }
%"struct.ssdm_int<32, true>" = type { i32 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_axi4_conv2D_ir(%"struct.ap_uint<8>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="36" %image_in, %"struct.ap_uint<8>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="16" %image_out, %"struct.ap_uint<8>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="9" %weights, %"struct.ap_int<32>"* nocapture readonly %bias) local_unnamed_addr #0 {
entry:
  %image_in_copy = alloca [36 x i8], align 512
  %image_out_copy = alloca [16 x i8], align 512
  %weights_copy = alloca [9 x i8], align 512
  %0 = bitcast %"struct.ap_uint<8>"* %image_in to [36 x %"struct.ap_uint<8>"]*
  %1 = bitcast %"struct.ap_uint<8>"* %image_out to [16 x %"struct.ap_uint<8>"]*
  %2 = bitcast %"struct.ap_uint<8>"* %weights to [9 x %"struct.ap_uint<8>"]*
  call fastcc void @copy_in([36 x %"struct.ap_uint<8>"]* nonnull %0, [36 x i8]* nonnull align 512 %image_in_copy, [16 x %"struct.ap_uint<8>"]* nonnull %1, [16 x i8]* nonnull align 512 %image_out_copy, [9 x %"struct.ap_uint<8>"]* nonnull %2, [9 x i8]* nonnull align 512 %weights_copy)
  %3 = getelementptr [36 x i8], [36 x i8]* %image_in_copy, i32 0, i32 0
  %4 = getelementptr [16 x i8], [16 x i8]* %image_out_copy, i32 0, i32 0
  %5 = getelementptr [9 x i8], [9 x i8]* %weights_copy, i32 0, i32 0
  call void @apatb_axi4_conv2D_hw(i8* %3, i8* %4, i8* %5, %"struct.ap_int<32>"* %bias)
  call void @copy_back([36 x %"struct.ap_uint<8>"]* %0, [36 x i8]* %image_in_copy, [16 x %"struct.ap_uint<8>"]* %1, [16 x i8]* %image_out_copy, [9 x %"struct.ap_uint<8>"]* %2, [9 x i8]* %weights_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([36 x %"struct.ap_uint<8>"]* noalias readonly "unpacked"="0", [36 x i8]* noalias nocapture align 512 "unpacked"="1.0.0.0", [16 x %"struct.ap_uint<8>"]* noalias readonly "unpacked"="2", [16 x i8]* noalias nocapture align 512 "unpacked"="3.0.0.0", [9 x %"struct.ap_uint<8>"]* noalias readonly "unpacked"="4", [9 x i8]* noalias nocapture align 512 "unpacked"="5.0.0.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a36struct.ap_uint<8>"([36 x i8]* align 512 %1, [36 x %"struct.ap_uint<8>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a16struct.ap_uint<8>.29"([16 x i8]* align 512 %3, [16 x %"struct.ap_uint<8>"]* %2)
  call fastcc void @"onebyonecpy_hls.p0a9struct.ap_uint<8>"([9 x i8]* align 512 %5, [9 x %"struct.ap_uint<8>"]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([36 x %"struct.ap_uint<8>"]* noalias "unpacked"="0", [36 x i8]* noalias nocapture readonly align 512 "unpacked"="1.0.0.0", [16 x %"struct.ap_uint<8>"]* noalias "unpacked"="2", [16 x i8]* noalias nocapture readonly align 512 "unpacked"="3.0.0.0", [9 x %"struct.ap_uint<8>"]* noalias "unpacked"="4", [9 x i8]* noalias nocapture readonly align 512 "unpacked"="5.0.0.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a36struct.ap_uint<8>.54"([36 x %"struct.ap_uint<8>"]* %0, [36 x i8]* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a16struct.ap_uint<8>"([16 x %"struct.ap_uint<8>"]* %2, [16 x i8]* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0a9struct.ap_uint<8>.5"([9 x %"struct.ap_uint<8>"]* %4, [9 x i8]* align 512 %5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a9struct.ap_uint<8>.5"([9 x %"struct.ap_uint<8>"]* noalias "unpacked"="0", [9 x i8]* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #3 {
entry:
  %2 = icmp eq [9 x %"struct.ap_uint<8>"]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [9 x i8], [9 x i8]* %1, i64 0, i64 %for.loop.idx1
  %dst.addr.0.0.06 = getelementptr [9 x %"struct.ap_uint<8>"], [9 x %"struct.ap_uint<8>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %3 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %3, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 9
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a9struct.ap_uint<8>"([9 x i8]* noalias nocapture align 512 "unpacked"="0.0.0.0", [9 x %"struct.ap_uint<8>"]* noalias readonly "unpacked"="1") unnamed_addr #3 {
entry:
  %2 = icmp eq [9 x %"struct.ap_uint<8>"]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [9 x %"struct.ap_uint<8>"], [9 x %"struct.ap_uint<8>"]* %1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [9 x i8], [9 x i8]* %0, i64 0, i64 %for.loop.idx1
  %3 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %3, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 9
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a16struct.ap_uint<8>.29"([16 x i8]* noalias nocapture align 512 "unpacked"="0.0.0.0", [16 x %"struct.ap_uint<8>"]* noalias readonly "unpacked"="1") unnamed_addr #3 {
entry:
  %2 = icmp eq [16 x %"struct.ap_uint<8>"]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [16 x %"struct.ap_uint<8>"], [16 x %"struct.ap_uint<8>"]* %1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [16 x i8], [16 x i8]* %0, i64 0, i64 %for.loop.idx1
  %3 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %3, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 16
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a16struct.ap_uint<8>"([16 x %"struct.ap_uint<8>"]* noalias "unpacked"="0", [16 x i8]* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #3 {
entry:
  %2 = icmp eq [16 x %"struct.ap_uint<8>"]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [16 x i8], [16 x i8]* %1, i64 0, i64 %for.loop.idx1
  %dst.addr.0.0.06 = getelementptr [16 x %"struct.ap_uint<8>"], [16 x %"struct.ap_uint<8>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %3 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %3, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 16
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a36struct.ap_uint<8>.54"([36 x %"struct.ap_uint<8>"]* noalias "unpacked"="0", [36 x i8]* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #3 {
entry:
  %2 = icmp eq [36 x %"struct.ap_uint<8>"]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [36 x i8], [36 x i8]* %1, i64 0, i64 %for.loop.idx1
  %dst.addr.0.0.06 = getelementptr [36 x %"struct.ap_uint<8>"], [36 x %"struct.ap_uint<8>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %3 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %3, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 36
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a36struct.ap_uint<8>"([36 x i8]* noalias nocapture align 512 "unpacked"="0.0.0.0", [36 x %"struct.ap_uint<8>"]* noalias readonly "unpacked"="1") unnamed_addr #3 {
entry:
  %2 = icmp eq [36 x %"struct.ap_uint<8>"]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [36 x %"struct.ap_uint<8>"], [36 x %"struct.ap_uint<8>"]* %1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [36 x i8], [36 x i8]* %0, i64 0, i64 %for.loop.idx1
  %3 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %3, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 36
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

declare void @apatb_axi4_conv2D_hw(i8*, i8*, i8*, %"struct.ap_int<32>"*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([36 x %"struct.ap_uint<8>"]* noalias "unpacked"="0", [36 x i8]* noalias nocapture readonly align 512 "unpacked"="1.0.0.0", [16 x %"struct.ap_uint<8>"]* noalias "unpacked"="2", [16 x i8]* noalias nocapture readonly align 512 "unpacked"="3.0.0.0", [9 x %"struct.ap_uint<8>"]* noalias "unpacked"="4", [9 x i8]* noalias nocapture readonly align 512 "unpacked"="5.0.0.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a16struct.ap_uint<8>"([16 x %"struct.ap_uint<8>"]* %2, [16 x i8]* align 512 %3)
  ret void
}

define void @axi4_conv2D_hw_stub_wrapper(i8*, i8*, i8*, %"struct.ap_int<32>"*) #4 {
entry:
  %4 = alloca [36 x %"struct.ap_uint<8>"]
  %5 = alloca [16 x %"struct.ap_uint<8>"]
  %6 = alloca [9 x %"struct.ap_uint<8>"]
  %7 = bitcast i8* %0 to [36 x i8]*
  %8 = bitcast i8* %1 to [16 x i8]*
  %9 = bitcast i8* %2 to [9 x i8]*
  call void @copy_out([36 x %"struct.ap_uint<8>"]* %4, [36 x i8]* %7, [16 x %"struct.ap_uint<8>"]* %5, [16 x i8]* %8, [9 x %"struct.ap_uint<8>"]* %6, [9 x i8]* %9)
  %10 = bitcast [36 x %"struct.ap_uint<8>"]* %4 to %"struct.ap_uint<8>"*
  %11 = bitcast [16 x %"struct.ap_uint<8>"]* %5 to %"struct.ap_uint<8>"*
  %12 = bitcast [9 x %"struct.ap_uint<8>"]* %6 to %"struct.ap_uint<8>"*
  call void @axi4_conv2D_hw_stub(%"struct.ap_uint<8>"* %10, %"struct.ap_uint<8>"* %11, %"struct.ap_uint<8>"* %12, %"struct.ap_int<32>"* %3)
  call void @copy_in([36 x %"struct.ap_uint<8>"]* %4, [36 x i8]* %7, [16 x %"struct.ap_uint<8>"]* %5, [16 x i8]* %8, [9 x %"struct.ap_uint<8>"]* %6, [9 x i8]* %9)
  ret void
}

declare void @axi4_conv2D_hw_stub(%"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_int<32>"*)

attributes #0 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
