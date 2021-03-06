require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        new_piglatinizer = PigLatinizer.new
        @phrase = new_piglatinizer.piglatinize(params[:user_phrase])
        erb :user_input
    end
end