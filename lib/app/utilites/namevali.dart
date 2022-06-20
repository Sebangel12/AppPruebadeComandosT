bool isValiName (String text) {
  return RegExp(r"^[a-zA-ZñÑ ]+$").hasMatch(text);
}

bool isId (String text) {
  return RegExp(r"^[L]+[0-9]+$").hasMatch(text)
;}

