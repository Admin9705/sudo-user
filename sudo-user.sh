
echo "Setting Sudo-User Name & Password"
echo ""
read -p "Create a [USERNAME]: " username
read -p "Create a [PASSWORD]: " password
printf "\n\n"

useradd -m -s /bin/bash $username -u 6000 -g 1000
echo -e ""$password"\n"$password"\n" | passwd $username
usermod -aG sudo $username