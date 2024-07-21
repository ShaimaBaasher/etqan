import 'bloc/sign_in_three_bloc.dart';
import 'models/sign_in_three_model.dart';
import 'package:etqan_client/core/app_export.dart';
import 'package:etqan_client/widgets/custom_elevated_button.dart';
import 'package:etqan_client/widgets/custom_floating_button.dart';
import 'package:etqan_client/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter_google_places/flutter_google_places.dart' as loc;
import 'package:google_api_headers/google_api_headers.dart' as header;
import 'package:google_maps_webservice/places.dart' as places;
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class SignInThreeScreen extends StatefulWidget {
  const SignInThreeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SignInThreeBloc>(
      create: (context) => SignInThreeBloc(
        SignInThreeState(
          signInThreeModelObj: SignInThreeModel(),
        ),
      )..add(SignInThreeInitialEvent()),
      child: SignInThreeScreen(),
    );
  }

  @override
  State<SignInThreeScreen> createState() => _SignInThreeScreenState();
}

class _SignInThreeScreenState extends State<SignInThreeScreen> {
  Location location = Location();
  TextEditingController locationController = TextEditingController();
  final Map<String, Marker> _markers = {};

  double latitude = 0;
  double longitude = 0;
  GoogleMapController? _controller;
  final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(33.298037, 44.2879251),
    zoom: 10,
  );

  @override
  void initState() {
    super.initState();
    getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInThreeBloc, SignInThreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              height: SizeUtils.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: GoogleMap(
                      mapType: MapType.normal,
                      myLocationEnabled: true,
                      initialCameraPosition: _kGooglePlex,
                      markers: _markers.values.toSet(),
                      onTap: (LatLng latlng) {
                        latitude = latlng.latitude;
                        longitude = latlng.longitude;
                        final marker = Marker(
                          markerId: const MarkerId('myLocation'),
                          position: LatLng(latitude, longitude),
                          infoWindow: const InfoWindow(
                            title:
                                'AppLocalizations.of(context).will_deliver_here',
                          ),
                        );
                        setState(() {
                          _markers['myLocation'] = marker;
                        });
                      },
                      onMapCreated: (GoogleMapController controller) {
                        _controller = controller;
                      },
                    ),
                  ),
                  Positioned(
                    child: _buildSignInForm(context),
                    top: 0,
                    left: 0,
                    width: SizeUtils.width,
                  ),
                  CustomElevatedButton(
                    width: 250.h,
                    alignment: Alignment.bottomCenter,
                    text: "msg4".tr,
                    margin: EdgeInsets.only(
                      left: 40.h,
                      right: 20.h,
                      bottom: 16.v,
                    ),
                    onPressed: () {
                      onTaptf(context);
                    },
                  ),
                ],
              ),
            ),
            floatingActionButton: _buildConfirmLocationButton(
              context,
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSignInForm(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.gradientWhiteAToOnPrimaryContainer,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgClose,
                  height: 53.adaptSize,
                  width: 53.adaptSize,
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 17.v,
                    bottom: 10.v,
                  ),
                  child: Text(
                    "lbl9".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    onTapTxtWidget(
                      context,
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 19.v, bottom: 10.v),
                    child: Text(
                      "lbl8".tr,
                      style: CustomTextStyles.titleSmallPrimary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.v,
          ),
          CustomTextFormField(
            controller: locationController,
            hintText: "msg3".tr,
            onTap: () {
              // dim background color
            },
            onChanged: (value) async {
              // get suggestions from google places
              if (value.isNotEmpty) {}
            },
          ),
          if (locationController.text.isNotEmpty)
            Container(
              height: 300.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(.6),
                backgroundBlendMode: BlendMode.darken,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: FutureBuilder<List<places.PlacesSearchResult>>(
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return Text(snapshot.data![index].name);
                      },
                    );
                  }
                  return Container(
                    child: Text("Loading..."),
                  );
                },
                future: getAutocomplete(locationController.text),
              ),
            ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmLocationButton(BuildContext context) {
    return CustomFloatingButton(
      height: 45,
      width: 45,
      backgroundColor: appTheme.whiteA700,
      child: CustomImageView(
        imagePath: ImageConstant.imgOutlineMap,
        height: 22.5.v,
        width: 22.5.h,
      ),
      onTap: () {
        getCurrentLocation();
      },
    );
  }

  Future<List<places.PlacesSearchResult>> getAutocomplete(String search) async {
    var key = 'AIzaSyCf9Ow9c5jLWgWw9o6jN8t8g3Tqz8m9bq0';
    var url =
        'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$search&types=(cities)&key=$key';
    var response = await http.get(Uri.parse(url));
    var json = convert.jsonDecode(response.body);
    var jsonResults = json['predictions'] as List;
    return jsonResults
        .map((place) => places.PlacesSearchResult.fromJson(place))
        .toList();
  }

  Future<void> _handleSearch() async {
    places.Prediction? p = await loc.PlacesAutocomplete.show(
      context: context,
      apiKey: '',
      onError: onError, // call the onError function below
      mode: loc.Mode.overlay,
      language: 'en', //you can set any language for search
      strictbounds: false,
      types: [],
      decoration: InputDecoration(
        hintText: 'search',
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
      ),
      // components: [], // you can determine search for just one country
    );

    displayPrediction(p!, ScaffoldState());
  }

  void onError(places.PlacesAutocompleteResponse response) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: 'Message',
        message: response.errorMessage!,
        contentType: ContentType.failure,
      ),
    ));
  }

  Future<void> displayPrediction(
    places.Prediction p,
    ScaffoldState? currentState,
  ) async {
    places.GoogleMapsPlaces _places = places.GoogleMapsPlaces(
      apiKey: "",
      apiHeaders: await const header.GoogleApiHeaders().getHeaders(),
    );
    places.PlacesDetailsResponse detail =
        await _places.getDetailsByPlaceId(p.placeId!);
// detail will get place details that user chose from Prediction search
    final lat = detail.result.geometry!.location.lat;
    final lng = detail.result.geometry!.location.lng;
    _markers.clear(); //clear old marker and set new one
    final marker = Marker(
      markerId: const MarkerId('deliveryMarker'),
      position: LatLng(lat, lng),
      infoWindow: const InfoWindow(
        title: '',
      ),
    );
    setState(() {
      _markers['myLocation'] = marker;
      _controller?.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: LatLng(lat, lng),
            zoom: 15,
          ),
        ),
      );
    });
  }

  getCurrentLocation() async {
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      //check if thelocation service was enable or not
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    LocationData currentPosition = await location.getLocation();
    latitude = currentPosition.latitude!;
    longitude = currentPosition.longitude!;
    final marker = Marker(
      markerId: const MarkerId('myLocation'),
      position: LatLng(latitude, longitude),
      infoWindow: const InfoWindow(
        title: 'you can add any message here',
      ),
    );
    setState(() {
      _markers['myLocation'] = marker;
      _controller?.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: LatLng(latitude, longitude),
            zoom: 15,
          ),
        ),
      );
    });
  }

  onTapTxtWidget(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signInScreen,
    );
  }

  onTaptf(BuildContext context) {
    NavigatorService.popAndPushNamed(
      AppRoutes.signInScreen,
    );
  }
}
