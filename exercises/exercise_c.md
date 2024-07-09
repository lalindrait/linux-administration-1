# Exercise C - Backup a directory

You are supposed to write a script in bash to backup & archive a directory

## Requirements
1. script should take 2 arguments - Directory path & compression format (gzip/zip)
2. In your script you should first create an tar archive 
3. Tar archive name should include the directory name, date & time the archive was created and the hostname of the machine
4. You should then compress the tar archive in the given format
5. Create a md5 checksum for the compressed archive and store it along with the compress archive with the name checksum.txt 
6. Suitable messages should be displayed in the console after each step is completed