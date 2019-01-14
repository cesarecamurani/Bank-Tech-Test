require 'receipt'
require 'timecop'

describe Receipt do
  subject(:receipt) { described_class.new }
  let(:statement) { double 'statement' }
               
  describe '#print' do
    it 'prints the statement' do
      date = Timecop.freeze(Time.now)
      statement = ['date || credit || debit || balance',
                   "#{date} || 2000 ||  || 2000",
                   "#{date} ||  || 500 || 1500"
                  ]
      expect(receipt.print(statement)).to eq(statement)
    end
  end
end
