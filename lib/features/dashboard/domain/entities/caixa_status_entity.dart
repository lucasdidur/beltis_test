import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';

import 'enums/caixa_status_enum.dart';

@Entity()
class CaixaStatus extends Equatable {
  @primaryKey
  final int id;
  final CaixaStatusEnum status;
  final DateTime dateTime;
  final int caixaId;

  CaixaStatus({
    required this.id,
    required this.status,
    required this.dateTime,
    required this.caixaId,
  });

  @override
  List<Object?> get props => [id, status, dateTime, caixaId];
}
