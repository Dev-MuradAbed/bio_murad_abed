import 'package:flutter/material.dart';

import '../widgets/card_widget.dart';



class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Bio',style: TextStyle(fontFamily: 'Merriweather',fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black ),),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(children: [
        Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQK8o1c5EB3uR4QKaivtfWcPxEnJSbI_wVKtA&usqp=CAU',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQys44b5LLCLuWVQ96syBNql4tBE5hbmhgbg&usqp=CAU'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Murad K. Abed',style: TextStyle(fontFamily: 'Merriweather',fontSize: 20,fontWeight: FontWeight.w700),),
            const Text('flutter developer',style: TextStyle(fontFamily: 'Merriweather',fontSize: 16)),
            card(
              leadingicon: Icons.email,
              title: "Email",
              subtitle: "muradabed683@gmail.com",
              trailingicon: Icons.send,
              onPressed: () {},
              bottonmargen: 10,
              topmargen: 20,
            ),
            card(
                leadingicon: Icons.phone_android,
                title: "Phone",
                subtitle: "0599084404",
                trailingicon: Icons.call,
                onPressed: () {}),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Text('copyright © 2022'),
            )
          ],
        )
      ]),
    );
  }
}