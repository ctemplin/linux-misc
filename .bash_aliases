# edit this file
alias edalias='emacs ~/bitbucket_ctemplin/.bash_aliases'

# list current subdirs by size
alias subdirsbysize='du -h --max-depth 1 | sort -hr'

# re-run the last command piped to less
alias withless='$(history -p !!)|less'

alias lsd='ls */ -dl'

alias lockifylines='cloc ./ --exclude-dir=./generated_files,./media/checksummed,media/scripts/lib,./appcheck-extension,./twitterapp,./chrome_ext,./docs,./_git_publish_media,./git_publish_manifest,./google_gadget,./hg,./lockify_browser_perf,./media/cscc,./media/scripts/unpublished --not-match-f=^*_sprite.css'

# open browsers
alias ffpm='firefox --no-remote --profilemanager'
alias ffsec='firefox --no-remote -P Secure'

alias runburp='java -jar /usr/bin/burpsuite_v.1.4.jar &'

alias cdl='cd ~/Documents/lockify/webapp'
alias cdi='cd ~/Documents/ieee/ieeetags'

alias hglog='hg log | less'
alias hgf='hg fetch -m "Merge"'

alias runSe='java -jar /usr/bin/selenium-server-standalone-2.14.0.jar -firefoxProfileTemplate ~/.mozilla/firefox/bo9g2gz2.selenium'

alias sagi='sudo apt-get install'
alias sagr='sudo apt-get remove'

alias sshieee='ssh -i ~/.ssh/ieee_slicehost_rsa systemicist@technav.systemicist.com'
alias runieee='workon lockify; cd ~/Documents/ieee/ieeetags; python manage.py runserver 8001'
alias deploynewdev='cd ~/Documents/ieee/; export PYTHONPATH=.:~/Documents/Python_Path_Included; fab -f fab_ieee.py site_ieee_newdev checkout_site'
alias deployieeestage='cd ~/Documents/ieee/; export PYTHONPATH=.:~/Documents/Python_Path_Included; fab -f fab_ieee.py site_ieee_stage checkout_site'

alias sshfr='ssh -i ~/.ssh/lockify_fallingrock_rsa ctemplin@71.41.152.29'

alias sshdev='ssh -i ~/.ssh/lockify_slicehost_rsa lockify@dev.lockify.com'
alias sshpreview='ssh -i ~/.ssh/lockify_firehost_rsa lockify@preview.lockify.com'
alias sshci='ssh -i ~/.ssh/lockify_slicehost_rsa lockifyci@184.106.134.100'
alias runlockify='workon lockify; cd ~/Documents/lockify/webapp; python manage.py runserver --settings=settings.dev_settings'
alias deploydev='workon lockify; cd ~/Documents/lockify; fab -f fab.py site_lockify_dev deploy'
alias deployalldev='workon lockify; cd ~/Documents/lockify; fab -f fab.py site_lockify_dev deploy_all_dev'
alias deploydevadmin='workon lockify; cd ~/Documents/lockify; fab -f fab.py site_lockify_dev_admin deploy'

# Run the last line of the stderr output of the previous command
# Useful when apt-get ends error with install command.
# Potentially dangerous so verification is turned on first, then turned off again. EDIT: no it's not yet. Probably need to make a script.
alias ell='`history -p !!` 2>&1 | `tail -n 1`'
alias lock='xscreensaver-command -lock'
alias bbvnc="vncviewer -encodings 'copyrect tight zrle hextile' localhost:5900"
alias sshtunnel="ssh -i /home/ctemplin/.ssh/lockify_slicehost_rsa -N -T -L 5900:localhost:5900 lockifyci@ci.lockify.com &"

alias lcgf="linkchecker generated_files/*.html --ignore-url='^file(?!.*(generated_files).*)'"


# XRANDR
alias xr1="xrandr --output VGA1 --off"
alias xr2="xr1 && xrandr --output VGA1 --auto --rotate left --right-of LVDS1"

