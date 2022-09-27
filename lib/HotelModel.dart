class HotelModel {
  HotelModel({
      this.result, 
      this.data,});

  HotelModel.fromJson(dynamic json) {
    result = json['result'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? result;
  Data? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['result'] = result;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

}

class Data {
  Data({
      this.body, 
      this.common,});

  Data.fromJson(dynamic json) {
    body = json['body'] != null ? Body.fromJson(json['body']) : null;
    common = json['common'] != null ? Common.fromJson(json['common']) : null;
  }
  Body? body;
  Common? common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (body != null) {
      map['body'] = body?.toJson();
    }
    if (common != null) {
      map['common'] = common?.toJson();
    }
    return map;
  }

}

class Common {
  Common({
      this.pointOfSale, 
      this.tracking,});

  Common.fromJson(dynamic json) {
    pointOfSale = json['pointOfSale'] != null ? PointOfSale.fromJson(json['pointOfSale']) : null;
    tracking = json['tracking'] != null ? Tracking.fromJson(json['tracking']) : null;
  }
  PointOfSale? pointOfSale;
  Tracking? tracking;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (pointOfSale != null) {
      map['pointOfSale'] = pointOfSale?.toJson();
    }
    if (tracking != null) {
      map['tracking'] = tracking?.toJson();
    }
    return map;
  }

}

class Tracking {
  Tracking({
      this.omniture,});

  Tracking.fromJson(dynamic json) {
    omniture = json['omniture'] != null ? Omniture.fromJson(json['omniture']) : null;
  }
  Omniture? omniture;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (omniture != null) {
      map['omniture'] = omniture?.toJson();
    }
    return map;
  }

}

class Omniture {
  Omniture({
      this.sprop33, 
      this.sprop32, 
      this.sprop74, 
      this.sproducts, 
      this.seVar16, 
      this.seVar40, 
      this.seVar41, 
      this.seVar63, 
      this.seVar42, 
      this.seVar4, 
      this.seVar43, 
      this.seVar3, 
      this.seVar22, 
      this.seVar2, 
      this.seVar23, 
      this.seVar24, 
      this.seVar7, 
      this.sserver, 
      this.seVar6, 
      this.sprop29, 
      this.seVar5, 
      this.sprop27, 
      this.seVar9, 
      this.sprop21, 
      this.sprop20, 
      this.seVar69, 
      this.scurrencyCode, 
      this.seVar26, 
      this.seVar29, 
      this.sprop9, 
      this.seVar95, 
      this.sprop7, 
      this.seVar31, 
      this.seVar32, 
      this.seVar33, 
      this.seVar34, 
      this.seVar13, 
      this.sprop19, 
      this.sevents, 
      this.sprop18, 
      this.sprop5, 
      this.sprop15, 
      this.sprop3, 
      this.sprop14, 
      this.sprop36, 
      this.seVar93, 
      this.sprop2,});

  Omniture.fromJson(dynamic json) {
    sprop33 = json['s.prop33'];
    sprop32 = json['s.prop32'];
    sprop74 = json['s.prop74'];
    sproducts = json['s.products'];
    seVar16 = json['s.eVar16'];
    seVar40 = json['s.eVar40'];
    seVar41 = json['s.eVar41'];
    seVar63 = json['s.eVar63'];
    seVar42 = json['s.eVar42'];
    seVar4 = json['s.eVar4'];
    seVar43 = json['s.eVar43'];
    seVar3 = json['s.eVar3'];
    seVar22 = json['s.eVar22'];
    seVar2 = json['s.eVar2'];
    seVar23 = json['s.eVar23'];
    seVar24 = json['s.eVar24'];
    seVar7 = json['s.eVar7'];
    sserver = json['s.server'];
    seVar6 = json['s.eVar6'];
    sprop29 = json['s.prop29'];
    seVar5 = json['s.eVar5'];
    sprop27 = json['s.prop27'];
    seVar9 = json['s.eVar9'];
    sprop21 = json['s.prop21'];
    sprop20 = json['s.prop20'];
    seVar69 = json['s.eVar69'];
    scurrencyCode = json['s.currencyCode'];
    seVar26 = json['s.eVar26'];
    seVar29 = json['s.eVar29'];
    sprop9 = json['s.prop9'];
    seVar95 = json['s.eVar95'];
    sprop7 = json['s.prop7'];
    seVar31 = json['s.eVar31'];
    seVar32 = json['s.eVar32'];
    seVar33 = json['s.eVar33'];
    seVar34 = json['s.eVar34'];
    seVar13 = json['s.eVar13'];
    sprop19 = json['s.prop19'];
    sevents = json['s.events'];
    sprop18 = json['s.prop18'];
    sprop5 = json['s.prop5'];
    sprop15 = json['s.prop15'];
    sprop3 = json['s.prop3'];
    sprop14 = json['s.prop14'];
    sprop36 = json['s.prop36'];
    seVar93 = json['s.eVar93'];
    sprop2 = json['s.prop2'];
  }
  String? sprop33;
  String? sprop32;
  String? sprop74;
  String? sproducts;
  String? seVar16;
  String? seVar40;
  String? seVar41;
  String? seVar63;
  String? seVar42;
  String? seVar4;
  String? seVar43;
  String? seVar3;
  String? seVar22;
  String? seVar2;
  String? seVar23;
  String? seVar24;
  String? seVar7;
  String? sserver;
  String? seVar6;
  String? sprop29;
  String? seVar5;
  String? sprop27;
  String? seVar9;
  String? sprop21;
  String? sprop20;
  String? seVar69;
  String? scurrencyCode;
  String? seVar26;
  String? seVar29;
  String? sprop9;
  String? seVar95;
  String? sprop7;
  String? seVar31;
  String? seVar32;
  String? seVar33;
  String? seVar34;
  String? seVar13;
  String? sprop19;
  String? sevents;
  String? sprop18;
  String? sprop5;
  String? sprop15;
  String? sprop3;
  String? sprop14;
  String? sprop36;
  String? seVar93;
  String? sprop2;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['s.prop33'] = sprop33;
    map['s.prop32'] = sprop32;
    map['s.prop74'] = sprop74;
    map['s.products'] = sproducts;
    map['s.eVar16'] = seVar16;
    map['s.eVar40'] = seVar40;
    map['s.eVar41'] = seVar41;
    map['s.eVar63'] = seVar63;
    map['s.eVar42'] = seVar42;
    map['s.eVar4'] = seVar4;
    map['s.eVar43'] = seVar43;
    map['s.eVar3'] = seVar3;
    map['s.eVar22'] = seVar22;
    map['s.eVar2'] = seVar2;
    map['s.eVar23'] = seVar23;
    map['s.eVar24'] = seVar24;
    map['s.eVar7'] = seVar7;
    map['s.server'] = sserver;
    map['s.eVar6'] = seVar6;
    map['s.prop29'] = sprop29;
    map['s.eVar5'] = seVar5;
    map['s.prop27'] = sprop27;
    map['s.eVar9'] = seVar9;
    map['s.prop21'] = sprop21;
    map['s.prop20'] = sprop20;
    map['s.eVar69'] = seVar69;
    map['s.currencyCode'] = scurrencyCode;
    map['s.eVar26'] = seVar26;
    map['s.eVar29'] = seVar29;
    map['s.prop9'] = sprop9;
    map['s.eVar95'] = seVar95;
    map['s.prop7'] = sprop7;
    map['s.eVar31'] = seVar31;
    map['s.eVar32'] = seVar32;
    map['s.eVar33'] = seVar33;
    map['s.eVar34'] = seVar34;
    map['s.eVar13'] = seVar13;
    map['s.prop19'] = sprop19;
    map['s.events'] = sevents;
    map['s.prop18'] = sprop18;
    map['s.prop5'] = sprop5;
    map['s.prop15'] = sprop15;
    map['s.prop3'] = sprop3;
    map['s.prop14'] = sprop14;
    map['s.prop36'] = sprop36;
    map['s.eVar93'] = seVar93;
    map['s.prop2'] = sprop2;
    return map;
  }

}

class PointOfSale {
  PointOfSale({
      this.numberSeparators, 
      this.brandName,});

  PointOfSale.fromJson(dynamic json) {
    numberSeparators = json['numberSeparators'];
    brandName = json['brandName'];
  }
  String? numberSeparators;
  String? brandName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['numberSeparators'] = numberSeparators;
    map['brandName'] = brandName;
    return map;
  }

}

class Body {
  Body({
      this.header, 
      this.query, 
      this.searchResults, 
      this.sortResults, 
      this.filters, 
      this.pointOfSale, 
      this.miscellaneous, 
      this.pageInfo,});

  Body.fromJson(dynamic json) {
    header = json['header'];
    query = json['query'] != null ? Query.fromJson(json['query']) : null;
    searchResults = json['searchResults'] != null ? SearchResults.fromJson(json['searchResults']) : null;
    sortResults = json['sortResults'] != null ? SortResults.fromJson(json['sortResults']) : null;
    filters = json['filters'] != null ? Filters.fromJson(json['filters']) : null;
    pointOfSale = json['pointOfSale'] != null ? PointOfSale.fromJson(json['pointOfSale']) : null;
    miscellaneous = json['miscellaneous'] != null ? Miscellaneous.fromJson(json['miscellaneous']) : null;
    pageInfo = json['pageInfo'] != null ? PageInfo.fromJson(json['pageInfo']) : null;
  }
  String? header;
  Query? query;
  SearchResults? searchResults;
  SortResults? sortResults;
  Filters? filters;
  PointOfSale? pointOfSale;
  Miscellaneous? miscellaneous;
  PageInfo? pageInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['header'] = header;
    if (query != null) {
      map['query'] = query?.toJson();
    }
    if (searchResults != null) {
      map['searchResults'] = searchResults?.toJson();
    }
    if (sortResults != null) {
      map['sortResults'] = sortResults?.toJson();
    }
    if (filters != null) {
      map['filters'] = filters?.toJson();
    }
    if (pointOfSale != null) {
      map['pointOfSale'] = pointOfSale?.toJson();
    }
    if (miscellaneous != null) {
      map['miscellaneous'] = miscellaneous?.toJson();
    }
    if (pageInfo != null) {
      map['pageInfo'] = pageInfo?.toJson();
    }
    return map;
  }

}

class PageInfo {
  PageInfo({
      this.pageType,});

  PageInfo.fromJson(dynamic json) {
    pageType = json['pageType'];
  }
  String? pageType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['pageType'] = pageType;
    return map;
  }

}

class Miscellaneous {
  Miscellaneous({
      this.pageViewBeaconUrl, 
      this.showLegalInfoForStrikethroughPrices, 
      this.legalInfoForStrikethroughPrices, 
      this.compressionMessaging,});

  Miscellaneous.fromJson(dynamic json) {
    pageViewBeaconUrl = json['pageViewBeaconUrl'];
    showLegalInfoForStrikethroughPrices = json['showLegalInfoForStrikethroughPrices'];
    legalInfoForStrikethroughPrices = json['legalInfoForStrikethroughPrices'];
    compressionMessaging = json['compressionMessaging'] != null ? CompressionMessaging.fromJson(json['compressionMessaging']) : null;
  }
  String? pageViewBeaconUrl;
  bool? showLegalInfoForStrikethroughPrices;
  String? legalInfoForStrikethroughPrices;
  CompressionMessaging? compressionMessaging;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['pageViewBeaconUrl'] = pageViewBeaconUrl;
    map['showLegalInfoForStrikethroughPrices'] = showLegalInfoForStrikethroughPrices;
    map['legalInfoForStrikethroughPrices'] = legalInfoForStrikethroughPrices;
    if (compressionMessaging != null) {
      map['compressionMessaging'] = compressionMessaging?.toJson();
    }
    return map;
  }

}

class CompressionMessaging {
  CompressionMessaging({
      this.percentage, 
      this.popularityMessage,});

  CompressionMessaging.fromJson(dynamic json) {
    percentage = json['percentage'];
    popularityMessage = json['popularityMessage'];
  }
  int? percentage;
  String? popularityMessage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['percentage'] = percentage;
    map['popularityMessage'] = popularityMessage;
    return map;
  }

}

class PointOfSale {
  PointOfSale({
      this.currency,});

  PointOfSale.fromJson(dynamic json) {
    currency = json['currency'] != null ? Currency.fromJson(json['currency']) : null;
  }
  Currency? currency;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (currency != null) {
      map['currency'] = currency?.toJson();
    }
    return map;
  }

}

class Currency {
  Currency({
      this.code, 
      this.symbol, 
      this.separators, 
      this.format,});

  Currency.fromJson(dynamic json) {
    code = json['code'];
    symbol = json['symbol'];
    separators = json['separators'];
    format = json['format'];
  }
  String? code;
  String? symbol;
  String? separators;
  String? format;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['symbol'] = symbol;
    map['separators'] = separators;
    map['format'] = format;
    return map;
  }

}

class Filters {
  Filters({
      this.applied, 
      this.name, 
      this.starRating, 
      this.guestRating, 
      this.landmarks, 
      this.neighbourhood, 
      this.accommodationType, 
      this.facilities, 
      this.accessibility, 
      this.themesAndTypes, 
      this.price, 
      this.paymentPreference, 
      this.welcomeRewards,});

  Filters.fromJson(dynamic json) {
    applied = json['applied'];
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    starRating = json['starRating'] != null ? StarRating.fromJson(json['starRating']) : null;
    guestRating = json['guestRating'] != null ? GuestRating.fromJson(json['guestRating']) : null;
    landmarks = json['landmarks'] != null ? Landmarks.fromJson(json['landmarks']) : null;
    neighbourhood = json['neighbourhood'] != null ? Neighbourhood.fromJson(json['neighbourhood']) : null;
    accommodationType = json['accommodationType'] != null ? AccommodationType.fromJson(json['accommodationType']) : null;
    facilities = json['facilities'] != null ? Facilities.fromJson(json['facilities']) : null;
    accessibility = json['accessibility'] != null ? Accessibility.fromJson(json['accessibility']) : null;
    themesAndTypes = json['themesAndTypes'] != null ? ThemesAndTypes.fromJson(json['themesAndTypes']) : null;
    price = json['price'] != null ? Price.fromJson(json['price']) : null;
    paymentPreference = json['paymentPreference'] != null ? PaymentPreference.fromJson(json['paymentPreference']) : null;
    welcomeRewards = json['welcomeRewards'] != null ? WelcomeRewards.fromJson(json['welcomeRewards']) : null;
  }
  bool? applied;
  Name? name;
  StarRating? starRating;
  GuestRating? guestRating;
  Landmarks? landmarks;
  Neighbourhood? neighbourhood;
  AccommodationType? accommodationType;
  Facilities? facilities;
  Accessibility? accessibility;
  ThemesAndTypes? themesAndTypes;
  Price? price;
  PaymentPreference? paymentPreference;
  WelcomeRewards? welcomeRewards;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['applied'] = applied;
    if (name != null) {
      map['name'] = name?.toJson();
    }
    if (starRating != null) {
      map['starRating'] = starRating?.toJson();
    }
    if (guestRating != null) {
      map['guestRating'] = guestRating?.toJson();
    }
    if (landmarks != null) {
      map['landmarks'] = landmarks?.toJson();
    }
    if (neighbourhood != null) {
      map['neighbourhood'] = neighbourhood?.toJson();
    }
    if (accommodationType != null) {
      map['accommodationType'] = accommodationType?.toJson();
    }
    if (facilities != null) {
      map['facilities'] = facilities?.toJson();
    }
    if (accessibility != null) {
      map['accessibility'] = accessibility?.toJson();
    }
    if (themesAndTypes != null) {
      map['themesAndTypes'] = themesAndTypes?.toJson();
    }
    if (price != null) {
      map['price'] = price?.toJson();
    }
    if (paymentPreference != null) {
      map['paymentPreference'] = paymentPreference?.toJson();
    }
    if (welcomeRewards != null) {
      map['welcomeRewards'] = welcomeRewards?.toJson();
    }
    return map;
  }

}

class WelcomeRewards {
  WelcomeRewards({
      this.label, 
      this.items,});

  WelcomeRewards.fromJson(dynamic json) {
    label = json['label'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }
  String? label;
  List<Items>? items;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['label'] = label;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Items {
  Items({
      this.label, 
      this.value,});

  Items.fromJson(dynamic json) {
    label = json['label'];
    value = json['value'];
  }
  String? label;
  String? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['label'] = label;
    map['value'] = value;
    return map;
  }

}

class PaymentPreference {
  PaymentPreference({
      this.items,});

  PaymentPreference.fromJson(dynamic json) {
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }
  List<Items>? items;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Items {
  Items({
      this.label, 
      this.value,});

  Items.fromJson(dynamic json) {
    label = json['label'];
    value = json['value'];
  }
  String? label;
  String? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['label'] = label;
    map['value'] = value;
    return map;
  }

}

class Price {
  Price({
      this.label, 
      this.range, 
      this.multiplier,});

  Price.fromJson(dynamic json) {
    label = json['label'];
    range = json['range'] != null ? Range.fromJson(json['range']) : null;
    multiplier = json['multiplier'];
  }
  String? label;
  Range? range;
  int? multiplier;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['label'] = label;
    if (range != null) {
      map['range'] = range?.toJson();
    }
    map['multiplier'] = multiplier;
    return map;
  }

}

class Range {
  Range({
      this.min, 
      this.max, 
      this.increments,});

  Range.fromJson(dynamic json) {
    min = json['min'] != null ? Min.fromJson(json['min']) : null;
    max = json['max'] != null ? Max.fromJson(json['max']) : null;
    increments = json['increments'];
  }
  Min? min;
  Max? max;
  int? increments;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (min != null) {
      map['min'] = min?.toJson();
    }
    if (max != null) {
      map['max'] = max?.toJson();
    }
    map['increments'] = increments;
    return map;
  }

}

class Max {
  Max({
      this.defaultValue,});

  Max.fromJson(dynamic json) {
    defaultValue = json['defaultValue'];
  }
  int? defaultValue;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['defaultValue'] = defaultValue;
    return map;
  }

}

class Min {
  Min({
      this.defaultValue,});

  Min.fromJson(dynamic json) {
    defaultValue = json['defaultValue'];
  }
  int? defaultValue;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['defaultValue'] = defaultValue;
    return map;
  }

}

class ThemesAndTypes {
  ThemesAndTypes({
      this.applied, 
      this.items,});

  ThemesAndTypes.fromJson(dynamic json) {
    applied = json['applied'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }
  bool? applied;
  List<Items>? items;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['applied'] = applied;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Items {
  Items({
      this.label, 
      this.value,});

  Items.fromJson(dynamic json) {
    label = json['label'];
    value = json['value'];
  }
  String? label;
  String? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['label'] = label;
    map['value'] = value;
    return map;
  }

}

class Accessibility {
  Accessibility({
      this.applied, 
      this.items,});

  Accessibility.fromJson(dynamic json) {
    applied = json['applied'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }
  bool? applied;
  List<Items>? items;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['applied'] = applied;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Items {
  Items({
      this.label, 
      this.value,});

  Items.fromJson(dynamic json) {
    label = json['label'];
    value = json['value'];
  }
  String? label;
  String? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['label'] = label;
    map['value'] = value;
    return map;
  }

}

class Facilities {
  Facilities({
      this.applied, 
      this.items,});

  Facilities.fromJson(dynamic json) {
    applied = json['applied'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }
  bool? applied;
  List<Items>? items;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['applied'] = applied;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Items {
  Items({
      this.label, 
      this.value,});

  Items.fromJson(dynamic json) {
    label = json['label'];
    value = json['value'];
  }
  String? label;
  String? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['label'] = label;
    map['value'] = value;
    return map;
  }

}

class AccommodationType {
  AccommodationType({
      this.applied, 
      this.items,});

  AccommodationType.fromJson(dynamic json) {
    applied = json['applied'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }
  bool? applied;
  List<Items>? items;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['applied'] = applied;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Items {
  Items({
      this.label, 
      this.value,});

  Items.fromJson(dynamic json) {
    label = json['label'];
    value = json['value'];
  }
  String? label;
  String? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['label'] = label;
    map['value'] = value;
    return map;
  }

}

class Neighbourhood {
  Neighbourhood({
      this.applied, 
      this.items,});

  Neighbourhood.fromJson(dynamic json) {
    applied = json['applied'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }
  bool? applied;
  List<Items>? items;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['applied'] = applied;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Items {
  Items({
      this.label, 
      this.value,});

  Items.fromJson(dynamic json) {
    label = json['label'];
    value = json['value'];
  }
  String? label;
  String? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['label'] = label;
    map['value'] = value;
    return map;
  }

}

class Landmarks {
  Landmarks({
      this.selectedOrder, 
      this.items, 
      this.distance,});

  Landmarks.fromJson(dynamic json) {
    if (json['selectedOrder'] != null) {
      selectedOrder = [];
      json['selectedOrder'].forEach((v) {
        selectedOrder?.add(Dynamic.fromJson(v));
      });
    }
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
    if (json['distance'] != null) {
      distance = [];
      json['distance'].forEach((v) {
        distance?.add(Dynamic.fromJson(v));
      });
    }
  }
  List<dynamic>? selectedOrder;
  List<Items>? items;
  List<dynamic>? distance;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (selectedOrder != null) {
      map['selectedOrder'] = selectedOrder?.map((v) => v.toJson()).toList();
    }
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    if (distance != null) {
      map['distance'] = distance?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Items {
  Items({
      this.label, 
      this.value,});

  Items.fromJson(dynamic json) {
    label = json['label'];
    value = json['value'];
  }
  String? label;
  String? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['label'] = label;
    map['value'] = value;
    return map;
  }

}

class GuestRating {
  GuestRating({
      this.range,});

  GuestRating.fromJson(dynamic json) {
    range = json['range'] != null ? Range.fromJson(json['range']) : null;
  }
  Range? range;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (range != null) {
      map['range'] = range?.toJson();
    }
    return map;
  }

}

class Range {
  Range({
      this.min, 
      this.max,});

  Range.fromJson(dynamic json) {
    min = json['min'] != null ? Min.fromJson(json['min']) : null;
    max = json['max'] != null ? Max.fromJson(json['max']) : null;
  }
  Min? min;
  Max? max;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (min != null) {
      map['min'] = min?.toJson();
    }
    if (max != null) {
      map['max'] = max?.toJson();
    }
    return map;
  }

}

class Max {
  Max({
      this.defaultValue,});

  Max.fromJson(dynamic json) {
    defaultValue = json['defaultValue'];
  }
  int? defaultValue;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['defaultValue'] = defaultValue;
    return map;
  }

}

class Min {
  Min({
      this.defaultValue,});

  Min.fromJson(dynamic json) {
    defaultValue = json['defaultValue'];
  }
  int? defaultValue;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['defaultValue'] = defaultValue;
    return map;
  }

}

class StarRating {
  StarRating({
      this.applied, 
      this.items,});

  StarRating.fromJson(dynamic json) {
    applied = json['applied'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }
  bool? applied;
  List<Items>? items;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['applied'] = applied;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Items {
  Items({
      this.value,});

  Items.fromJson(dynamic json) {
    value = json['value'];
  }
  int? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

}

class Name {
  Name({
      this.item, 
      this.autosuggest,});

  Name.fromJson(dynamic json) {
    item = json['item'] != null ? Item.fromJson(json['item']) : null;
    autosuggest = json['autosuggest'] != null ? Autosuggest.fromJson(json['autosuggest']) : null;
  }
  Item? item;
  Autosuggest? autosuggest;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (item != null) {
      map['item'] = item?.toJson();
    }
    if (autosuggest != null) {
      map['autosuggest'] = autosuggest?.toJson();
    }
    return map;
  }

}

class Autosuggest {
  Autosuggest({
      this.additionalUrlParams,});

  Autosuggest.fromJson(dynamic json) {
    additionalUrlParams = json['additionalUrlParams'] != null ? AdditionalUrlParams.fromJson(json['additionalUrlParams']) : null;
  }
  AdditionalUrlParams? additionalUrlParams;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (additionalUrlParams != null) {
      map['additionalUrlParams'] = additionalUrlParams?.toJson();
    }
    return map;
  }

}

class AdditionalUrlParams {
  AdditionalUrlParams({
      this.resolvedlocation, 
      this.qdestination, 
      this.destinationid,});

  AdditionalUrlParams.fromJson(dynamic json) {
    resolvedlocation = json['resolved-location'];
    qdestination = json['q-destination'];
    destinationid = json['destination-id'];
  }
  String? resolvedlocation;
  String? qdestination;
  String? destinationid;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['resolved-location'] = resolvedlocation;
    map['q-destination'] = qdestination;
    map['destination-id'] = destinationid;
    return map;
  }

}

class Item {
  Item({
      this.value,});

  Item.fromJson(dynamic json) {
    value = json['value'];
  }
  String? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

}

class SortResults {
  SortResults({
      this.options, 
      this.distanceOptionLandmarkId,});

  SortResults.fromJson(dynamic json) {
    if (json['options'] != null) {
      options = [];
      json['options'].forEach((v) {
        options?.add(Options.fromJson(v));
      });
    }
    distanceOptionLandmarkId = json['distanceOptionLandmarkId'];
  }
  List<Options>? options;
  int? distanceOptionLandmarkId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (options != null) {
      map['options'] = options?.map((v) => v.toJson()).toList();
    }
    map['distanceOptionLandmarkId'] = distanceOptionLandmarkId;
    return map;
  }

}

class Options {
  Options({
      this.label, 
      this.itemMeta, 
      this.choices, 
      this.enhancedChoices,});

  Options.fromJson(dynamic json) {
    label = json['label'];
    itemMeta = json['itemMeta'];
    if (json['choices'] != null) {
      choices = [];
      json['choices'].forEach((v) {
        choices?.add(Choices.fromJson(v));
      });
    }
    if (json['enhancedChoices'] != null) {
      enhancedChoices = [];
      json['enhancedChoices'].forEach((v) {
        enhancedChoices?.add(Dynamic.fromJson(v));
      });
    }
  }
  String? label;
  String? itemMeta;
  List<Choices>? choices;
  List<dynamic>? enhancedChoices;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['label'] = label;
    map['itemMeta'] = itemMeta;
    if (choices != null) {
      map['choices'] = choices?.map((v) => v.toJson()).toList();
    }
    if (enhancedChoices != null) {
      map['enhancedChoices'] = enhancedChoices?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Choices {
  Choices({
      this.label, 
      this.value, 
      this.selected,});

  Choices.fromJson(dynamic json) {
    label = json['label'];
    value = json['value'];
    selected = json['selected'];
  }
  String? label;
  String? value;
  bool? selected;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['label'] = label;
    map['value'] = value;
    map['selected'] = selected;
    return map;
  }

}

class SearchResults {
  SearchResults({
      this.totalCount, 
      this.results, 
      this.pagination,});

  SearchResults.fromJson(dynamic json) {
    totalCount = json['totalCount'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(Results.fromJson(v));
      });
    }
    pagination = json['pagination'] != null ? Pagination.fromJson(json['pagination']) : null;
  }
  int? totalCount;
  List<Results>? results;
  Pagination? pagination;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['totalCount'] = totalCount;
    if (results != null) {
      map['results'] = results?.map((v) => v.toJson()).toList();
    }
    if (pagination != null) {
      map['pagination'] = pagination?.toJson();
    }
    return map;
  }

}

class Pagination {
  Pagination({
      this.currentPage, 
      this.pageGroup, 
      this.nextPageStartIndex, 
      this.nextPageNumber, 
      this.nextPageGroup,});

  Pagination.fromJson(dynamic json) {
    currentPage = json['currentPage'];
    pageGroup = json['pageGroup'];
    nextPageStartIndex = json['nextPageStartIndex'];
    nextPageNumber = json['nextPageNumber'];
    nextPageGroup = json['nextPageGroup'];
  }
  int? currentPage;
  String? pageGroup;
  int? nextPageStartIndex;
  int? nextPageNumber;
  String? nextPageGroup;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['currentPage'] = currentPage;
    map['pageGroup'] = pageGroup;
    map['nextPageStartIndex'] = nextPageStartIndex;
    map['nextPageNumber'] = nextPageNumber;
    map['nextPageGroup'] = nextPageGroup;
    return map;
  }

}

class Results {
  Results({
      this.id, 
      this.name, 
      this.starRating, 
      this.urls, 
      this.address, 
      this.welcomeRewards, 
      this.guestReviews, 
      this.landmarks, 
      this.geoBullets, 
      this.ratePlan, 
      this.neighbourhood, 
      this.deals, 
      this.messaging, 
      this.badging, 
      this.pimmsAttributes, 
      this.coordinate, 
      this.roomsLeft, 
      this.providerType, 
      this.supplierHotelId, 
      this.vrBadge, 
      this.isAlternative, 
      this.optimizedThumbUrls,});

  Results.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    starRating = json['starRating'];
    urls = json['urls'];
    address = json['address'] != null ? Address.fromJson(json['address']) : null;
    welcomeRewards = json['welcomeRewards'] != null ? WelcomeRewards.fromJson(json['welcomeRewards']) : null;
    guestReviews = json['guestReviews'] != null ? GuestReviews.fromJson(json['guestReviews']) : null;
    if (json['landmarks'] != null) {
      landmarks = [];
      json['landmarks'].forEach((v) {
        landmarks?.add(Landmarks.fromJson(v));
      });
    }
    if (json['geoBullets'] != null) {
      geoBullets = [];
      json['geoBullets'].forEach((v) {
        geoBullets?.add(Dynamic.fromJson(v));
      });
    }
    ratePlan = json['ratePlan'] != null ? RatePlan.fromJson(json['ratePlan']) : null;
    neighbourhood = json['neighbourhood'];
    deals = json['deals'] != null ? Deals.fromJson(json['deals']) : null;
    messaging = json['messaging'] != null ? Messaging.fromJson(json['messaging']) : null;
    badging = json['badging'];
    pimmsAttributes = json['pimmsAttributes'];
    coordinate = json['coordinate'] != null ? Coordinate.fromJson(json['coordinate']) : null;
    roomsLeft = json['roomsLeft'];
    providerType = json['providerType'];
    supplierHotelId = json['supplierHotelId'];
    vrBadge = json['vrBadge'];
    isAlternative = json['isAlternative'];
    optimizedThumbUrls = json['optimizedThumbUrls'] != null ? OptimizedThumbUrls.fromJson(json['optimizedThumbUrls']) : null;
  }
  int? id;
  String? name;
  int? starRating;
  dynamic urls;
  Address? address;
  WelcomeRewards? welcomeRewards;
  GuestReviews? guestReviews;
  List<Landmarks>? landmarks;
  List<dynamic>? geoBullets;
  RatePlan? ratePlan;
  String? neighbourhood;
  Deals? deals;
  Messaging? messaging;
  dynamic badging;
  String? pimmsAttributes;
  Coordinate? coordinate;
  int? roomsLeft;
  String? providerType;
  int? supplierHotelId;
  String? vrBadge;
  bool? isAlternative;
  OptimizedThumbUrls? optimizedThumbUrls;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['starRating'] = starRating;
    map['urls'] = urls;
    if (address != null) {
      map['address'] = address?.toJson();
    }
    if (welcomeRewards != null) {
      map['welcomeRewards'] = welcomeRewards?.toJson();
    }
    if (guestReviews != null) {
      map['guestReviews'] = guestReviews?.toJson();
    }
    if (landmarks != null) {
      map['landmarks'] = landmarks?.map((v) => v.toJson()).toList();
    }
    if (geoBullets != null) {
      map['geoBullets'] = geoBullets?.map((v) => v.toJson()).toList();
    }
    if (ratePlan != null) {
      map['ratePlan'] = ratePlan?.toJson();
    }
    map['neighbourhood'] = neighbourhood;
    if (deals != null) {
      map['deals'] = deals?.toJson();
    }
    if (messaging != null) {
      map['messaging'] = messaging?.toJson();
    }
    map['badging'] = badging;
    map['pimmsAttributes'] = pimmsAttributes;
    if (coordinate != null) {
      map['coordinate'] = coordinate?.toJson();
    }
    map['roomsLeft'] = roomsLeft;
    map['providerType'] = providerType;
    map['supplierHotelId'] = supplierHotelId;
    map['vrBadge'] = vrBadge;
    map['isAlternative'] = isAlternative;
    if (optimizedThumbUrls != null) {
      map['optimizedThumbUrls'] = optimizedThumbUrls?.toJson();
    }
    return map;
  }

}

class OptimizedThumbUrls {
  OptimizedThumbUrls({
      this.srpDesktop,});

  OptimizedThumbUrls.fromJson(dynamic json) {
    srpDesktop = json['srpDesktop'];
  }
  String? srpDesktop;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['srpDesktop'] = srpDesktop;
    return map;
  }

}

class Coordinate {
  Coordinate({
      this.lat, 
      this.lon,});

  Coordinate.fromJson(dynamic json) {
    lat = json['lat'];
    lon = json['lon'];
  }
  double? lat;
  double? lon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lat'] = lat;
    map['lon'] = lon;
    return map;
  }

}

class Messaging {
  Messaging({
      this.scarcity,});

  Messaging.fromJson(dynamic json) {
    scarcity = json['scarcity'];
  }
  String? scarcity;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['scarcity'] = scarcity;
    return map;
  }

}

class Deals {
  Deals({
      this.secretPrice, 
      this.priceReasoning,});

  Deals.fromJson(dynamic json) {
    secretPrice = json['secretPrice'] != null ? SecretPrice.fromJson(json['secretPrice']) : null;
    priceReasoning = json['priceReasoning'];
  }
  SecretPrice? secretPrice;
  String? priceReasoning;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (secretPrice != null) {
      map['secretPrice'] = secretPrice?.toJson();
    }
    map['priceReasoning'] = priceReasoning;
    return map;
  }

}

class SecretPrice {
  SecretPrice({
      this.dealText,});

  SecretPrice.fromJson(dynamic json) {
    dealText = json['dealText'];
  }
  String? dealText;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['dealText'] = dealText;
    return map;
  }

}

class RatePlan {
  RatePlan({
      this.price, 
      this.features, 
      this.type,});

  RatePlan.fromJson(dynamic json) {
    price = json['price'] != null ? Price.fromJson(json['price']) : null;
    features = json['features'] != null ? Features.fromJson(json['features']) : null;
    type = json['type'];
  }
  Price? price;
  Features? features;
  String? type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (price != null) {
      map['price'] = price?.toJson();
    }
    if (features != null) {
      map['features'] = features?.toJson();
    }
    map['type'] = type;
    return map;
  }

}

class Features {
  Features({
      this.freeCancellation, 
      this.paymentPreference, 
      this.noCCRequired,});

  Features.fromJson(dynamic json) {
    freeCancellation = json['freeCancellation'];
    paymentPreference = json['paymentPreference'];
    noCCRequired = json['noCCRequired'];
  }
  bool? freeCancellation;
  bool? paymentPreference;
  bool? noCCRequired;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['freeCancellation'] = freeCancellation;
    map['paymentPreference'] = paymentPreference;
    map['noCCRequired'] = noCCRequired;
    return map;
  }

}

class Price {
  Price({
      this.current, 
      this.exactCurrent, 
      this.old, 
      this.fullyBundledPricePerStay,});

  Price.fromJson(dynamic json) {
    current = json['current'];
    exactCurrent = json['exactCurrent'];
    old = json['old'];
    fullyBundledPricePerStay = json['fullyBundledPricePerStay'];
  }
  String? current;
  double? exactCurrent;
  String? old;
  String? fullyBundledPricePerStay;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['current'] = current;
    map['exactCurrent'] = exactCurrent;
    map['old'] = old;
    map['fullyBundledPricePerStay'] = fullyBundledPricePerStay;
    return map;
  }

}

class Landmarks {
  Landmarks({
      this.label, 
      this.distance,});

  Landmarks.fromJson(dynamic json) {
    label = json['label'];
    distance = json['distance'];
  }
  String? label;
  String? distance;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['label'] = label;
    map['distance'] = distance;
    return map;
  }

}

class GuestReviews {
  GuestReviews({
      this.unformattedRating, 
      this.rating, 
      this.total, 
      this.scale,});

  GuestReviews.fromJson(dynamic json) {
    unformattedRating = json['unformattedRating'];
    rating = json['rating'];
    total = json['total'];
    scale = json['scale'];
  }
  double? unformattedRating;
  String? rating;
  int? total;
  int? scale;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['unformattedRating'] = unformattedRating;
    map['rating'] = rating;
    map['total'] = total;
    map['scale'] = scale;
    return map;
  }

}

class WelcomeRewards {
  WelcomeRewards({
      this.collect,});

  WelcomeRewards.fromJson(dynamic json) {
    collect = json['collect'];
  }
  bool? collect;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['collect'] = collect;
    return map;
  }

}

class Address {
  Address({
      this.streetAddress, 
      this.extendedAddress, 
      this.locality, 
      this.postalCode, 
      this.region, 
      this.countryName, 
      this.countryCode, 
      this.obfuscate,});

  Address.fromJson(dynamic json) {
    streetAddress = json['streetAddress'];
    extendedAddress = json['extendedAddress'];
    locality = json['locality'];
    postalCode = json['postalCode'];
    region = json['region'];
    countryName = json['countryName'];
    countryCode = json['countryCode'];
    obfuscate = json['obfuscate'];
  }
  String? streetAddress;
  String? extendedAddress;
  String? locality;
  String? postalCode;
  String? region;
  String? countryName;
  String? countryCode;
  bool? obfuscate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['streetAddress'] = streetAddress;
    map['extendedAddress'] = extendedAddress;
    map['locality'] = locality;
    map['postalCode'] = postalCode;
    map['region'] = region;
    map['countryName'] = countryName;
    map['countryCode'] = countryCode;
    map['obfuscate'] = obfuscate;
    return map;
  }

}

class Query {
  Query({
      this.destination,});

  Query.fromJson(dynamic json) {
    destination = json['destination'] != null ? Destination.fromJson(json['destination']) : null;
  }
  Destination? destination;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (destination != null) {
      map['destination'] = destination?.toJson();
    }
    return map;
  }

}

class Destination {
  Destination({
      this.id, 
      this.value, 
      this.resolvedLocation,});

  Destination.fromJson(dynamic json) {
    id = json['id'];
    value = json['value'];
    resolvedLocation = json['resolvedLocation'];
  }
  String? id;
  String? value;
  String? resolvedLocation;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['value'] = value;
    map['resolvedLocation'] = resolvedLocation;
    return map;
  }

}