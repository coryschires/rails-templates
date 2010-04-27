# remove prototype defaults
run "rm public/javascripts/controls.js"
run "rm public/javascripts/dragdrop.js"
run "rm public/javascripts/effects.js"
run "rm public/javascripts/prototype.js"

# adjust application layout to include: jquery, jquery ui, HTML5 enabling script (requires helper)
file 'app/views/layouts/application.html.erb', <<-ERB
<!DOCTYPE html>
<html>
<head>
    <title>Application</title>
    <%= stylesheet_link_tag 'application' %>
    <%= javascript_include_tag 'http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js' %>
    <%= javascript_include_tag 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/jquery-ui.min.js' %>
    <%= javascript_include_tag 'rails', 'application' %>
    
    <%= html5 'http://html5shiv.googlecode.com/svn/trunk/html5.js' %>
    <%= csrf_meta_tag %>
</head>
<body>  
    <div id="pagewrap">
        <header></header>
        
        <%= yield %>
        
        <footer></footer>
    </div><!-- pagewrap -->
</body>
</html>
ERB


# include rails.js to replace defalult prototype helpers
# download edge version at: http://github.com/rails/jquery-ujs.git
file 'public/javascripts/rails.js', 
"#{apply 'http://github.com/rails/jquery-ujs/raw/59dd91d945570391f905b1e40444e5921dbc2b8f/src/rails.js'}"