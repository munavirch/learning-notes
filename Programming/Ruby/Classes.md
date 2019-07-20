*   Classes are created using `class` command.

**Syntax**

`class ClassName`

`end`

*   Object creation: `ClassName.new`
*   Class can have methods, like below

`class Book`

`   def who_am_i`

`      puts "I'm Munavir"`

`   end`

`end`

*   Instance method can be called as, `obj.who_am_i`
*   `initialize` bootstraps an object creation
*   instance variables are suffixed with a `@`

**Attribute Accessor**

*   To access an instance variable outside class defenition, we'll need _attribute accessors_
*   Accessor is a method which returns the variable value. 

`def title`

`   @title`

`end`

*   Accessor can be defined using a shorthand, `:attr_reader @title` (read only) or `:attr_writer @title` (write-only) and `:attr_accessor @title` (R&W)

**Class Methods**

*   Class methods are methods which can access directly using the `ClassName` , no need of instances.

`class Food`

`   def self.cook`

`      puts "Cooking"`

`   end`

`end`

*   Class methods can be access as, `Food.cook`.
*   Notice the `self` infront of the function name.