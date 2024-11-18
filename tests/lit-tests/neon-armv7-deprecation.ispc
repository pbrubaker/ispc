// RUN: %{ispc} --nowrap --target=neon-i16x8 --arch=arm --target-os=linux --emit-asm -o %t.s %s 2>&1 | FileCheck %s --check-prefix=NEON_i16x8
// RUN: %{ispc} --nowrap --target=neon-i8x16 --arch=arm --target-os=linux --emit-asm -o %t.s %s 2>&1 | FileCheck %s --check-prefix=NEON_i8x16

// REQUIRES: ARM_ENABLED && LINUX_ENABLED

// NEON_i16x8: Warning: The target neon-i16x8 is deprecated and will be removed in the future.
// NEON_i8x16: Warning: The target neon-i8x16 is deprecated and will be removed in the future.

void foo() {}