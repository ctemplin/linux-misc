
alias sagi='sudo apt-get install'
alias sagr='sudo apt-get remove'

alias runieee='source ~/virtualenv/lockify-env/bin/activate; cd ~/Documents/IEEE/ieeetags; python manage.py runserver 8001'
alias deploynewdev='cd ~/Documents/IEEE/; fab -f fab_ieee.py site_ieee_newdev checkout_site'


alias runlockify='source ~/virtualenv/lockify-env/bin/activate; cd ~/Documents/Lockify/Lockify-Webapp; python manage.py runserver --settings=settings.dev_settings'

# Run the last line of the stderr output of the previous command
# Useful when apt-get ends error with install command.
# Potentially dangerous so verification is turned on first, then turned off again. EDIT: no it's not yet. Probably need to make a script.
alias ell='`history -p !!` 2>&1 | `tail -n 1`'
alias xrandr_lvds='xrandr --output LVDS-1 --rotate normal --pos 1200x1020 --left-of DVI-I-1'
alias xrandr_dvi='xrandr --output DVI-I-1 --auto --rotate left'
