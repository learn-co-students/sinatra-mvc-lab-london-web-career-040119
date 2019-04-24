require_relative 'config/environment'
require_relative 'models/pigLatinizer.rb'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    input = params["user_phrase"]
    piglatinized_input = PigLatinizer.new
    @piglatinized_input = piglatinized_input.piglatinize(input)
    erb :piglatinize
  end

end
