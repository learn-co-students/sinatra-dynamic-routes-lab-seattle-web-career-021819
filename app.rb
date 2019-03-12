require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    num = params[:number].to_i
    (num * num).to_s
  end

  get '/say/:number/:phrase' do
    phrases = ""
    params[:number].to_i.times do
      phrases << params[:phrase]
    end

    phrases
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:num1/:num2' do
    case params[:operation]
    when 'add'
       (params[:num1].to_i + params[:num2].to_i).to_s
    when 'subtract'
      (params[:num1].to_i - params[:num2].to_i).to_s
    when 'multiply'
      (params[:num1].to_i * params[:num2].to_i).to_s
    when 'divide'
      (params[:num1].to_i / params[:num2].to_i).to_s
    end
  end
end
