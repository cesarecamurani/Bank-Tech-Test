require_relative 'statement'
require_relative 'transaction'

# main class responsible for updating the statement
class BankAccount
  attr_reader :balance
  
  def initialize(statement = Statement.new)
    @balance = 0
    @statement = statement
  end
end
