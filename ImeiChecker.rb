class Imei 
	attr_accessor :Imei, :split_total1, :split_total2, :split_total

	

	def initialize(imei)
		@imei = imei.to_s
		@split_total = []
		@split_total1 = []
		@split_total2 = []
	end

	def check_two_digit(num)
		if num.to_s.size == 2
			num = num.to_s.split(//).partition.with_index{|_,i| i.odd?}
			num.each do |a, b|
				a.to_i + b.to_i
			end
		else
			num.to_i
		end
	end

	def check_imei
		if @imei.length == 15
			split1, split2 = @imei.split(//).partition.with_index{|_, i| i.odd?}
			split1.each do |a|
				@split_total1 << a.to_i * 2
			end
			split2.pop
			split2.each do |a|
				@split_total2 << a.to_i
			end

			@split_total1.each do |a|
				@split_total << check_two_digit(a)  
			end

		else
			puts "IMEI NUMBER INVALID"
		end
	end
end

imei = Imei.new(358239053290088)

imei.check_imei

puts imei.split_total1.inspect
puts imei.split_total2.inspect
puts imei.split_total.inspect

