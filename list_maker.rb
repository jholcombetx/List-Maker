puts "Welcome to the JGH List Maker: " +
"add items by entering the name of the item and pressing enter, " +
"or enter 'total' to see your full list, " +
"or enter 'not' (no spaces) at the front of an item you've entered "+
"to remove that item from your list," +
"or enter 'exit' to exit. Thanks for trying me out!"

def game 
	answer = false
	my_array =  []
	while not answer
		item = gets.chomp.downcase
			if item == 'exit'
				puts "Thanks for using my to-do list"
				answer = true
			elsif item == 'total'
				puts "Your To-do list consists of the following: " + my_array.to_s
			elsif item.include?"not"
				item[0,3]=''
				my_array.delete(item)
			else
				my_array << item
			end 
	end
end

game
