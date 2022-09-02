class AssociatedDrug {
  String? name;
  String? dose;
  String? strength;

  AssociatedDrug(String name, String dose, String strength) {
    this.name = name;
    this.dose = dose;
    this.strength = strength;
  }
  AssociatedDrug.fromJson(Map json) {
    name = json['name'];
    dose = json['dose'];
    strength = json['strength'];
  }
  Map toJson() {
    return {
      "name": name,
      "dose": dose,
      "strength": strength,
    };
  }
}
