# dotfiles


## install brew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## install dotfiles project
```
git clone https://github.com/keramiozsoy/dotfiles.git ~/.dotfiles
```

## set your configs

```
cd ~/.dotfiles
```

```
git config user.name "YOUR_USER_NAME"
```

```
git config user.email YOUR_MAIL_ADDRESS
```

## ohmyzsh let's delete if exists and install again.

##### delete
```
rm -rvf /Users/$USER/.oh-my-zsh
```

##### install
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

##### create custom location of zshrc
```
mv ~/.zshrc ~/.dotfiles/.zshrc
```
```
ln -s ~/.dotfiles/.zshrc ~/.zshrc
```


##### install custom ohmyzsh plugins 

If you want to use these plugins, you should run step 1 commands.
If you don't want to use these plugins, jump step 2 which is how i have already updated on .zshrc.

Step 1

```
git clone https://github.com/zsh-users/zsh-completions.git $ZSH_CUSTOM/plugins/zsh-completions

git clone https://github.com/zsh-users/zsh-apple-touchbar.git $ZSH_CUSTOM/plugins/zsh-apple-touchbar

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-history-substring-search.git $ZSH_CUSTOM/plugins/zsh-history-substring-search
```


Step 2

I explained how i added to use above plugins.
If you don't want to use, please put # before each line to set as a comment line in the .zshrc file.

```
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

restart your terminal
```



## Maven Config, Jenv and Multiple JDK
```
$ mvn --version

$ vi .zshrc 

	export M2_HOME=/opt/homebrew/Cellar/maven/3.8.2/libexec
	export M2=$M2_HOME/bin
	export PATH=$PATH:$M2_HOME/bin

$ source .zshrc


```

restart your terminal


## How to manage multiple JDK with jenv tool ?

Step 1

In this step, we will ensure to ready jenv tool.

```
$ vi .zshrc 
```

Copy -> Paste -> Save -> Close .zshrc file
```
	export PATH="$HOME/.jenv/bin:$PATH"
  	eval "$(jenv init -)"
```	

```	
$ source .zshrc
```

Step 2

We will add which java versions can be use by jenv

```

$ jenv add /Library/Java/JavaVirtualMachines/temurin-8.jdk/Contents/Home/

$ jenv add /Library/Java/JavaVirtualMachines/temurin-11.jdk/Contents/Home/

$ jenv add /Library/Java/JavaVirtualMachines/temurin-17.jdk/Contents/Home/


$ jenv versions
```

Step 3 

Set global java to use as $JAVA_HOME

```
$ jenv global 1.8

$ java -version

$ jenv global 11

$ java -version

$ echo $JAVA_HOME

$ jenv enable-plugin maven
$ jenv enable-plugin export

restart your terminal

$ echo $JAVA_HOME

```



## How to recreate Brewfile

```
cd ~/.dotfiles


rm Brewfile

# Below command will create file already installed dependecies of brew.
brew bundle dump --describe


# install all necessary with command
brew bundle --file ~/.dotfiles/Brewfile

rm Brewfile.lock.json
```



## Intellij Idea Plugins
```
	- AsciiDoc 			  ( Documentation )
	- Google-java-format
	- Grazie				  ( Provides intelligent spelling and grammar checks for test that you write in the IDE )
	- JPA Buddy
	- Key Promoter X        ( Shortcut Helper)
	- Lombok 				  ( Annotations Helper)
	- PlantUML Integration  ( Diagramming Tool)
	- SonarLint 			  ( Helps you detect and fix quality issues as you write code)
	- Makefile Language
	- VisualVM Launcher
	- Kubernetes
	- Go Templates
```


## Dont run below commands use "brew bundle"
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
- mas



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
- meld			
- rectangle		
- temurin			
- temurin8		
- temurin11		
- visualvm
- virtualbox
- virtualbox-extension-pack		
- loom
- zoom


$$ I havent installed yet
brew install --cask soapui --noquarantine
brew install --cask osxfuse
brew install ntfs-3g (windows harddisk connect)
mas install 605732865 ( RSS BOT )
mas install 1289197285 ( MindNote )

```
