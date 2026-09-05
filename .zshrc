# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

#ZSH_THEME="agnosterzak"
ZSH_THEME="af-magic"

plugins=(
    git
    dnf
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# check the dnf plugins commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/dnf


# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
#pokemon-colorscripts --no-title -s -r #without fastfetch
pokemon-colorscripts --no-title -s -r | fastfetch -c $HOME/.config/fastfetch/config-pokemon.jsonc --logo-type file-raw --logo-height 10 --logo-width 5 --logo -

# fastfetch. Will be disabled if above colorscript was chosen to install
#fastfetch -c $HOME/.config/fastfetch/config-compact.jsonc

# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Set-up icons for files/directories in terminal using lsd
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la --group-directories-first'
alias lt='ls --tree'
alias cls='clear'

export PATH=$HOME/.local/bin:$PATH

export JAVA_HOME=/home/milko/.jdks/graalvm-ce-25.0.2
#export JAVA_HOME=/home/rushmi0/items/dev/OpenJDK/graalvm-jdk-21.0.8+12.1
export PATH=$JAVA_HOME/bin:$PATH

export ANDROID_SDK_ROOT="$HOME/Android/Sdk"
export ANDROID_NDK_HOME="$ANDROID_SDK_ROOT/ndk/30.0.14904198"
export NDK_HOME="$ANDROID_NDK_HOME"
export PATH="$PATH:$ANDROID_SDK_ROOT/emulator:$ANDROID_SDK_ROOT/platform-tools:$ANDROID_NDK_HOME"
export PATH=$ANDROID_NDK_HOME/toolchains/llvm/prebuilt/linux-x86_64/bin:$PATH


export CC_aarch64_linux_android=aarch64-linux-android35-clang
export CC_armv7_linux_androideabi=armv7a-linux-androideabi35-clang
export CC_x86_64_linux_android=x86_64-linux-android35-clang
export CC_i686_linux_android=i686-linux-android35-clang

export AR_aarch64_linux_android=llvm-ar
export AR_armv7_linux_androideabi=llvm-ar
export AR_x86_64_linux_android=llvm-ar
export AR_i686_linux_android=llvm-ar

export VISUALVM_HOME="$HOME/items/app/visualvm_221"
export PATH="$VISUALVM_HOME/bin:$PATH"
alias vvm="visualvm"

export LUA_LIB=/usr/lib64
export LUA_INCLUDE_DIR=/usr/include
export PKG_CONFIG_PATH=/usr/lib64/pkgconfig
export LUA_NO_PKG_CONFIG=0

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"

eval "$(pyenv init - zsh)"
eval "$(pyenv virtualenv-init -)"
