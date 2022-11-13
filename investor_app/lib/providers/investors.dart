import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter/foundation.dart';
import '../models/investor.dart';

class Investors with ChangeNotifier {
  Investor? _details = Investor(name: 'Test Name', description: 'Test Description', industry: 'Test Industry');

  Investor get founderDetails => _details!;

  Future<bool> fetchAndSetFounders() async {
    try {
      var url = Uri.parse('');
      var response = await http.get(url);
      var status = response.statusCode;
      if (status == 200) {
        final responseData = json.decode(response.body) as Map<String, dynamic>;
        _details = Investor.fromJson(responseData);
        notifyListeners();
        return true;
      } else {
        print('FETCH FOUNDERS FAILED \n $status');
      }
    } catch (error) {
      print('EXCEPTION IN FETCH INVESTOR \n $error');
    }
    notifyListeners();
    return false;
  }
}
