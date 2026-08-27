class Holiday {
  String name;
  int day;
  String month;

  Holiday(this.name, this.day, this.month);

  // Check if two holidays are in the same month
  bool inSameMonth(Holiday holiday) {
    return month == holiday.month;
  }

  // Calculate the average of the day values
  static double avgDate(List<Holiday> holidays) {
    int sum = 0;

    for (Holiday holiday in holidays) {
      sum += holiday.day;
    }

    return sum / holidays.length;
  }

  void view() {
    print("Name: $name");
    print("Day: $day");
    print("Month: $month");
  }
}

void main() {
  Holiday holiday1 = Holiday("Independence Day", 4, "July");
  Holiday holiday2 = Holiday("Christmas", 25, "December");
  Holiday holiday3 = Holiday("Another Holiday", 10, "July");

  // View holiday
  holiday1.view();

  print("----------------");

  // Test inSameMonth
  print(holiday1.inSameMonth(holiday2)); // false
  print(holiday1.inSameMonth(holiday3)); // true

  print("----------------");

  // Test avgDate
  List<Holiday> holidays = [
    holiday1,
    holiday2,
    holiday3,
  ];

  double average = Holiday.avgDate(holidays);

  print("Average day: $average");
}