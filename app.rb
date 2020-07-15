require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @product = @num * @num
    @product.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    string = ""
    @number.times do |i|
      string << @phrase
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1, @word2, @word3, @word4, @word5 = params[:word1], params[:word2],
    params[:word3], params[:word4], params[:word5]
    answer = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation, @number1, @number2 =
    params[:operation], params[:number1].to_i, params[:number2].to_i
    @answer = 0

    case @operation
    when "add"
      @answer = @number1 + @number2
    when "subtract"
      @answer = @number1 - @number2
    when "multiply"
      @answer = @number1 * @number2
    when "divide"
      @answer = @number1 / @number2
    end

    @answer.to_s

  end

end
