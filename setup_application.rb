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
application_helper = run "curl http://github.com/coryschires/rails-templates/raw/master/app-templates/application_helper.rb"
application_layout = run "curl http://github.com/coryschires/rails-templates/raw/master/app-templates/application.html.erb"

file 'app/controllers/application_controller.rb', application_controller, :force => true
file 'app/helpers/application_helper.rb', application_helper, :force => true
file 'app/views/layouts/application.html.erb', application_layout, :force => true

    
# create admin section (optional)
# apply "http://github.com/coryschires/rails-templates/raw/master/setup_admin_section.rb"
    # admin.js
    # admin.sass    
    # admin.html.erb
    # generate admin controller
    # replace dashboard.html.erb

# setup testing evnironment (optional)

# install authentication with devise (optional)

# setup git repository (optional)

# bundle any required gems
# run 'bundle install'

