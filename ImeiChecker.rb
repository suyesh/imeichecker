class ImeiChecker 

	attr_accessor :imei_number
	
	def initialize(imei_number)
		@imei_number = imei_number.to_i
	end

	def imei_validate
		if @imei_number.to_s.length == 15
		    first_num = @imei_number[1] + @imei_number[3] + @imei_number[5] + @imei_number[7] + @imei_number[9] + @imei_number[11] + @imei_number[13]
		    second_num = @imei_number[0] + @imei_number[2] + @imei_number[4] + @imei_number[6] + @imei_number[8] + @imei_number[10] + @imei_number[12]
		    main_num = first_num + second_num
		    case main_num 
		    when main_num % 10 == 0
		    	puts "IMEI IS COMPLETELY VALID!!"
		    else 
		    	while main_num % 10 != 0 
		    		main_num += 1

		    		puts "#{main_num}"
		    	end
		    end



		    	
		else
			puts "IMEI NOT VALID!!!"
		end

	end
end

puts " WHAT IS THE IMEI NUMBER?"

input_imei = gets.chomp

imei = ImeiChecker.new(input_imei)

imei.imei_validate

