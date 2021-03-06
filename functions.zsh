# make sure functions is loaded
function hello() {
	echo "Hello from zsh"
}

# Create a new directory and enter it
function mkd() {
	mkdir -p "$@" && cd "$_";
}

# Run git fetch over all subdirectories
function gfpAll() {
        find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} fetch -p \;
}