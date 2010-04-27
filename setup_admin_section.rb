# create admin controller
# generate(:controller, "admin dashboard")

# create admin style sheet
admin_style = run "curl http://github.com/coryschires/rails-templates/raw/master/sass-templates/admin.sass"
file 'public/stylesheets/sass/admin.sass', admin_style

# create admin javascript
admin_js = run "curl http://github.com/coryschires/rails-templates/raw/master/app-templates/admin.js"
file 'public/javascripts/admin.js', admin_js

# create admin layout
admin_layout = run "curl http://github.com/coryschires/rails-templates/raw/master/app-templates/admin.html.erb"
file 'app/views/layouts/admin.html.erb', admin_layout
