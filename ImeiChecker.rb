class Imei 
	attr_accessor :Imei
	def initialize(imei)
		@imei = imei.to_s
	end

	def check_imei
		if @imei.length == 15
			split1, split2 = @imei.split(//).partition.with_index{|_, i| i.odd?}
			puts split1.inspect
			puts split2.inspect
		else
			puts "IMEI NUMBER INVALID"
		end
	end
end

imei = Imei.new(358239053290088)

imei.check_imei
