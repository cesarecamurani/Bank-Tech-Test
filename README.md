# Bank-Tech-Test

### Week 10 Tech Test Sample

## IRB (Ruby) App that allow you to create and manage a bank account.

### User Stories:
```
As a user,
So that I can manage my money,
I want to be able to create a bank account.

As a user,
So that I can use my account,
I want to be able to deposit money into my account.

As a user,
So that I can use my account,
I want to be able to withdraw money from my account.

As a user,
So that I can keep track of my transactions,
I want to be able to print a statement in the following format:

Date || Credit || Debit || Balance
14/01/2019 || || 500.00 || 2500.00
14/01/2019 || 2000.00 || || 3000.00
14/01/2019 || 1000.00 || || 1000.00
```

## How to use

 ### To set up the project

 Clone this repository and then run:

 ```
 bundle install
 ```
 ### To run tests:
 
 ```
 rspec
 ```
 
 ### To run linting:
 
 ```
 rubocop
 ```
 
 ### To run the app in IRB:
 Open irb and run:
 ```
 require './lib/bank_account.rb'
 ```
 Follow the instructions below:
 ```
 my_account = BankAccount.new
 => creates a new BankAccount instance

 my_account.deposit(1000)
 => add money to your bank account

 my_account.withdraw(500)
 => deduct money from your bank account

 my_account.print_statement
 => shows the statement on the terminal
 
 Date || Credit || Debit || Balance
 14/01/2019 || 0 || 500 || 500 
 14/01/2019 || 1000 || 0 || 1000 
 ```
 ### Screenshot:
 
 ![Alt text](/images/screenshot.png?raw=true "Screenshot")
