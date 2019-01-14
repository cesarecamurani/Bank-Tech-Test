require 'bank_account'

describe BankAccount do
  let(:account) { described_class.new(statement) }
  let(:statement) { double 'statement'}

  it { expect(account.balance).to eq 0 }

  describe '#deposit' do
    it '#let the customer deposit money into the account' do
      account.deposit(1000)
      expect(account.balance).to eq 1000
    end
  end

  describe '#withdraw' do
    it '#let the customer withdraw money from the account' do
      account.deposit(2000)
      account.withdraw(1000)
      expect(account.balance).to eq 1000
    end
  end
end
