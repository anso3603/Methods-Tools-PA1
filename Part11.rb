class CartesianProduct
	include Enumerable				#Gives us access to tons of nice functions

		def initialize(sequence1, sequence2)	# Initialize stuff
			@sequence1 = sequence1
			@sequence2 = sequence2
		end

		def each					# Need to initialize each in order to be able to use the functions provided by including Enumerable
			unless @sequence1.empty? && @sequence2.empty? # Don't execute if the sequences are empty
			combination_sequence = []		# Initialize empty array
			@sequence1.each do |s1|
				combination_sequence << @sequence2.each {|s2| yield [s1] << s2} #=>iterate through the first sequence while putting both the first and second sequence into combo array
			end
		end
	end
end	
# [:a, 4]

# [:a, 5]

# [:b, 4]

# [:b, 5]

c = CartesianProduct.new([:a,:b], [4,5])
c.each { |elt| puts elt.inspect }
