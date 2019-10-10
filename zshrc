# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export PATH=/usr/local/mongodb/bin:$PATH
export PATH=${PATH}:/usr/local/mysql/bin
export PATH=/usr/local/opt/openssl/bin:$PATH

# 一些比较个性化的自定义指令

# SublimeText3 & Atom & VS Code & Chrome & vim
alias q='/Applications/Visual\ Studio\ Code.app/Contents/MacOS/Electron'
#alias w='vim'
alias e='/Applications/Sublime\ Text\ \(3083\).app/Contents/SharedSupport/bin/subl'
alias r='vim'
alias a='atom'
alias b='bat'
alias cat='bat'
alias c='open -a /Applications/Google\ Chrome.app'
#alias n='nodemon'
alias n='npm'
alias nr='npm run'
alias y='yarn'
alias p='prettier --write --config .prettierrc.json '
alias ssss='sass sass/main.scss:css/main.css --watch'

# Python 编译简化
alias py='python'

# git alias
alias ga='git add'
alias gb='git branch'
alias gc='git checkout'
alias gd='git diff'
alias gm='git commit -m'
alias gr='git remote'
alias gs='git status'
alias gss='git status .'
alias gp='git push'
alias gpo='git push origin'
alias gps='git push origin master'
alias gl='git log --graph --abbrev-commit --decorate --date=relative --format=format:"%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)" --all'

# Web 开发相关
alias sl='scss-lint'

# Shell前缀修改 \u@\h\w   ---  Egoist@et~ 😙😚😜😝😛😁😂
# export PS1="~: "

# 声明自定义路径 & 指令
alias ~='cd ~'                                         # cd ~
alias ~script='cd ~/.script'                           # 进入自己脚本 shell 文件夹
alias ~egoist='cd ~/Documents/Egoist/'
# alias ~c='cd $HOME/Documents/Egoist/C\ or\ C++\ File/'
alias ~app='cd ~/Sites/Apps'
alias ~c='cd $HOME/Config'
alias ~n='cd $HOME/CP/ex/NodeJS'
alias ~oc='cd $HOME/Documents/Egoist/Objective-C/'
alias ~py='cd ~/Documents/Egoist/Python/'
alias ~python='cd ~/Documents/Egoist/Python/'
alias ~js='cd ~/Documents/Egoist/js/pure\ js'              # 该js目录做为一个 git repository 存放各种 js 代码，从 CodeReview 开始 # 17.02.19 转入 pure js
alias ~blog='cd $HOME/Sites/blog-example/blog'     # 快速进入 blog 目录，往后可能直接通过脚本实现
alias ~igoist='cd $HOME/Sites/igoist.github.io2'   # 不多解释
alias ~l='cd ~/LeetCodes'
alias ~ui='cd ~/Sites/igoist-preparation'
alias ~wb='cd $HOME/Sites/Web/demos/'              # Web demos 常用目录
alias ~draft='cd $HOME/Sites/Web/draft/'           # Web draft 常用目录


alias ~at='cd $HOME/Sites/ant-design'                    # Ant-design
alias ~rt='cd $HOME/Sites/React/demoApps/hello-world/'   # React
alias ~rd='cd $HOME/Records'                             # Records 17.05.25

alias ~esrc='cd ~/.eslintrc'                               # 进入 eslintrc 目录

alias ~yg='cd $HOME/py/you-get'                             # 工具 you-get

alias showfiles='defaults write com.apple.finder AppleShowAllFiles -boolean true & killall Finder'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles -boolean false & killall Finder'

# ================ 分割线 ================
# alias esrc~='e ~/.eslintrc/xxx.xxx'                       # 用 Sublime 打开 eslintrc.json


# ================ 分割线 ================
alias pdf='open $HOME/Documents/PDF'           # 直接打开 PDF 目录

# ================ Python 脚本 ===========
alias pyi='py $HOME/Documents/Egoist/Python/psutil-proj/Integrated.py'


# ================ 分割线 ================
# alias rd='sh $HOME/.script/record.sh'
alias blog='sh $HOME/.script/blog.sh'

# ================ 前端 ==================
alias scss='sass style.scss:style.css --watch'
alias scss2='sass scss/style.scss:css/style.css --watch'
alias t='touch index.html style.scss'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

alias jj='juejin'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ================ 工具 ==================
alias nfl='grep "* " -r ~/Records/link_filed | nf'
alias yg='$HOME/py/you-get/you-get'


ss() {
  declare q="$*"
  curl --user-agent curl "https://v2en.co/${q// /%20}"
}

ss-sh() {
  while echo -n "v2en> "
  read -r input
  [[ -n "$input" ]]
  do v2 "$input"
  done
}