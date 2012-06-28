require 'sinatra'
require 'yaml'

get '/' do
  @ruby_hash = ''
  @output = nil
  erb :index
end

post '/' do
  @ruby_hash = params[:ruby_hash]
  @output = ''
  if @ruby_hash
    eval("@output = #{@ruby_hash}")
    @output = @output.to_yaml
  end
  
  erb :index
end
