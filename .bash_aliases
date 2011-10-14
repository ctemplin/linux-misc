# edit this file
alias edalias='emacs ~/bitbucket_ctemplin/.bash_aliases'

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

alias runSe='java -jar /usr/bin/selenium-server-standalone-2.3.0.jar -firefoxProfileTemplate .mozilla/firefox/26u70k71.Selenium'

alias sagi='sudo apt-get install'
alias sagr='sudo apt-get remove'

alias sshieee='ssh -i ~/.ssh/ieee_slicehost_rsa systemicist@newdev.systemicist.com'
alias runieee='source ~/virtualenv/lockify-env/bin/activate; cd ~/Documents/IEEE/ieeetags; python manage.py runserver 8001'
alias deploynewdev='cd ~/Documents/IEEE/; export PYTHONPATH=.:~/Documents/Python_Path_Included; fab -f fab_ieee.py site_ieee_newdev checkout_site'

alias activate_lockify='source ~/virtualenv/lockify-env/bin/activate'
alias sshdev='ssh -i ~/.ssh/lockify_slicehost_rsa lockify@dev.lockify.com'
alias sshpreview='ssh -i ~/.ssh/lockify_firehost_rsa lockify@preview.lockify.com'
alias runlockify='source ~/virtualenv/lockify-env/bin/activate; cd ~/Documents/Lockify/Lockify-Webapp; python manage.py runserver --settings=settings.dev_settings'
alias deploydev='source ~/virtualenv/lockify-env/bin/activate; cd ~/Documents/Lockify; fab -f fab.py site_lockify_dev deploy'
alias deployalldev='source ~/virtualenv/lockify-env/bin/activate; cd ~/Documents/Lockify; fab -f fab.py site_lockify_dev deploy_all_dev'
alias deploydevadmin='source ~/virtualenv/lockify-env/bin/activate; cd ~/Documents/Lockify; fab -f fab.py site_lockify_dev_admin deploy'

# Run the last line of the stderr output of the previous command
# Useful when apt-get ends error with install command.
# Potentially dangerous so verification is turned on first, then turned off again. EDIT: no it's not yet. Probably need to make a script.
alias ell='`history -p !!` 2>&1 | `tail -n 1`'
alias lock='xscreensaver-command -lock'
