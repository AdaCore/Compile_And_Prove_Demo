# Compile_And_Prove_Demo

This is a repository for the examples of code that will be used on the AdaCore
Community website, to demo compilation with GNAT and proof with SPARK.

Each example comes in 3 versions, stored in different sub-directories:

* *initial version* - version with compilation errors or warnings, that is also
  unprovable
* *unproved version* - version that is compilable but not provable
* *proved version* - version that is both compilable and provable

The initial version contains either direct instructions on how to make the
example compilable and provable, or hints on what to modify. Each sub-directory
contains a Makefile with entries to compile and prove all examples.

The examples are in increasing order of difficulty:

## hello world

sources: `hello_world.adb`

This shows basic use of the standard command line facilities to print a "hello,
world" type of message on the standard output. In the initial version, the
precondition of a call to a standard function may be violated. This must be
fixed to prove the example.

## absolute value

sources: `absolute_value.adb`

This shows basic use of Ada operators, statements and contracts. In the version
that compiles, the postcondition of the function cannot be proved and a
run-time check might fail. A precondition is required to fix both issues.

## bitwise swap

sources: `bitwise_swap.adb`

This shows basic use of Ada modular types (the unsigned of C/C++) with bitwise
operators, and a contract relating input and output values of a procedure. In
the initial version, the compiler points to missing tokens to make the code
valid.

## saturate angle

sources: `saturate.ads saturate.adb saturate_angle.ads`

This shows basic use of generics in Ada, with a generic function being
instantiated for two scalar values, and a contract on the generic function. In
the initial version, the compiler rejects mistyped literals (there is no
implicit conversion between integers and floats in Ada).

## sensor average

sources: `sensor_average.ads sensor_average.adb`

This shows basic use of fixed-point types in Ada (real types with a fixed
precision contrary to floating-point types) and variables with memory-mapped
addresses for sensors. In the initial version, the postcondition of a local
function cannot be proved due to missing parentheses in an expression.

## strings

sources: `strings.ads strings.adb`

This shows basic use of arrays and strings in Ada, with a rich postcondition
quantifying over the content of strings, and a loop invariant stating the same
property during loop iteration. In the compilable version, the example cannot
be proved due to a subtle off-by-one error.

## communications

sources: `communications.ads communications.adb`

This shows basic use of a protected object to communicate between two tasks. In
the initial version, the compiler rejects a declaration of the protected object
that does not hide its components. In the compilable version, the safety of
concurrent accesses to a global variable cannot be proved between the tasks.

## landing procedure

sources: `avionics.ads landing_procedure.adb`

This shows basic use of object orientation in Ada, with an interface type being
derived into a tagged type. In the initial version, the compiler rejects a
derived type that fails to implement all abstract operations from its parent
interface. In the compilable version, the safety of behavioral subtyping
(weakening of preconditions and strengthening of postconditions) between the
parent interface and the derived type cannot be proved. In the proved version,
behavioral subtyping ensures that a dispatching call to the procedure with the
contract satisfies the precondition of the call, whatever the dynamic type of
the object.
