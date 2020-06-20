#### SHELL

*   `$SHELL` - path to the default interpreter.

#### PROMPTS

*   `$PS1` - default prompt.
*   `$PS2` - continuation prompt.
*   `$PS3` - prompt for select.
*   `$PS4` - prompt for `set -x`, debug.
*   `$PROMPT_COMMAND` - this command will be executed just before `$PS1`

#### Script Parameters

*   `$1` to `$n` - positional parameters.
*   `$0` - name of the script.
*   `$*` - all arguments as a single string
*   `$@` - all arguments as an array of paramters separated by space
*   `$#` - number of positional params
*   `$$` - PID of the script
*   `$?` - last return code

#### Special Charecters

*   `:` - empty expression, always true
*   `~` - home directory, `~username` gives username's home direcotry
*   `` ` `` - Command archiac, strong quote
*   `#` - comment
*   `$` - variable expression
*   `&` - background job
*   `*` - string wildcard
*   `( )` - start, end subshell
*   `\` - quote next charecter
*   `|` - pipe
*   `[ ]` - charecter set wild card
*   `{ }` - start end command block, brace expression
*   `;` - shell command saperator
*   `"` - weak quote
*   `<` - input redirect
*   `>` - ouput redirect
*   `/` - pathname directory saperator
*   `?` - single charecter wildcard
*   `!` - pipeline logical not


#### Internal Field Seperater

*   `$IFS` has `<space><tab><newline>` as the default value.
*   Uses the values specified in `$IFS` are used for word splitting and to split lines into words while using `read` command.
*   `$*` uses `$IFS` to seperate between the positional arguments.