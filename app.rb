require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    params[:name].reverse
  end
  
  get '/square/:number' do
    params[:number].to_i.pow(2).to_s
  end

  get '/say/:number/:phrase' do
    str = ""
    params[:number].to_i.times{str += params[:phrase]}
    str.to_s
    # "test"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}.".to_s
  end
    
  get '/:operation/:number1/:number2' do
    return (params[:number1].to_i + params[:number2].to_i).to_s if(params[:operation] == "add")
    return (params[:number1].to_i - params[:number2].to_i).to_s if(params[:operation] == "subtract")
    return (params[:number1].to_i * params[:number2].to_i).to_s if(params[:operation] == "multiply")
    (params[:number1].to_i / params[:number2].to_i).to_s if(params[:operation] == "divide")
    # "test"
  end

end

