# edit this file
alias edalias='emacs ~/bitbucket_ctemplin/.bash_aliases'

# list current subdirs by size
alias subdirsbysize='du -h --max-depth 1 | sort -hr'

# re-run the last command piped to less
alias withless='$(history -p !!)|less'

# open browsers
alias ffpm='firefox --no-remote --profilemanager'
alias ffsec='firefox --no-remote -P Secure'

alias runburp='java -jar /usr/bin/burpsuite_v.1.4.jar &'

alias cdl='cd ~/Documents/Lockify/Lockify-Webapp'
alias cdi='cd ~/Documents/IEEE/ieeetags'

alias hglog='hg log | less'
alias hgf='hg fetch -m "Merge"'

alias runSe='java -jar /usr/bin/selenium-server-standalone-2.11.0.jar -firefoxProfileTemplate ~/.mozilla/firefox/k733gpy4.selenium'

alias sagi='sudo apt-get install'
alias sagr='sudo apt-get remove'

alias sshieee='ssh -i ~/.ssh/ieee_slicehost_rsa systemicist@newdev.systemicist.com'
alias runieee='workon lockify-env; cd ~/Documents/IEEE/ieeetags; python manage.py runserver 8001'
alias deploynewdev='cd ~/Documents/IEEE/; export PYTHONPATH=.:~/Documents/Python_Path_Included; fab -f fab_ieee.py site_ieee_newdev checkout_site'

alias sshfr='ssh -i ~/.ssh/lockify_firehost_rsa ctemplin@71.41.152.30'

alias sshdev='ssh -i ~/.ssh/lockify_slicehost_rsa lockify@dev.lockify.com'
alias sshpreview='ssh -i ~/.ssh/lockify_firehost_rsa lockify@preview.lockify.com'
alias runlockify='workon lockify-env; cd ~/Documents/Lockify/Lockify-Webapp; python manage.py runserver --settings=settings.dev_settings'
alias deploydev='workon lockify-env; cd ~/Documents/Lockify; fab -f fab.py site_lockify_dev deploy'
alias deployalldev='workon lockify-env; cd ~/Documents/Lockify; fab -f fab.py site_lockify_dev deploy_all_dev'
alias deploydevadmin='workon lockify-env; cd ~/Documents/Lockify; fab -f fab.py site_lockify_dev_admin deploy'

# Run the last line of the stderr output of the previous command
# Useful when apt-get ends error with install command.
# Potentially dangerous so verification is turned on first, then turned off again. EDIT: no it's not yet. Probably need to make a script.
alias ell='`history -p !!` 2>&1 | `tail -n 1`'
alias lock='xscreensaver-command -lock'
