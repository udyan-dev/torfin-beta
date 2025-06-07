import 'dart:io';

import 'package:dio/dio.dart';

import '../bindings/env.dart';

sealed class AppConstants {
  static const String appTitle = "Torfin";
  static const String splashMessage = "Establishing a secure connection… 🚀";
  static const String success = "Success !";
  static const String error = "Oops, Something went wrong !";
  static const String tokenKey = "TOKEN";
  static const String themeKey = "THEME";

  // Navigation labels
  static const String searchLabel = "Search";
  static const String downloadsLabel = "Downloads";
  static const String favoriteLabel = "Favorite";
  static const String settingsLabel = "Settings";

  // Asset paths
  static const String checkmarkIcon = "assets/images/checkmark_filled.svg";
  static const String errorIcon = "assets/images/error_filled.svg";
  static const String loadingIcon = "assets/images/loading.svg";

  // Error messages
  static const String repositoryError = "Repository operation failed";
  static const String apiKeyExtractionError =
      "Failed to extract API key from response";
  static const String tokenExtractionError =
      "Failed to extract token from response";
  static const String apiKeyFetchError = "Failed to fetch API key";
  static const String tokenFetchError = "Failed to fetch token";
  static const String getTokenError = "Failed to get token";
  static const String unknownError = "Unknown error occurred";
  static const String noInternetError =
      "No internet connection. Please check your network settings.";
  static const String serverConnectionError =
      "Unable to connect to the server. Please check your network.";
  static const String parseDataError =
      "Failed to parse data received from the server.";
  static const String requestCancelledError =
      "Request was cancelled by the user or system.";
  static const String connectionTimeoutError =
      "Connection failed. Please check your internet connection.";
  static const String sendTimeoutError =
      "Sending request failed. The server is not responding.";
  static const String receiveTimeoutError =
      "Receive response failed. The server might be slow.";
  static const String badResponseError = "Bad response from the server.";
  static const String badCertificateError =
      "Invalid SSL certificate. Please check the server configuration.";
  static const String prepareRequestError = "Failed to prepare request";
  static const String getRequestError = "GET request failed";
  static const String postRequestError = "POST request failed";
  static const String putRequestError = "PUT request failed";
  static const String deleteRequestError = "DELETE request failed";
  static const String patchRequestError = "PATCH request failed";
  static const String unsupportedTypeError = "Unsupported type";

  // Connectivity messages
  static const String noConnectionMessage = "No internet connection";
  static const String connectionRestoredMessage = "Connection restored";
  static const String checkConnectionMessage = "Please check your network settings";

  // Other constants
  static const String authorizationHeader = "Authorization";
  static const String bearerPrefix = "Bearer ";
  static const String queryTimestamp = "_";
  static const String zoneErrorLog = "ZONE_ERROR";
  static const String emptyString = "";

  static final RegExp regexForKey = RegExp(
    r'findNextItem.*?"(.*?)"',
    dotAll: true,
  );
  static final RegExp regexForJs = RegExp(r'(b.min.js.*)(?=")');

  // HTTP Headers
  static const String userAgentHeader = "user-agent";
  static const String acceptHeader = "accept";
  static const String acceptLanguageHeader = "accept-language";
  static const String dntHeader = "dnt";
  static const String priorityHeader = "priority";
  static const String refererHeader = "referer";
  static const String secChUaHeader = "sec-ch-ua";
  static const String secChUaMobileHeader = "sec-ch-ua-mobile";
  static const String secChUaPlatformHeader = "sec-ch-ua-platform";
  static const String secFetchDestHeader = "sec-fetch-dest";
  static const String secFetchModeHeader = "sec-fetch-mode";
  static const String secFetchSiteHeader = "sec-fetch-site";
  static const String xRequestedWithHeader = "x-requested-with";

  // HTTP Header Values
  static const String userAgentValue = "Mozilla/5.0 (Linux; Android ";
  static const String acceptValue =
      "application/json, text/javascript, */*; q=0.01";
  static const String acceptLanguageValue = "en-US,en;q=0.9,en-IN;q=0.8";
  static const String dntValue = "1";
  static const String priorityValue = "u=1, i";
  static const String secChUaValue = '"Not(A:Brand";v="99", "Chromium";v="133"';
  static const String secChUaMobileValue = "?1";
  static const String secChUaPlatformValue = '"Android"';
  static const String secFetchDestValue = "empty";
  static const String secFetchModeValue = "cors";
  static const String secFetchSiteValue = "same-origin";
  static const String xRequestedWithValue = "XMLHttpRequest";

  // Exception Messages from AppException
  static const String requestCancelledMessage =
      "Request was cancelled by the user or system.";
  static const String connectionFailedMessage =
      "Connection failed. Please check your internet connection.";
  static const String sendTimeoutMessage =
      "Sending request failed. The server is not responding.";
  static const String receiveTimeoutMessage =
      "Receive response failed. The server might be slow.";
  static const String badResponseMessage = "Bad response from the server.";
  static const String badCertificateMessage =
      "Invalid SSL certificate. Please check the server configuration.";
  static const String unknownErrorMessage = "An unknown error occurred.";

  // Storage Exception
  static const String storageExceptionPrefix = "StorageException: ";

  // Dependency Injection Instance Names
  static const String generalDioInstance = "general";
  static const String tokenClientDioInstance = "tokenClient";

  // Token Client Base Options
  static final BaseOptions tokenClientBaseOptions = BaseOptions(
    headers: {
      userAgentHeader: "$userAgentValue${Platform.operatingSystemVersion})",
      acceptHeader: acceptValue,
      acceptLanguageHeader: acceptLanguageValue,
      dntHeader: dntValue,
      priorityHeader: priorityValue,
      refererHeader: Env.baseUrl,
      secChUaHeader: secChUaValue,
      secChUaMobileHeader: secChUaMobileValue,
      secChUaPlatformHeader: secChUaPlatformValue,
      secFetchDestHeader: secFetchDestValue,
      secFetchModeHeader: secFetchModeValue,
      secFetchSiteHeader: secFetchSiteValue,
      xRequestedWithHeader: xRequestedWithValue,
    },
  );
}
