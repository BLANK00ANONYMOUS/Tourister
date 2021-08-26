import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  final appBar = AppBar(
    title: Text(
      'Privacy Policy',
    ),
  );
  final String _policy = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Orci dapibus ultrices in iaculis nunc sed augue. Velit laoreet id donec ultrices tincidunt arcu. Commodo viverra maecenas accumsan lacus vel facilisis volutpat est velit. Enim tortor at auctor urna. Ipsum consequat nisl vel pretium lectus quam id leo. Sem integer vitae justo eget magna fermentum iaculis. Lectus urna duis convallis convallis tellus id. Pretium quam vulputate dignissim suspendisse in est ante in nibh. Cursus metus aliquam eleifend mi in nulla posuere. Leo duis ut diam quam. Magna etiam tempor orci eu lobortis elementum nibh tellus. Potenti nullam ac tortor vitae purus faucibus ornare. Enim ut tellus elementum sagittis.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Container(
          width: double.infinity,
          height: (MediaQuery.of(context).size.height -
                  appBar.preferredSize.height -
                  MediaQuery.of(context).padding.top) *
              0.9,
          color: Colors.red,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Privacy Policy',
                  style: Theme.of(context).textTheme.headline3,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  _policy,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
