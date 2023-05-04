// To parse this JSON data, do
//
//     final keycloak = keycloakFromJson(jsonString);

import 'dart:convert';

Keycloak keycloakFromJson(String str) => Keycloak.fromJson(json.decode(str));

String keycloakToJson(Keycloak data) => json.encode(data.toJson());

class Keycloak {
  String realm;
  String publicKey;
  String tokenService;
  String accountService;
  int tokensNotBefore;

  Keycloak({
    required this.realm,
    required this.publicKey,
    required this.tokenService,
    required this.accountService,
    required this.tokensNotBefore,
  });

  factory Keycloak.fromJson(Map<String, dynamic> json) => Keycloak(
        realm: json["realm"],
        publicKey: json["public_key"],
        tokenService: json["token-service"],
        accountService: json["account-service"],
        tokensNotBefore: json["tokens-not-before"],
      );

  Map<String, dynamic> toJson() => {
        "realm": realm,
        "public_key": publicKey,
        "token-service": tokenService,
        "account-service": accountService,
        "tokens-not-before": tokensNotBefore,
      };
}
