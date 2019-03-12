require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
  	@name = params[:name]
  	"#{@name.reverse}"
  end

  get '/square/:number' do
  	@total = params[:number].to_i * params[:number].to_i
  	"#{@total}"
  end

  get '/say/:number/:phrase' do
  	@number = params[:number].to_i
  	@phrase = params[:phrase]
  	return_string = ""
  	@number.times do 
  		return_string += @phrase
  	end
  	return_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    return_string = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{ params[:word5]}."
    return_string
  end

  get '/:operation/:number1/:number2' do
  	@opp = params[:operation]
  	@num1 = params[:number1].to_i
  	@num2 = params[:number2].to_i

  	if @opp == "add"
  		@sum = @num1 + @num2
  		"#{@sum}"
  	elsif @opp == "subtract"
  		@diff = @num1 - @num2
  		"#{@diff}"
  	elsif @opp == "multiply"
  		@pro = @num1 * @num2
  		"#{@pro}"
  	elsif @opp == "divide"
  		@total = @num1 / @num2
  		"#{@total}"
  	end  	

  end
end