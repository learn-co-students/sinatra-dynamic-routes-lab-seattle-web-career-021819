require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name_reversed = params[:name].reverse
    "#{@name_reversed}"
  end

  get '/square/:number' do
    @total = params[:number].to_i * params[:number].to_i
    "#{@total}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    string = ""
    @number.times do |i|
      string += "#{@phrase}"
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{ params[:word5]}."
    string
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    if params[:operation] == "add"
      @total = @num1 + @num2
      "#{@total}"
    elsif params[:operation] == "subtract"
      @total = @num1 - @num2
      "#{@total}"
    elsif params[:operation] == "multiply"
      @total = @num1 * @num2
      "#{@total}"
    elsif params[:operation] == "divide"
      @total = @num1 / @num2
      "#{@total}"
    end
  end

end
