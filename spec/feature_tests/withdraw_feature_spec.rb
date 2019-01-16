
describe '#withdraw' do
  let(:my_account) { BankAccount.new }

  it 'user can withdraw money from his/her account' do
    my_account.deposit(1000)
    my_account.withdraw(300)
    expect(my_account.balance).to eq 700
  end

  it 'raises an error if you try to withdraw more money than you have' do
    my_account.deposit(1000)
    expect { my_account.withdraw(1500) }.to raise_error 'Not enough money!'
  end
end
