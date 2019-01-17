require 'bank_account'
require 'timecop'

describe BankAccount do
  subject(:account) { described_class.new(transaction) }
  let(:transaction) {
    double :transaction,
    credit: 1000,
    debit: 1000,
    print: "transactions"
  }

  before :each do
    Timecop.freeze(Time.now)
  end

  describe '#deposit' do
    it 'let the customer deposit money into the account' do
      account.deposit(1000)
      expect(transaction.credit).to eq 1000
    end
  end

  describe '#withdraw' do
    it 'let the customer withdraw money from the account' do
      account.deposit(2000)
      account.withdraw(1000)
      expect(transaction.debit).to eq 1000
    end

    it 'raises an error if you try to withdraw more money than you have' do
      account.deposit(2000)
      account.withdraw(1900)
      expect { account.withdraw(200) }.to raise_error 'Not enough money!'
    end
  end

  describe '#print_statement' do
    it 'shows all the transactions' do
      expect { account.print_statement }.to output("transactions\n").to_stdout
    end
  end
end
