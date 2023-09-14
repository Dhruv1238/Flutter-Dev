class lessbalanceexception implements Exception {
  String errorLessbalance() {
    return 'less balance error';
  }
}

class bank {
  int accno;
  String custname;
  var accbalance;

//   constructor
//   required --- when we do not apply value for variables
  bank({required this.accno, this.accbalance = 0.0, required this.custname});

  void deposit(int amount) {
    accbalance += amount;
    print('current acc balance is $accbalance');
  }

  void withdrawal(int amount) {
    if (accbalance < amount) {
      throw lessbalanceexception();
    } else {
      accbalance -= amount;
      print('current acc balance after withdrawal is $accbalance');
    }
  }

  void checkbalance() {
    print("my balance is $accbalance");
  }
}

void main() {
  var myAccount =
      bank(accno: 1234567890, custname: 'John Doe', accbalance: 1000);

  try {
    myAccount.deposit(200);
    myAccount.withdrawal(500);
    myAccount.checkbalance();
    myAccount.withdrawal(2000); // This will throw LessBalanceException
  } catch (e) {
    if (e is lessbalanceexception) {
      print(e.errorLessbalance());
    }
  }
}
