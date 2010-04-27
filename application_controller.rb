class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'

  helper :all # include all helpers, all the time

end