class Favs {
  static Set<String> favNames = {};

  static getSet() {
    return favNames;
  }

  static addToSet(String name) {
    favNames.add(name);
  }

  static removeFromSet(String name) {
    favNames.remove(name);
  }

  static contains(String name) {
    return favNames.contains(name);
  }
}