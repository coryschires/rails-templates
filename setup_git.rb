# setup git repository
file '.gitignore', <<-FILE
.bundle
.DS_Store
log/*.log
tmp/**/*
db/schema.rb
db/*.sqlite3
public/stylesheets/*.css
FILE

git :init
git :submodule => "init"
git :add => '.'
git :commit => "-a -m 'Initial commit'"