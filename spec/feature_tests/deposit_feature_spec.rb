
describe '#deposit' do
  let(:my_account) { BankAccount.new }

  it 'user can deposit money into his/her account' do
    my_account.deposit(1000)
    expect(my_account.balance).to eq 1000
  end
end
