import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'fitness.dart';
import 'dancing.dart';
import 'cooking.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: Colors.grey[100],

        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Image.asset('images/header.png',width: double.infinity,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 22,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Text('Hello ! User', style: TextStyle(
                            color: Theme.of(context).backgroundColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              CarouselSlider(
                items: [
                  Image.network('https://images.unsplash.com/photo-1580757468214-c73f7062a5cb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80'),
                  Image.network('https://images.unsplash.com/photo-1572988163424-1deefefec9c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80'),
                ],
                options: CarouselOptions(
                  height: 222,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  aspectRatio: 1/1,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text('Watch Next Video',style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).backgroundColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                height: 100,
                                width: double.infinity,
                                color: Colors.grey,
                                child: Icon(Icons.image),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.5),
                                  child: Text('Diet Plans',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Text('Watch Diet Plans for a Healthy Lifestyle.',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                height: 33,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Watch',style: TextStyle(
                                      color: Theme.of(context).backgroundColor,
                                      fontSize: 20,
                                    ),),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(Icons.play_arrow,
                                      color: Theme.of(context).backgroundColor,
                                      size: 20,
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xffF94A7C),
                                      Color(0xff3F297F),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).backgroundColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                height: 100,
                                width: double.infinity,
                                color: Colors.grey,
                                child: Icon(Icons.image),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.5),
                                  child: Text('Fit Lifestyle',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                    ),),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Text('Watch Diet Plans for a Healthy Lifestyle.',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                height: 33,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Watch',style: TextStyle(
                                      color: Theme.of(context).backgroundColor,
                                      fontSize: 20,
                                    ),),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(Icons.play_arrow,
                                      color: Theme.of(context).backgroundColor,
                                      size: 20,
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xffF94A7C),
                                      Color(0xff3F297F),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text('Trending Videos',style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                color: Theme.of(context).backgroundColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.live_tv,
                        color: Colors.grey,
                      ),
                      title: Text('Diet Plans to stay Fit 1',style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),),
                      subtitle: Text('Watch Diet Plans for your Daily Life Style',
                      ),
                      trailing: Text('Watch Now',style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 15,
                      ),),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(
                        Icons.live_tv,
                        color: Colors.grey,
                      ),
                      title: Text('Diet Plans to stay Fit 2',style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),),
                      subtitle: Text('Watch Diet Plans for your Daily Life Style',
                      ),
                      trailing: Text('Watch Now',style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 15,
                      ),),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(
                        Icons.live_tv,
                        color: Colors.grey,
                      ),
                      title: Text('Diet Plans to stay Fit 3',style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),),
                      subtitle: Text('Watch Diet Plans for your Daily Life Style',
                      ),
                      trailing: Text('Watch Now',style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 15,
                      ),),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text('Categories',style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
          Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) {
                          return FitnessScreen();
                        }
                      ),);
                    },
                    child: Stack(
                      children: [
                        Container(
                          child: Image.asset('images/fitnesscard.png',
                            fit: BoxFit.fill,
                          ),
                        height: 133,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 100,
                            ),
                            Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 33,
                                  ),
                                  Center(
                                    child: Text('Fitness',style: TextStyle(
                                      color: Theme.of(context).backgroundColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                    ),),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) {
                            return DancingScreen();
                          }
                      ),);
                    },
                      child: Stack(
                        children: [
                          Container(
                            child: Image.asset('images/dancingcard.png',
                              fit: BoxFit.fill,
                            ),
                            height: 133,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 100,
                              ),
                              Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 33,
                                    ),
                                    Center(
                                      child: Text('Dancing',style: TextStyle(
                                        color: Theme.of(context).backgroundColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                      ),),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) {
                        return CookingScreen();
                      }
                  ),);
                },
                child: Stack(
                  children: [
                    Image.asset('images/cookingcard.png',
                      width: double.infinity,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 111,
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 55,
                              ),
                              Center(
                                child: Text('Cooking',style: TextStyle(
                                  color: Theme.of(context).backgroundColor,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                ),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
