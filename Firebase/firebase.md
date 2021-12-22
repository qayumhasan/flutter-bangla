```
POST https://fcm.googleapis.com/v1/projects/myproject-b5ae1/messages:send HTTP/1.1

Content-Type: application/json
Authorization: Bearer ya29.ElqKBGN2Ri_Uz...HnS_uNreA

{
   "message":{
      "token":"token_1",
      "data":{},
      "notification":{
        "title":"FCM Message",
        "body":"This is an FCM notification message!",
      }
   }
}
```


## For Authorization Token
  ```
  https://developers.google.com/oauthplayground/
  ```

##Android Set UP
```
 Future<void> initializeDefault() async {
    FirebaseApp app = await Firebase.initializeApp();
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    FirebaseFirestore fireStore = FirebaseFirestore.instance;

    var token = await messaging.getToken(
      vapidKey: "BGpdLRs......",
    );

    print(token);

    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Got a message whilst in the foreground!');
      print('Message data: ${message.data}');

      if (message.notification != null) {
        print(
            'Message also contained a notification: ${message.notification.toString()}');
      }

      setState(() {
        messagedata = message.data['title'].toString();
      });
    });
    print('User granted permission: ${settings.authorizationStatus}');
    var userRef = fireStore.collection('users');
  }
```
