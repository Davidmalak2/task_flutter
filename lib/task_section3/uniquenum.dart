///Unique word program that counts the number of unique words in a list and also counts how many times each word appears.
void main() {
  List<String> words = [
    "dart",
    "flutter",
    "dart",
    "programming",
    "flutter",
    "dart",
    "coding"
  ];

  // Set to store unique words
  Set<String> uniqueWords = {};

  // Map to count each word
  Map<String, int> wordCount = {};

  for (String word in words) {
    // 1. Add word to Set
    uniqueWords.add(word);

    // 3. Count how many times each word appears
    if (wordCount.containsKey(word)) {
      wordCount[word] = wordCount[word]! + 1;
    } else {
      wordCount[word] = 1;
    }
  }

  // 1. Print all unique words
  print("Unique words: $uniqueWords");

  // 2. Print number of unique words
  print("Number of unique words: ${uniqueWords.length}");

  // 3. Print word count
  print("Word count: $wordCount");
}