*   Exit Status - exit status register whether the last ran task is success or not. non-zero error code stands for a failure.
*   `true;` and `false;` are 2 programs that set exit code, `$?` , to 0 and 1 respectively.
*   Command can be combined with if to control the execution with regards to the exit code.

       `if cd somedir; then echo "exists"; fi`

*   For convinience we can define a function that prints an error message and the error message.
*   `&&` executes the program iff the previous program returns a zero error code.
*   `||` executes the program iff the previous program returns a non-zero error code.

#### TRAP

`trap` can be used to handle signals sent to the process or program.

*   1 - SIGHUP - Death of controlling process
*   2 - SIGINT - `Cntrl+C` or interrupt signal
*   3 - SIGQUIT - `Control+D` or quit signal
*   8 - SIGFPE - Issued if attempted illegal mathemetical expression
*   9 - SIGKILL - kill signal. Can not trap this.

Syntax

`trap <command/program> <signals seperated using spaces>`