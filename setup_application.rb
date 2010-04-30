# removes unnecessary files created by rails generator
run 'rm README'
run 'rm public/index.html'
run 'rm public/favicon.ico'
run 'rm public/images/rails.png'
run 'touch README'

# setup javascripts
apply "http://github.com/coryschires/rails-templates/raw/master/setup_javascripts.rb"

# install stylesheets (using sass)
apply "http://github.com/coryschires/rails-templates/raw/master/setup_stylesheets.rb"

# add required templates
application_controller = run "curl http://github.com/coryschires/rails-templates/raw/master/app-templates/application_controller.rb"
layout_helper = run "curl http://github.com/coryschires/rails-templates/raw/master/app-templates/layout_helper.rb"
application_layout = run "curl http://github.com/coryschires/rails-templates/raw/master/app-templates/application.html.erb"

file 'app/controllers/application_controller.rb', application_controller, :force => true
file 'app/helpers/layout_helper.rb', layout_helper, :force => true
file 'app/views/layouts/application.html.erb', application_layout, :force => true
    
# create admin section (optional)
if yes?("Would you like to generate an admin controller?")
    apply 'http://github.com/coryschires/rails-templates/raw/master/setup_admin.rb'
end

# setup testing evnironment (optional)

# install authentication with devise (optional)

# initialize git repository (optional)

# bundle any required gems
run 'bundle install'

