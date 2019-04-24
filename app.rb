require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    text = PigLatinizer.new
    @pl_text = text.piglatinize(params[:user_phrase])
    erb :result
  end

  # get '/piglatinize' do
  #   @text
  #   erb :result
    # binding.pry
    # 'eof'
end
