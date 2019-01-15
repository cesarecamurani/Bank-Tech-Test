require 'receipt'
require 'timecop'

describe Receipt do
  subject(:receipt) { described_class.new }
  let(:transactions) { double :statement, reverse: transactions }

  date = Timecop.freeze(Time.now)
  transactions = [
                  { date: date.strftime('%d/%m/%Y'), credit: 2000, debit: nil, balance: 2000 },
                  { date: date.strftime('%d/%m/%Y'), credit: nil, debit: 500, balance: 1500 }
                 ]

  printed_balance = "date || credit || debit || balance \n #{date.strftime('%d/%m/%Y')} ||  || 500.00 || 1500.00 \n #{date.strftime('%d/%m/%Y')} || 2000.00 ||  || 2000.00 \n "



  describe '#print_statement' do
    it 'prints the statement' do
      expect(receipt.print_statement(transactions)).to eq(printed_balance)
    end
  end
end
