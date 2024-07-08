// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'autenticacao_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AutenticacaoModelImpl _$$AutenticacaoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AutenticacaoModelImpl(
      accessToken: json['access'] as String,
      refreshToken: json['refresh'] as String,
      usuario: UsuarioModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AutenticacaoModelImplToJson(
        _$AutenticacaoModelImpl instance) =>
    <String, dynamic>{
      'access': instance.accessToken,
      'refresh': instance.refreshToken,
      'user': instance.usuario.toJson(),
    };
