void main() {
  for (int i = 0; i < 5; i++) {
    if (i == 2) {
      continue;  // Skips the rest of the loop for i = 2
    }
    print(i);
  }
  // Output: 0, 1, 3, 4
}