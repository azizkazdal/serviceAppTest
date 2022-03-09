import 'package:get_it/get_it.dart';
import 'package:service_request/_pageModel/home_page_model.dart';
import 'base_view_model.dart';

final getIt = GetIt.instance;

class HomePageViewModel extends BaseViewModel {
  var pageModel = HomePageModel();

  bool companiesUpdated = false;
}
