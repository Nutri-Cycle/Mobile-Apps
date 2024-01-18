class ItemFilter {
  final int id;
  final String name;
  bool isFilterActive;

  ItemFilter(this.id, this.name, this.isFilterActive);
}

class ItemProduct {
  final String name;
  final String photo;
  final String price;
  final List<ItemProductFilter> listProductFilter;

  ItemProduct(
    this.name,
    this.photo,
    this.price,
    this.listProductFilter,
  );

  @override
  String toString() {
    return 'ItemProduct{name: $name}';
  }
}

class ItemProductFilter {
  final int id;
  final bool isFilterActive;

  ItemProductFilter(this.id, this.isFilterActive);
}
