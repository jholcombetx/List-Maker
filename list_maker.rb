def greeting
	puts "Welcome to the JGH List Maker: " +
	"add items by entering the name of the item and pressing enter."
	puts "Enter 'total' to see your full list. "
	puts "Enter 'not' at the front of an item you've already entered, and hit 'enter' to remove that item from the list"
	puts "Enter 'help' for a reminder of how this app works"
	puts "Enter 'sort' to alphabetize your list."
	puts "Enter 'clear' to clear your current list"
	puts "Enter 'exit' when you're finished. "
end

def game 
	answer = false
	my_array =  []
	while not answer
		item = gets.chomp.downcase
			if item == 'help'
				greeting
			elsif item == 'total'
				puts "Your To-do list consists of the following: " + my_array.to_s
			elsif item.include?"not"
				item[0,3]=''
				my_array.delete(item)
			elsif item == 'sort'
				my_array.sort!
				puts "Your To-do list consists of the following: " + my_array.to_s
			elsif item == 'clear'
				my_array.clear
			else
				my_array << item
			end 
	end
end

greeting
game
