import 'package:goodgo/backend/api/api_services.dart';
import 'package:riverpod/riverpod.dart';

//provider per utilizzo delle api
final ApiServicesKeycloackProvider = Provider<ApiServices>((ref) => ApiServices());
