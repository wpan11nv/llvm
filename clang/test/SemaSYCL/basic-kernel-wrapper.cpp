// RUN: %clang_cc1 -I %S/Inputs -fsycl -fsycl-is-device -ast-dump %s | FileCheck %s

// This test checks that compiler generates correct kernel wrapper for basic
// case.

#include <sycl.hpp>

template <typename Acc>
struct AccWrapper { Acc accessor; };

template <typename name, typename Func>
__attribute__((sycl_kernel)) void kernel(const Func &kernelFunc) {
  kernelFunc();
}

int main() {
  cl::sycl::accessor<int, 1, cl::sycl::access::mode::read_write> acc;
  kernel<class kernel_wrapper>(
      [=]() {
        acc.use();
      });
}

// Check declaration of the kernel

// CHECK: FunctionDecl {{.*}}kernel_wrapper{{.*}} 'void (__global int *, cl::sycl::range<1>, cl::sycl::range<1>, cl::sycl::id<1>)'

// Check parameters of the kernel

// CHECK: ParmVarDecl {{.*}} used [[_arg_Mem:[0-9a-zA-Z_]+]] '__global int *'
// CHECK: ParmVarDecl {{.*}} used [[_arg_AccessRange:[0-9a-zA-Z_]+]] 'cl::sycl::range<1>'
// CHECK: ParmVarDecl {{.*}} used [[_arg_MemRange:[0-9a-zA-Z_]+]] 'cl::sycl::range<1>'
// CHECK: ParmVarDecl {{.*}} used [[_arg_Offset:[0-9a-zA-Z_]+]] 'cl::sycl::id<1>'

// Check body of the kernel

// Check lambda declaration inside the wrapper

// CHECK: DeclStmt
// CHECK-NEXT: VarDecl {{.*}} used '(lambda at {{.*}}basic-kernel-wrapper.cpp{{.*}})'

// Check accessor initialization

// CHECK: CXXMemberCallExpr {{.*}} 'void'
// CHECK-NEXT: MemberExpr {{.*}} 'void ({{.*}}PtrType, range<1>, range<1>, id<1>)' lvalue .__init
// CHECK-NEXT: MemberExpr {{.*}} 'cl::sycl::accessor<int, 1, cl::sycl::access::mode::read_write>':'cl::sycl::accessor<int, 1, cl::sycl::access::mode::read_write, cl::sycl::access::target::global_buffer, cl::sycl::access::placeholder::false_t>' lvalue .
// CHECK-NEXT: DeclRefExpr {{.*}} '(lambda at {{.*}}basic-kernel-wrapper.cpp{{.*}})' lvalue Var

// CHECK-NEXT: ImplicitCastExpr {{.*}} <LValueToRValue>
// CHECK-NEXT: DeclRefExpr {{.*}} '__global int *' lvalue ParmVar {{.*}} '[[_arg_Mem]]' '__global int *'

// CHECK-NEXT: CXXConstructExpr {{.*}} 'range<1>':'cl::sycl::range<1>'
// CHECK-NEXT: ImplicitCastExpr {{.*}} 'const cl::sycl::range<1>' lvalue <NoOp>
// CHECK-NEXT: DeclRefExpr {{.*}} 'cl::sycl::range<1>' lvalue ParmVar {{.*}} '[[_arg_AccessRange]]' 'cl::sycl::range<1>'

// CHECK-NEXT: CXXConstructExpr {{.*}} 'range<1>':'cl::sycl::range<1>'
// CHECK-NEXT: ImplicitCastExpr {{.*}} 'const cl::sycl::range<1>' lvalue <NoOp>
// CHECK-NEXT: DeclRefExpr {{.*}} 'cl::sycl::range<1>' lvalue ParmVar {{.*}} '[[_arg_MemRange]]' 'cl::sycl::range<1>'

// CHECK-NEXT: CXXConstructExpr {{.*}} 'id<1>':'cl::sycl::id<1>'
// CHECK-NEXT: ImplicitCastExpr {{.*}} 'const cl::sycl::id<1>' lvalue <NoOp>
// CHECK-NEXT: DeclRefExpr {{.*}} 'cl::sycl::id<1>' lvalue ParmVar {{.*}} '[[_arg_Offset]]' 'cl::sycl::id<1>'

// Check that body of the kernel caller function is included into kernel

// CHECK: CompoundStmt {{.*}}
// CHECK-NEXT: CXXOperatorCallExpr {{.*}} 'void'
// CHECK-NEXT: ImplicitCastExpr {{.*}} 'void (*)() const' <FunctionToPointerDecay>
// CHECK-NEXT: DeclRefExpr {{.*}} 'void () const' lvalue CXXMethod {{.*}} 'operator()' 'void () const'
// CHECK-NEXT: ImplicitCastExpr {{.*}} 'const (lambda at {{.*}}basic-kernel-wrapper.cpp{{.*}})' lvalue <NoOp>
// CHECK-NEXT: DeclRefExpr {{.*}} '(lambda at {{.*}}basic-kernel-wrapper.cpp{{.*}})' lvalue Var

// Check kernel wrapper attributes

// CHECK: OpenCLKernelAttr {{.*}} Implicit
// CHECK: AsmLabelAttr {{.*}} Implicit "{{.*}}kernel_wrapper{{.*}}"
// CHECK: ArtificialAttr {{.*}} Implicit
