require_relative 'statement'

# main class responsible for updating the statement
class BankAccount

  def initialize(statement = Statement.new)
    @balance = 0
    @statement = statement
  end

  def deposit(amount)
    @balance += amount
    @statement.credit(amount, @balance)
  end

  def withdraw(amount)
    no_credit?(amount)
    @balance -= amount
    @statement.debit(amount, @balance)
  end

  def print
    puts @statement.print
  end

  private

  def no_credit?(amount)
    raise 'Not enough money!' if @balance <= amount
  end

end
