export PATH=${PATH}:/usr/local/mysql/bin
#export PATH="/usr/local/mysql/bin:$PATH"
alias myrestart='sudo /usr/local/mysql/support-files/mysql.server restart'

# 配置tomcat路径，关于 tomcat 启动不了（和 apache 有冲突？）的原因，以后再探
# export PATH=${PATH}:/usr/local/tomcat/bin
# alias catup='sudo /usr/local/tomcat/bin/startup.sh'
# alias catdown='sudo /usr/local/tomcat/bin/shutdown.sh'

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias http_py='python -m SimpleHTTPServer 8081' # 8081暂定吧

# About react-native
alias rna="react-native run-android"
alias rni="react-native run-ios"

# For Java

# 配置android SDK路径
export PATH=${PATH}:/Users/Egoist/Downloads/adt-bundle-mac-x86_64-20140702/sdk
export PATH=${PATH}:/Users/Egoist/Downloads/adt-bundle-mac-x86_64-20140702/sdk/platform-tools
export PATH=${PATH}:/Users/Egoist/Downloads/adt-bundle-mac-x86_64-20140702/sdk/tools
export ANDROID_HOME=/Users/Egoist/Downloads/adt-bundle-mac-x86_64-20140702/sdk

# maven
export M2_HOME=/usr/local/extend_for_java/apache-maven-3.3.3
export MAVEN_HOME=/usr/local/extend_for_java/apache-maven-3.3.3

export PATH=$PATH:$M2_HOME/bin


# 智疏 KSB config 文件
export LECHUU_CONFIG=/Users/Egoist/Documents/Egoist/config

alias zhishu='sh /Users/Egoist/.script/zhishu.sh'


# 一些比较个性化的自定义

# SublimeText3 & Atom & VS Code & Chrome & vim
alias q='/Applications/Visual\ Studio\ Code.app/Contents/MacOS/Electron'
#alias w='vim'
alias e='/Applications/Sublime\ Text\ \(3083\).app/Contents/SharedSupport/bin/subl'
alias r='vim'
alias a='atom'
alias c='open -a /Applications/Google\ Chrome.app'

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
alias gps='git push origin master'


# Shell前缀修改 \u@\h\w   ---  Egoist@et~ 😙😚😜😝😛😁😂
export PS1="~: "

# 声明自定义路径 & 指令
alias ~='cd ~'                                         # cd ~
alias ~script='cd ~/.script'                           # 进入自己脚本 shell 文件夹
alias ~egoist='cd ~/Documents/Egoist/'
alias ~c='cd /Users/Egoist/Documents/Egoist/C\ or\ C++\ File/'
alias ~oc='cd /Users/Egoist/Documents/Egoist/Objective-C/'
alias ~py='cd ~/Documents/Egoist/Python/'
alias ~python='cd ~/Documents/Egoist/Python/'
alias ~js='cd ~/Documents/Egoist/js/pure\ js'              # 该js目录做为一个 git repository 存放各种 js 代码，从 CodeReview 开始 # 17.02.19 转入 pure js
alias ~blog='cd /Users/Egoist/Sites/blog-example/blog'     # 快速进入 blog 目录，往后可能直接通过脚本实现
alias ~igoist='cd /Users/Egoist/Sites/igoist.github.io2'   # 不多解释
alias ~l='cd ~/LeetCodes'
alias ~wb='cd /Users/Egoist/Sites/Web/demos/'              # Web demos 常用目录
alias ~draft='cd /Users/Egoist/Sites/Web/draft/'           # Web draft 常用目录


alias ~at='cd /Users/Egoist/Sites/ant-design'                    # Ant-design
alias ~rt='cd /Users/Egoist/Sites/React/demoApps/hello-world/'   # React
alias ~rd='cd /Users/Egoist/Records'                             # Records 17.05.25

alias ~esrc='cd ~/.eslintrc'                               # 进入 eslintrc 目录

# ================ 分割线 ================
# alias esrc~='e ~/.eslintrc/xxx.xxx'                       # 用 Sublime 打开 eslintrc.json


# ================ 分割线 ================
alias pdf='open /Users/Egoist/Documents/PDF'           # 直接打开 PDF 目录

# ================ Python 脚本 ===========
alias pyi='py /Users/Egoist/Documents/Egoist/Python/psutil-proj/Integrated.py'

# ================ 分割线 ================
# alias rd='sh /Users/Egoist/.script/record.sh'
alias blog='sh /Users/Egoist/.script/blog.sh'

export PATH=/usr/local/mongodb/mongodb-osx-x86_64-3.4.4/bin:$PATH


# ================ 前端 ==================
alias scss='sass style.scss:style.css --watch'
alias scss2='sass sass/style.scss:css/style.css --watch'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# yarn
# export PATH="$PATH:/usr/local/Cellar/yarn/0.24.6/bin"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export CMAKE_PREFIX_PATH="/usr/local/Cellar/anaconda2"

eval "$(pyenv virtualenv-init -)"

# added by Anaconda2 installer
export PATH="/usr/local/Cellar/anaconda2/bin:$PATH"
