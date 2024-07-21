import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KLIX TECH',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 5,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'images/logo.png',
                height: 40,
              ),
              const Spacer(),
              Image.asset(
                'images/search_icon.png',
                height: 25,
              ),
              const SizedBox(width: 16),
              Image.asset(
                'images/question_mark.png',
                height: 25,
              ),
              const SizedBox(width: 16),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  _showPopupMenu(context, MediaQuery.of(context).size);
                },
                style: ElevatedButton.styleFrom(
                  primary: AppColors.customColor,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 8,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text(
                  'Log in',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              color: Colors.black,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const SizedBox(height: 30),
            ListTile(
              title: Text(
                'Design spotlight',
                style: AppTextStyles.systemStyle(color: Colors.black54),
              ),
              trailing: Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ),
              onTap: () {
                // Add navigation logic here
              },
            ),
            const SizedBox(height: 30),
            ListTile(
              title: Text(
                'Business',
                style: AppTextStyles.systemStyle(color: Colors.black54),
              ),
              trailing: Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ),
              onTap: () {
                // Add navigation logic here
              },
            ),
            const SizedBox(height: 30),
            ListTile(
              title: Text(
                'Education',
                style: AppTextStyles.systemStyle(color: Colors.black54),
              ),
              trailing: Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ),
              onTap: () {
                // Add navigation logic here
              },
            ),
            const SizedBox(height: 30),
            ListTile(
              title: Text(
                'Plans and pricing',
                style: AppTextStyles.systemStyle(color: Colors.black54),
              ),
              trailing: Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ),
              onTap: () {
                // Add navigation logic here
              },
            ),
            const SizedBox(height: 30),
            ListTile(
              title: Text(
                'Learn',
                style: AppTextStyles.systemStyle(color: Colors.black54),
              ),
              trailing: Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ),
              onTap: () {
                // Add navigation logic here
              },
            ),
            const SizedBox(height: 100),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: AppColors.customColor,
                borderRadius: BorderRadius.circular(15.0),
              ),
              height: 60.0,
              child: Center(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 1),
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              height: 60.0,
              child: Center(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Text(
                    'Log in',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 90.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'What will you ',
                      style: AppTextStyles.notoSansStyle(
                          color: Colors.black, fontWeight: FontWeight.w700),
                    ),
                    TextSpan(
                      text: 'design',
                      style: AppTextStyles.notoSansStyle(
                          color: Colors.blue, fontWeight: FontWeight.w700),
                    ),
                    TextSpan(
                      text: ' today?',
                      style: AppTextStyles.notoSansStyle(
                          color: Colors.black, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Canva makes it easy to create professional designs and to share or print them.',
                style: AppTextStyles.notoSansVariableStyle(color: Colors.grey),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  _showPopupMenu(context, MediaQuery.of(context).size);
                },
                style: ElevatedButton.styleFrom(
                  primary: AppColors.customColor,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 80,
                    vertical: 20,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text(
                  'Start designing',
                  style: AppTextStyles.canvaSansStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.bg,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: size.width * 0.25,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),
                        Text(
                          'Presentations',
                          style: AppTextStyles.notoSansStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 1),
                        Image.asset(
                          'images/presentations.jpg',
                          height: 150,
                          width: 150,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.bg1,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: size.width * 0.25,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),
                        Text(
                          'Social',
                          style: AppTextStyles.notoSansStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 1),
                        Image.asset(
                          'images/social.jpg',
                          height: 150,
                          width: 150,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.bg2,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: size.width * 0.25,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),
                        Text(
                          'Videos',
                          style: AppTextStyles.notoSansStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 1),
                        Image.asset(
                          'images/videos.jpg',
                          height: 150,
                          width: 150,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 100),
              Text(
                'A perfect fit for everyone',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.center, // Aligns children to the start
                  children: [
                    Text(
                      'Canva Free',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'For designing or working on anything.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        _showPopupMenu(context, MediaQuery.of(context).size);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: AppColors.customColor,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Text(
                        'Get Canva Free',
                        style: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                child: Column(
                  children: [
                    Text(
                      'Canva Pro',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'For growing your brand or passion project with premium features.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        _showPopupMenu(context, MediaQuery.of(context).size);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: AppColors.customColor,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Text(
                        'Start Free Pro Trial',
                        style: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _showPopupMenu(BuildContext context, Size size) {
  final RenderBox overlay =
      Overlay.of(context)!.context.findRenderObject() as RenderBox;
  final RenderBox button = context.findRenderObject() as RenderBox;
  final Offset buttonPosition =
      button.localToGlobal(Offset.zero, ancestor: overlay);

  final RelativeRect position = RelativeRect.fromLTRB(
    buttonPosition.dx,
    buttonPosition.dy + button.size.height,
    size.width - buttonPosition.dx,
    size.height - buttonPosition.dy,
  );

  showMenu(
    context: context,
    position: position,
    items: [
      PopupMenuItem(
        child: Text('Welcome back!'),
        value: 1,
      ),
      PopupMenuItem(
        child: Text('Last time you used Google to log in.'),
        value: 2,
      ),
      PopupMenuItem(
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.grey,
            borderRadius: BorderRadius.circular(4), // Set border radius here
          ),
          child: Row(
            children: [
              Icon(Icons.login),
              SizedBox(width: 10),
              Flexible(
                child: Text(
                  'Continue with Google',
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        value: 3,
      ),
      PopupMenuItem(
        child: Row(
          children: [
            SizedBox(width: 10),
            Flexible(
              child: Text(
                'Continue another way',
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        value: 4,
      ),
      PopupMenuItem(
        child: Row(
          children: [
            Flexible(
              child: Text(
                'By continuing,you agree to Canva’s',
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        value: 5,
      ),
      PopupMenuItem(
        child: Row(
          children: [
            Flexible(
              child: Text(
                'Terms of Use.Read our Privacy Policy.',
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        value: 6,
      ),
    ],
    elevation: 8.0,
  ).then<void>((dynamic newValue) {
    if (newValue == null) return;
    if (newValue == 1) {
      // Handle option 1
    } else if (newValue == 2) {
      // Handle option 2
    } else if (newValue == 3) {
      // Handle option 3
    } else if (newValue == 4) {
      // Handle option 4
    } else if (newValue == 5) {
      // Handle option 5
    } else if (newValue == 6) {
      // Handle option 6
    }
  });
}
