mixin Logger {
  logMessage(String message) {
    print(message);
  }
}

abstract class Vehicle {
  startEngine() {}
  stopEngine() {}
}

class Car extends Vehicle with Logger {
  @override
  startEngine() {
    logMessage(" the engine starts");
  }

  @override
  stopEngine() {
    logMessage(" the engine stop");
  }
}
void main(List<String> args) {
  Vehicle v1=Car();
  v1.startEngine();
  v1.stopEngine();
}