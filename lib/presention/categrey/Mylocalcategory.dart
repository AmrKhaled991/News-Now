
class Mylocalcategory {
  int? color;
  String?photo;
  String? title;
  String? id;
  Mylocalcategory ({required this.title,required this.color,this.id,required this.photo}
  );
//business entertainment general health science sports
  static List<Mylocalcategory>Listofcategory(){
    return[
      Mylocalcategory(title: 'sports',
          color: 0xffC91C22,
          photo: 'assets/images/sports.png',id: 'sports' ),
      Mylocalcategory(title: 'general',
          color: 0xff003E90,
          photo: 'assets/images/Politics.png',id: 'general'),
      Mylocalcategory(title: 'health',
          color: 0xffED1E79,
          photo: 'assets/images/health.png',id: 'health'),
      Mylocalcategory(title: 'business',
          color: 0xffCF7E48,
          photo: 'assets/images/bussines.png',id: 'business'),
      Mylocalcategory(title: 'entertainment',
          color: 0xff4882CF,
          photo: 'assets/images/environment.png',id: 'entertainment'),
      Mylocalcategory(title: 'science',
          color: 0xffF2D352,
          photo: 'assets/images/science.png',id: 'science'),
    ];
  }
}
