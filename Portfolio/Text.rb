def unique(bag_of_fruit)
	another_bag = []
	bag_of_fruit.each do |fruit|
		if another_bag.include? fruit then
			another_bag.push fruit
		end
	end

	return another_bag
end

tests.each do |t|
	res = unique(t[:data])
	if res != t[:expect] then
		puts "FAIL:" + res.inspect + "!=" + t[:expect].inspect

	else
		puts "PASS"
	end
end

