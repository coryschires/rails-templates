default_generator_config = /# Configure\sgenerators\svalues.+end/

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