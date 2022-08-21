import 'package:dog_app/ui/reusable_widget/custom_button.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            color: Colors.white,
          ),
          Image.network(
            'https://cdn.shopify.com/s/files/1/0510/1505/7593/articles/7.png?v=1618463019&width=1100',
            height: size.height * .45,
            width: size.width,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: size.height * .05,
            left: size.width * .05,
            child: Container(
              padding: EdgeInsets.all(
                10.0,
              ),
              decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(
                    20.0,
                  )),
              child: Icon(Icons.arrow_back),
            ),
          ),
          Positioned(
            top: size.height * .35,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(
                20.0,
              ),
              margin: EdgeInsets.all(
                10.0,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  20.0,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(1, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Martha',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      Icon(
                        Icons.transgender_outlined,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * .01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Border Collie',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.timelapse_rounded,
                            color: Colors.grey,
                          ),
                          Text(
                            '1 year old',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * .01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.grey,
                      ),
                      Text(
                        '120 N 4th St, Brooklyn,NY USA',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * .02,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: size.height * .56,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.all(
                size.width * .05,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 28,
                        child: ClipOval(
                          child: Image.network(
                            "https://images.unsplash.com/photo-1525357816819-392d2380d821?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
                            fit: BoxFit.cover,
                            width: 80,
                            height: 80,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width * .05,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Lahiru Sampath',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: size.width * .1,
                              ),
                              Text(
                                '24.01.2020',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height * .01,
                          ),
                          Text(
                            'Owner',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * .02,
                  ),
                  Container(
                    margin: EdgeInsets.all(
                      size.width * .01,
                    ),
                    child: Text(
                      'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      bottomSheet: Container(
        margin: EdgeInsets.only(
          bottom: size.width * .05,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: EdgeInsets.all(
                  size.width * .02,
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(
                      20.0,
                    )),
                child: Icon(Icons.favorite_border)),
            SizedBox(
              width: size.width * .05,
            ),
            CustomButton(
              text: 'Adoption',
            ),
          ],
        ),
      ),
    );
  }
}
