# postinstall

## my

- Change origin url (`$ $EDITOR $MY/.git/config`) to `git@github.com:kud/my.git`

## security & privacy

- System Preferences > Security & Privacy > Require password "immediately"

## sip

Disable or not SIP:

- cmd + r on Apple logo
- Utilities > Terminal
- `$ csrutil enable --without fs`
- restart

## vim

- Do `:PlugInstall`

## sublime text

- Insert licence

## firefox

- Start firefox
- Quit firefox and wait 5s
- `$ £ firefox-settings`
- Enter sync account
- Redefine GUI

## screensaver

- Download and install: http://littleendiangamestudios.com/project/ios-8-screen-saver/

## ssh

- Add this at the beggining of `~/.ssh/config`:

```
# use keychain for SSH // https://ma.ttias.be/mac-osx-keeps-prompting-ssh-key-passphrase-not-use-keychain/
Host *
  UseKeychain yes
  AddKeysToAgent yes

# jumper
Host *+*
ProxyCommand ssh $(echo %h | sed 's/+[^+]*$//;s/\([^+%%]*\)%%\([^+]*\)$/\2 -l \1/;s/:/ -p /') nc -w1 $(echo %h | sed 's/^.*+//;/:/!s/$/ %p/;s/:/ /')
```

- [Add SSH key for GitHub](https://help.github.com/articles/connecting-to-github-with-ssh/)

## applications

- pixelsnap (email)
- earsafe (email)
