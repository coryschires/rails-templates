# remove prototype defaults
run "rm public/javascripts/controls.js"
run "rm public/javascripts/dragdrop.js"
run "rm public/javascripts/effects.js"
run "rm public/javascripts/prototype.js"

# include jquery port of rails.js and other common jquery plugins
rails_js = run "curl http://github.com/rails/jquery-ujs/raw/59dd91d945570391f905b1e40444e5921dbc2b8f/src/rails.js"
validate_js = run "curl http://ajax.microsoft.com/ajax/jquery.validate/1.7/jquery.validate.js"
css_browser_selector_js = run "curl http://github.com/rafaelp/css_browser_selector/raw/master/css_browser_selector.js"
js_browser_selector_js = run "cur http://jquery.thewikies.com/browser/jquery.browser.min.js"
application_js = run "curl http://github.com/coryschires/rails-templates/blob/master/app-templates/application.js"

file 'public/javascripts/rails.js', rails_js, :force => true
file 'public/javascripts/jquery.validate.js', validate_js
file 'public/javascripts/css_browser_selector.js', css_browser_selector_js
file 'public/javascripts/jquery.browser.js', js_browser_selector_js
file 'public/javascripts/jquery.browser.js', js_browser_selector_js
file 'public/javascripts/application_js.js', application_js, :force => true


# adjust application layout to include: jquery, jquery ui, HTML5 enabling script (requires helper)
# file 'app/views/layouts/application.html.erb'