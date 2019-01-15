require_relative 'receipt'
# class responsible for storing and printing all the transactions
class Statement
  attr_accessor :transactions

  def initialize(receipt = Receipt.new)
    @transactions = []
    @receipt = receipt
  end

  def credit_trans(credit, balance)
     @transactions << { credit: credit, balance: balance, date: Time.now }
  end

  def debit_trans(debit, balance)
    @transactions << { debit: debit, balance: balance, date: Time.now }
  end

  def print
    @receipt.print_statement(@transactions)
  end
end
