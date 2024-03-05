// import 'package:flutter/material.dart';
// import 'package:geocoding/geocoding.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:location/location.dart';
// import 'package:map_picker/map_picker.dart';
// import 'package:remy/common/models/page_state/page_state.dart';
// import 'package:remy/core/utils/debouncer.dart';
// import 'package:remy/feature/app/presentation/widgets/app_loader.dart';
// import 'package:remy/feature/app/presentation/widgets/app_svg_picture.dart';
// import 'package:remy/generated/assets.dart';
// import 'package:remy/generated/map_service.dart';
//
// class AppMap extends StatefulWidget {
//   const AppMap({
//     super.key,
//     this.initLatLng,
//     required this.onChangeLocation,
//     required this.onChangePlacemark,
//   });
//
//   final LatLng? initLatLng;
//   final Function(LatLng latLng) onChangeLocation;
//   final Function(Placemark? placemark) onChangePlacemark;
//
//   @override
//   State<AppMap> createState() => AppMapState();
// }
//
// class AppMapState extends State<AppMap> {
//   late final ValueNotifier<PageState<LatLng?>> _locationNotifier = ValueNotifier(const PageState.init());
//   late ValueNotifier<MapType> _mapTypeNotifier;
//
//   late CameraPosition _cameraPosition;
//   late MapPickerController mapPickerController;
//   GoogleMapController? _controller;
//   late Debounce _debounce;
//
//   @override
//   void initState() {
//     _mapTypeNotifier = ValueNotifier(MapType.normal);
//     mapPickerController = MapPickerController();
//     _debounce = Debounce();
//     _initLocation();
//     super.initState();
//   }
//
//   _initLocation() async {
//     LatLng latLng;
//     if (widget.initLatLng != null) {
//       latLng = widget.initLatLng!;
//     } else {
//       LocationData? location = await MapService().getLocation();
//       if (location == null) {
//         _locationNotifier.value = const PageState.error();
//         return;
//       }
//       latLng = LatLng(location.latitude!, location.longitude!);
//     }
//     _cameraPosition = CameraPosition(target: latLng, zoom: 14);
//     _locationNotifier.value = PageState.loaded(data: latLng);
//     _updateInfo(latLng);
//   }
//
//   _updateInfo(LatLng latLng) {
//     widget.onChangeLocation(latLng);
//     _debounce.run(() async {
//       Placemark? placemark = await MapService().getPlacemark(latLng);
//       widget.onChangePlacemark(placemark);
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ValueListenableBuilder<PageState<LatLng?>>(
//         valueListenable: _locationNotifier,
//         builder: (context, latLng, _) {
//           if (latLng.isLoading || latLng.isInit) {
//             return Center(heightFactor: 10, child: AppLoader());
//           } else if (latLng.isError || latLng.isEmpty) {
//             return Center(
//               child: IconButton(
//                 onPressed: () => _initLocation(),
//                 icon: const Icon(Icons.refresh),
//               ),
//             );
//           }
//           return ValueListenableBuilder<MapType>(
//               valueListenable: _mapTypeNotifier,
//               builder: (context, mapType, _) {
//                 return MapPicker(
//                   mapPickerController: mapPickerController,
//                   iconWidget: const AppSvgPicture(Assets.svoLocationIcon, height: 60),
//                   child: GoogleMap(
//                     initialCameraPosition: CameraPosition(target: LatLng(latLng.getDataWhenSuccess!.latitude, latLng.getDataWhenSuccess!.longitude), zoom: 14),
//                     mapType: mapType,
//                     zoomControlsEnabled: false,
//                     onMapCreated: (controller) {
//                       _controller = controller;
//                     },
//                     onCameraMoveStarted: () {
//                       mapPickerController.mapMoving!();
//                     },
//                     onCameraMove: (cameraPosition) {
//                       _cameraPosition = cameraPosition;
//                     },
//                     onCameraIdle: () async {
//                       mapPickerController.mapFinishedMoving!();
//                       final latLng = LatLng(_cameraPosition.target.latitude, _cameraPosition.target.longitude);
//                       _updateInfo(latLng);
//                       // saveLatLng
//                     },
//                   ),
//                 );
//               });
//         });
//   }
//
//   changeMapType() {
//     if (_mapTypeNotifier.value == MapType.normal) {
//       _mapTypeNotifier.value = MapType.satellite;
//       return;
//     }
//     _mapTypeNotifier.value = MapType.normal;
//   }
//
//   getLocation() async {
//     final latLngTemp = _locationNotifier.value.getDataWhenSuccess;
//     LocationData? location = await MapService().getLocation();
//     if (location == null) {
//       _locationNotifier.value = const PageState.error();
//       return;
//     }
//
//     LatLng latLng = LatLng(location.latitude!, location.longitude!);
//     if (latLngTemp?.latitude == latLng.latitude && latLngTemp?.longitude == latLng.longitude) {
//       return;
//     }
//     final cameraPosition = CameraPosition(target: latLng, zoom: 14);
//     await _controller?.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
//     _updateInfo(latLng);
//   }
// }
