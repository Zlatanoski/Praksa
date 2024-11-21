#!/bin/bash


ls -la ~/Desktop > allinfodesktop.txt 


input="allinfodesktop.txt"
output="sortedinfo.txt"

>"$output"

# Information about all directories that are on your desktop
echo "DIRECTORIES:" >> "$output"
grep "^d" "$input" | sort >> "$output"
echo "" >> "$output"  

# Information about scripts on your Desktop
echo ".SH FILES:" >> "$output"
grep "\.sh$" "$input" | sort >> "$output"
echo "" >> "$output"  

# Files with 0 bytes on your desktop
echo "FILES WITH 0 BYTES:" >> "$output"
grep "^-.* 0 " "$input" | sort >> "$output"
echo "" >> "$output"  


cat "$output"
