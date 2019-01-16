require_relative 'show_statement'
# class responsible for storing and printing all the transactions
class Statement
  attr_accessor :transactions

  def initialize(show_statement = ShowStatement.new)
    @transactions = []
    @show_statement = show_statement
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
    @show_statement.display(@transactions)
  end
end
