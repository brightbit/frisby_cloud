name "base"
description "Base role applied to all nodes."
# List of recipes and roles to apply. Requires Chef 0.8, earlier versions use 'recipes()'.
run_list(
  "htop",
  "build-essential",
  "python",
  "mysql",
  "git",
  "rvm::ree",
  "bundler",
  "monit"
)

# Attributes applied if the node doesn't have it set already.
#default_attributes()
# Attributes applied no matter what the node has set already.
#override_attributes()
