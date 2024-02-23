# app.rb
require 'sinatra'

# Define routes
get '/' do
  erb :layout
end

get '/add' do
  erb :add_form
end

post '/wizard_add' do
  @first_num = params[:first_num].to_f  # Get the first number from the form as a float
  @second_num = params[:second_num].to_f # Get the second number from the form as a float
  @result = @first_num + @second_num    # Calculate the sum
  erb :add_result  # Render the result page
end


get '/subtract' do
  erb :subtraction_form
end

post '/wizard_subtract' do
  @first_num = params[:first_num].to_f  # Get the first number from the form as a float
  @second_num = params[:second_num].to_f # Get the second number from the form as a float
  @result = @first_num - @second_num    # Calculate the difference
  erb :sub_result  # Render the result page
end

get '/multiply' do
  erb :mult_form
end

post '/wizard_multiply' do
  @first_num = params[:first_num].to_f  # Get the first number from the form as a float
  @second_num = params[:second_num].to_f # Get the second number from the form as a float
  @result = @first_num * @second_num    # Calculate the product
  erb :mult_result  # Render the result page
end


get '/divide' do
  erb :divform
end

post '/wizard_divide' do
  @first_num = params[:first_num].to_f  # Get the first number from the form as a float
  @second_num = params[:second_num].to_f # Get the second number from the form as a float
  
  # Check if the second number is not zero to avoid division by zero error
  if @second_num != 0
    @result = @first_num / @second_num    # Calculate the quotient
    erb :div_result  # Render the result page
  else
    erb :div_zero_error # Render an error page for division by zero
  end
end
