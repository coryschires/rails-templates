default_timezone = %q{
# Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
# Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
# config.time_zone = 'Central Time (US & Canada)'
}
custom_timezone = "config.time_zone = 'Central Time (US & Canada)'"

gsub_file 'config/application.rb', /#{default_timezone}/, custom_timezone