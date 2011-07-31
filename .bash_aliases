
alias sagi='sudo apt-get install'
alias sagr='sudo apt-get remove'

# Run the last line of the stderr output of the previous command
# Useful when apt-get ends error with install command.
# Potentially dangerous so verification is turned on first, then turned off again. EDIT: no it's not yet. Probably need to make a script.
alias ell='`history -p !!` 2>&1 | `tail -n 1`'
