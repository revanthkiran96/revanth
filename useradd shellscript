#check if valid input is given
#need to check if the user exist
#if user dont exist then create anew user
#set randompassword and change password at first login

#set -e "it will stops the program when ever the error will issue" (debugging)
#set -x "it will display code while running (debugging ) prints every line"

#!/bin/bash
set -e
while true; do
   read -p "please enter the valid user name:" USER_NAME
   echo $USER_NAME
   if [ -z "$USER_NAME" ]; then
      echo "its not a valid user $USER_NAME"
   else
      echo "the user name is $USER_NAME"
      EX_USER=$(cat /etc/passwd | cut -d ":" -f 1 | grep -w $USER_NAME)
      if [ "$USER_NAME" = "$EX_USER" ]; then
         echo "User $USER_NAME exist. Please select a different user name"
      else
         echo "lets create user $USER_NAME"
         SPEC=$(echo '!@#$%^&*()_' | fold -w1 | shuf | head -1)
         PASSWORD="reva@${RANDOM}${SPEC}"
         echo $PASSWORD
         useradd -m $USER_NAME
         echo "$USER_NAME:$PASSWORD" | sudo chpasswd
         passwd -e $USER_NAME
      fi
   fi
done
