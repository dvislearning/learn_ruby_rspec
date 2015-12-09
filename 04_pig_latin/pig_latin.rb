# Compleated "retains capitalization," but not "retains punctuation"
# bonus challange.

def translate(phrase)
	splitted = phrase.split(" ")
	string = ""
	vowels = ['a','e','i','o','u','A','E','I','O','U']
	splitted.collect! do |word|
		if vowels.include?(word[0]) #vowel first
		modified = word + "ay"
		caps_check(word,modified)
		elsif (!(vowels.include?(word[0])) && !(vowels.include?(word[1])) && !(vowels.include?(word[2]))) || word[1] == "q" #Three consonants first or Q is second letter 
		modified = word + word[0..2] + "ay"
		modified[0..2] = ""
		caps_check(word,modified)
		elsif (!(vowels.include?(word[0])) && !(vowels.include?(word[1]))) || (word[0] == "q" || word[0] == "Q") #Two consonants first or Q in beginning 
		modified = word + word[0..1] + "ay"
		modified[0..1] = ""
		caps_check(word,modified)
		else
		modified = word + word[0] + "ay"
		modified[0] = ""
		caps_check(word,modified)
	end
	end
	splitted.collect{|word| string = string + " " + word}
	string[0] = ""
	string
end


def caps_check(word, modified)
	if word == word.capitalize
		modified.capitalize
	else
		modified
	end

end



