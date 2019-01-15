require 'statement'
require 'timecop'

describe Statement do
  subject(:statement) { described_class.new(receipt) }
  let(:receipt) { double :receipt, print_statement: 'transactions' }

  before :each do
    Timecop.freeze(Time.now)
  end

  describe '#store_credit_trans' do
    it 'stores the deposit transaction in the statement' do
      expect(statement.credit_trans(1000, 2000)).to eq [date: Time.now.strftime('%d/%m/%Y'),
                                                        credit: 1000,
                                                        debit: nil,
                                                        balance: 2000
                                                       ]
    end
  end

  describe '#store_debit_trans' do
    it 'stores the withdrawal transaction in the statement' do
      expect(statement.debit_trans(1000, 2000)).to eq [date: Time.now.strftime('%d/%m/%Y'),
                                                       credit: nil,
                                                       debit: 1000,
                                                       balance: 2000
                                                       ]
    end
  end

  describe '#print' do
    it 'prints all the transactions' do
      expect(receipt.print_statement).to eq('transactions')
    end
  end
end
