puts "Enter a phrase to be turned into a Caesar cipher: "
input_string = gets.chomp
puts "Enter the number of shift factor: "
shift = gets.chomp



def caesar_cipher(input_string, shift)
	alphabet_array = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n",
	"o","p","q","r","s","t","u","v","w","x","y","z"]
	x = 0
		while (x < input_string.length) 

			#checking if value at array is a letter
			if input_string[x] =~ /[A-Z|a-z]/

				is_capitalized = false
				
				#checking if letter is uppercase
				if input_string[x] =~ /[A-Z]/
					is_capitalized = true
					input_string[x] = input_string[x].downcase!
				end
				new_position = alphabet_array.index(input_string[x]).to_i + shift.to_i
				
				#wrapping from z to a
				if new_position >= 26
					new_position = new_position - 26
				end
				input_string[x] = alphabet_array[new_position]
			
				#recapitalizing any letters that had been capitalized
				if is_capitalized
					input_string[x] = input_string[x].upcase!
				end
			end
			x = x + 1
		end
		puts input_string
end

caesar_cipher(input_string, shift)

