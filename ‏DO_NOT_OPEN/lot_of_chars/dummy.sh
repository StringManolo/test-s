#!/bin/bash

output_file="full_of_shit"

# Loop through each Unicode code point from U+0000 to U+10FFFF
for (( codepoint=0x0; codepoint<=0x10FFFF; codepoint++ )); do
    printf -v char "\\U$(printf '%08x' "$codepoint")"  # Convert code point to UTF-8 character
    echo -ne "$char" >> "$output_file"  # Append character to output file
done

# Add a newline at the end of the file
echo >> "$output_file"

