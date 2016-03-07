=begin
 puts "\n"*5

# idade = 27
# puts idade.class

# idade = "Sergio"
# puts idade.class

#

# def plural(palavra)
#   "#{palavra}s"
# end

# puts plural("Casa")
# puts plural("Carro")

=end


class String
	def plural
		"#{self}s"
	end
end


puts "Carro".plural
puts "Casa".plural
