class RecentWork {
  final String image;
  final String category;
  final String title;
  final int id;

  RecentWork({
    required this.image,
    required this.category,
    required this.title,
    required this.id,
  });
}

// Fake data of recent work model.

List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "An app which generates names for new born",
    category: "by Flutter",
    image: "assets/images/1.png",
  ),
  RecentWork(
    id: 2,
    title: "A Fitness app that built on demand",
    category: "by Flutter",
    image: "assets/images/2.png",
  ),
  RecentWork(
    id: 3,
    title: "Demo UI of a plant app",
    category: "by Flutter",
    image: "assets/images/3.png",
  ),
  RecentWork(
    id: 4,
    title: "This is an animated car control app",
    category: "by Flutter",
    image: "assets/images/4.png",
  ),
];

List<RecentWork> recentWorksTr = [
  RecentWork(
    id: 1,
    title: "Yeni doğmuş bebekler için isim bulan bir uygulama",
    category: "Flutter ile",
    image: "assets/images/1.png",
  ),
  RecentWork(
    id: 2,
    title: "İstek üzerine yapılmış bir fitness uygulaması",
    category: "Flutter ile",
    image: "assets/images/2.png",
  ),
  RecentWork(
    id: 3,
    title: "Prototip bir bitki uygulaması",
    category: "Flutter ile",
    image: "assets/images/3.png",
  ),
  RecentWork(
    id: 4,
    title: "Animasyonlu bir araç kontrol uygulaması",
    category: "Flutter ile",
    image: "assets/images/4.png",
  ),
];
