class DailySkinCareModel {


   String? title;
   String? description;
   String? time;
   String? imgurl;

  DailySkinCareModel({this.title, this.description, this.time,this.imgurl});

  @override
  String toString() {
    return 'DailySkinCareModel{title: $title, description: $description, time: $time, imgurl: $imgurl}';
  }
}