class Search {
  static T search<T>(List<T> list, String item) {
    for (T i in list) {
      if (i == item) {
        return i;
      }
    }
    throw 'not found';
  }
}
