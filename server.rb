require "sinatra"
require "sinatra/reloader" if development?
require_relative "./lib/calculator.rb"
require "pry"

get "/" do
	erb :main
end	

get "/add" do
  erb :add
end

get "/substract" do
  erb :substract
end

get "/multiply" do
  erb :multiply
end

get "/divide" do
  erb :divide
end

post "/calculate" do
  @first = params[:number1].to_f
  @second = params[:number2].to_f
  @operation = params["operation"]
  @result = Calculator.new.display(@operation, @first, @second)
  erb :result
end
 
post "/store" do
	@result = params[:store]
	Calculator.new.store(@result)
	erb :main
end	