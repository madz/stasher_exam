// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stash_points_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StashPointsModel _$StashPointsModelFromJson(Map<String, dynamic> json) =>
    StashPointsModel(
      total: json['total'] as num?,
      page: json['page'] as num?,
      pages: json['pages'] as num?,
      hasNext: json['has_next'] as bool?,
      hasPrev: json['has_prev'] as bool?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      bookingCountGroup: json['booking_count_group'] as num?,
      activatedAt: json['activated_at'] == null
          ? null
          : DateTime.parse(json['activated_at'] as String),
      latitude: json['latitude'] as num?,
      countryCode: json['country_code'] as String?,
      nearestCity: json['nearest_city'] == null
          ? null
          : NearestCity.fromJson(json['nearest_city'] as Map<String, dynamic>),
      guaranteeFee: json['guarantee_fee'] as num?,
      description: json['description'] as String?,
      treePrice: json['tree_price'] as num?,
      slug: json['slug'],
      type: json['type'] as String?,
      name: json['name'] as String?,
      locationName: json['location_name'] as String?,
      rating: json['rating'] as num?,
      capacity: json['capacity'] as num?,
      id: json['id'] as String?,
      upsellPhoto: json['upsell_photo'],
      features: json['features'] == null
          ? null
          : Features.fromJson(json['features'] as Map<String, dynamic>),
      userDistanceKm: json['user_distance_km'] as num?,
      storageType: json['storage_type'] as String?,
      sizeRestrictions: json['size_restrictions'] as String?,
      upsellLink: json['upsell_link'],
      ratingCount: json['rating_count'] as num?,
      timezone: json['timezone'] as String?,
      openTwentyfourSeven: json['open_twentyfour_seven'] as bool?,
      photos:
          (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList(),
      longitude: json['longitude'] as num?,
      pricingStructure: json['pricing_structure'] == null
          ? null
          : PricingStructure.fromJson(
              json['pricing_structure'] as Map<String, dynamic>),
      openLate: json['open_late'] as bool?,
      hostId: json['host_id'] as String?,
      openingHoursExceptions: (json['opening_hours_exceptions']
              as List<dynamic>?)
          ?.map(
              (e) => OpeningHoursException.fromJson(e as Map<String, dynamic>))
          .toList(),
      deactivatedAt: json['deactivated_at'],
      featured: json['featured'] as bool?,
      sizeStandard: json['size_standard'] as String?,
      openingHours: (json['opening_hours'] as List<dynamic>?)
          ?.map((e) => OpeningHour.fromJson(e as Map<String, dynamic>))
          .toList(),
      bookingFee: json['booking_fee'] as num?,
      postalCode: json['postal_code'] as String?,
      holidayOpenType: json['holiday_open_type'] as String?,
      upsellText: json['upsell_text'],
    );

Features _$FeaturesFromJson(Map<String, dynamic> json) => Features(
      oftenFullyBooked: json['often_fully_booked'] as bool?,
      premiumStashpoint: json['premium_stashpoint'] as bool?,
    );

NearestCity _$NearestCityFromJson(Map<String, dynamic> json) => NearestCity(
      name: json['name'] as String?,
      partnerPromoText: json['partner_promo_text'] as String?,
      partnerPromoLink: json['partner_promo_link'] as String?,
      partnerPromoPhoto: json['partner_promo_photo'] as String?,
      id: json['id'] as String?,
      parentId: json['parent_id'] as String?,
      bbox: json['bbox'] == null
          ? null
          : Bbox.fromJson(json['bbox'] as Map<String, dynamic>),
      slug: json['slug'] as String?,
    );

Bbox _$BboxFromJson(Map<String, dynamic> json) => Bbox(
      northeast: json['northeast'] == null
          ? null
          : Northeast.fromJson(json['northeast'] as Map<String, dynamic>),
      southwest: json['southwest'] == null
          ? null
          : Northeast.fromJson(json['southwest'] as Map<String, dynamic>),
    );

Northeast _$NortheastFromJson(Map<String, dynamic> json) => Northeast(
      lat: json['lat'] as num?,
      lng: json['lng'] as num?,
    );

OpeningHour _$OpeningHourFromJson(Map<String, dynamic> json) => OpeningHour(
      open: json['open'] as String?,
      day: json['day'] as num?,
      close: json['close'] as String?,
    );

OpeningHoursException _$OpeningHoursExceptionFromJson(
        Map<String, dynamic> json) =>
    OpeningHoursException(
      name: json['name'] as String?,
      startTime: json['start_time'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      endTime: json['end_time'] as String?,
      type: json['type'] as String?,
    );

PricingStructure _$PricingStructureFromJson(Map<String, dynamic> json) =>
    PricingStructure(
      extraDayCost: json['extra_day_cost'] as num?,
      bookingFee: json['booking_fee'] as num?,
      ccySymbol: json['ccy_symbol'] as String?,
      ccyMinorInMajor: json['ccy_minor_in_major'] as num?,
      guaranteeFee: json['guarantee_fee'] as num?,
      firstDayCost: json['first_day_cost'] as num?,
      ccy: json['ccy'] as String?,
    );
