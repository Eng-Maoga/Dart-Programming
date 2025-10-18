class BankAccount {
  // Private properties with underscore (_)
  String _accountHolder;
  double _balance;
  String _accountNumber;

  // Constructor to initialize the account
  BankAccount(this._accountHolder, this._accountNumber, this._balance);

  // Getter method to access private account holder
  String get accountHolder => _accountHolder;

  // Getter method to access private balance
  double get balance => _balance;

  // Getter method to access masked account number
  String get accountNumber => "${_accountNumber.substring(_accountNumber.length - 4)}";

  // Setter method to update balance with validation
  set balance(double value) {
    if (value >= 0) {
      _balance = value;
    } else {
      print('Balance cannot be negative');
    }
  }

  // Method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited: \$$amount");
    } else {
      print('Deposit amount must be greater than 0');
    }
  }

  // Method to withdraw money with validation
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print("Withdrawn: \$$amount");
    } else {
      print('Insufficient funds or invalid amount');
    }
  }
}

void main() {
  // Creating an instance of BankAccount
  BankAccount account = BankAccount("Michael Owen", "123456789", 1000.0);

  // Accessing properties using getters
  print("Account Holder: ${account.accountHolder}");
  print("Account Number: ${account.accountNumber}");
  print("Initial Balance: \$${account.balance}");

  // Performing transactions
  account.deposit(500.0);
  print("Balance after deposit: \$${account.balance}");

  account.withdraw(200.0);
  print("Balance after withdrawal: \$${account.balance}");

  // Trying to set invalid balance
  account.balance = -100.0; // This will trigger validation

  // Trying to withdraw more than balance
  account.withdraw(2000.0); // This will trigger validation
}