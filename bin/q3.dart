class Product {
  String _name;
  double _price;
  Product(this._name, this._price);
  String get name {
    return _name;
  }

  double get price {
    return _price;
  }

  set price(double newprice) {
    if (newprice > 0) {
      newprice = _price;
    } else {
      print("invalid number,old price$_price");
    }
  }

  //tax 18%
  get priceWithTax {
    return price * 1.18;
  }
}

void main(List<String> args) {
  Product p1 = Product("apple", 50);
  print("Name:${p1.name}");
  print("price:${p1.price}");
  print("Price With Tax:${p1.priceWithTax}");

  //setter 
print("update price${p1.price=50}");


print("invalid number:${p1.price=-40}");
}
