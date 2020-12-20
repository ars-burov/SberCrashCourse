class ConfigState {
  final isProd;

  ConfigState({
    this.isProd,
  });

  static ConfigState initialState() => ConfigState(
    isProd: false
  );
}
