## Working with the vi editor

```
# Open a file in vi editor
vi file1.txt
```


The Vi editor has two modes: Command and Insert. 

When you first open a file with Vi, you are in Command mode. Command mode means you can use keyboard keys to navigate, delete, copy, paste, and do a number of other tasks—except entering text.

To enter Insert mode, press i. In Insert mode, you can enter text, use the Enter key to go to a new line, use the arrow keys to navigate text, and use vi as a free-form text editor. To return to Command mode, press the Esc key once.

## vi commands

```
i — Switch to Insert mode.
Esc — Switch to Command mode.
:w — Save and continue editing.
:wq or ZZ — Save and quit/exit vi.
:q! — Quit vi and do not save changes.
:wq! to write and quit, attempting to force the write if the file lacks write permission

yy — Yank (copy) a line of text.
p — Paste a line of yanked text below the current line.

o — Open a new line under the current line.
O — Open a new line above the current line.
A — Append to the end of the line.
a — Append after the cursor’s current position.

I — Insert text at the beginning of the current line.
i - Insert text at the current position

x — Delete a single character.
dd — Delete/Cut an entire line.
Xdd — Delete X number of lines.
Xyy — Yank X number of lines.
p - Paste line before cursor
P - Paste line after cursor

u - Undo the last change
U - Undo ll changes on the line

r - Replace the current character
R - Replace the character from current position

G — Go to the last line in a file.
XG — Go to line X in a file.
gg — Go to the first line in a file.

h — Move left one character.
j — Move down one line.
k — Move up one line.
l — Move right one character.

:set number — Show line numbers.
:set nonumber - Hide line numbers
:set nu! - Hide line numbers (same as above)
```
