require_relative 'config/environment'

class App < Sinatra::Base
  # get '/:input' do
  #   @pig_latin = PigLatinizer.new(params[:input]).convert_to_pig_latin
  #   erb :user_input
  # end

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pl = PigLatinizer.new
    @piglatin = pl.piglatinize(params[:user_phrase])
    erb :results
  end
end