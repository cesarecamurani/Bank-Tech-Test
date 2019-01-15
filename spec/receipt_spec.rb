require 'receipt'
require 'timecop'

describe Receipt do
  subject(:receipt) { described_class.new }
  let(:transactions) { double :statement, transactions: transactions }

  date = Timecop.freeze(Time.now)
  transactions = [
                  { date: date, balance: 2000, credit: 2000 },
                  { date: date, balance: 1500, debit: 500 }
                 ]

  describe '#print_statement' do
    it 'prints the statement' do
        printed_balance = ['date || credit || debit || balance',
                           "#{date.strftime('%d/%m/%Y')} || 2000 ||  || 2000",
                           "#{date.strftime('%d/%m/%Y')} ||  || 500 || 1500"
                          ]
      expect(receipt.print_statement(transactions)).to eq(printed_balance)
    end
  end
end
