class Factor {
  final String name, dueDate, currency, hotel, color, market;

  Factor(
      {this.name = '',
      this.dueDate = '',
      this.currency = '',
      this.hotel = '',
      this.color = '',
      this.market = ''});
}

List factorList = [
  Factor(
    name: "Fitness",
    color:
        "https://img.freepik.com/free-photo/gym-with-indoor-cycling-equipment_23-2149270210.jpg",
    hotel: 'Kişiye Özel Antrenör %30 İndirim',
    dueDate: "12/07/2022",
    currency: "TRY",
    market: "",
  ),
  Factor(
    name: "SPA",
    color:
        "https://img.freepik.com/free-photo/beauty-spa_144627-46202.jpg?t=st=1665745030~exp=1665745630~hmac=11ab39cf182b45eb73feda8dacc9a004258eeb80f5e5777f7999b9b478b232fd",
    hotel: 'ALIVA SPA\'da %30 İndirim',
    dueDate: "12/07/2022",
    currency: "EUR",
    market: "",
  ),
  Factor(
    name: "Kids",
    color:
        "https://img.freepik.com/free-photo/young-mother-with-her-little-daughter-beach-by-ocean_1303-15521.jpg",
    hotel:
        'Çocuklar için ÜCRETSİZ konaklama (0-11.99 yaş arası belirli oda tiplerinde',
    dueDate: "12/07/2022",
    currency: "EUR",
    market: "",
  )
];
