import 'package:coronavirus_app2/app/services/api.dart';
import 'package:coronavirus_app2/app/services/endpoint_data.dart';
import 'package:flutter/foundation.dart';

class EndpointsData {
  EndpointsData({@required this.values});
  final Map<Endpoint, EndpointData> values;

  EndpointData get cases => values[Endpoint.cases];
  EndpointData get casesConfirmed => values[Endpoint.casesConfirmed];
  EndpointData get casesSuspected => values[Endpoint.casesSuspected];
  EndpointData get deaths => values[Endpoint.deaths];
  EndpointData get recovered => values[Endpoint.recovered];
}
