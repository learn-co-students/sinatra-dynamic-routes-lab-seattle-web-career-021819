require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    params[:name].reverse
  end

  get "/square/:number" do
    number = params[:number].to_f
    squared = number ** 2
    squared.to_s
  end

  get "/say/:number/:phrase" do
    number = params[:number].to_i
    params[:phrase] * number
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    words = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]]
    "#{words.join(" ")}."
  end

  get "/:operation/:number1/:number2" do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    case params[:operation]
    when "add"
      answer = number1 + number2
    when "subtract"
      answer = number1 - number2
    when "multiply"
      answer = number1 * number2
    when "divide"
      answer = number1 / number2
    end
    answer.to_s
  end
end
