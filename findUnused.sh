#Author: Mackenzie Larson
#Date: 3/26/14
#Assignment: Project01 cs210



# The program will look at files within the sample directory.
# If a file exists in a directory but it is not referenced by any files in the current directory (in this case directory.json), it will be listed as output.


# Look for image files within the sample directory inside of the current working directory.
# Find each image file types individually and save it in /tmp/patterns.

echo ' '
echo "Files not referenced in directory."
echo ' '
#finds all files with name.jpg .png and .gif puts into temporary file  "patterns"
#basename removes suffixes
imagelist=$(find . jpg);
echo $imagelist;
echo "===="
for image in $imagelist; do
    echo "my image $image"
done;
# find . -name *.png -exec basename {} \; >> /tmp/patterns
# find . -name *.gif -exec basename {} \; >> /tmp/patterns

# Print a list of files that DO NOT exist.
# The variable 'p' is a representation of /tmp/patterns.
# /dev/null removes any files that exist in a directory but are not referenced by any files in the curret directory.
# The cat command removes coloring.

for p in $(cat /tmp/patterns); do
    grep -R $p . > /dev/null || echo $p;
done
echo ' '


