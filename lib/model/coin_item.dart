import 'dart:convert';

List<CoinItem> coinFromJson(String str) =>
    List<CoinItem>.from(json.decode(str).map((x) => CoinItem.fromJson(x)));

String coinToJson(List<CoinItem> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CoinItem {
  CoinItem({
    required this.id,
    required this.symbol,
    required this.name,
    required this.currentPrice,
    required this.priceChange24H,
    required this.priceChangePercentage24H,
  });

  String id;
  String symbol;
  String name;
  double currentPrice;
  double priceChange24H;
  double priceChangePercentage24H;

  factory CoinItem.fromJson(Map<String, dynamic> json) => CoinItem(
        id: json["id"],
        symbol: json["symbol"],
        name: json["name"],
        currentPrice: json["current_price"]?.toDouble(),
        priceChange24H: json["price_change_24h"]?.toDouble(),
        priceChangePercentage24H:
            json["price_change_percentage_24h"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "symbol": symbol,
        "name": name,
        "current_price": currentPrice,
        "price_change_24h": priceChange24H,
        "price_change_percentage_24h": priceChangePercentage24H,
      };
}
