class Book 
	@@on_shelf = []
	@@on_loan  = []

	attr_reader :isbn #creates a reader method for @isbn. return value is same
	# def isbn
	# 	return @isbn
	# end

	def initialize(title, author, isbn)
		@title = title
		@author = author
		@isbn = isbn 

		
	end

	def self.add_tolib(title, author, isbn) #to add books to the library, pushes to @@onshelf. 
		new_book = Book.new(title, author, isbn) #encapsulate each new book in a variable.
		@@on_shelf.push new_book #pushes each new book 'made' into array
		return new_book
	end 

	def self.available #read what books are available on the shelf
		return @@on_shelf
	end 

	def self.borrowed
		return @@on_loan
	end 

	def name #reader for book title
		@name = @title
	end 

	def self.browse
		browser = []
		browser = @@on_shelf.sample
		return browser
	end 

	def current_due_date
		due_date = Time.now + 604800
		return due_date
	end

	def lent_out?
		@@on_shelf.each do |bookname|
			if self.isbn == bookname.isbn
				return false
			end 
		end 
		return true 
	end 


	def borrow
		 
		if self.lent_out? == false #if the book in self is not lent out, then push it to the other array
			@@on_loan.push(self)
			@due_date = current_due_date #add due date to the books that are being borrowed. 
			@@on_shelf.delete(self) #delete the book we called borrow on from the on shelf array
			
		end
	end 

	def return_to_library
		if self.lent_out? == true 
			@@on_shelf.push(self)
			@@on_loan.delete(self)
		end 
	end
end 



#add two books to the library

aint_i = Book.add_tolib("Ain't I a Woman?", "Bell Hooks", "9780896081307")
sister = Book.add_tolib("Sister Outsider", "Audre Lorde", "9781515905431")

puts Book.available.inspect


#give a random suggestion from the on_shelf
puts "book suggestion; #{Book.browse.inspect}"
puts aint_i.lent_out?

aint_i.borrow

puts aint_i.lent_out?
#test borrowed class method 
puts "books currently lent out #{Book.borrowed.inspect}"

aint_i.return_to_library
puts "books currently lent out #{Book.borrowed.inspect}" #this should be empty 
puts aint_i.inspect

