# removes unnecessary files created by rails generator
apply "http://github.com/coryschires/rails-templates/raw/master/remove_clutter.rb"

# prepares project for jquery rather than protoype
apply "http://github.com/coryschires/rails-templates/raw/master/setup_jquery.rb"

# install sass gem and add reset, utilities, basic_style, and application templates
apply "http://github.com/coryschires/rails-templates/raw/master/setup_sass.rb"

# create admin section - including admin controller and style sheet

# install devise authentication - prompts for configuration options

# bundle any required gems
# run 'bundle install'

# setup git repo and push initial commit