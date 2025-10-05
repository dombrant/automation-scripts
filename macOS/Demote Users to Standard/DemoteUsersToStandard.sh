#!/bin/sh

# Find all admin users
adminUsers=$(dscl . -read Groups/admin GroupMembership | cut -c 18-)

# Loop through admin users and demote them, excluding those with a username of root or admin
for user in $adminUsers
do
    if [ "$user" != "root" ]  && [ "$user" != "admin" ]
    then 
        dseditgroup -o edit -d $user -t user admin
        if [ $? = 0 ]; then echo "Removed user $user from admin group"; fi
    else
        echo "Admin user $user left alone"
    fi
done

exit 0