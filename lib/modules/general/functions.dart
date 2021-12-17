String beautifyNumber(int value) {
  var res = (value % 1000).toString();
  while ((value ~/= 1000) != 0) {
    res = (value % 1000).toString() + ',' + res;
  }
  return res;
}
