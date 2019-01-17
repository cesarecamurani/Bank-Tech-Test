
describe '#deposit' do
  let(:my_account) { BankAccount.new }
  let(:statement) { double :statement, credit: 1000 }

  it 'user can deposit money into his/her account' do
    my_account.deposit(1000)
    expect(statement.credit).to eq 1000
  end
end
