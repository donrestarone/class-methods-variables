class Bankaccount 
@@interest_rate = 1.005
@@accounts = []
	def initialize(name) 
		@balance = 0
		@name = name #You should also add reader and writer methods 
					 #for balance to your class
	end 

	def deposit(deposit_amount) 	#This needs to be an instance method because 
		@balance += deposit_amount 	#it pertains to a single, specific account.

	end

	def withdraw(withdraw_amount)
		@balance -= withdraw_amount
	end

	def balance #reader method
		return @balance
	end

	def balance=(newbalance) #writer method
		@balance = newbalance
	end

	def self.total_reader
		 "total in the account is #{total_funds}"
		 
	end 

	def self.create_account(name) #class method to create a new account and add it to array
		@@accounts.push Bankaccount.new(name)
		return @@accounts
	end 

	def self.access_account_info #class method to read account info, gives out the entire array
		return @@accounts  
	end 

	def self.total_funds
		total_balance = 0
		@@accounts.each do |account_balance|
 			total_balance += account_balance.balance 
 		end
 		return total_balance
	end 



	def self.interest_time #interest calculated using the reader/writer methods 
		@@accounts.each do |account|
			account.balance=(account.balance * 1.005)

		end 
		
	end 

	 


end 


#create 3 test accounts 
	Bankaccount.create_account("test 1")
	Bankaccount.create_account("test 2")
	Bankaccount.create_account("test 3")

#deposit into all 3 
	Bankaccount.access_account_info[0].deposit(50) 
	Bankaccount.access_account_info[1].deposit(500) 
	Bankaccount.access_account_info[2].deposit(5000) 


#make another deposit into all 3 
	Bankaccount.access_account_info[0].deposit(5) 
	Bankaccount.access_account_info[1].deposit(50) 
	Bankaccount.access_account_info[2].deposit(500) 

#make widthdrawals

	Bankaccount.access_account_info[0].withdraw(5) 
	Bankaccount.access_account_info[1].withdraw(50) 
	Bankaccount.access_account_info[2].withdraw(500) 

# make interest accumulation
	Bankaccount.interest_time #need to call it only once because it is a class method and iterates through the entire array


# show total of all accounts in the bank
	Bankaccount.total_funds

	puts Bankaccount.total_reader

	puts Bankaccount.access_account_info.inspect


