require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @user_name = params[:name]
    "Hello #{@user_name.reverse}.!"
  end

  get "/square/:number" do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    string = ""
    (params[:number].to_i).times do
      string += "#{params[:phrase]} "
    end
    string
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:num1/:num2" do
    operation = params[:operation]
    num1 = params[:num1].to_f
    num2 = params[:num2].to_f

    if operation == "subtract"
      answer = num1 - num2
    elsif operation == "add"
      answer = num1 + num2
    elsif operation == "multiply"
      answer = num1 * num2
    elsif operation == "divide"
      answer = num1 / num2
    else
      answer = "Uhhh.... sorry, that's not an option at the moment"
    end
    answer.to_s
  end

end
