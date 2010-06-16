# removes unnecessary files created by rails generator
run 'rm README'
run 'rm public/index.html'
run 'rm public/favicon.ico'
run 'rm public/images/rails.png'
run 'rm .gitignore'
run 'touch README'

# rotate log files (50 files max at 1MB each)
log_path = '#{Rails.root}/log/#{Rails.env}.log'
gsub_file 'config/application.rb', /(< Rails::Application.*)/ , "\\1\n\n\t\tconfig.logger = Logger.new(\"#{log_path}\", 50, 1048576)\n"

# setup Gemfile to include test and development groups - using rspec and friends
gem_file = run "curl -sS http://github.com/coryschires/rails-templates/raw/master/app-templates/Gemfile"
file 'Gemfile', gem_file, :force => true

# setup javascripts
apply "http://github.com/coryschires/rails-templates/raw/master/setup_javascripts.rb"

# install stylesheets (using sass)
apply "http://github.com/coryschires/rails-templates/raw/master/setup_stylesheets.rb"

# add required templates
application_controller = run "curl -sS http://github.com/coryschires/rails-templates/raw/master/app-templates/application_controller.rb"
layout_helper = run "curl -sS http://github.com/coryschires/rails-templates/raw/master/app-templates/layout_helper.rb"
application_layout = run "curl -sS http://github.com/coryschires/rails-templates/raw/master/app-templates/application.html.erb"
file 'app/controllers/application_controller.rb', application_controller, :force => true
file 'app/helpers/layout_helper.rb', layout_helper, :force => true
file 'app/views/layouts/application.html.erb', application_layout, :force => true

# setup custom configuration for rails generators
apply 'http://github.com/coryschires/rails-templates/raw/master/setup_generators.rb'

# create admin section (optional)
if yes?("Would you like to generate an admin controller?")
    apply 'http://github.com/coryschires/rails-templates/raw/master/setup_admin.rb'
end

# install authentication with devise (optional)



# initialize git repository (optional)
if yes?("Would you like to use GIT with this project?")
  apply 'http://github.com/coryschires/rails-templates/raw/master/setup_git.rb'
end

# bundle any required gems
run 'bundle install'