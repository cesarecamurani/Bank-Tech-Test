# class responsible for creating a single transaction with all relevant fields
class Transaction
  attr_accessor :credit, :debit, :balance

  def initialize(credit, debit, balance)
    @credit = credit
    @debit = debit
    @balance = balance
    @date = Time.now
  end
end
