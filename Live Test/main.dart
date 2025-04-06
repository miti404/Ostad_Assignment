void main() {
  List<Map<String, dynamic>> students = [
    {
      "name": "Alice",
      "scores": [85, 90, 78],
    },
    {
      "name": "Bob",
      "scores": [88, 76, 95],
    },
    {
      "name": "Charlie",
      "scores": [90, 92, 85],
    },
  ];

  Map<String, double> averageScores = {};

  for (var student in students) {
    String name = student["name"];
    List<int> scores = student["scores"];
    double sum = 0;
    for (var score in scores) {
      sum += score;
    }
    double average = sum / scores.length;
    averageScores[name] = double.parse(average.toStringAsFixed(2));
  }
  
  for (var entry in averageScores.entries) {
    print("${entry.key}: ${entry.value}");
  }
}