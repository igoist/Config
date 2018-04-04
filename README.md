# Config 系统环境配置系列

2017 年，未雨绸缪，提前为今后迁移做好准备


## List

* [(.)bash_profile](#bash_profile)
* [(.)gitconfig](#gitconfig)
* [(.)gitignore_globally](#gitignore_globally)
* [Emacs](#emacs)
* [Sublime](#sublime)
* [Vim](#vim)
* [VSCode](#vscode)
* [Web](#web)


<h3 id="emacs">Emacs -- 参考 ConfigEmacs</h3>

<p>Begin with emacs-mac & spacemacs & Zola's</p>
<p>混合配置的方案，等熟练了应该会再改进</p>
<ul>
  <li><a href="https://github.com/railwaycat/homebrew-emacsmacport" target="_blank" rel="noopener noreferrer">emacs-mac</a></li>
  <li><a href="https://github.com/syl20bnr/spacemacs" target="_blank" rel="noopener noreferrer">spacemacs</a></li>
  <li>zola's .spacemacs.d</li>
</ul>


<h3 id='sublime'>Sublime</h3>

**Remember! It seems like the VSCode's parser, with Sublime's parser we could add comment, tail comma in the settings file**

And since I remove the old file, replace it with the soft link, I found that the changes would not take effect immediately, unless you restart Sublime/VSCode or change the soft link's name and rename it back.

In order to keep the settings file synchronized, I had two choices:

* 1. Every time I change sth, copy it, paste it, and then do the ga, gm, gps stuffs
* 2. Use soft link, and every time sth changed, use the save_change.sh

Of course, I have chose the second way, and I hope that the rule won't change so fast with the version upgrade.


**...**

* Default.sublime-keymap (Remember that in ...SublimeInstallPath../Package/User/, ... now is just a soft link)
* save_change.sh -- reslove the soft link


<h3 id='vim'>Vim</h3>

...


**...**

* (.)vimrc


<h3 id='vscode'>VSCode</h3>

Reference Sublime.


**...**

* keybindings.json
* settings.json
* save_change.sh -- just like Sublime, for resloving the soft link


<h3 id='web'>Web</h3>

...


**...**

* (.)csscomb.json
* (.)scss-lint.yml
