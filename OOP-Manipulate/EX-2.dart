class BankAccount {
  //attribute
  final int _accID;
  final String _accName;
  double _balance;

  BankAccount(this._accID, this._accName, this._balance);

  // Getters
  String get accName => _accName;
  int get accID => _accID;
  double get balance => _balance;

  // method balance
  void bankBalance() {
    print(balance);
  }

  // method withdraw
  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
    } else {
      throw Exception('Can not withdraw!');
    }
  }

  void credit(double amount) {
    _balance += amount;
  }
}

class Bank {
  // attribute
  final String name;
  List<BankAccount> accounts = [];

  Bank({required this.name});

  // method create acccount
  BankAccount createAccount(int accountId, String accountOwner) {
    for (var account in accounts) {
      if (account.accID == accountId) {
        throw Exception('Account already exists');
      }
    }
    
    BankAccount newAccount = BankAccount(accountId, accountOwner, 0.0);
    accounts.add(newAccount);
    print('Account for $accountOwner with ID $accountId created.');

    return newAccount;
  }
}

void main() {
  Bank myBank = Bank(name: "CADT Bank");
  BankAccount ronanAccount = myBank.createAccount(100, 'Ronan');

  print(ronanAccount.balance); // Balance: $0
  ronanAccount.credit(100);
  print(ronanAccount.balance); // Balance: $100
  ronanAccount.withdraw(50);
  print(ronanAccount.balance); // Balance: $50

  try {
    ronanAccount.withdraw(75); // This will throw an exception
  } catch (e) {
    print(e); // Output: Insufficient balance for withdrawal!
  }

  try {
    myBank.createAccount(100, 'Honlgy'); // This will throw an exception
  } catch (e) {
    print(e); // Output: Account with ID 100 already exists!
  }
}
