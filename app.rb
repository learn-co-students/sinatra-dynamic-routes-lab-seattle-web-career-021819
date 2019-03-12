require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @answer = (@number * @number).to_s
    "#{@answer}"
  end

  get '/say/:number/:phrase' do
    @output = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times do
      @output += "#{@phrase}%20"
    end
    @output
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @all_words = []
    params.each do |key, value|
      @all_words << value
    end
    "#{@all_words.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if @operation == 'add'
      @answer = @number1 + @number2
    elsif params[:operation] == 'subtract'
      @answer = @number1 - @number2
    elsif params[:operation] == 'multiply'
      @answer = @number1 * @number2
    elsif params[:operation] == 'divide'
      @answer = @number1 / @number2
    else
      "Cannot complete, incorrect operation"
    end
    @answer.to_s
  end
end
