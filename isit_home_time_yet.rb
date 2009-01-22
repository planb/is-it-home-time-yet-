require 'rubygems'
gem 'sinatra', '~> 0.3'
require 'sinatra'
require 'work'

get '/' do
  @ifactory = Work.new
  erb :index
end
