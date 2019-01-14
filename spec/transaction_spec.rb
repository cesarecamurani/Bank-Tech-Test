require 'transaction'

describe Transaction do
  let(:transaction) { described_class.new(2000, 1000, 1000) }

  it { expect(transaction.credit).to eq 2000 }
  it { expect(transaction.debit).to eq 1000 }
  it { expect(transaction.debit).to eq 1000 }

end
