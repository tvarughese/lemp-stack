FILE=/usr/bin/python
if [ -f "$FILE" ]; then
	echo "$FILE exists."
else 
	ln -s /usr/bin/python3.6 /usr/bin/python
fi
