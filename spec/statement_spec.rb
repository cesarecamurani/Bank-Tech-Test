require 'statement'
require 'timecop'

describe Statement do
  date = Timecop.freeze(Time.now)
  test_transactions = [{ date: date.strftime('%d/%m/%Y'),
                         credit: 2000,
                         debit: nil,
                         balance: 2000 },
                       { date: date.strftime('%d/%m/%Y'),
                         credit: nil,
                         debit: 500,
                         balance: 1500 }]

  subject(:statement) { described_class.new }
  let(:transactions) { double :transaction, reverse: test_transactions }

  describe '#display' do
    it 'prints the statement' do
      printed_balance = " date || credit || debit || balance\n #{date.strftime('%d/%m/%Y')} ||  || 500.00 || 1500.00\n #{date.strftime('%d/%m/%Y')} || 2000.00 ||  || 2000.00\n "
      expect(statement.display(test_transactions)).to eq(printed_balance)
    end
  end
end
