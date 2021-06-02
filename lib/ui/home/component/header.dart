part of '../home_screen.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: 12,
        left: 12,
        top: 55,
        bottom: 20,
      ),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Hi, ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 28,
                  ),
                  children: [
                    TextSpan(
                        text: "Kendall",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                        )),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("tes");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ProfileScreen()));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                    image:
                        "https://upload.wikimedia.org/wikipedia/commons/c/cc/Kendall_Jenner_in_2019_2.png",
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 8),
          Text("Create your best collection today")
        ],
      ),
    );
  }
}
