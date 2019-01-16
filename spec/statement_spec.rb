require 'statement'
require 'timecop'

describe Statement do
  subject(:statement) { described_class.new(show_statement) }
  let(:show_statement) { double :show_statement, display: 'transactions' }

  before :each do
    Timecop.freeze(Time.now)
  end

  credit_data = [date: Time.now.strftime('%d/%m/%Y'),
                 credit: 1000,
                 debit: nil,
                 balance: 2000]

  debit_data = [date: Time.now.strftime('%d/%m/%Y'),
                credit: nil,
                debit: 1000,
                balance: 2000]

  describe '#credit' do
    it 'stores the deposit transaction in the statement' do
      expect(statement.credit(1000, 2000)).to eq(credit_data)
    end
  end

  describe '#debit' do
    it 'stores the withdrawal transaction in the statement' do
      expect(statement.debit(1000, 2000)).to eq(debit_data)
    end
  end

  describe '#print' do
    it 'prints all the transactions' do
      expect(statement.print).to eq('transactions')
    end
  end
end
