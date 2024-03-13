import 'dart:io';

void main() {
  List<String> innkaupaListi = [];

  void addItemToList(String item) {
    innkaupaListi.add(item);
    print("$item Bætt við innkaupalista.");
  }
  void showInnkaupalisti() {
    if (innkaupaListi.isEmpty) {
      print("Innkaupalisti er tómur.");
    } else {
      print("Innkaupalisti:");
      for (var i = 0; i < innkaupaListi.length; i++) {
        print("${i + 1}. ${innkaupaListi[i]}");
      }
    }
  }
  bool quit() {
    print("Listi er uppfærður!");
    return false; // Return false til að stoppa loop.
  }
  bool removeItemFromList() {
    if (innkaupaListi.isEmpty) {
      print("Listinn er tómur.");
      return true;
    }
    showInnkaupalisti();
    print("Veldu tölu sem á við til að fjarlægja:");
    var input = stdin.readLineSync();
    if (input != null) {
      try {
        var index = int.parse(input) - 1;
        if (index >= 0 && index < innkaupaListi.length) {
          var removedItem = innkaupaListi.removeAt(index);
          print("$removedItem var fjarlægt af listanum.");
        } else {
          print("Reyndu aftur.");
        }
      } catch (e) {
        print("Reyndu aftur.");
      }
    }
    return true;
  }

  // Loopar aftur þartil quit
  bool programRunning = true;
  while (programRunning) {
    print("------------------");
    print("------------------");
    print("Veldu tölu sem á við:");
    print("1. Bæta við innkaupalista");
    print("2. Skoða innkaupalista");
    print("3. Fjarlægja úr listanum");
    print("4. Hætta");
    var val = stdin.readLineSync();

    switch (val) {
      case "1":
        print("Hverju viltu bæta við:");
        var item = stdin.readLineSync();
        if (item != null && item.isNotEmpty) {
          addItemToList(item);
        }
        break;

      case "2":
        showInnkaupalisti();
        break;

      case "3":
        programRunning = removeItemFromList();
        break;

      case "4":
        programRunning = quit();
        break;

      default:
        print("Vitlaus tala var valin, reyndu aftur.");
    }
  }
}