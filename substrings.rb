dictionary = ["below","down","go","going","horn","how","howdy","it","i",
	"low","own","part","partner","sit"]

def substrings(word, dictionary)
	input_array = word.downcase.split(/\W+/)
	matches = []
	y = 0
	while y < input_array.length
		x =0
		while x < dictionary.length
			m = input_array[y].scan(dictionary[x])
			if (m.length > 0) 
	 			matches << m 
	 		end
			x = x +1
		end
		y = y + 1
	end
	
  	matches_hash = Hash.new(0)
 	matches.each{|key| matches_hash[key] += 1}

 	puts matches_hash
	
end


substrings("Below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
