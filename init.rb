# REQUIRED GEMS
require "colored"
require "rails"
require "haml"
require "bundler"

@path = "#{File.dirname(__FILE__)}/templates/"

# START THIS THING
puts  "\n========================================================="
puts  " SHAWN'S RAILS 3 TEMPLATE - [v1.4.9] ".yellow.bold
puts  "=========================================================\n\n"

# REMOVE FILES
puts  "---------------------------------------------------------"
puts  " Removing useless junk ... ".red
puts  "---------------------------------------------------------"
run   "rm README"
run   "rm public/index.html"
run   "rm public/favicon.ico"
run   "rm public/robots.txt"
run   "rm -r public/images"
run   "rm -f public/javascripts/*"
run   "rm app/views/layouts/application.html.erb"
puts  "---------------------------------------------------------"

# ADD FILES
puts  " Adding useful junk ... ".green
puts  "---------------------------------------------------------"
run   "cp #{@path}application.html.haml app/views/layouts"
run   "cp -r #{@path}images public/"
puts  "---------------------------------------------------------"

# GIT INIT
puts  " Initializing new Git repo ...".cyan
puts  "---------------------------------------------------------"
run   "rm .gitignore"
run   "touch .gitignore"
run   "cat #{@path}gitignore >> .gitignore"
git   :init
git   :add => "."
puts  "---------------------------------------------------------"

# JAVASCRIPT
puts  " Adding Javascript files ...".green
puts  "---------------------------------------------------------"
run   "cp #{@path}javascripts/application.js public/javascripts"
run   "cp #{@path}javascripts/rails.js public/javascripts"
puts  "---------------------------------------------------------"

# SASS
puts  " Installing Sass directory, files and environment preferences ...".green
puts  "---------------------------------------------------------"
run   "cp -r #{@path}sass app/"
run   "cp #{@path}plugins.rb config/initializers/"
run   "cat #{@path}environment.rb >> config/environment.rb"
puts  "---------------------------------------------------------"

# GEMFILE
puts  " Appending Gemfile and running Bundler ...".magenta
puts  "---------------------------------------------------------"
run   "cat #{@path}Gemfile > Gemfile"
puts  "         Running Bundler install. This could take a moment ...".yellow
run   "bundle install"
puts  "         Bundled gems installed successfully!".green.bold
puts  "---------------------------------------------------------"

# GIT COMMIT
puts  " Creating initial Git commit ...".cyan
puts  "---------------------------------------------------------"
git   :add => "."
git   :commit => "-am 'Initial commit.'"

# DONE!
puts  "\n========================================================="
puts  " INSTALLATION COMPLETE!".yellow.bold
puts  "=========================================================\n\n\n"
