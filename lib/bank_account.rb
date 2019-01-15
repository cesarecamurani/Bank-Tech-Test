require_relative 'statement'

# main class responsible for updating the statement
class BankAccount
  attr_reader :balance
  
  def initialize(statement = Statement.new)
    @balance = 0
    @statement = statement
  end

  def deposit(amount)
    @balance += amount
    @statement.credit_trans(amount, @balance)
  end

  def withdraw(amount)
    no_credit?(amount)
    @balance -= amount
    @statement.debit_trans(amount, @balance)
  end

  def print_statement
    puts @statement.print
  end

  private

  def no_credit?(amount)
    raise 'Not enough money!' if @balance <= amount
  end

end
