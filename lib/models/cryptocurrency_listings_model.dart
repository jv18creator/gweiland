class CryptocurrencyListingsModel {
  final List<Datum> data;
  final Status status;

  CryptocurrencyListingsModel({required this.data, required this.status});

  CryptocurrencyListingsModel copyWith({
    List<Datum>? data,
    Status? status,
  }) {
    return CryptocurrencyListingsModel(
      data: data ?? this.data,
      status: status ?? this.status,
    );
  }

  factory CryptocurrencyListingsModel.fromJson(Map<String, dynamic> source) {
    return CryptocurrencyListingsModel(
      data: (source['data'] as List).map((json) {
        return Datum.fromJson(json);
      }).toList(),
      status: Status.fromJson(source['status']),
    );
  }
}

class Datum {
  dynamic id;
  String? name;
  String? symbol;
  String? slug;
  int? cmcRank;
  int? numMarketPairs;
  int? circulatingSupply;
  int? totalSupply;
  int? maxSupply;
  bool? infiniteSupply;
  String? lastUpdated;
  String? dateAdded;
  List<String>? tags;
  dynamic platform;
  dynamic selfReportedCirculatingSupply;
  dynamic selfReportedMarketCap;
  Quote? quote;

  Datum({
    this.id,
    this.name,
    this.symbol,
    this.slug,
    this.cmcRank,
    this.numMarketPairs,
    this.circulatingSupply,
    this.totalSupply,
    this.maxSupply,
    this.infiniteSupply,
    this.lastUpdated,
    this.dateAdded,
    this.tags,
    this.platform,
    this.selfReportedCirculatingSupply,
    this.selfReportedMarketCap,
    this.quote,
  });

  Datum copyWith({
    dynamic id,
    String? name,
    String? symbol,
    String? slug,
    int? cmcRank,
    int? numMarketPairs,
    int? circulatingSupply,
    int? totalSupply,
    int? maxSupply,
    bool? infiniteSupply,
    String? lastUpdated,
    String? dateAdded,
    List<String>? tags,
    dynamic platform,
    dynamic selfReportedCirculatingSupply,
    dynamic selfReportedMarketCap,
    Quote? quote,
  }) =>
      Datum(
        id: id ?? this.id,
        name: name ?? this.name,
        symbol: symbol ?? this.symbol,
        slug: slug ?? this.slug,
        cmcRank: cmcRank ?? this.cmcRank,
        numMarketPairs: numMarketPairs ?? this.numMarketPairs,
        circulatingSupply: circulatingSupply ?? this.circulatingSupply,
        totalSupply: totalSupply ?? this.totalSupply,
        maxSupply: maxSupply ?? this.maxSupply,
        infiniteSupply: infiniteSupply ?? this.infiniteSupply,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        dateAdded: dateAdded ?? this.dateAdded,
        tags: tags ?? this.tags,
        platform: platform ?? this.platform,
        selfReportedCirculatingSupply:
            selfReportedCirculatingSupply ?? this.selfReportedCirculatingSupply,
        selfReportedMarketCap:
            selfReportedMarketCap ?? this.selfReportedMarketCap,
        quote: quote ?? this.quote,
      );

  factory Datum.fromJson(Map<String, dynamic> json) {
    return Datum(
      // id: json['id'],
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
      slug: json['slug'] as String?,
      cmcRank: json['cmcRank'] as int?,
      numMarketPairs: json['numMarketPairs'] as int?,
      circulatingSupply: json['circulatingSupply'] as int?,
      totalSupply: json['totalSupply'] as int?,
      maxSupply: json['maxSupply'] as int?,
      infiniteSupply: json['infiniteSupply'] as bool?,
      lastUpdated: json['lastUpdated'] as String?,
      dateAdded: json['dateAdded'] as String?,
      // tags: (json['tags'] as List<dynamic>).cast<String>(),
      platform: json['platform'],
      selfReportedCirculatingSupply: json['selfReportedCirculatingSupply'],
      selfReportedMarketCap: json['selfReportedMarketCap'],
      quote: Quote.fromJson(json['quote']),
    );
  }
}

class Quote {
  Usd? usd;
  Btc? btc;
  Eth? eth;

  Quote({
    this.usd,
    this.btc,
    this.eth,
  });

  Quote copyWith({
    Usd? usd,
    Btc? btc,
    Eth? eth,
  }) =>
      Quote(
        usd: usd ?? this.usd,
        btc: btc ?? this.btc,
        eth: eth ?? this.eth,
      );

  factory Quote.fromJson(Map<String, dynamic> json) {
    return Quote(
      usd: Usd.fromJson(json['USD']),
      btc: json['btc'] != null ? Btc.fromJson(json['btc']) : null,
      eth: json['eth'] != null ? Eth.fromJson(json['eth']) : null,
    );
  }
}

class Btc {
  int? price;
  int? volume24H;
  int? volumeChange24H;
  int? percentChange1H;
  int? percentChange24H;
  int? percentChange7D;
  int? marketCap;
  int? marketCapDominance;
  double? fullyDilutedMarketCap;
  String? lastUpdated;

  Btc({
    this.price,
    this.volume24H,
    this.volumeChange24H,
    this.percentChange1H,
    this.percentChange24H,
    this.percentChange7D,
    this.marketCap,
    this.marketCapDominance,
    this.fullyDilutedMarketCap,
    this.lastUpdated,
  });

  Btc copyWith({
    int? price,
    int? volume24H,
    int? volumeChange24H,
    int? percentChange1H,
    int? percentChange24H,
    int? percentChange7D,
    int? marketCap,
    int? marketCapDominance,
    double? fullyDilutedMarketCap,
    String? lastUpdated,
  }) =>
      Btc(
        price: price ?? this.price,
        volume24H: volume24H ?? this.volume24H,
        volumeChange24H: volumeChange24H ?? this.volumeChange24H,
        percentChange1H: percentChange1H ?? this.percentChange1H,
        percentChange24H: percentChange24H ?? this.percentChange24H,
        percentChange7D: percentChange7D ?? this.percentChange7D,
        marketCap: marketCap ?? this.marketCap,
        marketCapDominance: marketCapDominance ?? this.marketCapDominance,
        fullyDilutedMarketCap:
            fullyDilutedMarketCap ?? this.fullyDilutedMarketCap,
        lastUpdated: lastUpdated ?? this.lastUpdated,
      );

  factory Btc.fromJson(Map<String, dynamic> json) {
    return Btc(
      price: json['price'] as int?,
      volume24H: json['volume24H'] as int?,
      volumeChange24H: json['volumeChange24H'] as int?,
      percentChange1H: json['percentChange1H'] as int?,
      percentChange24H: json['percentChange24H'] as int?,
      percentChange7D: json['percentChange7D'] as int?,
      marketCap: json['marketCap'] as int?,
      marketCapDominance: json['marketCapDominance'] as int?,
      fullyDilutedMarketCap: json['fullyDilutedMarketCap'] as double,
      lastUpdated: json['lastUpdated'] as String?,
    );
  }
}

class Eth {
  int? price;
  int? volume24H;
  double? volumeChange24H;
  int? percentChange1H;
  int? percentChange24H;
  int? percentChange7D;
  int? marketCap;
  int? marketCapDominance;
  double? fullyDilutedMarketCap;
  String? lastUpdated;

  Eth({
    this.price,
    this.volume24H,
    this.volumeChange24H,
    this.percentChange1H,
    this.percentChange24H,
    this.percentChange7D,
    this.marketCap,
    this.marketCapDominance,
    this.fullyDilutedMarketCap,
    this.lastUpdated,
  });

  Eth copyWith({
    int? price,
    int? volume24H,
    double? volumeChange24H,
    int? percentChange1H,
    int? percentChange24H,
    int? percentChange7D,
    int? marketCap,
    int? marketCapDominance,
    double? fullyDilutedMarketCap,
    String? lastUpdated,
  }) =>
      Eth(
        price: price ?? this.price,
        volume24H: volume24H ?? this.volume24H,
        volumeChange24H: volumeChange24H ?? this.volumeChange24H,
        percentChange1H: percentChange1H ?? this.percentChange1H,
        percentChange24H: percentChange24H ?? this.percentChange24H,
        percentChange7D: percentChange7D ?? this.percentChange7D,
        marketCap: marketCap ?? this.marketCap,
        marketCapDominance: marketCapDominance ?? this.marketCapDominance,
        fullyDilutedMarketCap:
            fullyDilutedMarketCap ?? this.fullyDilutedMarketCap,
        lastUpdated: lastUpdated ?? this.lastUpdated,
      );
  factory Eth.fromJson(Map<String, dynamic> json) {
    return Eth(
      price: json['price'] as int?,
      volume24H: json['volume24H'] as int?,
      volumeChange24H: json['volumeChange24H'] as double,
      percentChange1H: json['percentChange1H'] as int?,
      percentChange24H: json['percentChange24H'] as int?,
      percentChange7D: json['percentChange7D'] as int?,
      marketCap: json['marketCap'] as int?,
      marketCapDominance: json['marketCapDominance'] as int?,
      fullyDilutedMarketCap: json['fullyDilutedMarketCap'] as double,
      lastUpdated: json['lastUpdated'] as String?,
    );
  }
}

class Usd {
  double? price;
  int? volume24H;
  double? volumeChange24H;
  double? percentChange1H;
  double? percentChange24H;
  double? percentChange7D;
  double? marketCap;
  int? marketCapDominance;
  double? fullyDilutedMarketCap;
  String? lastUpdated;

  Usd({
    this.price,
    this.volume24H,
    this.volumeChange24H,
    this.percentChange1H,
    this.percentChange24H,
    this.percentChange7D,
    this.marketCap,
    this.marketCapDominance,
    this.fullyDilutedMarketCap,
    this.lastUpdated,
  });

  Usd copyWith({
    double? price,
    int? volume24H,
    double? volumeChange24H,
    double? percentChange1H,
    double? percentChange24H,
    double? percentChange7D,
    double? marketCap,
    int? marketCapDominance,
    double? fullyDilutedMarketCap,
    String? lastUpdated,
  }) =>
      Usd(
        price: price ?? this.price,
        volume24H: volume24H ?? this.volume24H,
        volumeChange24H: volumeChange24H ?? this.volumeChange24H,
        percentChange1H: percentChange1H ?? this.percentChange1H,
        percentChange24H: percentChange24H ?? this.percentChange24H,
        percentChange7D: percentChange7D ?? this.percentChange7D,
        marketCap: marketCap ?? this.marketCap,
        marketCapDominance: marketCapDominance ?? this.marketCapDominance,
        fullyDilutedMarketCap:
            fullyDilutedMarketCap ?? this.fullyDilutedMarketCap,
        lastUpdated: lastUpdated ?? this.lastUpdated,
      );

  factory Usd.fromJson(Map<String, dynamic> json) {
    return Usd(
      price: json['price'] as double?,
      volume24H: json['volume24H'] as int?,
      volumeChange24H: json['volumeChange24H'] as double?,
      percentChange1H: json['percentChange1H'] as double?,
      percentChange24H: json['percentChange24H'] as double?,
      percentChange7D: json['percentChange7D'] as double?,
      marketCap: json['marketCap'] as double?,
      marketCapDominance: json['marketCapDominance'] as int?,
      fullyDilutedMarketCap: json['fullyDilutedMarketCap'] as double?,
      lastUpdated: json['lastUpdated'] as String?,
    );
  }
}

class Status {
  String? timestamp;
  int? errorCode;
  String? errorMessage;
  int? elapsed;
  int? creditCount;

  Status({
    this.timestamp,
    this.errorCode,
    this.errorMessage,
    this.elapsed,
    this.creditCount,
  });

  Status copyWith({
    String? timestamp,
    int? errorCode,
    String? errorMessage,
    int? elapsed,
    int? creditCount,
  }) =>
      Status(
        timestamp: timestamp ?? this.timestamp,
        errorCode: errorCode ?? this.errorCode,
        errorMessage: errorMessage ?? this.errorMessage,
        elapsed: elapsed ?? this.elapsed,
        creditCount: creditCount ?? this.creditCount,
      );

  factory Status.fromJson(Map<String, dynamic> json) {
    return Status(
      timestamp: json['timestamp'] as String?,
      errorCode: json['errorCode'] as int?,
      errorMessage: json['errorMessage'] as String?,
      elapsed: json['elapsed'] as int?,
      creditCount: json['creditCount'] as int?,
    );
  }
}
