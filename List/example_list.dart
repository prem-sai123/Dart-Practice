class ListItem {
  const ListItem({required this.index});

  final int index;
}

void main(List<String> args) {
  final items = List.generate(5, (i) => ListItem(index: i + 1), growable: true);
  final newItem = ListItem(index: items.length +1);
  print(items.length);
  items.add(newItem);
  for(final item in items) {
    print(item.index);
  }
}