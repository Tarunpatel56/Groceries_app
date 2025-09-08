class TimeSlotModel {
  final String id;        // unique id (optional)
  final String startTime; // ex: "8 AM"
  final String endTime;   // ex: "11 AM"
     // slot selected hai ya nahi

  TimeSlotModel({
    required this.id,
    required this.startTime,
    required this.endTime,
  
  });

  String get displayTime => "$startTime - $endTime";

  // JSON se data banane ke liye
  factory TimeSlotModel.fromJson(Map<String, dynamic> json) {
    return TimeSlotModel(
      id: json["id"],
      startTime: json["startTime"],
      endTime: json["endTime"],
      
    );
  }

  // JSON me convert karne ke liye
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "startTime": startTime,
      "endTime": endTime,
     
    }; 
  }
}
List timeSlots = [
  TimeSlotModel(id: "1", startTime: "8 AM", endTime: "11 AM"),
  TimeSlotModel(id: "2", startTime: "11 AM", endTime: "12 PM", ),
  TimeSlotModel(id: "3", startTime: "12 PM", endTime: "2 PM"),
  TimeSlotModel(id: "4", startTime: "2 PM", endTime: "4 PM"),
  TimeSlotModel(id: "5", startTime: "4 PM", endTime: "6 PM"),
  TimeSlotModel(id: "6", startTime: "6 PM", endTime: "8 PM"),
];
