def letters_cipher(letter, faktor)
	letters = ('a'..'z').to_a
	bigLetters = ('A'..'Z').to_a

	#print letters
	#print bigLetters

	if letters.include?(letter)
		#print letters.index(letter) + faktor
		index = letters.index(letter) + faktor
		if index >= letters.count
			#print letters.index(letter) + faktor - letters.count
			print letters[(letters.index(letter) + faktor) - letters.count]
		else
			print letters[letters.index(letter) + faktor]
		end 
	elsif bigLetters.include?(letter)
		#print bigLetters.index(letter) + faktor
		index = bigLetters.index(letter) + faktor
		if index >= bigLetters.count
			#print bigLetters.index(letter) + faktor - bigLetters.count
			print bigLetters[(bigLetters.index(letter) + faktor) - bigLetters.count]
		else
			print bigLetters[bigLetters.index(letter) + faktor]
		end 
	else
		print letter
	end
end

def caesar_cipher(text, faktor)
	translation = []
	letters = text.split(//)

	#print letters
	letters.each do |l|
		translation.push(letters_cipher(l, faktor))
	end
	#translation.join(" ")
	translation.join(" ")
end


caesar_cipher("What a string!", 4)
