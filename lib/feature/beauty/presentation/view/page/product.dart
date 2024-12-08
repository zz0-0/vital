import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vital/share/component/product_chip_vertical_list.dart';
import 'package:vital/share/provider/beauty/presentation/view/page/product_provider.dart';

class Product extends ConsumerWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chips = ref.watch(productChipsProvider);
    final items = ref.watch(productItemsProvider);
    return ProductTabVerticalList(
      chips: chips,
      items: items,
      chipProvider: productChipSelectedIndexProvider,
      itemProvider: productItemSelectedIndexProvider,
    );
  }
}