class Palindrome
	def initialize(string, trolls)
		@string = string.downcase!				# Permanently downcase the string
		@string = string.gsub(/[\s \W]/, '')	# Kill everything that's not a word character
		@trolls = string.reverse!				# Save the string into an instance variable called trolls and permanently reverse it
		@trolls = string.gsub!(/[\s \W]/, '')	# Permanently kill anything that's not a word character
	end
	def print
		puts "Word is #{@string}"				# Sanity check - Print the original string
		puts "Reverse is #{@trolls}"			# Sanity check - Print the reverse
	end
	def compare
		if @string == @trolls					# If the string still equals the reverse
			puts "TRUE"			
			return true
		else
			puts "LIES"
			return false
		end
	end
end

class String
	def palindrome?
		holder = self.downcase.gsub(/\W/, "")
		temp_str = self.downcase.gsub(/\W/, "")
		temp_str == temp_str.reverse!
		puts "Reverse is #{temp_str}"
		if (holder == temp_str)
			puts "It is a palindrome!"
		else
			puts "It's not a palindrome. :("
		end
	end
end

wat = Palindrome.new("LIES AND SLANDER", "Placeholder")
wat.print
wat.compare

lameness = Palindrome.new("racecar racecar", "placeholder")
lameness.print
lameness.compare

test1 = Palindrome.new("A man, a plan, a canal -- Panama", "placeholder")
test1.print
test1.compare

test2 = Palindrome.new("Madam, I'm Adam!", "placeholder")
test2.print
test2.compare

test3 = Palindrome.new("abracadabra", "placeholder")
test3.print
test3.compare

"racecar".palindrome?

