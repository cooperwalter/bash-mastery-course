1. echo "The number $(( 5-2 ))" > number.txt

Steps:
  1. Tokenization
    3 words
    5 metacharacters (4 spaces and 1 redirection operator >)
  2. Command identification
    One command
  3. Expansions
    a. Brace expansions (none)
    b. 
      1. Parameter expansions (none)
      2. Arithmetic expansions(replace $(( 5-2 )) with 3)
      3. Command substitutions (none)
      4. Tilde expansions (none)
    c. Word splitting (no unquoted expansions to split)
    d. Globbing (aka filename expansions) (none)
  4. Quote removal (remove "" from "The number 3")
  5. Redirection (rewrite command as `echo "The number 3"` with arrow of standard output pointing to file number.txt)

2. ls /etc | grep net > net.txt

Steps:
  1. Tokenization
    5 words
    8 metacharacters (6 spaces, |, >)
  2. Command identification
    Two commands (broken up by |): ls /etc and grep net > net.txt
  3. Expansions
    a. Brace expansions (none)
    b.
      1. Parameter expansions (none)
      2. Arithmetic expansions (none)
      3. Command substitutions (none)
      4. Tilde expansions (none)
    c. Word splitting (no expansions to split)
    d. Globbing (AKA filename expansion) (none)
  4. Quote Removal (no quotes to remove)
  5. Redirection
    Rewrite command ls /etc with standard output to command grep net with standard output to net.txt
      WRONG - just show standard output to net.txt?


3.
#/bin/bash
IFS=,
folder=people
name=john,jane,abhishek
mkdir $folder && cd $folder && touch $name

Steps:
  1. Tokenization
    6 words, 9 metacharacters (7 spaces, 2 &&s)
  2. Command identification
    3 commands: mkdir $folder, cd $folder, and touch $name
  3. Expansions
    a. Brace expansions (none)
    b. 
      Parameter expansions
        $folder => people, $name => john,jane,abhishek
      Arithmetic expansions
      Command substitution
    c. word splitting
      john,jane,abhishek => john jane abhishek
    d. globbing (none)
  4. Quote removal (none)
  5. Redirection (none)

4. touch “Daily Report $(date +”%a %d %h %y”)”

Steps:
  1. Tokenization
    Two words (touch, and “Daily Report $(date +”%a %d %h %y”)”), no metacharacters
  2. Command identification
    One command
  3. Expansions
    a. Brace expansions (none)
    b. 
      Parameter expansions (none)
      Arithmetic expansions (none)
      Command substitutions
        date +”%a %d %h %y” is evaluated in a subshell and it's standard output replaces $(date +”%a %d %h %y”)
    c. word splitting
      None, because command substitution is quoted
    d. globbing (filename expansion)
      None
  4. Quote removal
    “Daily Report $(date +”%a %d %h %y”)" => Daily Report {command substituted value}
  5. Redirection (none)