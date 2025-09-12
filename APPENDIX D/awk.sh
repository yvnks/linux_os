# awk is the appropriate way to print content on the cli.
# cat means concatenate and it's a style of convention.

awk '{print;}' host.deny | tail 

# Here's how i will print all the lines that are prefixed with a '#' with awk 
awk '$0~/^#/' host.deny | head 

# awk also has an alternate for the cut command.
awk '{print$2}' list-ip.sh | tail 

# Another of i would print out the content that do not have '#' prefixed as their first character is:
awk '$0!~/^#/' host.deny 

