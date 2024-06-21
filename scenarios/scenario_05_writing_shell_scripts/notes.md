# Writing Shell Scripts

### Command summary
```
# To create some files with a spefici size use the following command
for i in {1..9}; do dd if=/dev/zero of=/home/lalindra/data/file_large_${i}.img bs=1K count=100; done
for i in {1..9}; do dd if=/dev/zero of=/home/lalindra/data/file_small_${i}.img bs=1K count=10; done

# To find files by size
find . -type f -size +90k -exec ls -l {} \;
find . -type f -size +5M -exec ls -l {} \;
```
