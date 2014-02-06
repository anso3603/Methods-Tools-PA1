class Dessert
	def name		# Getter for name
		@name
	end

	def calories	# Getter for calories
		@calories
	end

	def setname (new_name)	# Setter for name
		@name = new_name
	end

	def setcalories (new_calories)	# Setter for calories
		@calories = new_calories
	end

	def healthy?
		if @calories < 200			# If calories is less than 200
			puts "The #{@name} is healthy!"
			return true
		else
			puts "The #{@name} is not healthy..."
			return false
		end
	end

	def delicious?
		puts "Mm... #{@name}s..."
		return true
	end
end

class Jellybean < Dessert
	def flavor			# Getter for flavor
		@flavor
	end
	
	def flavor_set(new_flavor)		# Setter for flavor
		@flavor = new_flavor
	end

	def delicious?					# This function overrides the function of the same name in the 'Desserts' class
		if @flavor == "black licorice"
			puts "What is this i don't even"
			return false
		else
			puts "OM NOM NOM"
			return true
		end
	end
end

test = Jellybean.new
test.setname("black licorice")
test.setcalories(9001)
test.flavor_set("black licorice")
test.healthy?
test.delicious?

test1 = Jellybean.new
test1.setname("Chocolates")
test1.setcalories(9001)
test1.healthy?
test1.delicious?
