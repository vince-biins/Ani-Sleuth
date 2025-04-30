import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_event.freezed.dart';

@freezed
class BaseEvent with _$BaseEvent {
  const factory BaseEvent.loadPage() = LoadPage;
  const factory BaseEvent.refreshPage() = RefreshPage;
}
