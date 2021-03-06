# require haml & sass
gem 'haml'

# grab sass templates
defines = run "curl -sS http://github.com/coryschires/rails-templates/raw/master/sass-templates/_defines.sass"
reset = run "curl -sS http://github.com/coryschires/rails-templates/raw/master/sass-templates/_reset.sass"
utilities = run "curl -sS http://github.com/coryschires/rails-templates/raw/master/sass-templates/_utilities.sass"
application = run "curl -sS http://github.com/coryschires/rails-templates/raw/master/sass-templates/application.sass"

# add them to the sass folder
file 'public/stylesheets/sass/_defines.sass', defines
file 'public/stylesheets/sass/_reset.sass', reset
file 'public/stylesheets/sass/_utilities.sass', utilities
file 'public/stylesheets/sass/application.sass', application