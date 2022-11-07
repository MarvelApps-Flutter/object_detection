class ListModel
{
  final String? imageUrl;
  final String? title;
  final String? subTitle;

  ListModel({this.imageUrl, this.title, this.subTitle});  
}

List<ListModel> listItems = [
  ListModel(imageUrl: "assets/images/frame1.png",title: "Step 1",subTitle: "Place your phone in front of object"),
  ListModel(imageUrl: "assets/images/frame2.png",title: "Step 2",subTitle: "Get detected object"),
];