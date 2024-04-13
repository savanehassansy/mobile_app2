class Employ {
  int? id;
  String? employeeName;
  int? employeeSalary;
  int? employeeAge;
  String? profileImage;

  Employ(
      {this.id,
        this.employeeName,
        this.employeeSalary,
        this.employeeAge,
        this.profileImage});

  Employ.fromJson(Map<String, dynamic> json) {
    id = json['id'] ;
    employeeName = json['employee_name'];
    employeeSalary = json['employee_salary'] as int?;
    employeeAge = json['employee_age'] as int? ;
    profileImage = json['profile_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id  ;
    data['employee_name'] = this.employeeName;
    data['employee_salary'] = this.employeeSalary;
    data['employee_age'] = this.employeeAge;
    data['profile_image'] = this.profileImage;
    return data;
  }

}
