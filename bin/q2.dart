class Employee {
  calculateSalary(){

  }
}

class FullTimeEmployee extends Employee {
  double monthlySalary;
  FullTimeEmployee(this.monthlySalary);
  @override
  calculateSalary() {
    return monthlySalary;
  }

}

class PartTimeEmployee extends Employee {
  double hoursWorked;
  double ratePerHour;
  PartTimeEmployee(this.hoursWorked,this.ratePerHour);
  @override
  calculateSalary() {
    return hoursWorked*ratePerHour;
    
  }
}
void main(List<String> args) {
  Employee e1=FullTimeEmployee(5000);
  Employee e2=PartTimeEmployee(12, 500);

 print(e1.calculateSalary());
 print(e2.calculateSalary());
}