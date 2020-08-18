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
*   *Substring operation*, `s[i:j]`, returns the substring starting at `i` and upto but not including `j`. If `i` is omitted, `0` is assumed as the start and if `j` is omitted, `len(s)` is assumed as the end.
*   *Operators* `+` is concatination. Comparison operators works byte byte, so the result is natural lexicographic ordering.
*   *String literal* is a sequence of bytes enclosed in double quotes. `\` is used as an *escape literal* which can be used to insert arbitrary bytes in the string. `\` is also used to escape ASCII control codes like new line, tab etc.
*   A hexadecimal byte is inserted as `\xhh` with exactly two hexadecimal digits. An octal is inserted as `\ooo` with exactly 3 digits not exceeding `\377`.
*   A raw string literal is enclosed using backquotes. Raw string string literal doesn't process any escape literals. Only processing happening is, carriage returns are deleted since the value of the string remains the same across platforms.
*   A unicode value can be inserted in two ways, utf-8 encoded 16 bit value or 32 bit value like, `\uhhh` for 16-bit and `\Uhhhhhh` for 32-bits.
*   Since `len()` returns the number of bytes used, strings containing utf-8 code points won't work well with `len`. `utf.DecodeRuneInString()` can be used to decode each charecter and the number of bytes used to store the charecter, function returns both. `range` loop on a string call the function implicitly.
*   *Conversion* `[]rune(s)` converts the string into unicode code point that string enodes. `string(r)` converts back to the unicode code point. `string(65)` is `A` not `"65"`.
*   Essential packages for handling string operations: `bytes`, `strconv`, `strings` and `unicode`.
*   **Constants** are whose value is know to the compiler and whose evaluation is guarenteed to happen during compilation. Constants can't be redeclared.
*   Declares like, `const pi = 3.14`. Underlying type of constants are basic types.
*   If a constant is not assigned a value, it takes the value of previous assignment, if it's in the same decleration block.
*   *Constant generator* `iota` can be used in constant declarations. `iota` generates numbers from zero, one, two, and so on for the consecutive constants.
*   Go constants can be untyped which allows to store larger and more pricise value than a normal variable.

## Composite Types

*   Composite types are collections of basic types. There are 4 composite types: arrays, slices, structs and maps. Arrays and slices are collection of the same type where as structs and maps holds different types. Arrays and structs are fixed size and slices and maps are variable.
*   **Arrays** fixed-length sequence of zero or more values of the same type. Length of an array is `len(ar)`.
*   Arrays can be initialized using *array literal*. `var b [3]int = [3]int{1,2,3}`. Uninitialized indices will be set to zero value of the type.
*   `...`, ellipsis, when used specifies the length of the array as the number of items in the array literal. `q := [...]{1,2,3}`, `q` will be of length 3.
*   Arrays with different sizes are different types. `[3]int` is not the same type as `[4]int`.
*   Array literal can specify indices when initializing an array, allowing the declaration in any order. e.g. `q := [...]int{99: -1}`, `q` is an array of size 100 with last element set to `-1`.
*   **Slice** `[]T` variable length-sequence whose items are of type `T`.
*   Slice has 3 components, a pointer, length and capacity. Pointer referes to the start of the slice, length the length of the slice and capacity is capacity of underlying array from the start of the slice.
*   `var t = []int{0,1,2,3,4}`, `k := t[1:3]` yields a pointer to the second element of `t`, length `1` and capacity `4`. A slice can be extended like `k[:3]`, eventhough the length of `k` is `1`, it should not exceed it's capacity.
*   Comparison `==` doesn't work with slices like with the arrays. But the comparison with `nil` is legal but use `len(s)` instead. 
*   Built in function `make` can create and return a slice. `k := make([]T, len)` creates an array under the hood and and returns a slice with length and capacity `len`. Capacity can be explicitly specified as the third argument.