# Demote Users to Standard

This is a Bash script that will demote all users on a Mac from an admin to a standard user, except those with a specified username to exclude.

This sript was originally taken from this [Jamf Nation forum post](https://community.jamf.com/t5/jamf-pro/demote-local-admin-accounts-to-standard/m-p/306932), and customized from there. Its primary function makes use of the `dseditgroup` command.
