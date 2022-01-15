# dotfiles


## install brew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## install this project
```
git clone https://github.com/keramiozsoy/dotfiles.git ~/.dotfiles
```

## Install all necessary programs via my Brewfile


- Install all necessary programs via my Brewfile

```
brew bundle --file ~/.dotfiles/Brewfile
```

- If you don't want to use my Brewfile, you can generate yours.

```
brew bundle dump --describe
```

- If you want to genereate new brewfile which includes all apps installed via "brew install" on your computer.

```
cd ~/.dotfiles

rm Brewfile.lock.json
rm Brewfile

brew bundle dump --describe

brew bundle --file ~/.dotfiles/Brewfile
```


# if you want to send the latest changes of your local area to this repository

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

#### delete
```
rm -rvf /Users/$USER/.oh-my-zsh
```

#### install
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

#### create custom location of zshrc
```
mv ~/.zshrc ~/.dotfiles/.zshrc
```
```
ln -s ~/.dotfiles/.zshrc ~/.zshrc
```


#### install custom ohmyzsh plugins 

- If you want to use these plugins, you should run step 1 commands.
- If you don't want to use these plugins, jump step 2 which is how i have already updated on .zshrc.

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
vi  ~/.dotfiles/.zshrc

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



## Maven Configs

- I explained how i added to use mvn via my .zshrc

```
$ mvn --version

$ vi  ~/.dotfiles/.zshrc 

	export M2_HOME=/opt/homebrew/Cellar/maven/3.8.2/libexec
	export M2=$M2_HOME/bin
	export PATH=$PATH:$M2_HOME/bin

$ source  ~/.dotfiles/.zshrc

$ mvn --version
```


##  Jenv and Multiple JDK 

Let's learn how to manage multiple JDK with jenv tool.

Step 1

- In this step, we will ensure to ready jenv tool.

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

- We will add which java versions can be use by jenv

- I installed these JDKs via my Brewfile. If you would like to use another JDK you should install by yourself
and get their paths where they were installed.

```

$ jenv add /Library/Java/JavaVirtualMachines/temurin-8.jdk/Contents/Home/

$ jenv add /Library/Java/JavaVirtualMachines/temurin-11.jdk/Contents/Home/

$ jenv add /Library/Java/JavaVirtualMachines/temurin-17.jdk/Contents/Home/


$ jenv versions
```

Step 3 

- Set global java to use as $JAVA_HOME

```
$ jenv global 1.8

$ java -version

$ jenv global 11

$ java -version

```

Step 4 

- Let's check JAVA_HOME can work.
- If it isnt working, enable blow plugins.

```
$ echo $JAVA_HOME
```
```
$ jenv enable-plugin maven
$ jenv enable-plugin export
```
restart your terminal
```
$ echo $JAVA_HOME
```


## Intellij Idea Plugins

| Plugin  	| Info |
| ------------- | ------------- |
| AsciiDoc            | Documentation  |
| Key Promoter X      | Intellij Shortcut Helper  |
| Grazie		| Provides intelligent spelling and grammar checks for test that you write in the IDE |
| SonarLint 		| Helps you detect and fix quality issues as you write code|
| Google-java-format  	| Java Formatter|
| JPA Buddy 		| Java Persistence API helper |
| Lombok 		| Java Annotations Helper
| PlantUML Integration	| Diagramming Tool |
| Makefile Language	| helper for Makefile |
| VisualVM Launcher 	| Heap dump, thread dump |
| Go Templates 		| Go language helper |
| Kubernetes		| Kubernetes helper |

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
