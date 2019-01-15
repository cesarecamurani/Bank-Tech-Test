class Receipt
  def print_statement(transactions)
    output = 'date || credit || debit || balance ' + "\n "

    transactions.reverse.each do |trans|
      output += "#{trans[:date]} || #{convert(trans[:credit])} || #{convert(trans[:debit])} || #{convert(trans[:balance])} " + "\n "
    end
    return output
  end

  private

  def convert(number)
    sprintf('%.2f', number) unless number.nil?
  end

end
