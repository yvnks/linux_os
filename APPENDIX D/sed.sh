# Sed is a stream editor. It's a good option if you want to edit text files directly from the CLI.
# Here's how i would print all the lines that do not have "#" prefixed as their first Character from a file called host.deny

sed -e '/^#/d' host.deny | tail 

# This is how i changed the default retry session for the fail2ban program with sed.
# The default retry session is set to 1h

sed -i "s/bantime      = 1h/ bantime      = 10h/g" /etc/fail2ban/jail.conf
# Spaces are very important in sed. 

# Here's how i would change the first character of a users name with sed. Let's assume usernames are stored in a names.txt file.

sed -i "s/joseph/Joseph/g" names.txt 
# The -i flag is important because if it's not appended before the command, it will temporary save the changes in memory.
