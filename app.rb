require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
      "#{params[:name].reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @square = @number * @number
    "#{@square}"
  end
  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @return_string
    #binding.pry
    @number.times do
      @return_string += "#{params[:phrase]}"
    end
    "#{@return_string}"
  end
end
