//  firebase_core: ^1.10.6
//firebase_auth: ^3.3.4

class _MyHomePageState extends State<MyHomePage> {
  void init() {}

  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text(widget.title),
              ),
              body: FutureBuilder(
                  future: _initializeFirebase(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return Auth();
                    }
                    return Center(child: CircularProgressIndicator());
                  }),
            ));
  }
}





auth screen.........
  
  
class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  TextEditingController emailCont = TextEditingController();
  TextEditingController passwordCont = TextEditingController();

  Future login() async {
    var request = {
      UserKeys.email: emailCont.text,
      UserKeys.password: passwordCont.text,
    };
    log(request);
  }

  static Future<User?> loginUsingEmailPassword(
      {required String email,
      required String password,
      required BuildContext context}) async {
    var auth = FirebaseAuth.instance;
    var user =
        await auth.signInWithEmailAndPassword(email: email, password: password);
    return user.user;
    log(user.user);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20.0),
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppTextField(
              controller: emailCont, // Optional
              textFieldType: TextFieldType.ADDRESS,
              decoration: InputDecoration(
                  labelText: 'Address', border: OutlineInputBorder()),
            ),
            SizedBox(height: 10.0),
            AppTextField(
              controller: passwordCont, // Optional
              textFieldType: TextFieldType.PASSWORD,
              decoration: InputDecoration(
                  labelText: 'Password', border: OutlineInputBorder()),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
                onPressed: () async {
                  User? user = await loginUsingEmailPassword(
                      email: emailCont.text,
                      password: passwordCont.text,
                      context: context);
                  if (user != null) {
                    Profile().launch(context);
                  }
                },
                child: Text('Login')),
          ],
        ),
      ),
    );
  }
}
