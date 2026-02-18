// Rabi Khan 2380276

void main() {
  List<String> sentences = [
    "this is a test this is",
    "hello hello world",
    "dart is fun fun fun",
  ];

  for (int i = 0; i < sentences.length; i++) {
    String line = sentences[i];

    List<String> words = line.split(' ');

    Map<String, int> frequency = {};

    for (String word in words) {
      frequency[word] = (frequency[word] ?? 0) + 1;
    }

    int maxFreq = frequency.values.reduce((a, b) => a > b ? a : b);

    List<String> highestWords = frequency.entries
        .where((entry) => entry.value == maxFreq)
        .map((entry) => entry.key)
        .toList();

    print('$highestWords frequency:  ${i + 1}');
  }
}

