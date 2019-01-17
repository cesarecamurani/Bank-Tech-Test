# class responsible for showing the statement
class Statement

  HEADER = " date || credit || debit || balance\n "

  def initialize(header = HEADER)
    @header = header
  end

  def display(transactions)
    transactions.reverse.each do |t|
      @header += [
                  t[:date],
                  convert(t[:credit]),
                  convert(t[:debit]),
                  convert(t[:balance])
                ].join(" || ") + "\n "
    end
    @header
  end

  private

  def convert(number)
    format('%.2f', number) unless number.nil?
  end

end
