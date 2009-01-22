require File.dirname(__FILE__) + "/../isit_home_time_yet.rb"
 
set :run, false
set :env, ENV['APP_ENV'] || :production
  
run Sinatra.application
