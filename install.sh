gcc nanopad.c -o nanopad

if [ $? -ne 0 ]; then
	echo "Error: Compilation failed."
	exit 1
fi

if [ ! -f "nanopad" ]; then
	echo "Error: Binary file 'nanopad' not found after compilation."
	exit 1
fi

sudo mv nanopad /bin/

if [ $? -ne 0 ]; then
	echo "Error: Failed to move binary to /bin/."
	exit 1
fi

echo "Installtion successful! You can run this program by running 'nanopad' command in terminal."
