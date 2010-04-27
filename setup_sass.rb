# require gem
gem 'haml'

# grab sass templates
reset = run "curl "
utilities = run "curl "
basic = run "curl"
application = run "curl"

# add them to the sass folder
file 'public/stylesheets/sass/_reset.sass', "#{reset}"
file 'public/stylesheets/sass/_utilities.sass', "#{utilities}"
file 'public/stylesheets/sass/_basic.sass', "#{basic}"
file 'public/stylesheets/sass/application.sass', "#{application}"