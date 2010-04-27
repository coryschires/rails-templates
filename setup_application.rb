# removes unnecessary files created by rails generator
run 'rm README'
run 'rm public/index.html'
run 'rm public/favicon.ico'
run 'rm public/images/rails.png'
run 'touch README'

# setup javascripts
apply "http://github.com/coryschires/rails-templates/raw/master/setup_jquery.rb"

# install stylesheets (using sass)
apply "http://github.com/coryschires/rails-templates/raw/master/setup_sass.rb"

# add templates
    # application_controller.rb
    # layout_helper.rb
    # application.html.erb    
    

# setup testing evnironment


# create admin section (optional)
    # admin.js
    # admin.sass    
    # admin.html.erb
    # generate admin controller
    # replace dashboard.html.erb


# install authentication with devise (optional)

# setup git repository (optional)

# bundle any required gems
# run 'bundle install'

