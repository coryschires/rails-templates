# require gem
gem 'haml'

# grab sass templates
reset = run "curl http://github.com/coryschires/rails-templates/raw/master/sass-templates/_reset.sass"
utilities = run "curl http://github.com/coryschires/rails-templates/raw/master/sass-templates/_utilities.sass"
basic = run "curl http://github.com/coryschires/rails-templates/raw/master/sass-templates/_basic.sass"
application = run "curl http://github.com/coryschires/rails-templates/raw/master/sass-templates/application.sass"

# add them to the sass folder
file 'public/stylesheets/sass/_reset.sass', "#{reset}"
file 'public/stylesheets/sass/_utilities.sass', "#{utilities}"
file 'public/stylesheets/sass/_basic.sass', "#{basic}"
file 'public/stylesheets/sass/application.sass', "#{application}"