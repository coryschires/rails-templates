# create admin controller
generate(:controller, 'admin', 'dashboard')

# create admin stylesheets
admin_style = run 'curl -sS http://github.com/coryschires/rails-templates/raw/master/admin-templates/admin.sass'
admin_defines = run 'curl -sS http://github.com/coryschires/rails-templates/raw/master/admin-templates/_admin_defines.sass'
file 'public/stylesheets/sass/admin.sass', admin_style
file 'public/stylesheets/sass/_admin_defines.sass', admin_defines

# create admin javascript
admin_js = run 'curl -sS http://github.com/coryschires/rails-templates/raw/master/admin-templates/admin.js'
file 'public/javascripts/admin.js', admin_js

# create admin layout
admin_layout = run 'curl -sS http://github.com/coryschires/rails-templates/raw/master/admin-templates/admin.html.erb'
file 'app/views/layouts/admin.html.erb', admin_layout

# overwrite admin dashboard
admin_dashboard = run 'curl -sS http://github.com/coryschires/rails-templates/raw/master/admin-templates/dashboard.html.erb'
file 'app/views/admin/dashboard.html.erb', admin_dashboard, :force => true