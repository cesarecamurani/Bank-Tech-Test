class Receipt
  def print_statement(transactions)
    ['date || credit || debit || balance'] +
    transactions.each do |trans|
      [
        date_format(trans[:date]),
        convert(trans[:credit]),
        convert(trans[:debit]),
        convert(trans[:balance])
      ].join(' || ')
    end
  end

  def date_format(date)
    date.strftime('%d/%m/%Y')
  end

  def convert(number)
    sprintf('%.2f', number)
  end

end
