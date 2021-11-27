import 'dart:convert';

class UIState {
  final int flexSidebar;
  final int flexBody;
  final int flexTab1;
  final int flexTab2;
  UIState({
    required this.flexSidebar,
    required this.flexBody,
    required this.flexTab1,
    required this.flexTab2,
  });

  UIState copyWith({
    int? flexSidebar,
    int? flexBody,
    int? flexTab1,
    int? flexTab2,
  }) {
    return UIState(
      flexSidebar: flexSidebar ?? this.flexSidebar,
      flexBody: flexBody ?? this.flexBody,
      flexTab1: flexTab1 ?? this.flexTab1,
      flexTab2: flexTab2 ?? this.flexTab2,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'flexSidebar': flexSidebar,
      'flexBody': flexBody,
      'flexTab1': flexTab1,
      'flexTab2': flexTab2,
    };
  }

  factory UIState.fromMap(Map<String, dynamic> map) {
    return UIState(
      flexSidebar: map['flexSidebar'],
      flexBody: map['flexBody'],
      flexTab1: map['flexTab1'],
      flexTab2: map['flexTab2'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UIState.fromJson(String source) =>
      UIState.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UIState(flexSidebar: $flexSidebar, flexBody: $flexBody, flexTab1: $flexTab1, flexTab2: $flexTab2)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UIState &&
        other.flexSidebar == flexSidebar &&
        other.flexBody == flexBody &&
        other.flexTab1 == flexTab1 &&
        other.flexTab2 == flexTab2;
  }

  @override
  int get hashCode {
    return flexSidebar.hashCode ^ flexBody.hashCode ^ flexTab1.hashCode ^ flexTab2.hashCode;
  }
}
