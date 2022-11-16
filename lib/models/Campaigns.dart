class Campaign {
  final String name,
      btnText,
      price,
      route,
      startDate,
      endDate,
      description,
      image;
  final int order;
  final bool status;
  Campaign(
      {this.name = '',
      this.route = '',
      this.btnText = 'Reservation',
      this.price = '',
      this.startDate = '',
      this.endDate = '',
      this.status = false,
      this.description = '',
      this.image = '',
      this.order = 0});
}

List campaignList = [
  Campaign(
    order: 1,
    name: "Fitness",
    image:
        "https://img.freepik.com/free-photo/gym-with-indoor-cycling-equipment_23-2149270210.jpg",
    description: 'Kişiye Özel Antrenör %30 İndirim',
    startDate: "12/07/2022",
    endDate: "12/07/2022",
  ),
  Campaign(
    order: 2,
    name: "SPA",
    image:
        "https://img.freepik.com/free-photo/beauty-spa_144627-46202.jpg?t=st=1665745030~exp=1665745630~hmac=11ab39cf182b45eb73feda8dacc9a004258eeb80f5e5777f7999b9b478b232fd",
    description: 'ALIVA SPA\'da %30 İndirim',
    startDate: "12/07/2022",
    endDate: "12/07/2022",
  ),
  Campaign(
    order: 3,
    name: "Kids",
    image:
        "https://img.freepik.com/free-photo/young-mother-with-her-little-daughter-beach-by-ocean_1303-15521.jpg",
    description:
        'Çocuklar için ÜCRETSİZ konaklama (0-11.99 yaş arası belirli oda tiplerinde',
    startDate: "12/07/2022",
    endDate: "12/07/2022",
  ),
  Campaign(
    order: 4,
    name: "Breakfast",
    image:
        "https://img.freepik.com/free-photo/diner-platter-with-olives-cheese-vegetables_2829-11264.jpg",
    description: 'ÜCRETSİZ Pazar günleri Odaya Kahvaltı',
    startDate: "12/07/2022",
    endDate: "12/07/2022",
  ),
  Campaign(
    order: 5,
    name: "Transfer",
    image:
        "https://img.freepik.com/free-photo/businesswoman-getting-taxi-cab_23-2149236688.jpg?w=1380&t=st=1666256613~exp=1666257213~hmac=3c473945bce10ef1e96a74aa49b63e48879b51fd881bd46cde3fc0d7bd546262",
    description:
        'ÜCRETSİZ Havalimanı-Otel Gidiş-Dönüş Transferi (Müsaitlik Doğrultusunda',
    startDate: "12/07/2022",
    endDate: "12/07/2022",
  ),
  Campaign(
    order: 6,
    name: "Teleferik",
    image:
        "https://kemer-antalya.com/tr//wp-content/uploads/2019/12/olympos-teleferik.jpg",
    description:
        'ÜCRETSİZ Olympos Teleferik Tahtalı Dağı (En az 10 kişi için geçerlidir. Konaklama süresince bir kez kullanılır',
    startDate: "12/07/2022",
    endDate: "12/07/2022",
  ),
];
