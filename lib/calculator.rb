class Calculator

	def add(number1, number2)
		number1 + number2
	end	

	def substract(number1, number2)
		number1 - number2
	end

	def multiply(number1, number2)
		number1 * number2
	end

	def divide(number1, number2)
		number1 / number2
	end

	def display(operation, first, second)
		case operation
 			when operation = "addition" then
  				result = add(first, second)  				
  			when operation = "substraction" then
  				result = substract(first, second)  				
  			when operation = "multiplication" then
  				result = multiply(first, second)  				
  			when operation = "division" then
  				result = divide(first, second)  
  			else
  			    "patata"					
		end			
	end	

	def store(result)
		IO.write('./public/result.txt', result)
	end	

end