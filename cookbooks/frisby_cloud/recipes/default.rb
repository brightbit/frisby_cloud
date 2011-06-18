# vagrant_main cookbook
# This cookbook includes and sets up a server with apache, mysql,
# rails, and passenger.
#
require_recipe "htop"
require_recipe "build-essential"
require_recipe "python"
require_recipe "mysql"
require_recipe "git"
require_recipe "rvm::ree"
require_recipe "bundler"
require_recipe "monit"

#require_recipe "frisby"
