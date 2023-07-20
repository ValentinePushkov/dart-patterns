abstract class Addition {
  late String name;

  String getName() {
    return name;
  }
}

class Milk extends Addition {
  Milk() {
    name = "Milk";
  }
}

class Cream extends Addition {
  Cream() {
    name = "Cream";
  }
}

class Sugar extends Addition {
  Sugar() {
    name = "Sugar";
  }
}

class Cinnemon extends Addition {
  Cinnemon() {
    name = "Cinnemon";
  }
}

class Syrup extends Addition {
  Syrup() {
    name = "Syrup";
  }
}

class DoubleCoffee extends Addition {
  DoubleCoffee() {
    name = "Double Coffee";
  }
}

class Coffee {
  final List<Addition> _additions = [];

  void addAddition(Addition addition) => _additions.add(addition);

  String getFormatedAdditions() =>
      _additions.map((e) => e.getName()).join(', ');
}

class CoffeeBuilder {
  late Coffee coffee;

  void startMakingCoffee() => coffee = Coffee();

  Coffee getCoffee() => coffee;

  void addMilk() {
    coffee.addAddition(Milk());
  }

  void addCream() {
    coffee.addAddition(Cream());
  }

  void addSugar() {
    coffee.addAddition(Sugar());
  }

  void addCinnemon() {
    coffee.addAddition(Cinnemon());
  }

  void addSyrup() {
    coffee.addAddition(Syrup());
  }

  void addDoubleCoffee() {
    coffee.addAddition(DoubleCoffee());
  }
}

void main() {
  CoffeeBuilder coffeeBuilder = CoffeeBuilder();
  coffeeBuilder.startMakingCoffee();
  coffeeBuilder.addDoubleCoffee();
  coffeeBuilder.addMilk();
  coffeeBuilder.addSugar();
  coffeeBuilder.addCinnemon();

  Coffee coffee = coffeeBuilder.getCoffee();
  print(coffee.getFormatedAdditions());
}
