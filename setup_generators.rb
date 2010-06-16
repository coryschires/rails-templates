gem "rails3-generators", :group => :development

default_generator_config = %q{
# Configure generators values. Many other options are available, be sure to check the documentation.
# config.generators do |g|
#   g.orm             :active_record
#   g.template_engine :erb
#   g.test_framework  :test_unit, :fixture => true
# end
}

custom_generator_config = %q{
config.generators do |g|
  g.template_engine       :haml
  g.test_framework        :rspec
  g.stylesheets           false
  g.fixture_replacement   :factory_girl
  g.view_specs            false
end
}

gsub_file 'config/application.rb', /#{default_generator_config}/, custom_generator_config