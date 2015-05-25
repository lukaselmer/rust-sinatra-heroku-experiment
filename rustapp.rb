require 'sinatra'
require 'ffi'
require_relative 'app/fast_calculator'

get '/' do
  num1 = (params['num1'] || 1.0).to_f
  num2 = (params['num2'] || 2.0).to_f
  result = FastCalculator.plus(num1, num2)
  "<form><input name='num1' value='#{num1}' autofocus> + <input name='num2' value='#{num2}'> = #{result} <input type='submit'></form>"
end



