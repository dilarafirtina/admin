import 'package:admin/constants.dart';
import 'package:admin/widgets/grid_container.dart';
import 'package:flutter/material.dart';

class UserDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return gridContainer(
      context: context,
      title: "Kullanıcı Detay",
      child: [
        Padding(
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Cinsiyet"),
                    SizedBox(
                      width: defaultPadding,
                    ),
                    Text("Erkek")
                  ],
                ),
                SizedBox(height: defaultPadding),
                Row(
                  children: [
                    Text("Ad"),
                    SizedBox(
                      width: defaultPadding,
                    ),
                    Text("Caner")
                  ],
                ),
                SizedBox(height: defaultPadding),
                Row(
                  children: [
                    Text("Kişisel Mail Adresi"),
                    SizedBox(
                      width: defaultPadding,
                    ),
                    Text("canersonmez@gmail.com")
                  ],
                ),
                SizedBox(height: defaultPadding),
                Row(
                  children: [
                    Text("Şifre"),
                    SizedBox(
                      width: defaultPadding,
                    ),
                    Text("**********")
                  ],
                ),
                SizedBox(height: defaultPadding),
                Row(
                  children: [
                    Text("Acenta Mail Adresi"),
                    SizedBox(
                      width: defaultPadding,
                    ),
                    Text("caner@penusula.com")
                  ],
                ),
                SizedBox(height: defaultPadding),
                Row(
                  children: [
                    Text("Acenta Adı"),
                    SizedBox(
                      width: defaultPadding,
                    ),
                    Text("PENISULA")
                  ],
                ),
                SizedBox(height: defaultPadding),
                Row(
                  children: [
                    Text("Acenta Adresi"),
                    SizedBox(
                      width: defaultPadding,
                    ),
                    Text("-")
                  ],
                ),
                SizedBox(height: defaultPadding),
                Row(
                  children: [
                    Text("Acenta Şehri"),
                    SizedBox(
                      width: defaultPadding,
                    ),
                    Text("Antalya")
                  ],
                ),
                SizedBox(height: defaultPadding),
                Row(
                  children: [
                    Text("Acenta Ülkesi"),
                    SizedBox(
                      width: defaultPadding,
                    ),
                    Text("Türkiye")
                  ],
                ),
                SizedBox(height: defaultPadding),
                Row(
                  children: [
                    Text("Acenta Telefonu"),
                    SizedBox(
                      width: defaultPadding,
                    ),
                    Text("+90 242 367 83 83")
                  ],
                ),
                SizedBox(height: defaultPadding),
                Row(
                  children: [
                    Text("Acenta Sahibinin Adı"),
                    SizedBox(
                      width: defaultPadding,
                    ),
                    Text("Mahmut Orhan")
                  ],
                ),
                SizedBox(height: defaultPadding),
                Row(
                  children: [
                    Text("KVKK"),
                    SizedBox(
                      width: defaultPadding,
                    ),
                    SizedBox(
                      width: 250,
                      child: Row(
                        children: [
                          Checkbox(
                              autofocus: false,
                              activeColor: secondaryColor,
                              checkColor: Colors.white,
                              value: true,
                              onChanged: (value) => {false}),
                          SizedBox(width: defaultPadding),
                          Text("Kabul Ediyorum")
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: defaultPadding),
                Row(
                  children: [
                    Text("NG Bonus Sözleşmesi"),
                    SizedBox(
                      width: defaultPadding,
                    ),
                    SizedBox(
                      width: 250,
                      child: Row(
                        children: [
                          Checkbox(
                              autofocus: false,
                              activeColor: secondaryColor,
                              checkColor: Colors.white,
                              value: true,
                              onChanged: (value) => {false}),
                          SizedBox(width: defaultPadding),
                          Text("Kabul Ediyorum")
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ))
      ],
    );
  }
}
