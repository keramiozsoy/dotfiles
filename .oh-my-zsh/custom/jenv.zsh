export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"


# import all installed java versions
for dir in /Library/Java/JavaVirtualMachines/*; do eval "jenv add $dir/Contents/Home/"; done


# Select minimum version of java as global version of PC.
jenv versions --bare | head -n 1 | xargs jenv global

jenv doctor