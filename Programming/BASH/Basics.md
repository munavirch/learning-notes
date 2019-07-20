#### Variables

*   Assignment Syntax: `var=value`, no spaces before or after the assignment operator.
*   Retrieval, `$var`, `$` followed the by the variable name.
*   Scope of the variable is limited to the script or terminal.  _Terminal launches another process when you execute a shell script inside a terminal. So, terminal's variable won't be available in the script_
*   The `export` command adds the variable to environment variable, which indeed are accessible from anywhere in the machine.

#### Wildcards

*   Used in listing or specifying files.
*   e.g. `/tmp/` _denotes everything inside_ `_/tmp_` _folder._ `_/tmp/*.csv_` _denotes all files with_ `_csv_` _extension inside_ `_/tmp_` _directory._
*   `*` is the wildcard charecter.

#### Escape Charecters

*   Most of the charecters can be escaped using double quotes. e.g. _is a wildcard, but enclosed in double quotes,_ `_*_` _is having literal meaning._
*   Charecters which are interpreted still inside a double quote are, `"`, `$`, `\` and `` ` ``
*   Above charecters can be escaped using a back slash.

#### String Interpolation

*   All variables specified in a string are parse unless `$` is escaped or variable name unidentifiable.
*   String interpolation can be used to assign or specify a default value to a variable.
    *   `"{$myvar:- Value}"` returns `"Value"` if `$myvar` is not set.\\
    *   `"{$myvar:= Value}"` return `"Value"` and assigns `"Value"` to `$myvar`.

#### Shell Script Sourcing

*   Stands for execution of a script (not only shell, all files with has a `x` permission)
*   Can invoke in either of two ways,
    *   `source <filename>`
    *   `./<filename>` or `/usr/local/bin/<filename>` (complete path)

#### shift

*   `shift` is a build in command in bash.
*   `shift` is used to shift positional arguments by a number of values, defaulst to 1.
*   If `n` is the argument for `shift`, then `$n` becomes `$1`, `$n+1` becomes `$2` and so on.
*   Popular use case, traverse through arguments:

`while (( "$#" )); do`

`   eho $1`

`   shift`

`done`

#### let

`let` is a built-in command that evaluate arithmatic expressions.

Syntax:

`let y=253+272` sets 455 to `$y`

`let y=$y+1` or `let y+=1` adds one to `$y`

`let y=$k+$p` adds `$k` and `$p` and stores the value to `$y`.

#### User Inputs

*   `read`
    *   Syntax: `read <variable>`

#### Argument parsing

*   getopts: built in command to parse short options (options with `-`)
*   Syntax: `getopts _opstring_ _optname_ [ arg ]`
*   Each time `getopts` is ran, it looks for an option is `opstring`
    *   If the options is without arguments, if a match is found, `getopts` places the option letter to `optname`. If a match is not found, `optname` will be set to `?`.
    *   If an option expects arguments and found, `getopts` places the argument to `$OPTARG`. If the expected argument is not found, `optname` is set to `:`.
    *   `getopts` then increases the `OPTIND` value which indicates the next paramter index to be processed.
*   `getopts` interprets `--` as end of the parameters.
*   `opstring`:
    *   without arguments, `aZc` looks for `-a`, `-Z`, `c` or all possible combinations like, `-aZ`, `-Zc` etc.
    *   arguments are specified using a `:` after the option expecting the argument, e.g. `a:Zc:` tells the `getopts` that `a` and `c` are expecting arguments.
*   `?` and `:` are reserved from specifying in `opstring`

#### Flow Control - if

Syntax:

`if [ condition ]; then # ; not required if _then_ is next line`

`  statement`

`elif [ condition ]; then # ; same goes here`

`  statement`

`else`

`  statement`

`fi`

#### Loops - for

_loops through a list of values. list is a list of variables saperated by spaces._

Syntax:

`for item in list; do`

`  statement`

`done`

Also supports:

`for (( i=0; i<n; i++ )); do`

`  statement`

`done`

#### Loops - while

Syntax:

`while [ condition ]; do`

`  statement`

`done`

**Reading a file line by line using while loop**

``while f=`line`; do``

`   echo $f`

`done < myfile`

#### Loops - until

_statement gets executed when_ `_condition_` _is false_

Syntax:

`until [ condition ]; do`

`  statement`

`done`