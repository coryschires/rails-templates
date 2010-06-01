# remove prototype defaults
run "rm public/javascripts/controls.js"
run "rm public/javascripts/dragdrop.js"
run "rm public/javascripts/effects.js"
run "rm public/javascripts/prototype.js"

# include jquery port of rails.js and other common jquery plugins
rails_js = run "curl -sS http://github.com/rails/jquery-ujs/raw/59dd91d945570391f905b1e40444e5921dbc2b8f/src/rails.js"
validate_js = run "curl -sS http://ajax.microsoft.com/ajax/jquery.validate/1.7/jquery.validate.js"
browser_selector_js = run "curl -sS http://jquery.thewikies.com/browser/jquery.browser.min.js"
application_js = run "curl -sS http://github.com/coryschires/rails-templates/raw/master/app-templates/application.js"

file 'public/javascripts/rails.js', rails_js, :force => true
file 'public/javascripts/jquery.validate.js', validate_js
file 'public/javascripts/jquery.browser.js', browser_selector_js
file 'public/javascripts/application.js', application_js, :force => true