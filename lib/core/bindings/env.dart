sealed class Env {
  static const baseUrl = String.fromEnvironment('BASE_URL', defaultValue: 'https://snowfl.com/');
  static const proxyUrl = String.fromEnvironment('PROXY_URL', defaultValue: 'https://torfin.udyan-dev.workers.dev/?url=');
  static const autoCompleteUrl = String.fromEnvironment('AUTOCOMPLETE_URL', defaultValue: 'http://suggestqueries.google.com/complete/search?client=chrome&q=');
  static const imageUrl = String.fromEnvironment('IMAGE_URL', defaultValue: 'https://www.bing.com/images/search?q=');
}
