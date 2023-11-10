//geolocator_service.dart

import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class GeolocatorService {
  Future<Position> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Permessi di posizione disabilitati');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Permessi posizione negati');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'I permessi per la posizione sono permanentemente negati, impossibile richiedere');
    }

    return await Geolocator.getCurrentPosition();
  }

  getLocationName(Position position) {}
}

Future<String> get getLocationName async {
  try {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return 'Permessi posizione disabilitati';
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return 'Permessi posizione negati';
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return 'I permessi per la posizione sono permanentemente negati, impossibile richiedere';
    }

    //  permessi accettati
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    // fetcha
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);

    if (placemarks.isNotEmpty) {
      Placemark place = placemarks.first;
      return "${place.locality}";
    } else {
      return "Nessuna posizione trovata";
    }
  } catch (e) {
    return "Impossibile trovare posizione: $e";
  }
}
