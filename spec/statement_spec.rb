require 'statement'

describe Statement do
  let(:statement) { described_class.new }

  it { expect(statement.transactions).to be_empty }
end
