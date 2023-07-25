abstract class Addition {
  late String? name;

  String getName() {
    return name ?? 'no addition';
  }
}

class Milk extends Addition {
  Milk() {
    name = "milk";
  }
}

class Cream extends Addition {
  Cream() {
    name = "cream";
  }
}

class Sugar extends Addition {
  Sugar() {
    name = "sugar";
  }
}

class Cinnemon extends Addition {
  Cinnemon() {
    name = "cinnemon";
  }
}

class Syrup extends Addition {
  Syrup() {
    name = "syrup";
  }
}

class DoubleCoffee extends Addition {
  DoubleCoffee() {
    name = "double coffee";
  }
}

class Coffee {
  Milk? milk;
  Cream? cream;
  Sugar? sugar;
  Cinnemon? cinnemon;
  Syrup? syrup;
  DoubleCoffee? doubleCoffee;

  @override
  String toString() {
    return 'Coffee includes: ${milk?.name ?? 'no milk'}, ${cream?.name ?? 'no cream'}, ${sugar?.name ?? 'no sugar'}, ${cinnemon?.name ?? 'no cinnemon'}, ${syrup?.name ?? 'no syrup'}, ${doubleCoffee?.name ?? 'no double coffee'}.';
  }
}

class CoffeeBuilder {
  late Coffee coffee;

  void startMakingCoffee() => coffee = Coffee();

  Coffee getCoffee() => coffee;

  void addMilk() {
    coffee.milk = Milk();
  }

  void addCream() {
    coffee.cream = Cream();
  }

  void addSugar() {
    coffee.sugar = Sugar();
  }

  void addCinnemon() {
    coffee.cinnemon = Cinnemon();
  }

  void addSyrup() {
    coffee.syrup = Syrup();
  }

  void addDoubleCoffee() {
    coffee.doubleCoffee = DoubleCoffee();
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
  print(coffee.toString());
}
