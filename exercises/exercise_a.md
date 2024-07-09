# Exercise A - Delete files above a certain size

You are supposed to write a script in bash to delete all the files in a specific location and above a certain file size.

## Requirements
1. script should take 2 arguements - Directory path & size
2. Script should delete all the files exceeding the file size given in the arguement in the given directory path
3. script should list all the files before deleting and ask for a confirmation
4. If the user confirms the deletion it should delete the files
5. If the user deny the deletion script should exit without deleting any files
6. Suitable messages must be echoed to the screen for each action taken by the script (e.g. - Deleting files, exiting without deleting files)


## Helpers
Following command examples can be used to create dummy files of a certain size. You can use this for testing purposes
```
for i in {1..9}; do dd if=/dev/zero of=/home/data/file_large_${i}.img bs=1K count=100; done
for i in {1..9}; do dd if=/dev/zero of=/home/data/file_small_${i}.img bs=1K count=10; done
```