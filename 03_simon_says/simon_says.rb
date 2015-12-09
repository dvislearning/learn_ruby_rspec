#Simon Says

def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, *num)
	string = "#{word} " 
	if num == []
		string = string * 2
	else
		string = string * num.pop
	end
		string[-1] = ""
		string
end

def start_of_word (word,num)
	string = ""
	0.upto(num-1){|letter| string = string + word[letter]}
	string
end

def first_word(word)
	splitted = word.split(" ")
	splitted[0]
end

def titleize (title)
	splitted = title.split(" ")
	string = ""
	little_words = ['the', 'and', 'over', 'under', 'or']
	first = splitted.shift
	string = string + first.capitalize
	splitted.collect do |word| 
		if little_words.include?(word) 
		string = string + " " + word
	else
		string = string + " " + word.capitalize
	end
end
	string
end