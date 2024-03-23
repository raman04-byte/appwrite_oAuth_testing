import 'package:appwrite/appwrite.dart';
import 'package:appwrite/enums.dart';

class Appwrite {
  static const String endpoint = 'http://54.242.44.19/v1';
  static const String projectId = '65f31e0dee7417a5dc36';

  Appwrite._();

  static final client = Client()
    ..setEndpoint(endpoint)
    ..setProject(projectId)
    ..setSelfSigned(status: true);

  static final account = Account(client);
  static final storage = Storage(client);
  static final databases = Databases(client);
  static final realtime = Realtime(client);

  static Future<void> loginWithGitHub() async {
    await Appwrite.account.createOAuth2Session(provider: OAuthProvider.github);
  }

  static Future<void> loginWithDiscord() async {
    await Appwrite.account.createOAuth2Session(provider: OAuthProvider.discord);
  }
}
