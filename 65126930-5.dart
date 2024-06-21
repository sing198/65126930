import 'dart:io';

void addStudent(List<String> students, String name) {
  students.add(name);
  print("Student '$name' added.");
}

void removeStudent(List<String> students, String name) {
  if (students.contains(name)) {
    students.remove(name);
    print("Student '$name' removed.");
  } else {
    print("Student '$name' not found.");
  }
}

void displayStudents(List<String> students) {
  if (students.isEmpty) {
    print("No students in the list.");
  } else {
    print("Student names:");
    for (String name in students) {
      print(name);
    }
  }
}

void main() {
  List<String> students = [];
  while (true) {
    print('Choose an option:');
    print('1. Add student');
    print('2. Remove student');
    print('3. Display students');
    print('4. Exit');
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      print('Enter student name to add:');
      String? name = stdin.readLineSync();
      if (name != null && name.isNotEmpty) {
        addStudent(students, name);
      } else {
        print('Invalid name.');
      }
    } else if (choice == '2') {
      print('Enter student name to remove:');
      String? name = stdin.readLineSync();
      if (name != null && name.isNotEmpty) {
        removeStudent(students, name);
      } else {
        print('Invalid name.');
      }
    } else if (choice == '3') {
      displayStudents(students);
    } else if (choice == '4') {
      break;
    } else {
      print('Invalid choice. Please enter 1, 2, 3, or 4.');
    }
  }
}
