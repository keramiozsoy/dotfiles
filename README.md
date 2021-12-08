# dotfiles

Open terminal on your home directory.

https://brew.sh/

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```


```
https://github.com/keramiozsoy/dotfiles.git ~/.dotfiles

git config user.name "YOUR_USER_NAME"
git config user.email YOUR_MAIL_ADDRESS
```

# install ohmyzsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

# create custom location of zshrc
```
mv ~/.zshrc ~/.dotfiles/.zshrc

ln -s ~/.dotfiles/.zshrc ~/.zshrc
```


# install custom ohmyzsh plugins

```
git clone https://github.com/zsh-users/zsh-completions.git $ZSH_CUSTOM/plugins/zsh-completions

git clone https://github.com/zsh-users/zsh-apple-touchbar.git $ZSH_CUSTOM/plugins/zsh-apple-touchbar

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-history-substring-search.git $ZSH_CUSTOM/plugins/zsh-history-substring-search


nano ~/.zshrc

plugins=(
	git
	dotenv
	zsh-autosuggestions
	zsh-apple-touchbar
	zsh-completions
	zsh-syntax-highlighting
	zsh-history-substring-search
)

reopen terminal
```



# How to recreate Brewfile

```
cd ~/.dotfiles


# Below command will create file already installed dependecies of brew.
brew bundle dump --describe

# If you get error
rm Brewfile

# install all necessary with command
brew bundle --file ~/.dotfiles/Brewfile

rm Brewfile.lock.json
```



# Maven and Multiple JDK
```
$ mvn --version

$ vi .zshrc 

	export M2_HOME=/opt/homebrew/Cellar/maven/3.8.2/libexec
	export M2=$M2_HOME/bin
	export PATH=$PATH:$M2_HOME/bin

	export PATH="$HOME/.jenv/bin:$PATH"
  	eval "$(jenv init -)"

$ source .zshrc

------


$ jenv add /Library/Java/JavaVirtualMachines/temurin-8.jdk/Contents/Home/

$ jenv add /Library/Java/JavaVirtualMachines/temurin-11.jdk/Contents/Home/

$ jenv add /Library/Java/JavaVirtualMachines/temurin-17.jdk/Contents/Home/


$ jenv versions


$ jenv global 1.8

$ java -version

$ jenv global 11

$ java -version


$ echo $JAVA_HOME

$ jenv enable-plugin maven
$ jenv enable-plugin export

restart

$ echo $JAVA_HOME

```




# Intellij Idea Plugins
```
	AsciiDoc 			  ( Documentation )
	Google-java-format
	Grazie				  ( Provides intelligent spelling and grammar checks for test that you write in the IDE )
	JPA Buddy
	Key Promoter X        ( Shortcut Helper)
	Lombok 				  ( Annotations Helper)
	PlantUML Integration  ( Diagramming Tool)
	SonarLint 			  ( Helps you detect and fix quality issues as you write code)
```


# Dont run below commands instead use "brew bundle"
```
$ brew install 
- wget ( dependencies will download automatically = gettext, libunistring, libidn2, ca-certificates, openssl@1.1 )
- httpie (dependencies will download automatically = gdbm, mpdecimal, readline, sqlite, xz and python@3.10)
- dive
- helm
- kind
- jenv
- kubectx
- maven
- minikube



$ brew install --cask
- brave-browser
- dbeaver-community
- intellij-idea-ce
- postman		
- sublime-text	
- the-unarchiver		
- vlc
- clipy	
- calibre		
- docker			
- iterm2			
- rectangle		
- temurin			
- temurin8		
- temurin11		
- visualvm
- virtualbox
- virtualbox-extension-pack		
- loom
- zoom


- uninstalled 
brew install --cask osxfuse
brew install ntfs-3g (windows harddisk connect)
```
