require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
  @name = params[:name]
  @name.reverse
  end

  get "/square/:number" do
    @number = params[:number].to_i
    squared = @number * @number
    "#{squared}"
  end

  get "/say/:number/:phrase" do
    string = ""
    num = params[:number].to_i
    phrase = params[:phrase]
    num.times {string += "#{phrase}"}
    string
    end



    get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    op = params[:operation]
    if op == "add"
      add = num1 + num2
      "#{add}"
    elsif op == "divide"
      div = num1/num2
      "#{div}"
    elsif op == "multiply"
      mult = num1 * num2
      "#{mult}"
    else
      subt = num1 - num2
      "#{subt}"
    end
  end
end
