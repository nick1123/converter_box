require 'sinatra'
require 'yaml'
require 'base64'
require 'json'

get '/' do
  @ruby_hash = ''
  @output_title = nil
  @output_body = nil
  erb :index
end

post '/' do
  @output_body = nil
  @output_title = nil


  @ruby_hash = params[:ruby_hash]
  if @ruby_hash
    eval("@output_body = #{@ruby_hash}")
    @output_body = @output_body.to_yaml
    @output_title = "Yamlified Hash"
  end

  @json_hash = params[:json_hash]
  if @json_hash
    @output_body = JSON.parse(@json_hash).to_yaml
    @output_title = "Yamlified Hash"
  end

  @string_to_strict64_encode = params[:string_to_strict64_encode]
  if @string_to_strict64_encode
    @output_body = Base64.strict_encode64(@string_to_strict64_encode)
    @output_title = "Base64 Strict Encoded"
  end

  @string_to_strict64_decode = params[:string_to_strict64_decode]
  if @string_to_strict64_decode
    begin
      @output_body = Base64.strict_decode64(@string_to_strict64_decode)
    rescue ArgumentError => e
      @output_body = "Error: #{e}"
    end
    @output_title = "Base64 Strict Decoded"
  end

  erb :index
end
