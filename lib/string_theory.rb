require 'pry'

def sort_by_appearance(characters_to_sort, long_text)
  # code goes here

  character = characters_to_sort.split(%r{\s*})
  text = long_text.split(%r{\s*})

  hash = {}

  character.each do |char_char|
  	found = false
  	text.each do |char_text|
  		if char_char == char_text 
  			found = true
  			if hash.keys.include?(char_char)
  				hash[char_char] +=1
  			else
  				hash[char_char] = 1
  			end
  		end
  		if found == false
  			hash[char_char] = 0
  		end
  	end
  end
  

  sorted_hash = hash.sort_by {|k,v| v}.reverse

  results_array = []

  sorted_hash.collect do |k, v|
  	results_array << k
  end

  results_array.join
end