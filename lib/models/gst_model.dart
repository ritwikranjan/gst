class GstModel {
  int id;
  String name;
  String status;
  String address;
  String taxPayerType;
  String businessType;
  DateTime dateOfRegistration;

  GstModel({
    required this.id,
    required this.name,
    required this.status,
    required this.address,
    required this.taxPayerType,
    required this.businessType,
    required this.dateOfRegistration,
  });

  factory GstModel.fromJson(Map<String, dynamic> json) {
    return GstModel(
      id: int.parse(json['id']),
      name: json['name'],
      status: json['status'],
      address: json['address'],
      taxPayerType: json['taxPayerType'],
      businessType: json['businessType'],
      dateOfRegistration: DateTime.fromMillisecondsSinceEpoch(json['dateOfRegistration']),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['status'] = status;
    data['address'] = address;
    data['taxPayerType'] = taxPayerType;
    data['businessType'] = businessType;
    data['dateOfRegistration'] = dateOfRegistration;
    return data;
  }

  @override
  String toString() {
    return 'GstModel{id: $id, name: $name, status: $status, address: $address, taxPayerType: $taxPayerType, '
        'businessType: $businessType, dateOfRegistration: $dateOfRegistration}';
  }
}
