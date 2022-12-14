import 'package:equatable/equatable.dart';

import 'dish.dart';

/// Категория(группа) блюд, например, "горячее" или "безалкогольные напитки"
/// В категорию входят блюда. Одно блюдо может входить в разные категории
/// (например, "холодный квас" может входить в "прохладительные напитки" и в "новинки"
/// Перечень категорий (в отличие от тегов, которых пока нет) меняется довольно редко.
class Category extends Equatable {
  /// название
  final String name;

  /// расширенное описание, пояснение (если нужно)
  final String desc;

  /// путь к картинке, которая будет обозначаться в перечне категорий
  /// #TODO: конечно, надо бы с backend`а получать не путь, а саму картинку. Это позволит избегать
  /// пересборки frontend`а при изменениях в меню.
  /// #TODO: картинка нужна не одна, а несколько и в разных размерах.
  final String? iconPath;

  /// блюда, входящие в категорию.
  /// Отношение между блюдом и категорией со стороны блюда на клиенте не поддерживаем, ибо вроде не надо
  /// Оно есть на сервере для обеспечения консистентности.
  final List<Dish> dishes;

  const Category(
      {required this.name,
      required this.desc,
      this.iconPath,
      this.dishes = const <Dish>[]});

  static const emptyCategory = Category(name: "", desc: "");

  @override
  List<Object?> get props {
    return List.of({name, desc, iconPath, dishes});
  }
}
