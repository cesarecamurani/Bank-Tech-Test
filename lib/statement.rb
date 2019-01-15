require_relative 'receipt'
# class responsible for storing and printing all the transactions
class Statement
  attr_accessor :transactions

  def initialize(receipt = Receipt.new)
    @transactions = []
    @receipt = receipt
  end

  def credit_trans(credit, balance)
    @transactions << { date: Time.now.strftime('%d/%m/%Y'), credit: credit, debit: nil, balance: balance }
  end

  def debit_trans(debit, balance)
    @transactions << { date: Time.now.strftime('%d/%m/%Y'), credit: nil, debit: debit, balance: balance }
  end

  def print
    @receipt.print_statement(@transactions)
  end
end
