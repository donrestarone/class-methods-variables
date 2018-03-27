class Book 
	@@on_shelf = []
	@@on_loan  = []
	
	def initialize(title, author, isbn)
		@title = title
		@author = author
		@isbn = isbn 
		
	end 

	def self.add_tolib(title, author, isbn) #to add books to the library, pushes to @@onshelf. 
		@@on_shelf.push Book.new(title, author, isbn)
		return @@on_shelf
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

	def self.current_due_date
		due_date = Time.now + 604800
		return due_date
	end

	
	def lent_out?
		

	end

	def borrow
		

	end 
	
	 

	def return_to_library
		
		
	end


end 



#add two books to the library
Book.add_tolib("Ain't I a Woman?", "Bell Hooks", "9780896081307")
Book.add_tolib("Sister Outsider", "Audre Lorde", "9781515905431")

puts Book.available.inspect


#give a random suggestion from the on_shelf
puts "book suggestion; #{Book.browse.inspect}"

# puts Book.current_due_date
# Book.borrow
# Book.lent_out?