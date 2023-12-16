# Get Warranty Expiration

## Background

This is a Bash script intended to retrieve the date of a Mac's warranty expiration. Only works for the warranty expiration date of the Mac that the script is ran from.

## Usage

The script can be ran by downloading `GetWarrantyExpiration.sh`, running `chmod u+x ./GetWarrantyExpiration.sh`, and running the script with `./GetWarrantyExpiration.sh`. Alternatively, the script can ran right from the command line as a one-liner.

# Sources

- [Source 1 (using `awk`to remove certain words in the output)](https://www.cyberciti.biz/faq/unix-linux-bsd-appleosx-skip-fields-command/)
- [Source 2 (using `xargs` to remove whitespace)](https://stackoverflow.com/a/12973694)
