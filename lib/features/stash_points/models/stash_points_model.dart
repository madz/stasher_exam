import 'package:json_annotation/json_annotation.dart';

part 'stash_points_model.g.dart';

@JsonSerializable(createToJson: false)
class StashPointsModel {
  StashPointsModel({
    required this.total,
    required this.page,
    required this.pages,
    required this.hasNext,
    required this.hasPrev,
    required this.items,
  });

  final num? total;
  static const String totalKey = "total";

  final num? page;
  static const String pageKey = "page";

  final num? pages;
  static const String pagesKey = "pages";

  @JsonKey(name: 'has_next')
  final bool? hasNext;
  static const String hasNextKey = "has_next";

  @JsonKey(name: 'has_prev')
  final bool? hasPrev;
  static const String hasPrevKey = "has_prev";

  final List<Item>? items;
  static const String itemsKey = "items";

  factory StashPointsModel.fromJson(Map<String, dynamic> json) =>
      _$StashPointsModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class Item {
  Item({
    required this.created,
    required this.bookingCountGroup,
    required this.activatedAt,
    required this.latitude,
    required this.countryCode,
    required this.nearestCity,
    required this.guaranteeFee,
    required this.description,
    required this.treePrice,
    required this.slug,
    required this.type,
    required this.name,
    required this.locationName,
    required this.rating,
    required this.capacity,
    required this.id,
    required this.upsellPhoto,
    required this.features,
    required this.userDistanceKm,
    required this.storageType,
    required this.sizeRestrictions,
    required this.upsellLink,
    required this.ratingCount,
    required this.timezone,
    required this.openTwentyfourSeven,
    required this.photos,
    required this.longitude,
    required this.pricingStructure,
    required this.openLate,
    required this.hostId,
    required this.openingHoursExceptions,
    required this.deactivatedAt,
    required this.featured,
    required this.sizeStandard,
    required this.openingHours,
    required this.bookingFee,
    required this.postalCode,
    required this.holidayOpenType,
    required this.upsellText,
  });

  final DateTime? created;
  static const String createdKey = "created";

  @JsonKey(name: 'booking_count_group')
  final num? bookingCountGroup;
  static const String bookingCountGroupKey = "booking_count_group";

  @JsonKey(name: 'activated_at')
  final DateTime? activatedAt;
  static const String activatedAtKey = "activated_at";

  final num? latitude;
  static const String latitudeKey = "latitude";

  @JsonKey(name: 'country_code')
  final String? countryCode;
  static const String countryCodeKey = "country_code";

  @JsonKey(name: 'nearest_city')
  final NearestCity? nearestCity;
  static const String nearestCityKey = "nearest_city";

  @JsonKey(name: 'guarantee_fee')
  final num? guaranteeFee;
  static const String guaranteeFeeKey = "guarantee_fee";

  final String? description;
  static const String descriptionKey = "description";

  @JsonKey(name: 'tree_price')
  final num? treePrice;
  static const String treePriceKey = "tree_price";

  final dynamic slug;
  static const String slugKey = "slug";

  final String? type;
  static const String typeKey = "type";

  final String? name;
  static const String nameKey = "name";

  @JsonKey(name: 'location_name')
  final String? locationName;
  static const String locationNameKey = "location_name";

  final num? rating;
  static const String ratingKey = "rating";

  final num? capacity;
  static const String capacityKey = "capacity";

  final String? id;
  static const String idKey = "id";

  @JsonKey(name: 'upsell_photo')
  final dynamic upsellPhoto;
  static const String upsellPhotoKey = "upsell_photo";

  final Features? features;
  static const String featuresKey = "features";

  @JsonKey(name: 'user_distance_km')
  final num? userDistanceKm;
  static const String userDistanceKmKey = "user_distance_km";

  @JsonKey(name: 'storage_type')
  final String? storageType;
  static const String storageTypeKey = "storage_type";

  @JsonKey(name: 'size_restrictions')
  final String? sizeRestrictions;
  static const String sizeRestrictionsKey = "size_restrictions";

  @JsonKey(name: 'upsell_link')
  final dynamic upsellLink;
  static const String upsellLinkKey = "upsell_link";

  @JsonKey(name: 'rating_count')
  final num? ratingCount;
  static const String ratingCountKey = "rating_count";

  final String? timezone;
  static const String timezoneKey = "timezone";

  @JsonKey(name: 'open_twentyfour_seven')
  final bool? openTwentyfourSeven;
  static const String openTwentyfourSevenKey = "open_twentyfour_seven";

  final List<String>? photos;
  static const String photosKey = "photos";

  final num? longitude;
  static const String longitudeKey = "longitude";

  @JsonKey(name: 'pricing_structure')
  final PricingStructure? pricingStructure;
  static const String pricingStructureKey = "pricing_structure";

  @JsonKey(name: 'open_late')
  final bool? openLate;
  static const String openLateKey = "open_late";

  @JsonKey(name: 'host_id')
  final String? hostId;
  static const String hostIdKey = "host_id";

  @JsonKey(name: 'opening_hours_exceptions')
  final List<OpeningHoursException>? openingHoursExceptions;
  static const String openingHoursExceptionsKey = "opening_hours_exceptions";

  @JsonKey(name: 'deactivated_at')
  final dynamic deactivatedAt;
  static const String deactivatedAtKey = "deactivated_at";

  final bool? featured;
  static const String featuredKey = "featured";

  @JsonKey(name: 'size_standard')
  final String? sizeStandard;
  static const String sizeStandardKey = "size_standard";

  @JsonKey(name: 'opening_hours')
  final List<OpeningHour>? openingHours;
  static const String openingHoursKey = "opening_hours";

  @JsonKey(name: 'booking_fee')
  final num? bookingFee;
  static const String bookingFeeKey = "booking_fee";

  @JsonKey(name: 'postal_code')
  final String? postalCode;
  static const String postalCodeKey = "postal_code";

  @JsonKey(name: 'holiday_open_type')
  final String? holidayOpenType;
  static const String holidayOpenTypeKey = "holiday_open_type";

  @JsonKey(name: 'upsell_text')
  final dynamic upsellText;
  static const String upsellTextKey = "upsell_text";

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@JsonSerializable(createToJson: false)
class Features {
  Features({
    required this.oftenFullyBooked,
    required this.premiumStashpoint,
  });

  @JsonKey(name: 'often_fully_booked')
  final bool? oftenFullyBooked;
  static const String oftenFullyBookedKey = "often_fully_booked";

  @JsonKey(name: 'premium_stashpoint')
  final bool? premiumStashpoint;
  static const String premiumStashpointKey = "premium_stashpoint";

  factory Features.fromJson(Map<String, dynamic> json) =>
      _$FeaturesFromJson(json);
}

@JsonSerializable(createToJson: false)
class NearestCity {
  NearestCity({
    required this.name,
    required this.partnerPromoText,
    required this.partnerPromoLink,
    required this.partnerPromoPhoto,
    required this.id,
    required this.parentId,
    required this.bbox,
    required this.slug,
  });

  final String? name;
  static const String nameKey = "name";

  @JsonKey(name: 'partner_promo_text')
  final String? partnerPromoText;
  static const String partnerPromoTextKey = "partner_promo_text";

  @JsonKey(name: 'partner_promo_link')
  final String? partnerPromoLink;
  static const String partnerPromoLinkKey = "partner_promo_link";

  @JsonKey(name: 'partner_promo_photo')
  final String? partnerPromoPhoto;
  static const String partnerPromoPhotoKey = "partner_promo_photo";

  final String? id;
  static const String idKey = "id";

  @JsonKey(name: 'parent_id')
  final String? parentId;
  static const String parentIdKey = "parent_id";

  final Bbox? bbox;
  static const String bboxKey = "bbox";

  final String? slug;
  static const String slugKey = "slug";

  factory NearestCity.fromJson(Map<String, dynamic> json) =>
      _$NearestCityFromJson(json);
}

@JsonSerializable(createToJson: false)
class Bbox {
  Bbox({
    required this.northeast,
    required this.southwest,
  });

  final Northeast? northeast;
  static const String northeastKey = "northeast";

  final Northeast? southwest;
  static const String southwestKey = "southwest";

  factory Bbox.fromJson(Map<String, dynamic> json) => _$BboxFromJson(json);
}

@JsonSerializable(createToJson: false)
class Northeast {
  Northeast({
    required this.lat,
    required this.lng,
  });

  final num? lat;
  static const String latKey = "lat";

  final num? lng;
  static const String lngKey = "lng";

  factory Northeast.fromJson(Map<String, dynamic> json) =>
      _$NortheastFromJson(json);
}

@JsonSerializable(createToJson: false)
class OpeningHour {
  OpeningHour({
    required this.open,
    required this.day,
    required this.close,
  });

  final String? open;
  static const String openKey = "open";

  final num? day;
  static const String dayKey = "day";

  final String? close;
  static const String closeKey = "close";

  factory OpeningHour.fromJson(Map<String, dynamic> json) =>
      _$OpeningHourFromJson(json);
}

@JsonSerializable(createToJson: false)
class OpeningHoursException {
  OpeningHoursException({
    required this.name,
    required this.startTime,
    required this.date,
    required this.endTime,
    required this.type,
  });

  final String? name;
  static const String nameKey = "name";

  @JsonKey(name: 'start_time')
  final String? startTime;
  static const String startTimeKey = "start_time";

  final DateTime? date;
  static const String dateKey = "date";

  @JsonKey(name: 'end_time')
  final String? endTime;
  static const String endTimeKey = "end_time";

  final String? type;
  static const String typeKey = "type";

  factory OpeningHoursException.fromJson(Map<String, dynamic> json) =>
      _$OpeningHoursExceptionFromJson(json);
}

@JsonSerializable(createToJson: false)
class PricingStructure {
  PricingStructure({
    required this.extraDayCost,
    required this.bookingFee,
    required this.ccySymbol,
    required this.ccyMinorInMajor,
    required this.guaranteeFee,
    required this.firstDayCost,
    required this.ccy,
  });

  @JsonKey(name: 'extra_day_cost')
  final num? extraDayCost;
  static const String extraDayCostKey = "extra_day_cost";

  @JsonKey(name: 'booking_fee')
  final num? bookingFee;
  static const String bookingFeeKey = "booking_fee";

  @JsonKey(name: 'ccy_symbol')
  final String? ccySymbol;
  static const String ccySymbolKey = "ccy_symbol";

  @JsonKey(name: 'ccy_minor_in_major')
  final num? ccyMinorInMajor;
  static const String ccyMinorInMajorKey = "ccy_minor_in_major";

  @JsonKey(name: 'guarantee_fee')
  final num? guaranteeFee;
  static const String guaranteeFeeKey = "guarantee_fee";

  @JsonKey(name: 'first_day_cost')
  final num? firstDayCost;
  static const String firstDayCostKey = "first_day_cost";

  final String? ccy;
  static const String ccyKey = "ccy";

  factory PricingStructure.fromJson(Map<String, dynamic> json) =>
      _$PricingStructureFromJson(json);
}
