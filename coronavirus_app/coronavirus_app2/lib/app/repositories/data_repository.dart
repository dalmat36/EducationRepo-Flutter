import 'package:coronavirus_app2/app/repositories/endpoints_data.dart';
import 'package:coronavirus_app2/app/services/api.dart';
import 'package:coronavirus_app2/app/services/api_service.dart';
import 'package:coronavirus_app2/app/services/data_cache_service.dart';
import 'package:coronavirus_app2/app/services/endpoint_data.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

import 'endpoints_data.dart';

class DataRepository {
  final APIService apiService;
  final DataCacheService dataCacheService;
  DataRepository({@required this.apiService, @required this.dataCacheService});

  String _accessToken;

  Future<EndpointData> getEndPointData(Endpoint endpoint) async {
    final endpointsData = await _getDataRefreshingToken<EndpointData>(
        onGetData: () => apiService.getEndPointData(
            accessToken: _accessToken, endpoint: endpoint));
    return endpointsData;
  }

  EndpointsData getAllEndpointsCachedData() => dataCacheService.getData();

  Future<EndpointsData> getAllEndPointsData() async {
    final endpointsData = await _getDataRefreshingToken<EndpointsData>(
        onGetData: () => _getAllEndPointData());
    await dataCacheService.setData(endpointsData);
    return endpointsData;
  }

  Future<T> _getDataRefreshingToken<T>({Future<T> Function() onGetData}) async {
    try {
      if (_accessToken == null) {
        _accessToken = await apiService.getAccessToken();
      }
      return await onGetData();
    } on Response catch (response) {
      if (response.statusCode == 401) {
        _accessToken = await apiService.getAccessToken();
        return await onGetData();
      }
      rethrow;
    }
  }

  Future<EndpointsData> _getAllEndPointData() async {
    final values = await Future.wait([
      apiService.getEndPointData(
          accessToken: _accessToken, endpoint: Endpoint.cases),
      apiService.getEndPointData(
          accessToken: _accessToken, endpoint: Endpoint.casesConfirmed),
      apiService.getEndPointData(
          accessToken: _accessToken, endpoint: Endpoint.casesSuspected),
      apiService.getEndPointData(
          accessToken: _accessToken, endpoint: Endpoint.deaths),
      apiService.getEndPointData(
          accessToken: _accessToken, endpoint: Endpoint.recovered)
    ]);

    return EndpointsData(values: {
      Endpoint.cases: values[0],
      Endpoint.casesConfirmed: values[1],
      Endpoint.casesSuspected: values[2],
      Endpoint.deaths: values[3],
      Endpoint.recovered: values[4]
    });
  }
}
