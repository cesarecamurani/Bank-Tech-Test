require_relative 'statement'
require_relative 'transaction'

# main class responsible for updating the statement
class Bank_account
  attr_reader :balance

  def initialize(statement = Statement.new)
    @balance = 0
    @statement = statement
  end

  def deposit(amount)
    @balance += amount
    @statement.store_credit_trans(amount, @balance)
  end

  def withdraw(amount)
    no_credit?(amount)
    @balance -= amount
    @statement.store_debit_trans(amount, @balance)
  end

  private

  def no_credit?(amount)
    raise "Not enough money left in your account!" if @balance <= amount
  end

end
