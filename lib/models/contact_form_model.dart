// ignore_for_file: public_member_api_docs, sort_constructors_first, use_build_context_synchronously
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ContactFormModel extends ChangeNotifier {
  String? clientName;
  String? clientMail;
  String? clientDescription;
  String? projectType;
  String? projectBudget;

  ContactFormModel({
    this.clientName,
    this.clientMail,
    this.clientDescription,
    this.projectType,
    this.projectBudget,
  });
  bool isLoading = false;

  Future sendMail(
      String clientName,
      String clientMail,
      String clientDescription,
      String projectType,
      String projectBudget,
      BuildContext context) async {
    isLoading = true;
    notifyListeners();
    const serviceId = 'service_dx9gnan';
    const templateId = 'template_one6hqt';
    const userId = 'zJ5ApQSA5f7OfmuyJ';

    var url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    try {
      DateTime sentDate = DateTime.now();
      var response = await http.post(url,
          headers: {'Content-Type': 'application/json'},
          body: json.encode({
            'service_id': serviceId,
            'template_id': templateId,
            'user_id': userId,
            'template_params': {
              'sent_date': sentDate.toString(),
              'client_name': clientName,
              'client_mail': clientMail,
              'project_type': projectType,
              'project_budget': projectBudget,
              'client_description': clientDescription,
            }
          }));

      if (response.statusCode == 200) {
        isLoading = false;
        notifyListeners();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.green,
            content: Text("Successfully Sent"),
          ),
        );
      }
      if (response.statusCode == 400) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.red,
            content: Text(
                "Sending Failed due to an unknown reason. Please retry again later."),
          ),
        );
      }
    } catch (error) {
      if (kDebugMode) {
        print(error.toString());
      }
    }
  }
}