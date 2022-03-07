import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:service_request/_dataModel/api_application/service_request_public_response.dart';
import 'package:service_request/_viewModel/service_request_page_view_model.dart';
import 'package:service_request/pages/_const/card_scaffold_state_keys.dart';

import '../_pageModel/_const/application_theme.dart';
import '_shared/page_component.dart';

class ServiceRequestPage extends StatefulWidget {
  final String? token;
  final ServiceRequestPublicResponse? serviceRequestPublicResponse;

  const ServiceRequestPage({Key? key, this.token, this.serviceRequestPublicResponse}) : super(key: key);

  @override
  _ServiceRequestPageState createState() => _ServiceRequestPageState();
}

class _ServiceRequestPageState extends State<ServiceRequestPage> {
  ServiceRequestPageViewModel? vm;

  @override
  Widget build(BuildContext context) {
    return Consumer<ServiceRequestPageViewModel>(builder: (context, viewModel, child) {
      vm = viewModel;
      viewModel.context = context;
      return SafeArea(
        key: CardScaffoldStateKeys.serviceRequestPageScaffoldKey,
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
                      decoration: PageComponent.pageContainerDecoration(),
                      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text(
                              'Servis Talep Bilgileri',
                              style: ApplicationTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                            Visibility(
                              visible: viewModel.pageModel!.isOpen,
                              child: const Text(
                                'Açık servis talebi var. \nBu varlığa ait yeni bir servis talebi oluşturulamaz.',
                                style: ApplicationTheme.headline2Danger,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            // firma bilgisi
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: TextFormField(
                                maxLines: 1,
                                enabled: false,
                                textAlign: TextAlign.left,
                                textAlignVertical: TextAlignVertical.bottom,
                                style: const TextStyle(color: Colors.blue, fontSize: 18),
                                decoration: ApplicationTheme.getTextFormFieldDecoration("Servis Firma Bilgisi", viewModel.pageModel?.companyName, viewModel.pageModel?.companyName),
                              ),
                            ),
                            // müşteri bilgisi
                            Visibility(
                              visible: viewModel.pageModel!.isCustomer,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 15.0),
                                child: TextFormField(
                                  maxLines: 1,
                                  enabled: false,
                                  textAlign: TextAlign.left,
                                  textAlignVertical: TextAlignVertical.bottom,
                                  style: const TextStyle(color: Colors.blue, fontSize: 18),
                                  decoration: ApplicationTheme.getTextFormFieldDecoration("Servis Talep Eden Firma", viewModel.pageModel?.accountName, viewModel.pageModel?.accountName),
                                ),
                              ),
                            ),
                            // müşteri mail bilgisi
                            Visibility(
                              visible: viewModel.pageModel!.isCustomer,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 15.0),
                                child: TextFormField(
                                  maxLines: 1,
                                  textAlign: TextAlign.left,
                                  textAlignVertical: TextAlignVertical.bottom,
                                  style: const TextStyle(color: Colors.blue, fontSize: 18),
                                  decoration: ApplicationTheme.getTextFormFieldDecoration("Mail Adresi", viewModel.pageModel?.accountMail, viewModel.pageModel?.accountMail),
                                ),
                              ),
                            ),
                            // müşteri telefon bilgisi
                            Visibility(
                              visible: viewModel.pageModel!.isCustomer,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 15.0),
                                child: TextFormField(
                                  maxLines: 1,
                                  textAlign: TextAlign.left,
                                  textAlignVertical: TextAlignVertical.bottom,
                                  style: const TextStyle(color: Colors.blue, fontSize: 18),
                                  decoration: ApplicationTheme.getTextFormFieldDecoration("Telefon", viewModel.pageModel?.accountPhone, viewModel.pageModel?.accountPhone),
                                ),
                              ),
                            ),
                            // varlık bilgisi
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: TextFormField(
                                maxLines: 1,
                                enabled: false,
                                textAlign: TextAlign.left,
                                textAlignVertical: TextAlignVertical.bottom,
                                style: const TextStyle(color: Colors.blue, fontSize: 18),
                                decoration: ApplicationTheme.getTextFormFieldDecoration("Cihaz", viewModel.pageModel?.assetName, viewModel.pageModel?.assetName),
                              ),
                            ),
                            // varlık seri no
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: TextFormField(
                                maxLines: 1,
                                enabled: false,
                                textAlign: TextAlign.left,
                                textAlignVertical: TextAlignVertical.bottom,
                                style: const TextStyle(color: Colors.blue, fontSize: 18),
                                decoration: ApplicationTheme.getTextFormFieldDecoration("Seri No", viewModel.pageModel?.assetSerial, viewModel.pageModel?.assetSerial),
                              ),
                            ),
                            // iletişim kişi
                            Visibility(
                              visible: viewModel.pageModel!.isCustomer,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 15.0),
                                child: TextFormField(
                                  maxLines: 1,
                                  controller: viewModel.pageModel?.contactPersonController,
                                  textAlign: TextAlign.left,
                                  textAlignVertical: TextAlignVertical.bottom,
                                  style: const TextStyle(color: Colors.blue, fontSize: 18),
                                  decoration: ApplicationTheme.getTextFormFieldDecoration("İletişim Kişi", viewModel.pageModel?.contactPerson, viewModel.pageModel?.contactPerson),
                                ),
                              ),
                            ),
                            // iletişim telefon
                            Visibility(
                              visible: viewModel.pageModel!.isCustomer,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 15.0),
                                child: TextFormField(
                                  maxLines: 1,
                                  controller: viewModel.pageModel?.contactPhoneController,
                                  textAlign: TextAlign.left,
                                  textAlignVertical: TextAlignVertical.bottom,
                                  style: const TextStyle(color: Colors.blue, fontSize: 18),
                                  decoration: ApplicationTheme.getTextFormFieldDecoration("İletişim Telefon", viewModel.pageModel?.contactPhone, viewModel.pageModel?.contactPhone),
                                ),
                              ),
                            ),
                            // servis talep açıklama
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: TextFormField(
                                maxLines: 5,
                                enabled: !viewModel.pageModel!.isOpen,
                                controller: viewModel.pageModel?.descriptionController,
                                textAlign: TextAlign.left,
                                textAlignVertical: TextAlignVertical.bottom,
                                style: const TextStyle(color: Colors.blue, fontSize: 18),
                                decoration: ApplicationTheme.getTextFormFieldDecoration("Açıklama", viewModel.pageModel?.description, viewModel.pageModel?.description),
                              ),
                            ),
                            // servis talep not
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: TextFormField(
                                maxLines: 2,
                                enabled: !viewModel.pageModel!.isOpen,
                                controller: viewModel.pageModel?.noteController,
                                textAlign: TextAlign.left,
                                textAlignVertical: TextAlignVertical.bottom,
                                style: const TextStyle(color: Colors.blue, fontSize: 18),
                                decoration: ApplicationTheme.getTextFormFieldDecoration("Not", viewModel.pageModel?.note, viewModel.pageModel?.note),
                              ),
                            ),
                            // kaydet button
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  viewModel.saveServiceRequest();
                                },
                                child: const Text('Kaydet', style: TextStyle(fontSize: 30)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((values) => afterViewLoaded(context, vm));
  }

  afterViewLoaded(BuildContext context, ServiceRequestPageViewModel? viewModel) {
    try {
      if (viewModel != null) {
        viewModel.setDefaults();
        viewModel.preparePage(widget.serviceRequestPublicResponse, widget.token);
      }
    } on Exception {
      rethrow;
    }
  }
}
