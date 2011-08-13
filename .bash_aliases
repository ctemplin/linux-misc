# edit this file
alias edalias='emacs ~/bitbucket_ctemplin/.bash_aliases'

alias cdl='cd ~/Documents/Lockify/Lockify-Webapp'
alias cdi='cd ~/Documents/IEEE/ieeetags'

alias hglog='hg log | less'
alias hgf='hg fetch -m "Merge"'


alias sagi='sudo apt-get install'
alias sagr='sudo apt-get remove'

alias sshieee='ssh -i ~/.ssh/ieee_slicehost_rsa systemicist@newdev.systemicist.com'
alias runieee='source ~/virtualenv/lockify-env/bin/activate; cd ~/Documents/IEEE/ieeetags; python manage.py runserver 8001'
alias deploynewdev='cd ~/Documents/IEEE/; export PYTHONPATH=.:~/Documents/Python_Path_Included; fab -f fab_ieee.py site_ieee_newdev checkout_site'

alias sshdev='ssh -i ~/.ssh/lockify_slicehost_rsa lockify@dev.lockify.com'
alias sshpreview='ssh -i ~/.ssh/lockify_firehost_rsa lockify@preview.lockify.com'
alias runlockify='source ~/virtualenv/lockify-env/bin/activate; cd ~/Documents/Lockify/Lockify-Webapp; python manage.py runserver --settings=settings.dev_settings'
alias deploydev='source ~/virtualenv/lockify-env/bin/activate; cd ~/Documents/Lockify; fab -f fab.py site_lockify_dev deploy'


# Run the last line of the stderr output of the previous command
# Useful when apt-get ends error with install command.
# Potentially dangerous so verification is turned on first, then turned off again. EDIT: no it's not yet. Probably need to make a script.
alias ell='`history -p !!` 2>&1 | `tail -n 1`'
alias xrandr_lvds='xrandr --output LVDS-1 --primary --rotate normal --pos 1200x1020 --right-of DVI-I-1'
alias xrandr_dvi='xrandr --output DVI-I-1 --auto --rotate left'
alias lock='xscreensaver-command -lock'
