import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:service_request/_pageModel/_const/application_theme.dart';
import 'package:service_request/_viewModel/home_page_view_model.dart';
import 'package:service_request/pages/_shared/page_component.dart';

import '_const/card_scaffold_state_keys.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomePageViewModel? vm;

  @override
  Widget build(BuildContext context) {
    return Consumer<HomePageViewModel>(builder: (context, viewModel, child) {
      vm = viewModel;
      viewModel.context = context;
      viewModel.getSizes();
      return SafeArea(
        key: CardScaffoldStateKeys.homePagePageScaffoldKey,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Flex(
              direction: Axis.vertical,
              children: [
                PageComponent.pageHeader(viewModel.getHeightByPercent(20)),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                      height: viewModel.getHeightByPercent(80),
                      decoration: PageComponent.pageContainerDecoration(),
                      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text(
                              "Cihaz Seçimi",
                              style: ApplicationTheme.headline1,
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: TextFormField(
                                maxLines: 1,
                                controller: viewModel.pageModel.codeController,
                                textAlign: TextAlign.center,
                                textAlignVertical: TextAlignVertical.center,
                                style: const TextStyle(color: Colors.blue, fontSize: 22),
                                decoration: ApplicationTheme.getTextFormFieldDecoration(
                                  null,
                                  viewModel.pageModel.tagCode,
                                  null,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Material(
                                    color: ApplicationTheme.whiteColor,
                                    child: InkWell(
                                      onTap: () {
                                      },
                                      child: const Icon(Icons.qr_code, size: 90, color: ApplicationTheme.primaryColor),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                },
                                child: const Text('BUL', style: TextStyle(fontSize: 30)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ), // This trailing comma makes auto-formatting nicer for build methods.
        ),
      );
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((values) => afterViewLoaded(context, vm));
  }

  afterViewLoaded(BuildContext context, HomePageViewModel? viewModel) {
    try {
    } on Exception {
      rethrow;
    }
  }
}

// firma kodu alanı
// Padding(
//   padding: const EdgeInsets.only(top: 25.0),
//   child: TextFormField(
//     enabled: false,
//     maxLines: 1,
//     controller: viewModel.pageModel.companyController,
//     textAlign: TextAlign.left,
//     textAlignVertical: TextAlignVertical.center,
//     decoration: ApplicationTheme.getTextFormFieldDecoration(null, "EQLEM DEMO A.Ş.", null),
//   ),
// ),
// tag-qr kod alanı
