// RUN: %clang_cc1 -I %S/Inputs -fsycl -fsycl-is-device -ast-dump %s | FileCheck %s

// This test checks that compiler generates correct kernel arguments for
// arrays, Accessor arrays, and structs containing Accessors.

#include <sycl.hpp>

using namespace cl::sycl;

template <typename name, typename Func>
__attribute__((sycl_kernel)) void a_kernel(const Func &kernelFunc) {
  kernelFunc();
}

template <typename T>
struct S {
  T a[3];
};

int main() {

  using Accessor =
      accessor<int, 1, access::mode::read_write, access::target::global_buffer>;

  Accessor acc[2];
  int a[2];
  struct struct_acc_t {
    Accessor member_acc[2];
  } struct_acc;
  S<int> s;

  struct foo_inner {
    int foo_inner_x;
    int foo_inner_y;
    int foo_inner_z[2];
  };

  struct foo {
    int foo_a;
    foo_inner foo_b[2];
    int foo_c;
  };

  foo struct_array[2];

  a_kernel<class kernel_A>(
      [=]() {
        acc[1].use();
      });

  a_kernel<class kernel_B>(
      [=]() {
        int local = a[1];
      });

  a_kernel<class kernel_C>(
      [=]() {
        struct_acc.member_acc[2].use();
      });

  a_kernel<class kernel_D>(
      [=]() {
        foo local = struct_array[1];
      });

  a_kernel<class kernel_E>(
      [=]() {
        int local = s.a[2];
      });
}

// Check kernel_A parameters
// CHECK: FunctionDecl {{.*}}kernel_A{{.*}} 'void (__global int *, cl::sycl::range<1>, cl::sycl::range<1>, cl::sycl::id<1>, __global int *, cl::sycl::range<1>, cl::sycl::range<1>, cl::sycl::id<1>)'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_ '__global int *'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_ 'cl::sycl::range<1>'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_ 'cl::sycl::range<1>'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_ 'cl::sycl::id<1>'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_ '__global int *'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_ 'cl::sycl::range<1>'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_ 'cl::sycl::range<1>'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_ 'cl::sycl::id<1>'
// CHECK: CXXMemberCallExpr {{.*}} 'void'
// CHECK-NEXT: MemberExpr {{.*}}__init
// CHECK: CXXMemberCallExpr {{.*}} 'void'
// CHECK-NEXT: MemberExpr {{.*}}__init

// Check kernel_B parameters
// CHECK: FunctionDecl {{.*}}kernel_B{{.*}} 'void (int, int)'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_ 'int'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_ 'int'
// Check kernel_B inits
// CHECK-NEXT: CompoundStmt
// CHECK-NEXT: DeclStmt
// CHECK-NEXT: VarDecl {{.*}} cinit
// CHECK-NEXT: InitListExpr
// CHECK-NEXT: InitListExpr {{.*}} 'int [2]'
// CHECK: ImplicitCastExpr
// CHECK: DeclRefExpr {{.*}} 'int' lvalue ParmVar {{.*}} '_arg_' 'int'
// CHECK: ImplicitCastExpr
// CHECK: DeclRefExpr {{.*}} 'int' lvalue ParmVar {{.*}} '_arg_' 'int'

// Check kernel_C parameters
// CHECK: FunctionDecl {{.*}}kernel_C{{.*}} 'void (__global int *, cl::sycl::range<1>, cl::sycl::range<1>, cl::sycl::id<1>, __global int *, cl::sycl::range<1>, cl::sycl::range<1>, cl::sycl::id<1>)'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_member_acc '__global int *'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_member_acc 'cl::sycl::range<1>'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_member_acc 'cl::sycl::range<1>'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_member_acc 'cl::sycl::id<1>'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_member_acc '__global int *'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_member_acc 'cl::sycl::range<1>'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_member_acc 'cl::sycl::range<1>'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_member_acc 'cl::sycl::id<1>'
// CHECK-NEXT: CompoundStmt
// CHECK-NEXT: DeclStmt
// CHECK-NEXT: VarDecl {{.*}} used '(lambda at {{.*}}array-kernel-param.cpp:57:7)' cinit
// CHECK-NEXT: InitListExpr {{.*}} '(lambda at {{.*}}array-kernel-param.cpp:57:7)'
// CHECK-NEXT: InitListExpr {{.*}} 'struct_acc_t'
// CHECK-NEXT: InitListExpr {{.*}} 'Accessor [2]'
// CHECK-NEXT: CXXConstructExpr {{.*}} 'Accessor [2]'
// CHECK-NEXT: CXXConstructExpr {{.*}} 'Accessor [2]'

// Check __init functions are called
// CHECK: CXXMemberCallExpr {{.*}} 'void'
// CHECK-NEXT: MemberExpr {{.*}}__init
// CHECK: CXXMemberCallExpr {{.*}} 'void'
// CHECK-NEXT: MemberExpr {{.*}}__init

// Check kernel_D parameters
// CHECK: FunctionDecl {{.*}}kernel_D{{.*}} 'void (int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int)'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_foo_a 'int'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_foo_inner_x 'int'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_foo_inner_y 'int'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_foo_inner_z 'int'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_foo_inner_z 'int'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_foo_inner_x 'int'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_foo_inner_y 'int'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_foo_inner_z 'int'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_foo_inner_z 'int'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_foo_c 'int'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_foo_a 'int'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_foo_inner_x 'int'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_foo_inner_y 'int'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_foo_inner_z 'int'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_foo_inner_z 'int'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_foo_inner_x 'int'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_foo_inner_y 'int'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_foo_inner_z 'int'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_foo_inner_z 'int'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_foo_c 'int'
// CHECK-NEXT: CompoundStmt
// CHECK-NEXT: DeclStmt
// CHECK-NEXT: VarDecl {{.*}} used '(lambda at {{.*}}array-kernel-param.cpp{{.*}})' cinit
// CHECK-NEXT: InitListExpr {{.*}} '(lambda at {{.*}}array-kernel-param.cpp{{.*}})'

// Initializer for struct array i.e. foo struct_array[2]
// CHECK-NEXT: InitListExpr {{.*}} 'foo [2]'

// Initializer for first element of struct_array
// CHECK-NEXT: InitListExpr {{.*}} 'foo'
// CHECK-NEXT: ImplicitCastExpr
// CHECK-NEXT: DeclRefExpr {{.*}} 'int' lvalue ParmVar {{.*}} '_arg_foo_a' 'int'
// Initializer for struct array inside foo i.e. foo_inner foo_b[2]
// CHECK-NEXT: InitListExpr {{.*}} 'foo_inner [2]'
// Initializer for first element of inner struct array
// CHECK-NEXT: InitListExpr {{.*}} 'foo_inner'
// CHECK-NEXT: ImplicitCastExpr
// CHECK-NEXT: DeclRefExpr {{.*}} 'int' lvalue ParmVar {{.*}} '_arg_foo_inner_x' 'int'
// CHECK-NEXT: ImplicitCastExpr
// CHECK-NEXT: DeclRefExpr {{.*}} 'int' lvalue ParmVar {{.*}} '_arg_foo_inner_y' 'int'
// CHECK-NEXT: InitListExpr {{.*}} 'int [2]'
// CHECK-NEXT: ImplicitCastExpr
// CHECK-NEXT: DeclRefExpr {{.*}} 'int' lvalue ParmVar {{.*}} '_arg_foo_inner_z' 'int'
// CHECK-NEXT: ImplicitCastExpr
// CHECK-NEXT: DeclRefExpr {{.*}} 'int' lvalue ParmVar {{.*}} '_arg_foo_inner_z' 'int'
// Initializer for second element of inner struct array
// CHECK-NEXT: InitListExpr {{.*}} 'foo_inner'
// CHECK-NEXT: ImplicitCastExpr
// CHECK-NEXT: DeclRefExpr {{.*}} 'int' lvalue ParmVar {{.*}} '_arg_foo_inner_x' 'int'
// CHECK-NEXT: ImplicitCastExpr
// CHECK-NEXT: DeclRefExpr {{.*}} 'int' lvalue ParmVar {{.*}} '_arg_foo_inner_y' 'int'
// CHECK-NEXT: InitListExpr {{.*}} 'int [2]'
// CHECK-NEXT: ImplicitCastExpr
// CHECK-NEXT: DeclRefExpr {{.*}} 'int' lvalue ParmVar {{.*}} '_arg_foo_inner_z' 'int'
// CHECK-NEXT: ImplicitCastExpr
// CHECK-NEXT: DeclRefExpr {{.*}} 'int' lvalue ParmVar {{.*}} '_arg_foo_inner_z' 'int'
// CHECK-NEXT: ImplicitCastExpr
// CHECK-NEXT: DeclRefExpr {{.*}} 'int' lvalue ParmVar {{.*}} '_arg_foo_c' 'int'

// Initializer for second element of struct_array
// CHECK-NEXT: InitListExpr {{.*}} 'foo'
// CHECK-NEXT: ImplicitCastExpr
// CHECK-NEXT: DeclRefExpr {{.*}} 'int' lvalue ParmVar {{.*}} '_arg_foo_a' 'int'
// CHECK-NEXT: InitListExpr {{.*}} 'foo_inner [2]'
// CHECK-NEXT: InitListExpr {{.*}} 'foo_inner'
// CHECK-NEXT: ImplicitCastExpr
// CHECK-NEXT: DeclRefExpr {{.*}} 'int' lvalue ParmVar {{.*}} '_arg_foo_inner_x' 'int'
// CHECK-NEXT: ImplicitCastExpr
// CHECK-NEXT: DeclRefExpr {{.*}} 'int' lvalue ParmVar {{.*}} '_arg_foo_inner_y' 'int'
// CHECK-NEXT: InitListExpr {{.*}} 'int [2]'
// CHECK-NEXT: ImplicitCastExpr
// CHECK-NEXT: DeclRefExpr {{.*}} 'int' lvalue ParmVar {{.*}} '_arg_foo_inner_z' 'int'
// CHECK-NEXT: ImplicitCastExpr
// CHECK-NEXT: DeclRefExpr {{.*}} 'int' lvalue ParmVar {{.*}} '_arg_foo_inner_z' 'int'
// CHECK-NEXT: InitListExpr {{.*}} 'foo_inner'
// CHECK-NEXT: ImplicitCastExpr
// CHECK-NEXT: DeclRefExpr {{.*}} 'int' lvalue ParmVar {{.*}} '_arg_foo_inner_x' 'int'
// CHECK-NEXT: ImplicitCastExpr
// CHECK-NEXT: DeclRefExpr {{.*}} 'int' lvalue ParmVar {{.*}} '_arg_foo_inner_y' 'int'
// CHECK-NEXT: InitListExpr {{.*}} 'int [2]'
// CHECK-NEXT: ImplicitCastExpr
// CHECK-NEXT: DeclRefExpr {{.*}} 'int' lvalue ParmVar {{.*}} '_arg_foo_inner_z' 'int'
// CHECK-NEXT: ImplicitCastExpr
// CHECK-NEXT: DeclRefExpr {{.*}} 'int' lvalue ParmVar {{.*}} '_arg_foo_inner_z' 'int'
// CHECK-NEXT: ImplicitCastExpr
// CHECK-NEXT: DeclRefExpr {{.*}} 'int' lvalue ParmVar {{.*}} '_arg_foo_c' 'int'

// Check kernel_E parameters
// CHECK: FunctionDecl {{.*}}kernel_E{{.*}} 'void (int, int, int)'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_a 'int':'int'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_a 'int':'int'
// CHECK-NEXT: ParmVarDecl {{.*}} used _arg_a 'int':'int'
// CHECK-NEXT: CompoundStmt
// CHECK-NEXT: DeclStmt
// CHECK-NEXT: VarDecl {{.*}} used '(lambda at {{.*}}array-kernel-param.cpp:67:7)' cinit
// CHECK-NEXT: InitListExpr {{.*}} '(lambda at {{.*}}array-kernel-param.cpp:67:7)'
// CHECK-NEXT: InitListExpr {{.*}} 'S<int>'
// CHECK-NEXT: InitListExpr {{.*}} 'int [3]'
// CHECK-NEXT: ImplicitCastExpr {{.*}} 'int':'int'
// CHECK-NEXT: DeclRefExpr {{.*}} 'int':'int'
// CHECK-NEXT: ImplicitCastExpr {{.*}} 'int':'int'
// CHECK-NEXT: DeclRefExpr {{.*}} 'int':'int'
// CHECK-NEXT: ImplicitCastExpr {{.*}} 'int':'int'
// CHECK-NEXT: DeclRefExpr {{.*}} 'int':'int'
