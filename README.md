# README

# Secret santa test
Things you may want to cover:

* Ruby version [3.1.1]  * Rails version [7]

Using Package Managers

    Install rbenv using one of the following approaches.

Homebrew

On macOS or Linux, we recommend installing rbenv with Homebrew.

    brew install rbenv ruby-build

Debian, Ubuntu, and their derivatives

Note that the version of rbenv that is packaged and maintained in the Debian and Ubuntu repositories is out of date. To install the latest version, it is recommended to install rbenv using git.

sudo apt install rbenv

Arch Linux and its derivatives

Archlinux has an AUR Package for rbenv and you can install it from the AUR using the instructions from this wiki page.

Set up rbenv in your shell.

    rbenv init

    rbenv shell 3.1.1


After that you can install Gem

    cd randomGift && bundle install


Run the server

    mailDev


    rails s 

