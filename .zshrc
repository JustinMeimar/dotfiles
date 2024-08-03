
# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=cyan'

plugins=(
    git
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

### ANTLR
export ANTLR_INS=/home/justin/installs/antlr/antlr4-install
export ANTLR_JAR=/home/justin/installs/antlr/antlr4-install/bin/antlr-4.13.0-complete.jar

### LLVM
export LLVM_DIR=/home/justin/installs/llvm/llvm-18/lib/cmake/llvm
export MLIR_INS=/home/justin/installs/llvm/llvm-18
export MLIR_DIR=$MLIR_INS/lib/cmake/mlir

export PATH=$MLIR_INS/bin:$PATH

### OTHER
export MODULAR_HOME=/home/justin/.modualr
export EMSDK=/home/justin/installs/emsdk
export EMSDK_NODE=/home/justin/installs/emsdk/node/18.20.3_64bit/bin/node

# Start Zellij automatically
if [[ -z "$ZELLIJ" ]]; then
  if [[ "$ZELLIJ_AUTO_ATTACH" == "true" ]]; then
    zellij attach -c
  else
    zellij
  fi

  if [[ "$ZELLIJ_AUTO_EXIT" == "true" ]]; then
    exit
  fi
fi
