import 'package:beltis_app/features/dashboard/domain/entities/enums/pacote_status_enum.dart';
import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';

@entity
class PacoteStatus extends Equatable {
  @primaryKey
  final int id;
  final int pacoteId;
  final PacoteStatusEnum status;
  final DateTime dateTime;

  PacoteStatus({
    required this.id,
    required this.pacoteId,
    required this.status,
    required this.dateTime,
  });

  @override
  List<Object?> get props => [id, pacoteId, status, dateTime];
}
