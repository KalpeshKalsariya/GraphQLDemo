# Workflow

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

Another solution for Install cocoapods:

Check Cocoapods Installation: First, ensure that Cocoapods is installed correctly by running:

gem list --local | grep cocoapods

This command will list all installed gems and should show Cocoapods if it's installed.

Check PATH: Ensure that the directory where Cocoapods is installed is included in your shell's PATH environment variable. Normally, Cocoapods is installed in a location like ~/.gem/ruby/<ruby_version>/bin. To check if this directory is in your PATH, run:

echo $PATH

If the directory containing Cocoapods is not listed in the output, you need to add it to your PATH. You can do this by adding the following line to your shell configuration file (e.g., .bash_profile, .zshrc):

export PATH="$HOME/.gem/ruby/<ruby_version>/bin:$PATH"

Replace <ruby_version> with the version of Ruby you're using (e.g., 3.3.0).

Restart Terminal: After updating your shell configuration file, restart your terminal or run source ~/.bash_profile (or the respective file you edited) to apply the changes.

Verify Cocoapods Installation: Once you've updated your PATH and restarted your terminal, verify that Cocoapods is now recognized by running:

pod --version

If Cocoapods is installed correctly and the PATH is set up properly, this command should display the version of Cocoapods installed on your system.

Following these steps should resolve the "command not found" error, and you should be able to use pod init and other Cocoapods commands successfully.

To install Apollo, you typically need to use Node Package Manager (npm) or Yarn. Apollo is primarily used in JavaScript projects, particularly with GraphQL APIs. Here's how you can install Apollo:

Install Node.js: Apollo is a JavaScript library, so you need Node.js installed on your machine to use it. You can download and install Node.js from the official website: Node.js Downloads.

After the installation is complete, you can verify the installation by opening a new Terminal window and
running the following commands:

node -v
npm -v

These commands should display the versions of Node.js and npm installed on your system, respectively.

Once Node.js and npm are installed, you should be able to Install the graphql package globally: You can do this by running the following command in your
terminal:

npm install -g graphql

Install Apollo as a devDependency in your project: This is the recommended installation option in the
Apollo docs. You can do this by running the following command in your project directory:

npm install --save-dev apollo

Create a new project: Navigate to the directory where you want to create your project and run:

mkdir my-project
cd my-project

Initialize the project: Initialize a new npm project by running:

npm init -y

This will create a package.json file in your project directory.

Install Apollo Client: Now, you can install Apollo Client, which is the client-side library for Apollo, by running:

npm install @apollo/client graphql

This command will install Apollo Client along with GraphQL, which Apollo Client depends on.

Start using Apollo: With Apollo Client installed, you can now start using it in your project and start configuring it to work with your GraphQL API.

You can download the schema.json file from your GraphQL server using a command line tool like curl.
Here’s how you can do it:
1. Open Terminal.
2. Navigate to your project directory using the cd command.
3. Run the following command to download the schema.json file:

apollo schema:download --endpoint=<your_graphql_server_url> schema.json

This command uses the Apollo CLI to download your GraphQL schema from the provided endpoint and save it
as schema.json in your current directory.
After downloading the schema.json file, you can add it to your Xcode project:
1. In Xcode, select File > Add Files to "[Your Project Name]"....
2. Navigate to the location of your schema.json file and click Add.
Please make sure you have the Apollo CLI installed. If not, you can install it using npm (Node Package Manager) with the following command:

npm install -g apollo

Remember to replace [Your Project Name] with the actual name of your Xcode project and <your_graphql_server_url> with the actual name of your GraphQl server URL.
