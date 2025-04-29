class StringCalculator
	def add(numbers)

        # Return 0 if empty number
		return 0 if numbers.empty? || numbers.nil?

		return numbers if numbers.is_a?(Integer)

	    #Find delimeters
		delimeter, numbers_list = get_delimeter(numbers)

	end

	private

	def get_delimeter(numbers)
		if numbers.start_with?('//')
		   delimiter, numbers = numbers.split("\n", 2)
           delimiter = delimiter[2..-1]
           numbers = numbers.gsub(delimiter, ",")
        end
        return delimiter, numbers
	end
end