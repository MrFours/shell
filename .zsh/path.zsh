# Array of directories to add to PATH
directories=(
  "/usr/local/sbin"
  "/usr/local/bin"
  "/usr/sbin"
  "/usr/bin"
  "/sbin"
  "/bin"
  "/usr/games"
  "/usr/local/games"
)

# Function to add a directory to PATH if it exists and is not already in the PATH
add_to_path() {
  if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
    PATH="$1:${PATH}"
  fi
}

# Loop over the directories and add them to PATH
for dir in "${directories[@]}"; do
  add_to_path "$dir"
done

# Export the updated PATH
export PATH
