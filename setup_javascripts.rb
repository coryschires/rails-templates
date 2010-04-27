# remove prototype defaults
run "rm public/javascripts/controls.js"
run "rm public/javascripts/dragdrop.js"
run "rm public/javascripts/effects.js"
run "rm public/javascripts/prototype.js"

# include jquery port of rails.js and other common jquery plugins
rails_helpers = run "curl http://github.com/rails/jquery-ujs/raw/59dd91d945570391f905b1e40444e5921dbc2b8f/src/rails.js"
validate = run "curl http://ajax.microsoft.com/ajax/jquery.validate/1.7/jquery.validate.js"
css_browser_selector = run "curl http://github.com/rafaelp/css_browser_selector/raw/master/css_browser_selector.js"
js_browser_selector = run "cur http://jquery.thewikies.com/browser/jquery.browser.min.js"

file 'public/javascripts/rails.js', rails_helpers, :force => true
file 'public/javascripts/jquery.validate.js', validate
file 'public/javascripts/css_browser_selector.js', css_browser_selector
file 'public/javascripts/jquery.browser.js', js_browser_selector
file 'public/javascripts/jquery.browser.js', js_browser_selector


# adjust application layout to include: jquery, jquery ui, HTML5 enabling script (requires helper)
# file 'app/views/layouts/application.html.erb'