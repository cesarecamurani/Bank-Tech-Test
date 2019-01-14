require 'bank_account'

describe BankAccount do
  let(:account) { described_class.new }

  it { expect(account.balance).to eq 0 }
end
