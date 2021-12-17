String beautifyNumber(int val) {
  String bunch(v) => (v % 1000).toString().padLeft(v ~/ 1000 == 0 ? 0 : 3, '0');
  var res = bunch(val);
  while ((val ~/= 1000) != 0) {
    res = bunch(val) + ',' + res;
  }
  return res;
}
