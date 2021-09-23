# dotfiles

Open terminal on your home directory.

https://brew.sh/



```
https://github.com/keramiozsoy/dotfiles.git ~/.dotfiles

git config user.name "YOUR_USER_NAME"
git config user.email YOUR_MAIL_ADDRESS
```

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


```
mv ~/.zshrc ~/.dotfiles/.zshrc

ln -s ~/.dotfiles/.zshrc ~/.zshrc
```


cd ~/.dotfiles

# below command will create file already installed dependecies of brew. *(Brewfile)

brew bundle dump --describe 

# install all necessary with command
brew bundle --file ~/.dotfiles/Brewfile

