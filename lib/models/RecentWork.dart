class RecentWork {
  final String image, category, title, subTitle, link;
  final int id;

  RecentWork(
      {required this.id,
      required this.image,
      required this.category,
      required this.title,
      required this.subTitle,
      required this.link});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "FPT Play",
    subTitle: "An application that helps customers of FPT Telecom to watch online TV content, feature films, sports, events,... like Netflix.",
    category: "Android Project",
    image: "assets/images/FPTPlay.jpg",
    link: "https://play.google.com/store/apps/details?id=com.fplay.activity"
  ),
  RecentWork(
    id: 2,
    title: "Genshin Codex",
    subTitle: "A wiki application for gamer of Genshin Impact game, building with Flutter.",
    category: "Flutter Project",
    image: "assets/images/GCodex.jpg",
    link: ""
  ),
  RecentWork(
    id: 3,
    title: "Foxy TV",
    subTitle: "An application that helps customers of FPT Television to watch online TV content, feature films, sports, events,... like Netflix.",
    category: "Android Project",
    image: "assets/images/Foxy.png",
    link: "https://play.google.com/store/apps/details?id=vn.fpt.truyenhinh.foxy&hl=vi&gl=US"
  ),
  RecentWork(
    id: 4,
    title: "Hydrelis",
    subTitle: "An application to control water valve via wifi (IOT device)",
    category: "Android Project",
    image: "assets/images/Hydrelis.png",
    link: "https://play.google.com/store/apps/details?id=com.hydrelis.stopflow"
  ),
];
