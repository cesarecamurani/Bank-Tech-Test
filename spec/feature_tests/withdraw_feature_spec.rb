
describe '#withdraw' do
  let(:my_account) { BankAccount.new }
  let(:statement) { double :statement, debit: 1000 }

  it 'user can withdraw money from his/her account' do
    my_account.deposit(2000)
    my_account.withdraw(1000)
    expect(statement.debit).to eq 1000
  end

  it 'raises an error if you try to withdraw more money than you have' do
    my_account.deposit(1000)
    expect { my_account.withdraw(1500) }.to raise_error 'Not enough money!'
  end
end
