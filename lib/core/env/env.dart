
enum BuildFlavor { production, dev }

class BuildEnvironment {
  final String? baseUrl;
  final BuildFlavor? flavor;
  final String? version;

  BuildEnvironment({this.flavor, this.baseUrl, this.version});
}
