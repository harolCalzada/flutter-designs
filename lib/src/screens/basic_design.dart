import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Image(
            image: AssetImage('assets/conejo.jpeg'),
          ),
          Title(),
          buttonSection(),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                  '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit dignissim sodales ut eu sem integer vitae justo. Pellentesque dignissim enim sit amet venenatis urna. Et malesuada fames ac turpis egestas maecenas. Libero id faucibus nisl tincidunt eget nullam. Potenti nullam ac tortor vitae purus faucibus ornare suspendisse. Adipiscing elit ut aliquam purus. Rhoncus est pellentesque elit ullamcorper. Egestas sed tempus urna et pharetra. Quisque sagittis purus sit amet volutpat consequat mauris. Mauris pellentesque pulvinar pellentesque habitant morbi. In fermentum et sollicitudin ac. Eu turpis egestas pretium aenean pharetra magna ac placerat vestibulum. Amet porttitor eget dolor morbi non arcu risus quis varius. Eget dolor morbi non arcu risus quis. Scelerisque eu ultrices vitae auctor.

Vitae proin sagittis nisl rhoncus mattis rhoncus urna. Nam libero justo laoreet sit amet cursus sit. Sed faucibus turpis in eu mi bibendum neque egestas congue. Duis at consectetur lorem donec. Vestibulum lorem sed risus ultricies. In hac habitasse platea dictumst. Id consectetur purus ut faucibus pulvinar elementum integer enim neque. Ac placerat vestibulum lectus mauris ultrices eros. Mattis aliquam faucibus purus in. Sapien et ligula ullamcorper malesuada proin libero.

Faucibus pulvinar elementum integer enim neque volutpat ac. Sagittis vitae et leo duis. Elit ut aliquam purus sit. Massa placerat duis ultricies lacus. Et sollicitudin ac orci phasellus egestas tellus rutrum. Cursus sit amet dictum sit amet. Parturient montes nascetur ridiculus mus mauris vitae ultricies. Nisl pretium fusce id velit ut tortor. In fermentum posuere urna nec tincidunt praesent semper feugiat nibh. Id porta nibh venenatis cras sed felis eget. Ac placerat vestibulum lectus mauris ultrices eros in cursus. Dictum at tempor commodo ullamcorper a lacus vestibulum sed arcu. Convallis tellus id interdum velit laoreet id donec ultrices tincidunt. Suspendisse sed nisi lacus sed viverra.

Faucibus in ornare quam viverra orci sagittis eu. Pulvinar proin gravida hendrerit lectus a. Aliquam vestibulum morbi blandit cursus risus at ultrices. Tortor at auctor urna nunc id cursus metus. Diam ut venenatis tellus in metus vulputate eu. Libero enim sed faucibus turpis in eu mi. Turpis massa sed elementum tempus egestas sed sed risus. Laoreet non curabitur gravida arcu ac tortor dignissim convallis aenean. Sagittis orci a scelerisque purus semper. Scelerisque purus semper eget duis at tellus. Venenatis tellus in metus vulputate eu.

Vitae auctor eu augue ut lectus arcu bibendum. Morbi tristique senectus et netus et malesuada. Magnis dis parturient montes nascetur. Ultricies integer quis auctor elit sed. Eu lobortis elementum nibh tellus molestie nunc non blandit massa. Imperdiet dui accumsan sit amet nulla facilisi morbi tempus. Duis ut diam quam nulla porttitor massa id neque aliquam. Varius sit amet mattis vulputate enim. Eget magna fermentum iaculis eu non diam phasellus vestibulum. At volutpat diam ut venenatis tellus in metus vulputate eu. Convallis aenean et tortor at risus viverra adipiscing at in. Id leo in vitae turpis massa sed elementum tempus. Nisl vel pretium lectus quam id leo in. Aliquet eget sit amet tellus cras adipiscing enim eu turpis. Felis bibendum ut tristique et egestas quis ipsum suspendisse. Non sodales neque sodales ut etiam sit amet nisl. Sit amet nulla facilisi morbi tempus iaculis. Ac tortor vitae purus faucibus ornare suspendisse sed.'''))
        ],
      ),
    ));
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kandessteg, Switzerland',
                style: TextStyle(color: Colors.black45),
              )
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text('41')
        ],
      ),
    );
  }
}

class buttonSection extends StatelessWidget {
  const buttonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icon: Icons.phone, text: "CALL"),
          CustomButton(icon: Icons.send, text: "ROUTE"),
          CustomButton(icon: Icons.share, text: "SHARE")
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blueAccent,
          size: 30,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.blueAccent),
        )
      ],
    );
  }
}
