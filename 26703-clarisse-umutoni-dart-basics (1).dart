// Registration number: 26703 | D = 3 | T = 03
// Student: Clarisse Byiringiro Umutoni
// Dart Basics Assignment: B2 (countVowels) and D2 (MoMo receipt printer)

// ---------- B2 ----------
int countVowels(String text) {
  // by CBU
  String lower = text.toLowerCase(); // this line makes capital letters count
  String vowels = 'aeiou';
  int count = 0;
  int i = 0;
  while (i < lower.length) {
    if (vowels.contains(lower[i])) {
      count++;
    }
    i++;
  }
  return count;
}

// ---------- D2 ----------
int momoFee(int amount) {
  // by CBU
  if (amount <= 0) return -1; // invalid
  if (amount <= 1000) return 20;
  if (amount <= 10000) return 100;
  if (amount <= 150000) return 250;
  return 1500;
}

String maskPhone(String phone) {
  // by CBU
  if (phone.length != 10) return 'INVALID';
  String stars = '';
  int i = 3;
  while (i < phone.length - 2) {
    stars += '*';
    i++;
  }
  return phone.substring(0, 3) + stars + phone.substring(phone.length - 2);
}

void main() {
  // by CBU

  // B2
  String fullName = 'Clarisse Byiringiro Umutoni';
  print('$fullName has ${countVowels(fullName)} vowels');
  print('');

  // D2
  int d = 3; // my D (last digit of 26703)
  int t = 03; // my T (last two digits of 26703)
  String phone = '0788123456';
  int totalFees = 0;
  int i = 1;
  while (i <= d + 3) {
    int amount = i * 4000 + t * 100;
    int fee = momoFee(amount);
    print('Receipt $i | $amount RWF | fee $fee RWF | to ${maskPhone(phone)}');
    totalFees += fee;
    i++;
  }
  print('Total fees: $totalFees RWF');
}
