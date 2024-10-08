<!-- MarkdownTOC autolink=true -->

- [dotfiles](#dotfiles)
	- [install brew](#install-brew)
	- [install this project](#install-this-project)
	- [Install all necessary apps via my Brewfile](#install-all-necessary-apps-via-my-brewfile)
	- [Create your Brewfile and later use your Brewfile](#create-your-brewfile-and-later-use-your-brewfile)
- [if you want to send the latest changes of your local area to this repository](#if-you-want-to-send-the-latest-changes-of-your-local-area-to-this-repository)
	- [ohmyzsh let's delete if exists and install again.](#ohmyzsh-lets-delete-if-exists-and-install-again)
		- [delete](#delete)
		- [install](#install)
		- [create custom location of zshrc](#create-custom-location-of-zshrc)
		- [install custom ohmyzsh plugins](#install-custom-ohmyzsh-plugins)
	- [Jenv and Multiple JDK](#jenv-and-multiple-jdk)
	- [Maven Settings](#maven-settings)
	- [rbenv and Multiple Ruby](#rbenv-and-multiple-ruby)
	- [pyenv and Multiple Python](#pyenv-and-multiple-python)
	- [goenv and Multiple Go](#goenv-and-multiple-go)
	- [Intellij Idea Plugins](#intellij-idea-plugins)
	- [SublimeText Plugins](#sublimetext-plugins)
	- [VSCode Plugins](#vscode-plugins)
	- [Browser Plugins](#browser-plugins)
	- [Don't run below commands use "brewfile"](#dont-run-below-commands-use-brewfile)

<!-- /MarkdownTOC -->

# dotfiles

This project provides install,update and upgrade apps with one file which is Brewfile.
You can use my Brewfile install necessary apps or you can create yours.

- https://github.com/Homebrew/homebrew-bundle

## install brew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## install git
```
brew install git
```

## install rosetta
- https://support.apple.com/en-us/HT211861
```
sudo softwareupdate --install-rosetta
```
## install this project
```
git clone https://github.com/keramiozsoy/dotfiles.git ~/.dotfiles
```

## Install all necessary apps via my Brewfile

- This section provides install my apps.

```
brew bundle --file ~/.dotfiles/Brewfile
```

- If you don't want to use my Brewfile, you can generate yours.

```
brew bundle dump --describe
```

## Create your Brewfile and later use your Brewfile

- If you want to generate new brewfile which includes all apps installed via "brew install" on your computer.

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

git config user.name "YOUR_USER_NAME"

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

* add below lines on custom file and delete from here

```
mv ~/.zshrc ~/.dotfiles/.zshrc

ln -s ~/.dotfiles/.zshrc ~/.zshrc



mv ~/.zprofile ~/.dotfiles/.zprofile

ln -s ~/.dotfiles/.zprofile ~/.zprofile



mv ~/.oh-my-zsh/custom/* ~/.dotfiles/.oh-my-zsh/custom

rm -rf ~/.oh-my-zsh/custom

ln -s ~/.dotfiles/.oh-my-zsh/custom ~/.oh-my-zsh/custom
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


##  Jenv and Multiple JDK 

Let's learn how to manage multiple JDK with jenv tool.

Step 1

- In this step, we will ensure to ready jenv tool.

```
$ vi .zshrc 


	export PATH="$HOME/.jenv/bin:$PATH"
  	eval "$(jenv init -)"

$ source .zshrc
```

Step 2

- I installed these JDKs via my Brewfile. If you would like to use another JDK you should install by yourself
and get their paths where they were installed.

Example
```
$ jenv add /Library/Java/JavaVirtualMachines/temurin-17.jdk/Contents/Home/


$ jenv versions
```

Step 3 

- Set global java to use as $JAVA_HOME

```
$ jenv global openjdk64-17.0.1

$ java -version

$ jenv global openjdk64-11.0.13

$ java -version

$ jenv global openjdk64-1.8.0.312

$ java -version


```
OR 

- Set local folder java to use as $JAVA_HOME

```
$ jenv local openjdk64-17.0.1

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


## Maven Settings

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


##  rbenv and Multiple Ruby 

Let's learn how to manage multiple Ruby with rbenv tool.

Step 1

- In this step, we will ensure to ready rbenv tool.

```
$ vi .zshrc 


	export PATH="$HOME/.rbenv/bin:$PATH"
  	eval "$(rbenv init -)"

$ source .zshrc
```

##  pyenv and Multiple Python 

Let's learn how to manage multiple Python with pyenv tool.

Step 1

- In this step, we will ensure to ready pyenv tool.

```
$ vi .zshrc 


	export PATH="$HOME/.pyenv/bin:$PATH"
  	eval "$(pyenv init -)"

$ source .zshrc
```


##  goenv and Multiple Go 

Let's learn how to manage multiple Go with goenv tool.

Step 1

- In this step, we will ensure to ready goenv tool.

```
$ vi .zshrc 


	export PATH="$HOME/.goenv/bin:$PATH"
  	eval "$(goenv init -)"

$ source .zshrc
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
| Redis Helper         | Redis Console UI|


## SublimeText Plugins

~~~
command + shift + p
Install package -> enter
Type which plugin you want to download.
~~~

| Plugin  		| Info 			| Shortcut		| 
| ------------- | ------------- | ------------- |
| Highlight Duplicates  | Automatically detect same text on file  | Automatically| 
| Indent XML            | xml formatter  | Crtl-K Ctrl-F |
| Markdown Extended| .md file language-specific highlighter|
| MarkdownLivePreview| offline .md preview plugin|
| MarkdownTOC  | auto insert table of content |
| xml2json     | convert xml -> json or json -> xml |

## VSCode Plugins

| Plugin  	| Info |
| ------------- | ------------- |
| ms-azuretools.vscode-docker    | Docker highligther  |
| redhat.vscode-yaml            | Yaml file linter  |



## Browser Plugins

| Plugin  	| Info | Link |
| ------------- | ------------- | ------------- |
| dark reader    | Dark Read | darkreader.org  |
| json viewiew   | Formatter Json | github.com/tulios/json-viewer  |
| tab wrangler   | Less Memmory on browser | addons.mozilla.org/en-US/firefox/addon/tabwrangler |
| vimium | Use browser with vim shortcut | github.com/philc/vimium |

## Don't run below commands use "brewfile"
```
$ brew install 
- wget ( dependencies will download automatically = gettext, libunistring, libidn2, ca-certificates, openssl@1.1 )
- httpie (dependencies will download automatically = gdbm, mpdecimal, readline, sqlite, xz and python@3.10)
- dive
- helm
- kind
- kubectx
- krew
- maven
- minikube
- mas
- jenv
- rbenv
- pyenv
- goenv



$ brew install --cask
- brave-browser
- dbeaver-community
- tableplus
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
- adoptopenjdk/openjdk/adoptopenjdk8
- adoptopenjdk/openjdk/adoptopenjdk11
- vienna		
- visualvm
- virtualbox
- virtualbox-extension-pack		
- lens
- loom
- zoom


$$ I haven't installed yet

- brew install --cask soapui --noquarantine
- brew install --cask osxfuse
- brew install ntfs-3g (windows harddisk connect)

- mas install 605732865 # rss bot

```
