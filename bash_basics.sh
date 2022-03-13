#! /bin/bash 


## FILE CONDITIONS ### 
# -d (True if is a directory)
# -e (true if file exists )
# -f (True if string is a filename)
# -g (True for group ID)
# -r (True if readable)
# -s (True if file is non 0 size)
# -u (True if the file is set)
# -w (True if file is wrtable)
# -x (true if exextuable)
#########


#vars 
name="l337"
FILE='text.txt'

if [-f "$FILE"]
then
	echo "${FILE} is indeed a file!"
else
	echo "Could not find ${FILE} :["
fi
	
#Print 
echo hello world! 
echo "my name is ${name}"

#User-Input 
read -p "Enter your real name " NAME 
echo "so your real name is, ${NAME}? or ${name}" 
read -p "1 for former, 2 for latter" decision


# conditionals 
if [ -z "$decision" ]; ## if var is empty
then
	echo "\$decision is empty... i need to know your name!"
	echo "Please tell me your name.. "
	read real_name 
	echo "nice to meet you, ${real_name}"
if ["$decision" == 1]	
	echo "pleasure to meet you, ${name}"
else 
	echo "your aquantence, ${NAME} is becomming of my existance. thank you so much."
fi


