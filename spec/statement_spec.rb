require 'statement'
require 'timecop'

describe Statement do
  subject(:statement) { described_class.new(receipt) }
  let(:receipt) { double :receipt, print_statement: 'transactions' }

  before :each do
    Timecop.freeze(Time.now)
  end

  it 'transactions should be empty' do
    expect(statement.transactions).to be_empty
  end

  describe '#store_credit_trans' do
    it 'stores the deposit transaction in the statement' do
      expect(statement.credit_trans(1000, 2000)).to eq [balance: 2000,
                                                        credit: 1000,
                                                        date: Time.now]
    end
  end

  describe '#store_debit_trans' do
    it 'stores the withdrawal transaction in the statement' do
      expect(statement.debit_trans(1000, 2000)).to eq [balance: 2000,
                                                       debit: 1000,
                                                       date: Time.now]
    end
  end

  describe '#print' do
    it 'prints all the transactions' do
      expect(receipt.print_statement).to eq('transactions')
    end
  end
end
