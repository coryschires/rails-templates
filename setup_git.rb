# setup git repo
file '.gitignore', <<-FILE
.DS_Store
log/*.log
tmp/**/*
config/database.yml
db/*.sqlite3
public/uploads/*
gems/*
!gems/cache
!gems/bundler
FILE

git :init
git :submodule => "init"
git :add => '.'
git :commit => "-a -m 'Initial commit'"