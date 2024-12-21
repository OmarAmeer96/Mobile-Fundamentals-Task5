// Create a BankAccount class to withdraw or deposit amount of money
/*
Requirement 1
Title: Create BankAccount class 
Description: 
- Create a BankAccount class with two variables account and balance
- Make two constructors: the first constructor is for the accountID and the second constructor is named constructor for the balance and initializes it to 0 and accepts only accountID
- Make withdraw method: ensures the withdrawal amount is positive and checks if the balance is sufficient. If yes, deduct the amount; otherwise, it displays an error message.
- Make deposit method: add the amount to the balance.
- Make displayAccountInfo method: prints the account ID and the current balance.

Requirement 2
Title: Main function 
Description: 
Enter both constructors, then performs deposit and withdrawal operations with different scenarios, 
including insufficient balance and invalid inputs and display the info.
*/

void main() {
  BankAccount account1 = BankAccount(123);
  BankAccount account2 = BankAccount.withBalance(456, 1000);

  account1.deposit(500);
  account1.withdraw(200);
  print("|----------Info----------|");
  account1.displayAccountInfo();
  print("|------------------------|");

  account2.deposit(1000);
  account2.withdraw(20000);
  print("|----------Info----------|");
  account2.displayAccountInfo();
  print("|------------------------|");
}

class BankAccount {
  int accountID;
  double balance;

  BankAccount(this.accountID) : balance = 0;

  BankAccount.withBalance(this.accountID, this.balance);

  void withdraw(double amount) {
    if (amount > 0) {
      if (balance >= amount) {
        balance -= amount;
      } else {
        print('Insufficient balance');
      }
    } else {
      print('Invalid amount');
    }
  }

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
    } else {
      print('Invalid amount');
    }
  }

  void displayAccountInfo() {
    print('Account ID: $accountID');
    print('Balance: $balance');
  }
}
