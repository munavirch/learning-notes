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

#### Internal Field Seperater

*   `$IFS` has `<space><tab><newline>` as the default value.
*   Uses the values specified in `$IFS` are used for word splitting and to split lines into words while using `read` command.
*   `$*` uses `$IFS` to seperate between the positional arguments.