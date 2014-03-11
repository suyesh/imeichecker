puts "What is the IMEI?"

imei = gets.chomp
imei_split = []

array = imei.split(//)

array.each do |i|
	imei_split << i.to_i
end

if imei.size == 15 && imei_split.each_slice(2).map {|x, y|
  						y ||= 0
  						[x, (y * 2).divmod(10)]
						}.flatten.inject(:+) % 10 == 0 
	puts "IMEI VALID"
else
	puts "IMEI INVALID"
end
