import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:service_request/_dataModel/api_application/service_request_public_response.dart';
import 'package:service_request/_pageModel/service_request_page_model.dart';
import 'package:service_request/_viewModel/base_view_model.dart';

import '../_services/api/application/api_application_service_request_service.dart';

final getIt = GetIt.instance;

class ServiceRequestPageViewModel extends BaseViewModel {
  String? requestToken = "";
  ServiceRequestPageModel? pageModel = ServiceRequestPageModel();
  ServiceRequestPublicResponse? publicResponse;
  ScrollController? scrollController;
  var apiServiceRequestService = getIt.get<ApiApplicationServiceRequestService>();

  setDefaults() {
    try {
      pageModel = ServiceRequestPageModel();
      notifyListeners();
    } on Exception {
      rethrow;
    }
  }

  preparePage(ServiceRequestPublicResponse? response, String? token) {
    try {
      requestToken = token;
      publicResponse = response;
      if (response != null) {
        pageModel?.serviceRequestUserId = response.serviceRequestUserId;
        pageModel?.companyId = response.companyId;
        pageModel?.companyName = response.companyName;
        pageModel?.branchName = response.branchName;
        pageModel?.isCustomer = response.isCustomer;
        pageModel?.isOpen = response.isOpen;
        pageModel?.assetId = response.assetId;
        pageModel?.assetName = response.assetName;
        pageModel?.assetSerial = response.assetSerial;
        pageModel?.tagId = response.tagId;
        pageModel?.tagCode = response.tagCode;
        pageModel?.accountId = response.accountId;
        pageModel?.accountName = response.accountName;

        pageModel?.accountMail = response.accountMail;
        setControllerValue(pageModel?.accountMailController, pageModel?.accountMail);

        pageModel?.accountPhone = response.accountPhone;
        setControllerValue(pageModel?.accountPhoneController, pageModel?.accountPhone);

        pageModel?.serviceRequestId = response.serviceRequestId;
        pageModel?.referenceNo = response.referenceNo;
        pageModel?.requestDate = response.requestDate;
        pageModel?.requestTime = response.requestTime;

        pageModel?.contactPerson = response.contactPerson;
        setControllerValue(pageModel?.contactPersonController, pageModel?.contactPerson);

        pageModel?.contactPhone = response.contactPhone;
        setControllerValue(pageModel?.contactPhoneController, pageModel?.contactPhone);

        pageModel?.description = response.description;
        setControllerValue(pageModel?.descriptionController, pageModel?.description);

        pageModel?.note = response.note;
        setControllerValue(pageModel?.noteController, pageModel?.note);

        pageModel?.latitude = response.latitude;
        pageModel?.longitude = response.longitude;

        notifyListeners();
      }
    } on Exception {
      rethrow;
    }
  }

  setResponseModel() {
    try {
      publicResponse?.serviceRequestUserId = pageModel?.serviceRequestUserId;
      publicResponse?.contactPerson = pageModel?.contactPersonController.text;
      publicResponse?.contactPhone = pageModel?.contactPhoneController.text;
      publicResponse?.description = pageModel?.descriptionController.text;
      publicResponse?.note = pageModel?.noteController.text;
      publicResponse?.latitude = pageModel?.latitude;
      publicResponse?.longitude = pageModel?.longitude;
    } on Exception {
      rethrow;
    }
  }

  saveServiceRequest() async {
    try {
      if (pageModel?.isOpen == false) {
        setResponseModel();
        var apiResult = await apiServiceRequestService.saveServiceRequest(requestToken!, publicResponse!);
        if (apiResult.isSuccess == true && apiResult.result == true) {
          showAlert("BİLGİ", "Servis talebi kaydedildi.", true);
        } else {
          showAlert("BİLGİ", "Servis talebi kaydı sırasında hata. Firma yetkilisi ile görüşünüz..", true);
        }
      } else {
        showAlert("BİLGİ", "Açık servis talebi değiştirelemez veya aynı varlığa yeni servis talebi oluşturulamaz", true);
      }
    } on Exception {
      rethrow;
    }
  }
}
