
import 'package:flutter/material.dart';
import 'package:untitled5/views/homepage/widgets/clothes_category.dart';
import 'package:untitled5/views/homepage/widgets/model_pics.dart';
import '../../core/ui/navigationbar.dart';

class HomePageView extends StatefulWidget {
  HomePageView({super.key});

  final List<String> images = [
    'assets/images/model1.png',
    'assets/images/model2.png',
    'assets/images/model3.png',
    'assets/images/model1.png',
    'assets/images/model1.png',
    'assets/images/model2.png',
    'assets/images/model3.png',
    'assets/images/model1.png',
  ];

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final list = ['All', 'Newest', 'Popular', 'Men', 'Women'];
  int selectedcategory = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SafeArea(
                child: Row(
                  children: [
                    const Text(
                      'Hello Mariam',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    const Spacer(),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_none_sharp,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // 🔹 Banner
              Container(
                height: 160,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 28, top: 14),
                          child: Text(
                            'New Collection',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 28),
                          child: Text(
                            'Discount 50% for\nthe first transaction',
                            style: TextStyle(
                              color: Color(0xffA1A8B0),
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        const SizedBox(height: 18),
                        Padding(
                          padding: const EdgeInsets.only(left: 28),
                          child: FilledButton(
                            onPressed: () {},
                            child: const Text('Shop Now'),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Image.asset(
                        'assets/images/Choosing clothes-bro 1.png',
                        height: 160,
                        width: 110,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 28),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Flash sale',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),

              const SizedBox(height: 16),

              SizedBox(
                height: 40,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: list.length,
                  separatorBuilder: (context, index) =>
                  const SizedBox(width: 12),
                  itemBuilder: (context, index) => ClothesCategory(
                    text: list[index],
                    isSelcted: index == selectedcategory,
                    onTap: () {
                      setState(() {
                        selectedcategory = index;
                      });
                    },
                  ),
                ),
              ),

              const SizedBox(height: 20),

              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: widget.images.length,
                padding: const EdgeInsets.all(8),
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 149 / 140,
                ),
                itemBuilder: (context, index) => ModelPics(
                  image: widget.images[index],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: CustomBottomNavBar(currentIndex: 0),
    );
  }
}