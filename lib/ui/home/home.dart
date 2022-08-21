import 'package:dog_app/model/category_model.dart';
import 'package:dog_app/model/pet_model.dart';
import 'package:dog_app/provider/animal_data_provider.dart';
import 'package:dog_app/ui/details/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:transparent_image/transparent_image.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  // ignore: prefer_final_fields
  int currentIndex = 0;
  List<CategoryModel> _categoryList = [
    CategoryModel(
      category: 'Dogs',
      image: 'https://cdn-icons-png.flaticon.com/512/2064/2064847.png',
    ),
    CategoryModel(
      category: 'Cats',
      image: 'https://cdn-icons-png.flaticon.com/512/1818/1818401.png',
    ),
    CategoryModel(
      category: 'Bunnies',
      image: 'https://cdn-icons-png.flaticon.com/512/347/347401.png',
    ),
    CategoryModel(
      category: 'Parrots',
      image: 'https://cdn-icons-png.flaticon.com/512/427/427568.png',
    ),
    CategoryModel(
      category: 'Cats',
      image: 'https://cdn-icons-png.flaticon.com/512/1818/1818401.png',
    ),
    CategoryModel(
      category: 'Cats',
      image: 'https://cdn-icons-png.flaticon.com/512/1818/1818401.png',
    ),
  ];
  List<String> imageList = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-PMeBPq6bb_vthg_EWPzigHVuadYsvM6VPq6yUJ14m-yl_A2F6Aq_mhsS_9wVLDuBU5g&usqp=CAU',
    'https://indianpets.b-cdn.net/wp-content/uploads/Panting-Samoyed-Dog-289x300.jpg',
    'https://images.unsplash.com/photo-1581888227599-779811939961?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cGV0fGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtN5UCoQjyh8wjgxdGiEwiiOKupIE9RdQKDRzqfWWkXeRikLSAdodNMEINZXSLYsOnmnY&usqp=CAU',
    'https://img.freepik.com/free-photo/thoughts-american-spaniel-puppy-cute-groomed-fluffy-doggy-pet-is-sitting-isolated-yellow-background-studio-photoshot-negative-space-insert-your-text-image_155003-33880.jpg?w=2000',
    'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/golden-retriever-royalty-free-image-506756303-1560962726.jpg?crop=0.672xw:1.00xh;0.166xw,0&resize=640:*',
    'https://petkeen.com/wp-content/uploads/2021/05/Samoyed-dog-in-the-summer-forest_Nik-Tsvetkov_Shutterstock-760x507.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRmxW-kzZPheOJHuJA28vZ5j44pMwuCzqYzg&usqp=CAU',
    'https://media-be.chewy.com/wp-content/uploads/2021/06/18084057/BiewerTerrier-FeaturedImage-768x461.jpg',
    'https://cdn.shopify.com/s/files/1/0510/1505/7593/articles/7.png?v=1618463019&width=1100',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkz5S8yUs6uUfvqCqqC0os4MGtITpZsLyQTiiaCeegvGIfaXKkkyc-nwyv2xUOYjs3-AQ&usqp=CAU',
  ];
  List<PetModel> petList = [
    PetModel(
      type: 'King Charles Spaniel',
      age: '8',
      description: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available',
      name: 'Cherry',
      owner: 'Harry Perera',
      sex: 'Girl',
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-PMeBPq6bb_vthg_EWPzigHVuadYsvM6VPq6yUJ14m-yl_A2F6Aq_mhsS_9wVLDuBU5g&usqp=CAU',
    ),
    PetModel(
      type: 'Boogle',
      age: '1',
      description: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available',
      name: 'Martha',
      owner: 'Harry Perera',
      sex: 'Boy',
      image: 'https://indianpets.b-cdn.net/wp-content/uploads/Panting-Samoyed-Dog-289x300.jpg',
    ),
    PetModel(
      type: 'Chihuahu',
      age: '1',
      description: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available',
      name: 'Slash',
      owner: 'Harry Perera',
      sex: 'Boy',
      image: 'https://indianpets.b-cdn.net/wp-content/uploads/Panting-Samoyed-Dog-289x300.jpg',
    ),
    PetModel(
      type: 'Slash',
      age: '1',
      description: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available',
      name: 'Puppy',
      owner: 'Harry Perera',
      sex: 'Boy',
      image: 'https://indianpets.b-cdn.net/wp-content/uploads/Panting-Samoyed-Dog-289x300.jpg',
    ),
    PetModel(
      type: 'Border coiling',
      age: '1',
      description: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available',
      name: 'Martha',
      owner: 'Harry Perera',
      sex: 'Girl',
      image: 'https://indianpets.b-cdn.net/wp-content/uploads/Panting-Samoyed-Dog-289x300.jpg',
    ),
    PetModel(
      type: 'Boogle',
      age: '1',
      description: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available',
      name: 'Puppy',
      owner: 'Harry Perera',
      sex: 'Boy',
      image: 'https://indianpets.b-cdn.net/wp-content/uploads/Panting-Samoyed-Dog-289x300.jpg',
    ),
    PetModel(
      type: 'Boogle',
      age: '1',
      description: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available',
      name: 'Puppy',
      owner: 'Harry Perera',
      sex: 'Boy',
      image: 'https://indianpets.b-cdn.net/wp-content/uploads/Panting-Samoyed-Dog-289x300.jpg',
    ),
    PetModel(
      type: 'Boogle',
      age: '1',
      description: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available',
      name: 'Puppy',
      owner: 'Harry Perera',
      sex: 'Boy',
      image: 'https://indianpets.b-cdn.net/wp-content/uploads/Panting-Samoyed-Dog-289x300.jpg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<AnimalDataProvider>(
      builder: ((context, value, child) {
        return Scaffold(
          body: SafeArea(
            child: Container(
              margin: EdgeInsets.all(
                size.width * .04,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/main_menu.png',
                          width: size.width * .1,
                        ),
                        Container(
                          width: size.width * .6,
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(
                                20.0,
                              )),
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: const Icon(
                                  Icons.location_on,
                                ),
                                hintText: 'New York USA',
                                hintStyle: TextStyle(
                                  fontSize: size.width * .04,
                                )),
                          ),
                        ),
                        CircleAvatar(
                          radius: 25,
                          child: ClipOval(
                            child: Image.network(
                              "https://i.insider.com/59b6c4bfba785e36f932a317?width=600&format=jpeg&auto=webp",
                              fit: BoxFit.cover,
                              width: 80,
                              height: 80,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * .05,
                    ),
                    Container(
                      height: size.height * .15,
                      child: ListView.builder(
                        itemCount: _categoryList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              value.changeCurrentIndex(index: index);
                            },
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(size.width * .02),
                                  padding: EdgeInsets.all(size.width * .025),
                                  decoration: BoxDecoration(
                                      color: value.getCurrentIndex() == index ? Colors.yellow[400] : Colors.white,
                                      borderRadius: BorderRadius.circular(
                                        20.0,
                                      ),
                                      border: Border.all(
                                        color: value.getCurrentIndex() == index ? Colors.white : Colors.grey,
                                        width: value.getCurrentIndex() == index ? 0 : 1,
                                      )),
                                  child: Image.network(
                                    _categoryList[index].image,
                                    width: size.width * .1,
                                  ),
                                ),
                                Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      value.getCurrentIndex() == index
                                          ? Container(
                                              padding: const EdgeInsets.all(
                                                2.0,
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.yellow,
                                                borderRadius: BorderRadius.circular(10.0),
                                              ),
                                            )
                                          : Container(),
                                      SizedBox(
                                        width: size.width * .01,
                                      ),
                                      Text(
                                        _categoryList[index].category,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    GridView.custom(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverWovenGridDelegate.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        pattern: [
                          const WovenGridTile(1),
                          const WovenGridTile(
                            5 / 5,
                            crossAxisRatio: 1,
                            alignment: AlignmentDirectional.centerEnd,
                          ),
                        ],
                      ),
                      childrenDelegate: SliverChildBuilderDelegate(
                        childCount: petList.length,
                        (context, index) => GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Details()),
                            );
                          },
                          child: Stack(
                            children: [
                              Container(
                                decoration: const BoxDecoration(color: Colors.transparent, borderRadius: BorderRadius.all(Radius.circular(15))),
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                                  child: FadeInImage.memoryNetwork(
                                    fit: BoxFit.cover,
                                    placeholder: kTransparentImage,
                                    image: imageList[index],
                                    width: size.width * .5,
                                    height: size.height * .4,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                right: 0,
                                bottom: size.height * .02,
                                child: Container(
                                  margin: EdgeInsets.all(
                                    size.width * .02,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        petList[index].name,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: size.width * .05,
                                        ),
                                      ),
                                      Text(
                                        petList[index].type,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: size.width * .025,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.timelapse,
                                            color: Colors.white,
                                            size: size.width * .02,
                                          ),
                                          Text(
                                            petList[index].age + 'mth',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: size.width * .025,
                                            ),
                                          ),
                                          SizedBox(
                                            width: size.width * .02,
                                          ),
                                          Icon(
                                            Icons.transgender_sharp,
                                            color: Colors.white,
                                            size: size.width * .02,
                                          ),
                                          Text(
                                            petList[index].sex,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: size.width * .025,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
