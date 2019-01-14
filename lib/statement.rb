# class responsible for storing and printing all the transactions
class Statement
  attr_accessor :transactions

  def initialize()
    @transactions = []
  end

  def store_credit_trans(credit, balance)
    @transactions << { credit: credit, balance: balance, date: Time.now }
  end

  def store_debit_trans(debit, balance)
    @transactions << { debit: debit, balance: balance, date: Time.now }
  end
end
