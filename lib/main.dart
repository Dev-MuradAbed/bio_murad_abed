import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
// fonts:
// - family: Merriweather
// fonts:
// - asset: assets/fonts/Merriweather-Bold.ttf
// weight: 700
// - asset: assets/fonts/Merriweather-Italic.ttf
// style: italic
// - asset: assets/fonts/Merriweather-Regular.ttf
// weight: 400
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool boolean = false;
    Color color = Colors.amber;
    ;
    return MaterialApp(home: App());
  }
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Bio'),
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
            Spacer(),
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQys44b5LLCLuWVQ96syBNql4tBE5hbmhgbg&usqp=CAU'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Murad Khalil Abed'),
            const Text('flutter developer'),
            card(
              leadingicon: Icons.email,
              title: "Email",
              subtitle: "muradabed683@gmail.com",
              trailingicon: Icons.send,
              onPressed: () {},
              bottonmargen: 10,
              topmargen: 10,
            ),
            card(
                leadingicon: Icons.phone,
                title: "Phone",
                subtitle: "059582916652",
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

class card extends StatelessWidget {
  const card({
    Key? key,
    required this.leadingicon,
    required this.title,
    required this.subtitle,
    required this.trailingicon,
    required this.onPressed,
    this.bottonmargen = 0,
    this.topmargen = 0,
  }) : super(key: key);
  final IconData leadingicon;
  final String title;
  final String subtitle;
  final IconData trailingicon;
  final VoidCallback onPressed;
  final double bottonmargen;
  final double topmargen;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      margin: EdgeInsets.only(
          bottom: bottonmargen, top: topmargen, left: 5, right: 5),
      shape: const RoundedRectangleBorder(
          side: BorderSide(color: Colors.white, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: ListTile(
          leading: Icon(leadingicon),
          title: Text(
            title,
            style: const TextStyle(fontFamily: 'Merriweather', fontSize: 18),
          ),
          subtitle: Text(subtitle),
          trailing: IconButton(onPressed: onPressed, icon: Icon(trailingicon))),
    );
  }
}
