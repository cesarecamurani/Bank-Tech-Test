require 'bank_account'

describe BankAccount do
  subject(:account) { described_class.new(statement) }
  let(:statement) { double 'statement', credit_trans: 1000, debit_trans: 1000 }

  it { expect(account.balance).to eq 0 }

  describe '#deposit' do
    it 'let the customer deposit money into the account' do
      account.deposit(1000)
      expect(account.balance).to eq 1000
    end
  end

  describe '#withdraw' do
    it 'let the customer withdraw money from the account' do
      account.deposit(2000)
      account.withdraw(1000)
      expect(account.balance).to eq 1000
    end

    it 'raises an error if you try to withdraw more money than you have' do
      account.deposit(2000)
      account.withdraw(1900)
      expect { account.withdraw(200) }.to raise_error 'Not enough money!'
    end
  end

end
