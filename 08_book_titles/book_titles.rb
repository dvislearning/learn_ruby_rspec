#Beginning

class Book
attr_accessor :title

	def title
		words = @title.split(" ")
		smalls = ["a","an","the","over","under","in","on","and","by","of"]
		words.each {|word| word.capitalize! unless smalls.include?(word)}
		words[0] = words[0].capitalize
		words.join(" ")
		end



end