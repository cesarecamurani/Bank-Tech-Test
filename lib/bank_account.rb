require_relative 'transaction'

# main class responsible for updating the statement
class BankAccount

  def initialize(transaction = Transaction.new)
    @balance = 0
    @transaction = transaction
  end

  def deposit(amount)
    @balance += amount
    @transaction.credit(amount, @balance)
  end

  def withdraw(amount)
    no_credit?(amount)
    @balance -= amount
    @transaction.debit(amount, @balance)
  end

  def print_statement
    puts @transaction.print
  end

  private

  def no_credit?(amount)
    raise 'Not enough money!' if @balance <= amount
  end

end
