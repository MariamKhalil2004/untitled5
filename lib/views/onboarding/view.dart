import 'package:flutter/material.dart';
import 'package:untitled5/views/MyWishlist/MyWishList.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int currentView = 0;
void goToNextPage(){
  // last next to the next page
  Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyWishListView(),));
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //background photo
          Image.asset(
            'assets/images/onboarding$currentView.jpg',
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              // FIX 1: Column must be the child of Padding
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //skip outlined button with align to be in the right && skip view in 0,1 not in 2
                  if(currentView!=2)
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    // FIX 2: OutlinedButton needs to be the child of Align
                    child: OutlinedButton(
                      onPressed: goToNextPage,
                      child: const Text(
                        'Skip',
                        style: TextStyle(color: Colors.white), // Changed to white for better contrast on image
                      ),
                    ),
                  ),
                  //spacer between skip button and text
                  const Spacer(),
                  //text
                  const Text(
                    'Welcome To\n Fashion',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 18),

                  const Text(
                    'Discover the latest trends and exclusive styles\nfrom our top designers',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  // space between text and circles
                  const SizedBox(height: 18),
                  // 3 circles
                  Row(
                    children: [
                      //const Spacer(),
                      // back button
                      if(currentView!=0)
                      FloatingActionButton(
                        onPressed: () { 
                          if (currentView==2)
                            {goToNextPage();}
                          else
                            {
                              currentView--;
                              setState(() {});
                            }
                        },
                        //tansparency of button
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        shape: const CircleBorder(side: BorderSide()),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.only(start: 8),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Color(0xFFDD8560),
                          ),
                        ),
                      ),

                      Spacer(),
                      ...List.generate(
                        3,
                            (index) => Padding(
                          // FIX 3: Index check and padding value should be inside the only() parenthesis, separated by a comma.
                          // FIX 4: The CircleAvatar should be the child of Padding.
                          padding: EdgeInsetsDirectional.only(end: index != 2 ? 12 : 0 ),
                          child: CircleAvatar(
                            radius: 5,
                            // FIX 5: Conditional logic was flawed. Should use ternary operator inside the Color property.
                            // FIX 6: Hex color format is incorrect. Should be 0xFFD9D9D9.
                            backgroundColor: index == currentView
                                ? const Color(0xFFDD8560)
                                : const Color(0xFFD9D9D9),

                          ),
                        ),
                      ),
                      const Spacer(),
                      // FIX 7: Added const to Icon and removed stray comma
                      FloatingActionButton( 
                        onPressed: () {currentView++; setState(() {
                        });},
                        backgroundColor: const Color(0xFFDD8560),
                        child: const Icon(Icons.arrow_forward_ios,color: Colors.white,),
                        shape: const CircleBorder(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}