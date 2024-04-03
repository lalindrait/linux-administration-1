## Working with the bash shell

In bash how the shell prompt should like is determined by a varibale called PS1\
We can change the PS1 variable and customize it as we want

```
# to view the current PS1 value
set | grep PS1

# Note that PS1 is not actually a environement variable. It is a local variable.
# So you cant view it with "env" command

# to change the prompt temporarily set the PS1 variable
PS1="[\u@\h \T]\$"

$ to make it permanent put it in the .bashrc file
vi .bashrc
PS1="[\u@\h \T]\$"

source .bashrc

# valid characters that can appear in PS1 can be found here
https://www.gnu.org/software/bash/manual/html_node/Controlling-the-Prompt.html

```

## Accessing the documentation and command help

### Command : man
To access man pages - documentation on commands
```
# Examples
man echo

# To access help use --help as an argument after the command
# Examples
ls --help
hostname --help
```