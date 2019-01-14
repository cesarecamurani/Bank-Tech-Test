# class responsible for storing and printing all the transactions
class Statement
  attr_accessor :transactions

  def initialize(transactions = [])
    @transactions = transactions
  end

end
