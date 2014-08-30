dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(text, dictionary)
	wordhash = {}
	words = text.downcase.gsub(/(\W)/, " ").split(" ")

	dictionary.each do |position|
		words.each do |word|
			if word.include? position then
				#print position
				if wordhash.has_key?(position) then
					wordhash[position] = wordhash[position] + 1
				else
					wordhash[position] = 1
				end
			end
		end
	end

	#session.has_key?("user")			
	#if my_string.include? "cde"
   	#	puts "String includes 'cde'"
	#end

	#list.split(", ")
	#"hello".gsub("l","r")

	#return wordhash
	return wordhash
end

print substring("below", dictionary)
print substring("Howdy partner, sit down! How's it going?", dictionary)