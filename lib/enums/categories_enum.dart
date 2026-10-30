import 'package:flutter_application_1/gen/assets.gen.dart';

enum CategoriesEnum {
  General,
  Business,
  Sports,
  Health,
  Sceince,

  technologly,
  Entertaine;

  String get getImage {
    switch (this) {
      case CategoriesEnum.General:
        return Assets.images.general.path;
      case CategoriesEnum.Business:
        return Assets.images.business.path;
      case CategoriesEnum.Entertaine:
        return Assets.images.entertaine.path;
      case CategoriesEnum.Health:
        return Assets.images.health.path;
      case CategoriesEnum.Sceince:
        return Assets.images.sceince.path;
      case CategoriesEnum.Sports:
        return Assets.images.sport.path;
      case CategoriesEnum.technologly:
        return Assets.images.tech.path;
    }
  }
}
