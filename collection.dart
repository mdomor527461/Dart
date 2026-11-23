// Dart Collections - practical examples
// Run: dart run collections_examples.dart

import 'dart:collection';

void main() {
  listExamples();
  setExamples();
  mapExamples();
  stackExamples();
  queueExamples();
}

// 1. LIST
// A List is an ordered collection. It allows duplicate values.
void listExamples() {
  print('\n========== LIST ==========');

  List<String> fruits = ['Apple', 'Banana', 'Mango'];

  print(fruits);                 // [Apple, Banana, Mango]
  print(fruits[0]);               // Apple
  print(fruits.length);           // 3
  print(fruits.isEmpty);          // false
  print(fruits.contains('Apple'));// true

  fruits.add('Orange');           // Add one item
  fruits.addAll(['Grape', 'Lemon']); // Add multiple items
  fruits.insert(1, 'Guava');      // Insert at index 1
  fruits.insertAll(0, ['Jackfruit', 'Litchi']);

  fruits[0] = 'Watermelon';       // Update by index
  fruits.remove('Banana');        // Remove by value
  fruits.removeAt(0);             // Remove by index
  fruits.removeLast();            // Remove last item (pop-like)
  fruits.removeRange(0, 2);       // Remove items from index 0 up to (not including) 2

  print(fruits);

  fruits.sort();                  // Sort alphabetically
  print(fruits);

  print(fruits.first);            // First item
  print(fruits.last);             // Last item
  print(fruits.reversed.toList()); // Reverse order

  // Loop through a List
  for (final fruit in fruits) {
    print(fruit);
  }

  // Create a new List using map()
  final upperCaseFruits = fruits.map((fruit) => fruit.toUpperCase()).toList();
  print(upperCaseFruits);

  // Filter a List using where()
  final longNames = fruits.where((fruit) => fruit.length > 5).toList();
  print(longNames);

  fruits.clear();                 // Remove everything
  print(fruits);                  // []
}

// 2. SET
// A Set stores unique values; duplicate values are ignored.
void setExamples() {
  print('\n========== SET ==========');

  Set<int> numbers = {10, 20, 30, 20};
  print(numbers);                 // {10, 20, 30}

  numbers.add(40);                // Add one value
  numbers.addAll({50, 60});       // Add multiple values
  numbers.remove(20);             // Remove a value
  print(numbers.contains(30));    // true
  print(numbers.length);          // Number of unique values

  final a = {1, 2, 3, 4};
  final b = {3, 4, 5, 6};

  print(a.union(b));              // {1, 2, 3, 4, 5, 6}
  print(a.intersection(b));       // {3, 4}
  print(a.difference(b));         // {1, 2}

  numbers.clear();                // Remove all values
  print(numbers);
}

// 3. MAP
// A Map stores key-value pairs. Keys must be unique.
void mapExamples() {
  print('\n========== MAP ==========');

  Map<String, dynamic> student = {
    'name': 'Omor',
    'age': 21,
    'department': 'CSE',
  };

  print(student);
  print(student['name']);         // Read a value

  student['age'] = 22;            // Update an existing value
  student['city'] = 'Pabna';      // Add a new key-value pair
  student.putIfAbsent('grade', () => 'A'); // Add only if key is absent

  print(student.containsKey('name')); // true
  print(student.containsValue('Pabna')); // true

  student.remove('city');         // Remove by key

  print(student.keys);            // All keys
  print(student.values);          // All values
  print(student.length);

  // Loop through a Map
  student.forEach((key, value) {
    print('$key: $value');
  });

  student.clear();                // Remove all key-value pairs
  print(student);
}

// 4. STACK (Last In, First Out - LIFO)
// Dart List can be used as a stack.
void stackExamples() {
  print('\n========== STACK ==========');

  List<String> stack = [];

  stack.add('First');             // Push
  stack.add('Second');            // Push
  stack.add('Third');             // Push

  print(stack);

  final top = stack.isNotEmpty ? stack.last : null; // Peek
  print('Top: $top');

  final removed = stack.isNotEmpty ? stack.removeLast() : null; // Pop
  print('Popped: $removed');
  print(stack);
}

// 5. QUEUE (First In, First Out - FIFO)
// Queue is available from dart:collection.
void queueExamples() {
  print('\n========== QUEUE ==========');

  Queue<String> queue = Queue<String>();

  queue.add('First');             // Add to the back
  queue.addLast('Second');        // Add to the back
  queue.addFirst('New First');    // Add to the front

  print(queue);

  print('Front: ${queue.first}'); // Peek at front
  print('Removed: ${queue.removeFirst()}'); // Dequeue
  print('Removed: ${queue.removeLast()}');  // Remove from back

  print(queue);
  queue.clear();
}