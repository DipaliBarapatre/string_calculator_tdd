class StringCalculator
	def add(numbers)

        # Return 0 if empty number
		return 0 if numbers.empty? || numbers.nil?

		return numbers if numbers.is_a?(Integer)

	end
end