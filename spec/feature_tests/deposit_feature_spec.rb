
describe 'feature test deposit money' do
  let(:my_account) { BankAccount.new }
  let(:transaction) { double :transaction, credit: 1000 }

  it 'user can deposit money into his/her account' do
    my_account.deposit(1000)
    expect(transaction.credit).to eq 1000
  end
end
