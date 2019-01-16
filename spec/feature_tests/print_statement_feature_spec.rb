require 'bank_account'

describe 'feature displays statement' do
  let(:my_account) { BankAccount.new }

  it 'displays a statement' do
    my_account.deposit(2000)
    my_account.withdraw(500)
    printed_balance = " date || credit || debit || balance\n"\
                       " #{Time.now.strftime('%d/%m/%Y')} ||  || 500.00 || 1500.00\n"\
                       " #{Time.now.strftime('%d/%m/%Y')} || 2000.00 ||  || 2000.00\n"
    expect { my_account.print }.to output(printed_balance).to_stdout
  end
end
