import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vital/feature/beauty/presentation/view/page/hair_care.dart';
import 'package:vital/feature/beauty/presentation/view/page/skin_care.dart';

final beautyTabsProvider = Provider<List<Widget>>((ref) {
  return [
    const Column(
      children: [
        Icon(Icons.face),
        Text('Skin Care'),
      ],
    ),
    const Column(
      children: [
        Icon(Icons.face),
        Text('Hair Care'),
      ],
    ),
    const Column(
      children: [
        Icon(Icons.face),
        Text('Makeup'),
      ],
    ),
    const Column(
      children: [
        Icon(Icons.face),
        Text('Fragrance'),
      ],
    ),
    const Column(
      children: [
        Icon(Icons.face),
        Text('Personal Care'),
      ],
    ),
    const Column(
      children: [
        Icon(Icons.face),
        Text('Personal Care'),
      ],
    ),
  ];
});
final beautySelectedIndexProvider = StateProvider<int>((ref) => 0);
final beautyWidgetProvider = Provider<Widget>((ref) {
  final selectedIndex = ref.watch(beautySelectedIndexProvider);
  switch (selectedIndex) {
    case 0:
      return const SkinCare();
    case 1:
      return const HairCare();
    case 2:
      return const Center(child: Text('Makeup'));
    case 3:
      return const Center(child: Text('Fragrance'));
    case 4:
      return const Center(child: Text('Personal Care'));
    default:
      return const SkinCare();
  }
});
