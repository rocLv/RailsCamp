# Efficient Ruby

---

# RVM的安装和使用

>  RVM是ruby version manager的简称，类似的工具还有rbenv

  Install: [rvm.io](rvm.io)

  Usage:

      # install ruby
      $ rvm install ruby-2.4.1

      # change ruby version
      $ rvm use 2.4.1

      # choose one version as default
      $ rvm use 2.4.1 --default

      # list all installed versions
      $ rvm list


---

# Terminal的安装和配置

      Terminal: 推荐使用 [iTerm](https://www.iterm2.com/)
      Shell：   oh-my-zsh

      Terminal环境配置:
       - https://github.com/thoughtbot/dotfiles

      Terminal样式设置:
      * 程序员字体：  Source Code Pro from Adobe
      * Font Size:    13 - 14pt
      * Typeface:     Regular (or Light if you prefer)
      * Ensure anti-aliased is true

---

# Rails dev environment setup

      Mac OS 一键安装：

       -  https://github.com/thoughtbot/laptop

      Ubuntu:

      - 手动按需安装

      PS: 千万不要用sudo 安装gem

---

# *nux系统下软件安装方法

   - Mac OS:
      - [homebrew](https://brew.sh/):
         - brew install curl

   - Ubuntu:
     - sudo apt-get install curl

---

# Git/Github

  - $ git init（初始化项目）
  - $ git remote add origin https://github.com/roclv/railscamp.git
  - $ git push -u origin master


  - $ git pull --rebase
  - $ git checkout -b feature/class001
  - $ git add -A
  - $ git commit -m "Initial commit"

---
# Git/Github

  查看相关命令

  - $  git status
  - $  git log
  - $  git diff slides/class001.md

  PS: (面试常问:fetch 和pull区别)
  - $  git fetch(把当前分支从远程拉取下来）
  - $  git merge another-branch 
  - $  git pull = git fetch && git merge


---

# Ruby开发生态

      -  ruby-china.org
      -  ruby-lang.org
      -  edgeguides.rubyonrails.org
      -  edgeapi.rubyonrails.org
      -  ruby.libhunt.com

---


# Rails在国内的发展情况

---

# Gem的安装和使用
 > Gem 相当于其他语言的library

  # 可具体查看 https://gems.ruby-china.org/
  $ gem -v


 > Bundle 是批量安装gem文件的工具, 根据Gemfile安装Gem


  # 切换默认使用国内源，加快gem安装速度
  $ bundle config mirror.https://rubygems.org https://gems.ruby-china.org

  # install bundler
  $ gem install bundler

  # 根据Gemfile里面的内容安装gems
  $ bundle install

---


# 我的Ruby书架

  - Ruby基础教程, 松本行弘
  - Ruby元编程1，2版

  - Effective Ruby
  - 重构Ruby版

  - Ruby最佳实践
  - Ruby原理剖析

  - 代码的未来
  - 松本行弘的程式世界

---
# Thank you!
