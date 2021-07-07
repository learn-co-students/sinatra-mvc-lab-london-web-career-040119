require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @user_text = PigLatinizer.new
    @pig_latin = @user_text.piglatinize(params[:user_phrase])
    erb :result
  end
end
