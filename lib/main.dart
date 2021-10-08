import 'package:flutter/material.dart';

import 'secondPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: const Color(0xfff5f5f5),
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 240,
              child: Image.asset('images/4.png'),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Settings',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            buildDivider(),
            const ListTile(
              title: Text('Josi Packard'),
              subtitle: Text('Personal Information'),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/5.png'),
              ),
            ),
            buildDivider(),
            buildListTile(
                'My Credits', const Icon(Icons.credit_card_outlined)),
            buildListTile('Notification ', const Icon(Icons.notifications)),
            buildListTile(
              'Security',
              const Icon(Icons.security),
            ),
            buildDivider(),
            buildListTile(
              'Languages',
              const Icon(Icons.g_translate),
            ),
            buildListTile(
              'Text Size',
              const Icon(Icons.text_fields_rounded),
            ),
          ],
        ));
  }

  ListTile buildListTile(
      String title,
      Widget icon,
      ) {
    return ListTile(
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios),
      leading: icon,
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const Second()));
      },
    );
  }
    Divider buildDivider() => const Divider(color: Colors.grey);


}
