

import 'package:all_app/Screens/Trevel/data/flights_data.dart';
import 'package:all_app/Screens/Trevel/models/flight_model.dart';

final List<FlightModel> flightsAvailable = flightsAvailableJson
    .asMap()
    .map((index, value) =>
        MapEntry(index, FlightModel.fromMap(flightsAvailableJson[index])))
    .values
    .toList();
