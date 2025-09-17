# Log in to root with
su -i 

# view sudoers file 
sudo cat/etc/sudoers

# Check if user is part of the sudoers group.
groups [username]

# if user not in groups append.
usermod -aG sudo [ username ]

# Check permissions you have access to with sudo 
sudo -l 
# (ALL:ALL) ALL

# sudo command structure 
username hostname = (command)

# sudo use case.
sudo apt update && upgrade.

# sudo to run recent command.
sudo !! # !! represents the last command you run recently 

# make changes to the sudoers file
sudo visudo

# Here's how i would add a user called jsmith and give the user all permission
sudo useradd -c "Test user account" -d /home/jsmith -s /usr/bin/bash -m jsmith -g sudo 
sudo usermod -aG sudo jsmith
sudo -l 

####### or 
sudo visudo 
jsmith      ALL=(ALL:ALL) ALL 
sudo -l 

# The two commands below give the user jsmith the ability to become sudo without requiring a password and only the power to execute the apt command.  i would use the command in sudo visudo:
which apt 
jsmith      ALL(ALL:ALL) NOPASSWD: /usr/bin/apt

# visudo error codes x for exit, e for edit, q for save and quit.


