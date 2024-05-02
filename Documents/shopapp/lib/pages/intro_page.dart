import 'package:flutter/material.dart';
import 'package:shopapp/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 252, 252),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
              Padding(
               padding: const EdgeInsets.all(25.0),
                child: Image.asset(
               'lib/images/download.png', 
                height: 240,
            )
         ),
         const SizedBox(height: 48),

        const Text(
          'Just Do It',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          ),
          const SizedBox(height: 24,),

          const Text(
          'Brand new sneakers and custom kicks made with premium quality',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
           ),
          textAlign: TextAlign.center,
            ),
            const SizedBox(height: 48),

            
            GestureDetector(
              onTap: () => Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => const HomePage()
                  )
                  ),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(25),
                child: const Center(
                  child: Text(
                    'Shop Now',
                     style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                      ),
                      ),
                ),
              ),
            )
           ],
          ),
        ),
       )
     );
  }
}
