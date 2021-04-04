import 'package:flutter/material.dart';

void main() => runApp(MyList());

class Product {
  int id;
  String name;
  double price;
  String picture;

  Product(
      int id,
      String name,
      double price,
      String picture,
      ) {
    this.id = id;
    this.name = name;
    this.price = price;
    this.picture = picture;
  }
}

class MyList extends StatefulWidget {
  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {

  List<Product> products = [
    Product(1, "กระเพราหมูกรอบ", 40, "https://f.ptcdn.info/811/066/000/q0q9th8kpak7tXb1ycEW-o.jpg" ),
    Product(2, "ข้าวผัด", 30, "https://lh3.googleusercontent.com/proxy/NoZffGGVfvQqWnLa21Z930Tt2VFn2cgLHgopDal2utR5LxERq6NPwlUOXL_-Ed7zIc43Y-D5dGNQpZyO3WrGpfEtQFzgz9djmGFWzBl2tkFGsVhLeLI8mcvArnnE0LdREUoSCEZKREGKnvvb"),
    Product(3, "ผัดคะน้าหมูกรอบ", 35, "https://www.pim.in.th/images/all-side-dish-pork/crispy-pork-with-kale/crispy-pork-with-kale-15.JPG"),
    Product(4, "ราดหน้า", 30, "https://elainesporkandpie.com/wp-content/uploads/2020/11/%E0%B8%AA%E0%B8%B9%E0%B8%95%E0%B8%A3%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B8%97%E0%B8%B3%E0%B8%A3%E0%B8%B2%E0%B8%94%E0%B8%AB%E0%B8%99%E0%B9%89%E0%B8%B2%E0%B9%80%E0%B8%88%E0%B8%9B%E0%B8%B0%E0%B8%9A%E0%B8%99-800x445.jpg"),
    Product(5, "ไก่หวาน", 35, "https://lh3.googleusercontent.com/proxy/xwyvQ_LOIxxj8kDTM0FbSflcFS_eI14FoE8hKcfNP8QHPV04MsFeuIK5tR9K0HYsIeAHE_DuUGJ5Ww51OKixcegVmEnu5N8fEIzp7n9Y0IQRfuJnj-53Yexn1oSdj4k"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('All Manu'),
        ),
        body: Column(
          // children: myProduct.map((prd) => Text(prd) ).toList()
          children: products.map((p) {
            return ListTile(

              leading: Image.network(p.picture),
              title: Text(p.name),
              subtitle: Text("Price : ฿" + p.price.toString()),
            );
          }).toList(),
        ),
      ),
    );
  }
}