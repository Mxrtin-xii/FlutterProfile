
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              FontAwesomeIcons.commentDots,
              color: Colors.black54,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.black54,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildHeader(),
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(color: Colors.grey.shade200),
              child: Text(
                  "I am a web and mobile developer that enjoys writing scalable and testable apps with Javascript(React and NodeJS) and Flutter with dart"),
            ),
            _buildTitle("Skills"),
            SizedBox(height: 10.0),
            _buildSkillRow("Flutter", 0.75),
            SizedBox(height: 5.0),
            _buildSkillRow("React JS", 0.75),
            SizedBox(height: 5.0),
            _buildSkillRow("Node JS", 0.65),
            SizedBox(height: 5.0),
            _buildSkillRow("WordPress", 0.75),
            SizedBox(height: 30.0),
            _buildTitle("Experience"),
            _buildExperienceRow(
                        company: "BIG JOEY ICT SERVICES",
                        position: "FREELANCE MOBILE DEVELOPER",
                        duration: "April 2020 - date"),
                    _buildExperienceRow(
                        company: " CAUDICOY CONSULTS",
                        position: "INTERN SOFTWARE DEVELOPER",
                        duration: "January 2019 - December 2019"),
                    _buildExperienceRow(
                        company: "MIDAS TOUCH GROUP OF SCHOOLS",
                        position: "SCIENCE and I.T TUTOR",
                        duration: "April 2018 - December 2018"),
            SizedBox(height: 20.0),
            _buildTitle("Education"),
            SizedBox(height: 5.0),
           _buildExperienceRow(
                        company: "Federal university of technology, Akure",
                        position: "B.Tech in Biochemistry",
                        duration: "2011 - 2016"),
                    _buildExperienceRow(
                        company: "St. Thomas Aquinas College, Akure",
                        position: "WASSCE O-Level",
                        duration: "2005 - 2011"),
                    _buildExperienceRow(
                        company: "W3Schools, udemy, Flutter.dev and React.org",
                        position: "Web and Mobile development",
                        duration: "2016 - date"),
            SizedBox(height: 20.0),
            _buildTitle("Contact"),
            SizedBox(height: 5.0),
            Row(
              children: <Widget>[
                SizedBox(width: 30.0),
                Icon(
                  Icons.mail,
                  color: Colors.black54,
                ),
                SizedBox(width: 10.0),
                Text(
                  "Balogunmartinsthexiith@gmail.com",
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                SizedBox(width: 30.0),
                Icon(
                  Icons.phone,
                  color: Colors.black54,
                ),
                SizedBox(width: 10.0),
                Text(
                  "+977-9818523107",
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            _buildSocialsRow(),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  Row _buildSocialsRow() {
    return Row(
      children: <Widget>[
        SizedBox(width: 20.0),
        IconButton(
          color: Colors.indigo,
          icon: Icon(FontAwesomeIcons.twitter),
          onPressed: () {
            _launchURL("https://twitter.com/Martzyy_");
          },
        ),
        SizedBox(width: 5.0),
        IconButton(
          color: Colors.indigo,
          icon: Icon(FontAwesomeIcons.github),
          onPressed: () {
            _launchURL("https://github.com/Mxrtin_xii");
          },
        ),
        SizedBox(width: 5.0),
        IconButton(
          color: Colors.red,
          icon: Icon(FontAwesomeIcons.whatsapp),
          onPressed: () {
            _launchURL("https://wa.me/23357812432");
          },
        ),
        SizedBox(width: 10.0),
      ],
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  ListTile _buildExperienceRow(
      {String company, String position, String duration}) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 20.0),
        child: Icon(
          FontAwesomeIcons.solidCircle,
          size: 12.0,
          color: Colors.black54,
        ),
      ),
      title: Text(
        company,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      subtitle: Text("$position ($duration)"),
    );
  }

  Row _buildSkillRow(String skill, double level) {
    return Row(
      children: <Widget>[
        SizedBox(width: 16.0),
        Expanded(
            flex: 2,
            child: Text(
              skill.toUpperCase(),
              textAlign: TextAlign.right,
            )),
        SizedBox(width: 10.0),
        Expanded(
          flex: 5,
          child: LinearProgressIndicator(
            value: level,
          ),
        ),
        SizedBox(width: 16.0),
      ],
    );
  }

  Widget _buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title.toUpperCase(),
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          Divider(
            color: Colors.black54,
          ),
        ],
      ),
    );
  }

  Row _buildHeader() {
    return Row(
      children: <Widget>[
        SizedBox(width: 20.0),
        Container(
            width: 80.0,
            height: 80.0,
            child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                    radius: 35.0, backgroundImage: Image.asset('assets/img1.jpg')))),
        SizedBox(width: 20.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Balogun Martins",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text("Web and Mobule Developer"),
            SizedBox(height: 5.0),
            Row(
              children: <Widget>[
                Icon(
                  FontAwesomeIcons.map,
                  size: 12.0,
                  color: Colors.black54,
                ),
                SizedBox(width: 10.0),
                Text(
                  "Tema, Ghana",
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}