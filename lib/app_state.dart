import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<String> _selectedRatings = [];
  List<String> get selectedRatings => _selectedRatings;
  set selectedRatings(List<String> value) {
    _selectedRatings = value;
  }

  void addToSelectedRatings(String value) {
    _selectedRatings.add(value);
  }

  void removeFromSelectedRatings(String value) {
    _selectedRatings.remove(value);
  }

  void removeAtIndexFromSelectedRatings(int index) {
    _selectedRatings.removeAt(index);
  }

  void updateSelectedRatingsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _selectedRatings[index] = updateFn(_selectedRatings[index]);
  }

  void insertAtIndexInSelectedRatings(int index, String value) {
    _selectedRatings.insert(index, value);
  }

  bool _isProfileComplete = false;
  bool get isProfileComplete => _isProfileComplete;
  set isProfileComplete(bool value) {
    _isProfileComplete = value;
  }

  List<dynamic> _selectedAirport = [];
  List<dynamic> get selectedAirport => _selectedAirport;
  set selectedAirport(List<dynamic> value) {
    _selectedAirport = value;
  }

  void addToSelectedAirport(dynamic value) {
    _selectedAirport.add(value);
  }

  void removeFromSelectedAirport(dynamic value) {
    _selectedAirport.remove(value);
  }

  void removeAtIndexFromSelectedAirport(int index) {
    _selectedAirport.removeAt(index);
  }

  void updateSelectedAirportAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _selectedAirport[index] = updateFn(_selectedAirport[index]);
  }

  void insertAtIndexInSelectedAirport(int index, dynamic value) {
    _selectedAirport.insert(index, value);
  }

  String _selectedState = 'aviation_professional';
  String get selectedState => _selectedState;
  set selectedState(String value) {
    _selectedState = value;
  }

  String _ffaCertificate = 'student';
  String get ffaCertificate => _ffaCertificate;
  set ffaCertificate(String value) {
    _ffaCertificate = value;
  }

  String _certificateRatings = '';
  String get certificateRatings => _certificateRatings;
  set certificateRatings(String value) {
    _certificateRatings = value;
  }

  String _selectedTail = '';
  String get selectedTail => _selectedTail;
  set selectedTail(String value) {
    _selectedTail = value;
  }

  List<String> _selectedFFACertificate = [];
  List<String> get selectedFFACertificate => _selectedFFACertificate;
  set selectedFFACertificate(List<String> value) {
    _selectedFFACertificate = value;
  }

  void addToSelectedFFACertificate(String value) {
    _selectedFFACertificate.add(value);
  }

  void removeFromSelectedFFACertificate(String value) {
    _selectedFFACertificate.remove(value);
  }

  void removeAtIndexFromSelectedFFACertificate(int index) {
    _selectedFFACertificate.removeAt(index);
  }

  void updateSelectedFFACertificateAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _selectedFFACertificate[index] = updateFn(_selectedFFACertificate[index]);
  }

  void insertAtIndexInSelectedFFACertificate(int index, String value) {
    _selectedFFACertificate.insert(index, value);
  }

  String _faaPilotDropdownSelcted = '';
  String get faaPilotDropdownSelcted => _faaPilotDropdownSelcted;
  set faaPilotDropdownSelcted(String value) {
    _faaPilotDropdownSelcted = value;
  }

  bool _isLoadingStart = false;
  bool get isLoadingStart => _isLoadingStart;
  set isLoadingStart(bool value) {
    _isLoadingStart = value;
  }

  int _selectedCompanyID = 0;
  int get selectedCompanyID => _selectedCompanyID;
  set selectedCompanyID(int value) {
    _selectedCompanyID = value;
  }

  int _selectedPlaceID = 0;
  int get selectedPlaceID => _selectedPlaceID;
  set selectedPlaceID(int value) {
    _selectedPlaceID = value;
  }

  int _selectedPositionID = 0;
  int get selectedPositionID => _selectedPositionID;
  set selectedPositionID(int value) {
    _selectedPositionID = value;
  }

  int _selectedAirportID = 0;
  int get selectedAirportID => _selectedAirportID;
  set selectedAirportID(int value) {
    _selectedAirportID = value;
  }

  List<int> _selectedRatingsIds = [];
  List<int> get selectedRatingsIds => _selectedRatingsIds;
  set selectedRatingsIds(List<int> value) {
    _selectedRatingsIds = value;
  }

  void addToSelectedRatingsIds(int value) {
    _selectedRatingsIds.add(value);
  }

  void removeFromSelectedRatingsIds(int value) {
    _selectedRatingsIds.remove(value);
  }

  void removeAtIndexFromSelectedRatingsIds(int index) {
    _selectedRatingsIds.removeAt(index);
  }

  void updateSelectedRatingsIdsAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _selectedRatingsIds[index] = updateFn(_selectedRatingsIds[index]);
  }

  void insertAtIndexInSelectedRatingsIds(int index, int value) {
    _selectedRatingsIds.insert(index, value);
  }

  List<String> _selectedAirCtraftTail = [];
  List<String> get selectedAirCtraftTail => _selectedAirCtraftTail;
  set selectedAirCtraftTail(List<String> value) {
    _selectedAirCtraftTail = value;
  }

  void addToSelectedAirCtraftTail(String value) {
    _selectedAirCtraftTail.add(value);
  }

  void removeFromSelectedAirCtraftTail(String value) {
    _selectedAirCtraftTail.remove(value);
  }

  void removeAtIndexFromSelectedAirCtraftTail(int index) {
    _selectedAirCtraftTail.removeAt(index);
  }

  void updateSelectedAirCtraftTailAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _selectedAirCtraftTail[index] = updateFn(_selectedAirCtraftTail[index]);
  }

  void insertAtIndexInSelectedAirCtraftTail(int index, String value) {
    _selectedAirCtraftTail.insert(index, value);
  }

  List<String> _selctedInstructor = [];
  List<String> get selctedInstructor => _selctedInstructor;
  set selctedInstructor(List<String> value) {
    _selctedInstructor = value;
  }

  void addToSelctedInstructor(String value) {
    _selctedInstructor.add(value);
  }

  void removeFromSelctedInstructor(String value) {
    _selctedInstructor.remove(value);
  }

  void removeAtIndexFromSelctedInstructor(int index) {
    _selctedInstructor.removeAt(index);
  }

  void updateSelctedInstructorAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _selctedInstructor[index] = updateFn(_selctedInstructor[index]);
  }

  void insertAtIndexInSelctedInstructor(int index, String value) {
    _selctedInstructor.insert(index, value);
  }

  String _selectedEndorcement = '';
  String get selectedEndorcement => _selectedEndorcement;
  set selectedEndorcement(String value) {
    _selectedEndorcement = value;
  }

  String _selectedEndorcementType = '';
  String get selectedEndorcementType => _selectedEndorcementType;
  set selectedEndorcementType(String value) {
    _selectedEndorcementType = value;
  }

  DateTime? _flightTime;
  DateTime? get flightTime => _flightTime;
  set flightTime(DateTime? value) {
    _flightTime = value;
  }

  DateTime? _flightInstrumentTime;
  DateTime? get flightInstrumentTime => _flightInstrumentTime;
  set flightInstrumentTime(DateTime? value) {
    _flightInstrumentTime = value;
  }

  List<dynamic> _feedsDataList = [];
  List<dynamic> get feedsDataList => _feedsDataList;
  set feedsDataList(List<dynamic> value) {
    _feedsDataList = value;
  }

  void addToFeedsDataList(dynamic value) {
    _feedsDataList.add(value);
  }

  void removeFromFeedsDataList(dynamic value) {
    _feedsDataList.remove(value);
  }

  void removeAtIndexFromFeedsDataList(int index) {
    _feedsDataList.removeAt(index);
  }

  void updateFeedsDataListAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _feedsDataList[index] = updateFn(_feedsDataList[index]);
  }

  void insertAtIndexInFeedsDataList(int index, dynamic value) {
    _feedsDataList.insert(index, value);
  }

  bool _isPilotForumOpen = true;
  bool get isPilotForumOpen => _isPilotForumOpen;
  set isPilotForumOpen(bool value) {
    _isPilotForumOpen = value;
  }

  bool _isOwnerForumOpen = true;
  bool get isOwnerForumOpen => _isOwnerForumOpen;
  set isOwnerForumOpen(bool value) {
    _isOwnerForumOpen = value;
  }

  String _faaDropDownValue = '';
  String get faaDropDownValue => _faaDropDownValue;
  set faaDropDownValue(String value) {
    _faaDropDownValue = value;
  }

  bool _isJobValueOpen = true;
  bool get isJobValueOpen => _isJobValueOpen;
  set isJobValueOpen(bool value) {
    _isJobValueOpen = value;
  }

  String _selectedFlight1 = '';
  String get selectedFlight1 => _selectedFlight1;
  set selectedFlight1(String value) {
    _selectedFlight1 = value;
  }

  String _selctedFlightName = '';
  String get selctedFlightName => _selctedFlightName;
  set selctedFlightName(String value) {
    _selctedFlightName = value;
  }

  dynamic _selectedFlight;
  dynamic get selectedFlight => _selectedFlight;
  set selectedFlight(dynamic value) {
    _selectedFlight = value;
  }

  bool _forumSearchOpen = false;
  bool get forumSearchOpen => _forumSearchOpen;
  set forumSearchOpen(bool value) {
    _forumSearchOpen = value;
  }

  bool _joSearchOpen = false;
  bool get joSearchOpen => _joSearchOpen;
  set joSearchOpen(bool value) {
    _joSearchOpen = value;
  }
}
