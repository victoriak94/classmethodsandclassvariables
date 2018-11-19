
class BankAccount

  @@accounts = []
  @@interest_rate = 0.02

  def initialize
    @balance = 0
  end

  #Reader
  def balance
    return @balance
  end

  #Writer
  def balance=(balance)
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def self.create
    account = BankAccount.new
    @@accounts << account
    return account
  end

  def self.total_funds
    funds = 0
    @@accounts.each do |account|
      funds += account.balance
    end
    return funds
  end

  def self.interest_time
    @@accounts.each do |account|
      account.balance
      interest_earned = account.balance * (1 + @@interest_rate)
      return "#{interest_earned}"
    end
  end

end

my_account = BankAccount.create
your_account = BankAccount.create
puts my_account.balance
puts BankAccount.total_funds
my_account.deposit(200)
your_account.deposit(1000)
puts my_account.balance
puts your_account.balance
puts BankAccount.total_funds
BankAccount.interest_time
puts my_account.balance
puts your_account.balance
puts BankAccount.total_funds
my_account.withdraw(50)
puts my_account.balance
puts BankAccount.total_funds
