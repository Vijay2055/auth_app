class StockUiModel {
  final String symbol;
  final String company;
  final String sector;
  final String logo;
  final double price;
  final double target;
  final double change;

  const StockUiModel({
    required this.symbol,
    required this.company,
    required this.sector,
    required this.logo,
    required this.price,
    required this.target,
    required this.change,
  });
}



const List<StockUiModel> dummyStocks = [
  StockUiModel(
    symbol: "RELIANCE",
    company: "Reliance Industries Ltd.",
    sector: "Energy",
    logo: "assets/logos/reliance.png",
    price: 2800,
    target: 2500,
    change: 12.0,
  ),

  StockUiModel(
    symbol: "TCS",
    company: "Tata Consultancy Services",
    sector: "IT",
    logo: "assets/logos/tcs.png",
    price: 3900,
    target: 3500,
    change: 11.43,
  ),

  StockUiModel(
    symbol: "HDFCBANK",
    company: "HDFC Bank Ltd.",
    sector: "Banking",
    logo: "assets/logos/hdfc.png",
    price: 1750,
    target: 1600,
    change: 9.38,
  ),

  StockUiModel(
    symbol: "INFY",
    company: "Infosys Limited",
    sector: "IT",
    logo: "assets/logos/infosys.png",
    price: 1550,
    target: 1400,
    change: 10.71,
  ),

  StockUiModel(
    symbol: "ICICIBANK",
    company: "ICICI Bank Limited",
    sector: "Banking",
    logo: "assets/logos/icici.png",
    price: 1050,
    target: 950,
    change: 10.53,
  ),

  StockUiModel(
    symbol: "SBIN",
    company: "State Bank of India",
    sector: "Banking",
    logo: "assets/logos/sbi.png",
    price: 780,
    target: 700,
    change: -3.45,
  ),
];