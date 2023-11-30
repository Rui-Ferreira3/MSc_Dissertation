; ModuleID = 'C:/Users/Rui/Rui/MSc_Dissertation/SoC/accelerator/first_accel/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_matprod_ir(i32* noalias nocapture nonnull readonly %m1, i32* noalias nocapture nonnull readonly %m2, i32* noalias nocapture nonnull %m3, i32 %N1, i32 %N2, i32 %N3) local_unnamed_addr #0 {
entry:
  %m1_copy = alloca [32 x i32], align 512
  %m2_copy = alloca [32 x i32], align 512
  %m3_copy = alloca [32 x i32], align 512
  %0 = bitcast i32* %m1 to [32 x i32]*
  %1 = bitcast i32* %m2 to [32 x i32]*
  %2 = bitcast i32* %m3 to [32 x i32]*
  call fastcc void @copy_in([32 x i32]* nonnull %0, [32 x i32]* nonnull align 512 %m1_copy, [32 x i32]* nonnull %1, [32 x i32]* nonnull align 512 %m2_copy, [32 x i32]* nonnull %2, [32 x i32]* nonnull align 512 %m3_copy)
  %3 = getelementptr inbounds [32 x i32], [32 x i32]* %m1_copy, i32 0, i32 0
  %4 = getelementptr inbounds [32 x i32], [32 x i32]* %m2_copy, i32 0, i32 0
  %5 = getelementptr inbounds [32 x i32], [32 x i32]* %m3_copy, i32 0, i32 0
  call void @apatb_matprod_hw(i32* %3, i32* %4, i32* %5, i32 %N1, i32 %N2, i32 %N3)
  call void @copy_back([32 x i32]* %0, [32 x i32]* %m1_copy, [32 x i32]* %1, [32 x i32]* %m2_copy, [32 x i32]* %2, [32 x i32]* %m3_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([32 x i32]* noalias readonly, [32 x i32]* noalias align 512, [32 x i32]* noalias readonly, [32 x i32]* noalias align 512, [32 x i32]* noalias readonly, [32 x i32]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a32i32([32 x i32]* align 512 %1, [32 x i32]* %0)
  call fastcc void @onebyonecpy_hls.p0a32i32([32 x i32]* align 512 %3, [32 x i32]* %2)
  call fastcc void @onebyonecpy_hls.p0a32i32([32 x i32]* align 512 %5, [32 x i32]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a32i32([32 x i32]* noalias align 512, [32 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [32 x i32]* %0, null
  %3 = icmp eq [32 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [32 x i32], [32 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [32 x i32], [32 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 32
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([32 x i32]* noalias, [32 x i32]* noalias readonly align 512, [32 x i32]* noalias, [32 x i32]* noalias readonly align 512, [32 x i32]* noalias, [32 x i32]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a32i32([32 x i32]* %0, [32 x i32]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a32i32([32 x i32]* %2, [32 x i32]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a32i32([32 x i32]* %4, [32 x i32]* align 512 %5)
  ret void
}

declare void @apatb_matprod_hw(i32*, i32*, i32*, i32, i32, i32)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([32 x i32]* noalias, [32 x i32]* noalias readonly align 512, [32 x i32]* noalias, [32 x i32]* noalias readonly align 512, [32 x i32]* noalias, [32 x i32]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a32i32([32 x i32]* %4, [32 x i32]* align 512 %5)
  ret void
}

define void @matprod_hw_stub_wrapper(i32*, i32*, i32*, i32, i32, i32) #4 {
entry:
  %6 = bitcast i32* %0 to [32 x i32]*
  %7 = bitcast i32* %1 to [32 x i32]*
  %8 = bitcast i32* %2 to [32 x i32]*
  call void @copy_out([32 x i32]* null, [32 x i32]* %6, [32 x i32]* null, [32 x i32]* %7, [32 x i32]* null, [32 x i32]* %8)
  %9 = bitcast [32 x i32]* %6 to i32*
  %10 = bitcast [32 x i32]* %7 to i32*
  %11 = bitcast [32 x i32]* %8 to i32*
  call void @matprod_hw_stub(i32* %9, i32* %10, i32* %11, i32 %3, i32 %4, i32 %5)
  call void @copy_in([32 x i32]* null, [32 x i32]* %6, [32 x i32]* null, [32 x i32]* %7, [32 x i32]* null, [32 x i32]* %8)
  ret void
}

declare void @matprod_hw_stub(i32*, i32*, i32*, i32, i32, i32)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
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
