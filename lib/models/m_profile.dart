class ProfileModel {
  String strId;
  String strName;
  String strPhone;
  String strImage;
  ProfileModel(
      {required this.strId,
      required this.strName,
      required this.strPhone,
      required this.strImage});

  factory ProfileModel.fromAPI({required Map<String, dynamic> data}) {
    return ProfileModel(
        strId: data["id"].toString(),
        strName: data["name"].toString(),
        strPhone: data["phone"].toString(),
        strImage: data["image"].toString());
  }
}

// {
//   "meta": {
//     "success": false,
//     "message": "Successfully Fetched"
//   },
//   "data": {
//     "id": "66d5669614588534315734db",
//     "name": "Kyaw Phyoe Han",
//     "phone": "09123123123",
//     "token": "c36e02cd_ba1e_5714_8e5c_b90db788e265",
//     "image": "http://192.168.100.96:4321/userImages/1725261462878_luffy-scar-one-piece-4k-wallpaper-uhdpaper.com-264@3@a.jpg"
//   }
// }