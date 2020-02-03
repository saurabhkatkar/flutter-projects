import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  CoinData({@required this.currency});

  final String currency;

  final url = "https://apiv2.bitcoinaverage.com/indices/global/ticker/";

  Future getBitcoinPrice() async {
    http.Response res = await http.get('${url}BTC$currency');
    if (res.statusCode == 200) {
      var data = jsonDecode(res.body)['last'];
      return data;
    } else {
      print(res);
    }
  }

  Future getETHPrice() async {
    http.Response res = await http.get('${url}ETH$currency');
    if (res.statusCode == 200) {
      var data = jsonDecode(res.body)['last'];
      return data;
    } else {
      print(res);
    }
  }

  Future getLTCPrice() async {
    http.Response res = await http.get('${url}LTC$currency');
    if (res.statusCode == 200) {
      var data = jsonDecode(res.body)['last'];
      return data;
    } else {
      print(res);
    }
  }
}
