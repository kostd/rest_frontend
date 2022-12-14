import 'dart:core';

import 'package:equatable/equatable.dart';

/// блюдо, или, иначе, элемент меню ресторана, menuItem
class Dish extends Equatable {
  /// наименование
  final String name;

  /// путь к картинке
  final String? imagePath;

  /// цена
  final int cost;

  /// описание состава
  String? consist;

  /// масса. Сделана строкой, чтобы сразу рядом прописать единицу измерения.
  /// Посмотрим, как быстро понадобятся полноценные единицы измерения.
  String? weight;

  /// расширенное описание блюда.
  String? desc;

  Dish(
      {required this.name,
      required this.cost,
      this.imagePath,
      this.consist,
      this.weight,
      this.desc});

  static final Dish emptyDish = Dish(name: "", cost: 0);

  @override
  List<Object?> get props {
    return List.of({name, imagePath, cost, consist, weight, desc});
  }
}
