# GraphQLDemo

To install Ruby on a Mac with an M1 or M2 chip for using Cocoapods, you can follow these steps:

Install Homebrew: Homebrew is a package manager for macOS that makes it easy to install various software packages. You can install it by running the following command in your Terminal:

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

Install Ruby using rbenv: rbenv is a lightweight Ruby version management tool. It allows you to easily install and switch between different versions of Ruby. Install rbenv and ruby-build as plugins to rbenv. First, install rbenv using Homebrew:

brew install rbenv

Then, initialize rbenv by adding the following line to your shell configuration file (e.g., .bash_profile, .zshrc):

eval "$(rbenv init -)"

Restart your terminal or run source ~/.bash_profile (or the respective file you edited) for the changes to take effect.

Install Ruby: With rbenv installed, you can now install Ruby. It's recommended to install the latest version of Ruby (at the time of writing) to ensure compatibility with Cocoapods and other Ruby gems:
Run rbenv install <latest_ruby_version> to install Ruby <latest_ruby_version>.
rbenv install 3.3.0

Set this version as the global default:
Run rbenv global <latest_ruby_version> to set Ruby <latest_ruby_version> as the default version.
rbenv global 3.3.0

Run rbenv rehash to update the shims for the executables.

Add these lines to the PATH variables in ~/.bash_profile or ~/.zshenv file, depending on
which shell you are using:

export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"

Install Cocoapods: Once you have Ruby installed, you can install Cocoapods using the gem package manager (which comes with Ruby):

gem install cocoapods

Verify Installation: After the installation is complete, you can verify that Cocoapods is installed correctly by running:

pod --version

This command should print out the version number of Cocoapods, indicating that it has been successfully installed.

Now you have Ruby installed via rbenv and Cocoapods ready to use on your Mac with an M1 or M2 chip. You can proceed to use Cocoapods for managing dependencies in your Xcode projects.
