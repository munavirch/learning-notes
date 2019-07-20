*   Dynamically typed OOP language made from a developer's perspective to make programming fun.
*   There are 5 types of variables.
    *   `apple` - local variable
    *   `$apple` - global var
    *   `@apple` - instance variable
    *   `@@apple` - class variable
    *   `APPLE` - constant
*   String operations:-
    *   length - `str.size`
    *   case convert - `str.upcase/lowcase`
    *   replace - `str.gsub(find,replace)`
    *   chars array - `str.chars`
    *   concatination - `str1+str2`
*   Type casting:-
    *   To int - `obj.to_i`
    *   To str - `obj.to_s`
    *   To boolean - `obj.to_b`
    *   so on
*   String interpolation - variables are automatically substitued in a string when specified in `#{apple}` format
*   Arrays:- 
    *   zero indexed, square brackets and comma delimeter.
    *   returns `nil` when index overloading
    *   no of elements: `arr.size`
    *   can append using `<<`. e.g. `arr << 3`
*   Hash:- dictionary
    *   can access the element like associative arrays

### If control

`if <condition>`

`   statement`

`end`

*   Has conditional operators: <,<=,>,>=,==, !=.
*   Use ! for negation
*   `else` and `elseif` works normal.
*   Logical operators: &&, || and !
*   Supports if short hand. e.g `<statement> if <condition>?`
*   Support ternary operations: `<condition> ? <true return> : <false return>`

### Unless

`unless <condition>`

`    statement`

`end`

*   `unless` does the reverse function of `if`. Executes the statement if condition is `false`.

### Each loop

\>> With array

`collection.each do |variable|`

`    statement`

`end`

Short hand - `collection.each { |n| puts n }`

\>> With index

`collection.each_with_index do | item, index |`

`    statement`

`end`

Short hand - `collection.each_with_index { | item, index | <statement> }`

\>> With hash

`collection.each do | key, value |`

`    statement`

`end`

Short hand - `collection.each { | k,v | puts "#{k} = #{v}" }`

### Times Loop

Iterates the statement n times.

`10.times do | i |`

`    statement`

`end`

Short hand - `10.times { | i | <statement> }`

PS: Index variable is not required.

### Range loop

A range, say 1 to 10, can be looped in ruby as follows.

`(1..10).each { | iter | puts iter }`

### While loop

`while <condition>`

`    statement`

`end`

Exits loop when `condition` is false.

### Until loop

Just the reverse of `while` , exits when `condition` is true

> `break` and `continue` is as usual.