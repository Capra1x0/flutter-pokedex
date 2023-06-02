// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pokemon _$$_PokemonFromJson(Map<String, dynamic> json) => _$_Pokemon(
      id: json['id'] as int,
      height: json['height'] as int,
      weight: json['weight'] as int,
      sprites: Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PokemonToJson(_$_Pokemon instance) =>
    <String, dynamic>{
      'id': instance.id,
      'height': instance.height,
      'weight': instance.weight,
      'sprites': instance.sprites,
    };
