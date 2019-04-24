require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    piggo = PigLatinizer.new
    @pl_text = piggo.piglatinize(params[:user_phrase])
    erb :results
  end
end
