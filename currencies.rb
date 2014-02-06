class Numeric
	@@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1}
	
	def method_missing(method_id)
		singular_currency = method_id.to_s.gsub(/s$/, '')
		#Since the whatever method is being called isn't directly declared in the class
		#We have method_missing save that seemingly non-existent method name into a
		#temporary variable called singular_currency. Then we rip off the 's' at the end
		#of it if it exists, and then convert the entire thing to a string
		if @@currencies.has_key?(singular_currency)
			#If the method we're trying to call matches up with a key in our hash
			#The multiply it to convert it to the appropriate currency
			self * @@currencies[singular_currency]
		else
			super	#Some sort of method_missing safety that I don't understand
		end
	end
	
	def in(asdf)
		singular_currency = asdf.to_s.gsub(/s$/, '')
		if @@currencies.has_key?(singular_currency)
			self * @@currencies[singular_currency]
		end
	end
end

puts "5.euro = "+5.euro.to_s
puts "5.euro.in(:dollars) = "+5.euro.in(:dollars).to_s
