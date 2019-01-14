class Receipt
  def print(transactions)
    ['date || credit || debit || balance'] +
    transactions.each do |transaction|
      [
        transaction[:date],
        transaction[:credit],
        transaction[:debit],
        transaction[:balance]
      ].join(' || ')
    end
  end
end
