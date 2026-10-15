class BankAccount {
    // TODO
  final int accountId;
  final String accountOwner;
  double _balance = 0.0;

  BankAccount(this.accountId, this.accountOwner);

  double get balance => _balance;

  void credit(double amount) {
    _balance += amount;
  }

  void withdraw(double amount) {
    if(_balance - amount <= 0) {
      throw Exception('Insufficient balance');
    } else {
      _balance -= amount;
    }
  }
}

class Bank {
    // TODO
  final String name;
  final List<BankAccount> _accounts = [];

  Bank({required this.name});

  BankAccount createAccount(int accountId, String accountOwner) {
    bool exists = _accounts.any(
      (account) => account.accountId == accountId,
    );

    if (exists) {
      throw Exception('Account with ID $accountId already exists');
    }

    BankAccount account = BankAccount(accountId, accountOwner);

    _accounts.add(account);

    return account;
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
