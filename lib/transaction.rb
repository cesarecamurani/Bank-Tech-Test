require_relative 'statement'
# class responsible for storing and printing all the transactions
class Transaction
  attr_accessor :transactions

  def initialize(statement = Statement.new)
    @transactions = []
    @statement = statement
  end

  def credit(credit, balance)
    @transactions << { date: Time.now.strftime('%d/%m/%Y'),
                       credit: credit,
                       debit: nil,
                       balance: balance }
  end

  def debit(debit, balance)
    @transactions << { date: Time.now.strftime('%d/%m/%Y'),
                       credit: nil,
                       debit: debit,
                       balance: balance }
  end

  def print
    @statement.display(@transactions)
  end
end
