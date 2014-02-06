def count_words(string)
        temp_str = string.downcase 			#=> Downcase all the things
        wordarray = temp_str.scan(/\w+/) 	#=> Take the words in the string and stick them into an array
        myhash = Hash.new(0) 				#=> Create a new hash
        wordarray.each {|word| myhash[word] += 1 } #=> Puts elements of array into hash as keys and keeps track of how many times the word appears
        return myhash
end

puts count_words("A man, a plan, a canal -- Panama")
puts count_words("Doo bee doo bee doo")
