#!/bin/bash

# 1. Ask the user for the initial filename
echo "Enter the name of the file to create (e.g., test.txt):"
read original_name

# 2. Create the file using 'touch'
touch "$original_name"
echo "File '$original_name' has been created."

# 3. Ask for the new name
echo "Enter the new name for this file:"
read new_name

# 4. Rename the file using 'mv' (move)
# In Linux, renaming is just "moving" a file to a new name in the same spot.
mv "$original_name" "$new_name"

echo "Success! '$original_name' is now called '$new_name'."