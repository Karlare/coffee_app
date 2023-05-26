import 'package:flutter/material.dart';

import '../../../utils/custom_appbar.dart';

class ProfilePage extends StatefulWidget {

  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(
        title: '个人资料',
        context: context,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/mine1.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                _buildPersonalInfoRow(
                  icon: Icons.person,
                  title: '账户名',
                  subtitle: 'Acher',
                ),
                SizedBox(height: 16),
                _buildPersonalInfoRow(
                  icon: Icons.location_on,
                  title: '地址',
                  subtitle: '云南省云南大学呈贡校区',
                ),
                SizedBox(height: 16),
                _buildPersonalInfoRow(
                  icon: Icons.description,
                  title: '个人描述',
                  subtitle: '喜欢喝咖啡',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPersonalInfoRow({
    IconData icon,
    String title,
    String subtitle,
  }) {
    return Row(
      children: [
        Container(
          width: 30,
          alignment: Alignment.centerLeft,
          child: Container(
            child: Icon(
              icon,
              color: Color.fromRGBO(220, 220, 220, 1),
              size: 20,
            ),
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Color.fromRGBO(150, 150, 150, 1),
                  fontSize: 12,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  color: Color.fromRGBO(50, 50, 50, 1),
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 16),
        Icon(
          Icons.arrow_forward_ios,
          color: Color.fromRGBO(228, 228, 228, 1),
          size: 16,
        ),
      ],
    );
  }
}