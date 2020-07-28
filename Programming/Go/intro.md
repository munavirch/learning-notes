# GO

## Intro
*   Go is a open sourced, high level, compiled, strictly typed, memory managed, unicoded by default, programming language developed at Google by Robert Griesemer, Rob Pike and Ken Thompson.
*   Go borrows good features from many other programming languages like, syntax heavily inspired from C, concurrency design from CSP etc.

## Program Structure
*   Every file in Go starts with a *package declaration*. Go program starts it's execution from a `main` package.
*   Package declaration follows module imports followed by variable and functions declararions and program statements, order in-sensitive.
*   GO doesn't require a semi-column at the end of each statement. New lines after certain tokens are converted into semi-columns, so that where a new line is placed does matter. For e.g., `{` after the function declaration must be on the same line or in the statement, `x + y`, new line can come after `+` not before it.
*   **Key words** : GO has 25 keywords, which can't be used as names. They are: `break`, `case`, `chan`, `const`, `continue`, `default`, `defer`, `else`, `fallthrough`, `for`, `func`, `go`, `goto`, `if`, `import`, `interface`, `map`, `package`, `range`, `return`, `select`, `struct`, `switch`, `type`, `var`
*   **Predeclared Names** : In addition to keywords, Go has dozens of predeclared built-in for constants, types and functions. These names can be redeclared.
*   Constants : `true`, `false`, `iota`, `nil`
*   Types : `int`, `int8`, `int16`, `int32`, `int64`, `uint`, `uint8`, `uint16`, `uint32`, `uint64`, `uintptr`, `float32`, `float64`, `complex128`, `complex64`, `bool`, `byte`, `rune`, `string`, `error`
*   Functions : `make`, `len`, `cap`, `new`, `append`, `copy`, `close`, `delete`, `complex`, `real`, `imag`, `panic`, `recover`
*   GO follows camel case instead of underscores.

### Declarations
*   There are mainly 4 types of declarations in GO : `var`, `const`, `type` and `func`.
*   **Variable declaration** is as follows, `var name type = expression`. `type` or the `expression` may be omitted, but not both. If `type` is omitted  variable will be assigned the type of `expression`. If `expression` is omitted, `name` will be assigned zero value of `type`.
*   Zero values are `""` for string, `0` for number, `false` for boolean and `nil` for intefaces and reference types.
*   A set of variable can initialized by calling a function that returns multiple values. `var file, err = os.Open("file.txt")`
*   Varible declarations *inside a function* can be made short using `:=`. `name := expression`.
*   A null variable can be declared using an underscore, which drops the value of expression. Which is useful in some scenarios like loops.
*   **Pointers** Go supports pointers, but not pointer arithematics. `&` get the address of a variable and `*` gets the value at a pointer address.
*   Pointer type is defined as `*type`. A pointer to an `int` will be of type `*int`. *Zero value* is `nil`.
*   When a pointer is assigned an address, an alias to the variable is created, which significally infulence the lifecycle of the variable in a program and garbage collection.
*   `new` function can be used to create aliases without having a dummy name.
*   **Assignment** is done using `=`. Also, GO has assignment short-hand for each arithematic operation. e.g., `+=` for addition. Assignment also includes the shor-hand variable declaration.
*   Go supports tuple assignments, like `x, y, z = y, z, x`.
*   GO has two types of assigment, implicit and explicit. Explicit assignment uses an assignement operator to assign the value to a variable. Implicit assignment like function call automatically assigns values to the argument names.
*   *Assignability* both sides of assignment should be assignable in order to succeed the assignment operation. Assignability also applies for comparisons.
*   New **types** can be declared like this, `type name undelying-type`. This type behaves just as any custom type.
*   For a type `T` type conversion can be done using `T()` only if the underlying type matches. Conversion only changes the type not the value.
*   Type specific methods can be defined as `func (v type) Method() return_type {/*block*/}` and can be called as `type.Method()`.
*   **Package** provides a separate namespace for its declarations. The information accessed outside of the package can be controlled by capitilization of variable or function names. Names starting with a capital letter are exported outside of the package.
*   When Go encounters an `import` statement, compiler searches for packages inside the `$GOPATH`.
*   *Package Initialization* can be done in Go using a special function name `init()`. `init` functions can not be referenced and they are executed automatically in the order they are declared when the program starts.
*   One package is initialized at a time in the order of their imports in the program such that main package is intiailized at the last.
*   **Scope** Go implements lexical blocks. A variable is available to as many inner lexical blocks as possible, but not outside the lexical block.
*   Control statements like `if`, `for` creates a implicit block for the expression part in addition to their body blocks. A variable declared in the expression block of an `if` statement will not be available outside of the body.

## Basic Data Types

*   Go's types falls in to 4 categories: basic, aggregate, reference and interface. Basic type has numbers, string and boolean. Aggregate type has arrays and structs. Reference types includes pointers, map, slices, functions and channels.
*   **Integers** Go has 4 disctict size of integers, both signed and unsigned, 8, 16, 32 and 64. They are `int8`, `int16`, `int32`, `int64` for signed integers and `uint8`, `uint16`, `uint32`, `uint64` for unsigned. Signed numbers are represented in *2's complinent* form.
*   There is also a type `int` which may be of size 32 or 64 bits, it's compiler specific. `int` is not the same type as `int32` or `int64`.
*   `rune`, unicode code point, is an alias to `int32`. `byte` an alias to `uint8`.
*   `uintptr`, size is unspecified and is enough to hold the address of a pointer.
*   Go's binary operators (arithematic, logical and comparison) according to decreasing precedence are: [ `*`, `/`, `%`, `<<`, `>>`, `&`, `&^` ], [ `+`, `-`, `|`, `^` ], [ `==`, `!=`, `<`, `<=`, `>`, `>=` ], [ `&&` ], [ `||` ]
*   Modulus operator is only applicable to integers and has the sign of divident.
*   Higher order bits are discarded in case of an *overflow*.
*   For comparison, both left hand side and right hand side should be of same type. 
*   Go also has *unary operators* `+` and `-`. For integers, `+` is `0 + x` and `-` is `0 - x`. For float, `+` has not effect and `-` is the negation of the number.
*   Go supports following *binary operations* `&` - `AND`, `|` - `OR`, `^` - `NOT` when unary and `XOR` when used as binary operator, `&^` - `AND NOT` or bit clear, `<<` - left shift and `>>` - right shift.
*   **Floating Point** Go provides two sizes: `float32` and `float64`. While specifying a floating point number, either side of the floating point can be omitted or can use exponents.
*   **Complex Numbers** - DEFER.
*   **Boolean** can hold either `true` or `false`. Doesn't have an implicit coversion with integer.
*   **String** string is a immutable sequence of bytes. Text strings are utf-8 encoded runes by default.
*   `len` function returns the number of bytes used not the number of runes used.
*   *Substring operation*, `s[i:j]`, returns the substring starting at `i` and upto but not including `j`.