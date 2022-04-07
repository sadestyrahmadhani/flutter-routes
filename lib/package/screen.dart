import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('belajar Routing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
              child: Text('About'),
            ),
            const SizedBox(height: 8.0),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/portofolio');
              },
              child: Text('Portofolio'),
            ),
            const SizedBox(height: 8.0),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/contact');
              },
              child: Text('Contact'),
            )
          ],
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Saya'),
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
            child: Column(children: <Widget>[
              const SizedBox(height: 20.0),
              Container(
                width: 150,
                child: Center(
                  child: ClipOval(
                    child: Image(
                      image: AssetImage('assets/images/portfolio.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              Text("About Me", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
              const SizedBox(height: 15.0),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.grey, width: 1.0),
                ),
                child: Text(
                  "Lorem ipsum dolor sit amet consectetur adipisicing elit. In corrupti dicta blanditiis assumenda sequi minus quam? Tempore ea maiores cupiditate reprehenderit animi architecto sed, porro modi blanditiis illo quasi quam.",
                  textAlign: TextAlign.center,
                ),
              )
            ])),
      ),
    );
  }
}

class Portofolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portofolio'),
      ),
      body: GridView.builder(
          padding: const EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12,
                  border: Border.all(color: Colors.grey, width: 1.0),
                ),
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/portfolio.jpg',
                      height: 100,
                    ),
                    const SizedBox(height: 5.0),
                    Text("Portfolio ${index + 1}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0)),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

class Contact extends StatelessWidget {
  TextEditingController _inputName = TextEditingController();
  TextEditingController _inputEmail = TextEditingController();
  TextEditingController _inputNoTelp = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _inputName.text = "Sadesty Rahmadhani";
    _inputEmail.text = "sadestyrahmadhani012@gmail.com";
    _inputNoTelp.text = "+6287656544343";

    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                controller: _inputName,
                enableInteractiveSelection: false,
                enabled: false,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Nama',
                ),
              ),
              const SizedBox(height: 15.0),
              TextField(
                controller: _inputEmail,
                enableInteractiveSelection: false,
                enabled: false,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
              const SizedBox(height: 15.0),
              TextField(
                controller: _inputNoTelp,
                enableInteractiveSelection: false,
                enabled: false,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'No. Telp/Hp',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
