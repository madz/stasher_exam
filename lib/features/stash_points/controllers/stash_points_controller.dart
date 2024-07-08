import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

import '../../../services/api_service.dart';
import '../models/stash_points_model.dart';

class StashPointsController with ChangeNotifier {
  late ApiService _apiService;
  final List<Item> _stashPoints = [];
  bool _isLoading = false;
  String? _error;
  int _currentPage = 1;
  final int _perPage = 10;
  bool _hasNextPage = true;

  List<Item> get stashpoints => _stashPoints;
  bool get isLoading => _isLoading;
  String? get error => _error;
  bool get hasNextPage => _hasNextPage;

  StashPointsController() {
    final dio = Dio();
    _apiService = ApiService(dio);
    fetchStashpoints();
  }

  Future<void> fetchStashpoints() async {
    if (_isLoading || !_hasNextPage) return;

    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final response = await _apiService.getStashPoints(_currentPage, _perPage);
      _stashPoints.addAll(response.items ?? []);
      _hasNextPage = response.hasNext ?? false;
      _currentPage++;
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
