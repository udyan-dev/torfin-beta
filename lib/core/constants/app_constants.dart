sealed class AppConstants {
  static const String appTitle = "Torfin";
  static const String fontFamily = "Lexend";
  static const String splashMessage = "Establishing a secure connection… 🚀";
  static const String success = "Success !";
  static const String error = "Oops, Something went wrong !";
  static const String tokenKey = "TOKEN";
  static const String themeKey = "THEME";

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
}
