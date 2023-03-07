import 'package:flutter/material.dart';

Scaffold sunnyWeather(String cityName, String pageName, String number) {
  return Scaffold(
    backgroundColor: const Color.fromARGB(255, 248, 221, 180),

    //information about weather
    body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  maxRadius: 25.0,
                  backgroundColor: Colors.white54,
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 25.0,
                  ),
                ),
              ),

              //click to next page
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Builder(builder: (context) {
                  return IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(pageName);
                    },
                    icon: const Icon(
                      Icons.keyboard_arrow_right,
                      size: 30.0,
                      color: Colors.black,
                    ),
                  );
                }),
              ),
            ],
          ),
          //create weather info...
          SizedBox(
            width: 400.0,
            height: 450.0,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 300.0,
                  left: 85.0,
                  right: 85.0,
                  child: Text(
                    cityName,
                    style: const TextStyle(
                      fontSize: 110.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  top: 60.0,
                  left: 30.0,
                  right: 30.0,
                  child: ClipOval(
                    child: Container(
                      height: 300.0,
                      width: 300.0,
                      color: Colors.amber.withOpacity(0.7),
                    ),
                  ),
                ),
                Positioned(
                  left: 80,
                  child: Text(
                    number,
                    style: const TextStyle(
                      fontSize: 200.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Positioned(
                  right: 50,
                  child: Text(
                    "o",
                    style: TextStyle(
                      fontSize: 100.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              info(Icons.water_drop_outlined, "34%"),
              info(Icons.wind_power_outlined, "2KM/H"),
              info(Icons.thermostat, "20%"),
            ],
          ),
          Stack(
            children: <Widget>[
              SizedBox(
                width: 500.0,
                height: 150.0,
                child: CustomPaint(
                  painter: CurvePainter(),
                ),
              ),
              Positioned(
                left: 200.0,
                bottom: 0.0,
                child: Container(
                  width: 5.0,
                  height: 79.0,
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              Positioned(
                left: 196.0,
                bottom: 80.0,
                child: Container(
                  width: 15.0,
                  height: 15.0,
                  decoration: const BoxDecoration(
                    color: Colors.black87,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: Container(
                    width: 5.0,
                    height: 5.0,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 220.0,
                bottom: 85.0,
                child: Text(
                  "now",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget info(IconData? icon, String text) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.transparent,
          border: Border.all(
            width: 2.0,
            color: const Color.fromARGB(255, 240, 199, 138),
          ),
        ),
        alignment: Alignment.center,
        child: Icon(
          icon,
          size: 25.0,
          color: Colors.black,
        ),
      ),
      Text(
        text,
        style: const TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}

//create custom Wavy line...
class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.black;
    paint.style = PaintingStyle.fill;
    paint.isAntiAlias = true;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 5.0;

    var path = Path();

    // path.moveTo(0, size.height * 0.9167);
    // path.quadraticBezierTo(size.width * 0.25, size.height * 0.875,
    //     size.width * 0.5, size.height * 0.9167);
    // path.quadraticBezierTo(size.width * 0.75, size.height * 0.9584,
    //     size.width * 1.0, size.height * 0.9167);
    // path.lineTo(size.width, size.height);
    // path.lineTo(0, size.height);

    path.moveTo(0, 90 * 0.5000);

    path.quadraticBezierTo(size.width * 0.25, size.height * 0.900,
        size.width * 0.5, size.height * 0.5000);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.5000,
        size.width * 1.0, size.height * 0.1000);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
