# Search by 'Ignoring Word Case'
grep -i 'error' catalina.out

# Search 'Recursively' for a word in all files within the specific directory
grep -r 'error' /tomcat/logs

# Display line number of the word in a file
grep -n 'error' catalina.out

# Show all lines, that doesn't contain the word
grep -v 'error' catalina.out

# Search only exact match of the word 
grep -w 'error' catalina.out

# Get the count of a word in the file
grep -c 'error' catalina.out

# Displays lines after each occurrence of a word
grep -A20 'error' catalina.out

# Displays lines before each occurrence of a word
grep -B20 'error' catalina.out

# list the files which has the word in those 
grep -l 'error' /tomcat/logs

# search lines containing either of the words
grep -e 'error' -e 'info' catalina.out

# search line containing either of the words
grep -E 'error|info' catalina.out

# search silently
grep -q 'error' catalina.out && echo "found"



