class UMADBRO
	attr_accessor :GGCLOSE		# Define automatic getter/setter for variable GGCLOSE
	$i = 0						# Defined iterator as global variable to 0 by default
	$history = []				# Defined array in which we'll save history
	def attr_accessor_with_history
		$i += 1							# Increment iterator by 1 FIRST in order to get the desired effect of having 'nil' being at history[0]
		puts "Input is #{@GGCLOSE}"		# Sanity checking
		$history[$i] = @GGCLOSE			# Throw GGCLOSE into index i of the history array
	end
	def history
		print $history					# Print history
		puts ""
		puts $history[0]				# Moar sanity checking
	end
end

test = UMADBRO.new
test.GGCLOSE = "TEST1"
test.attr_accessor_with_history
test.GGCLOSE = "TEST2"
test.attr_accessor_with_history
test.history

