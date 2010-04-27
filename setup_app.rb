# removes unnecessary files created by rails generator
apply "https://github.com/coryschires/rails-templates/raw/master/remove_clutter.rb"

# prepares project for jquery rather than protoype

# install sass gem and add reset, utilities, basic_style, and application templates

# create admin section - including admin controller and style sheet

# install devise authentication - prompts for configuration options

# bundle any required gems
run 'bundle install'

# setup git repo and push initial commit