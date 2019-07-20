*   Test is a shell built-in for testing files and comparing values.
*   `test` has an alias, `[` which acts as a real program. Which means, values following by `[` is considered as arguments to `[` , keep it seperated using spaces.
*   Comarison operators available: `=`, `!=`, `-gt`,`-lt`, `-ge`, `-le`.
*   `!` is used as negation.
*   Logical operators are `a` for and and `o` for or.
*   Other tests:
    *   `-n STRING` length of the string is non-zero.
    *   `-z STRING` length of the string is zero
*   File tests:
    *   `FILE1 -ef FILE2` FILE1 and FILE2 has same device and inode numbers.
    *   `FILE1 -nt FILE2` FILE1 is newer than the FILE2 (modification time)
    *   `-ot` is older than
    *   `-b FILE` FILE exists and is block special
    *   `-c` file exists and is charecter special.
    *   `-d` file exists and is a directory
    *   `-e` file exists
    *   `-f` file exists and is a regular file.
    *   check for `g` and `G`
    *   `-h` file exists and is a symbolic link
    *   `-w` file exists and write permission is granted
    *   `-r` file exists and read permission is granted
    *   `-x` file exists and execute permission is granted