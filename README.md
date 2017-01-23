# Bank Account App

This app allows a user to use a Ruby REPL to allow them to create and account, and then make deposits and withdrawals from the account.

The user can also have a statement returned at any time to see the current bank account transactions.

## Setup
* Fork, clone and download this repository
* Navigate to the directory, run your REPL and ```require './lib/account.rb'```

## Use
* Setup a bank account using ```my_account = Account.new```
* A new bank account starts with 0 funds; to make a deposit use ```my_account.deposit(1000)``` (<- 1000 being the amount to deposit.)
* You can withdraw fund by using ```my_account.withdraw(500)``` (<- 500 being the amount to withdrawal.)
* At any time you can view the statement for the account by using: ```my_account.statement``` (following on from the above examples, the app will return the below:
```
date       || credit || debit   || balance
23/01/2017 ||        || 500.00  || 500.00
23/01/2017 || 1000.00||         || 1000.00
```

## Future features
* To add a front end interface instead of command line
