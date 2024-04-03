## Shell Expansion

### Pattern matching
```
*	        Match zero or more characters
?	        Match any single character
[...]	    Match any of the characters in a set
!           Match anything that doesn't match one of the patterns

# Examples

$ ls
a.jpg  b.gif  c.png  d.pdf ee.pdf

$ ls *.jpg
a.jpg

$ ls ?.pdf
d.pdf

$ ls [ab]*
a.jpg  b.gif

$ shopt -s extglob   # turn on extended globbing

$ ls ?(*.jpg|*.gif)
a.jpg  b.gif

$ ls !(*.jpg|*.gif)  # not a jpg or a gif
c.png d.pdf ee.pdf
```

### Home directory expansion
~       Denotes the user home dir

```
ls ~
ls -l ~/Downloads/
```

### String expansion

```
mkdir {1,2,3,4,5}.log
touch {1..7}.txt
touch {a..g}.txt
touch file{1..7}.txt
```

### Variable expansion

```
NAME=MSD
echo "Hello ${NAME}"
```

### Command substitution

```
echo "Hello $(hostname)"
```


**Note : The backslash \ is an escape character in the Bash shell. It will protect the character immediately following it from expansion.**

