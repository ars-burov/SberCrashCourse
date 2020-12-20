class DeepDiveState {
  final String selectedDeepDiveId;
  final List reports;

  DeepDiveState({
    this.selectedDeepDiveId,
    this.reports
  });

  static DeepDiveState initialState() => DeepDiveState(reports: []);

  DeepDiveState copyWith({
    String selectedDeepDiveId,
    List reports
  }) => DeepDiveState(
    selectedDeepDiveId: selectedDeepDiveId ?? this.selectedDeepDiveId,
    reports: reports ?? this.reports
  );
}

// null ?? '12341' => '12341
// '12412' ?? true => '12412'
