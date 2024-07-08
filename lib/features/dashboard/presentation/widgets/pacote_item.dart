import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../app/router/app_router.gr.dart';
import '../../domain/entities/enums/pacote_status_enum.dart';
import '../../domain/entities/pacote_entity.dart';

class PacoteItem extends StatelessWidget {
  final Pacote pacote;

  const PacoteItem({super.key, required this.pacote});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pacote.codigo,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Container(
                    width: 60,
                    height: 6,
                    decoration: BoxDecoration(
                      color: pacote.recebido ? PacoteStatusEnum.recebido.color : PacoteStatusEnum.naoRegistrado.color,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  SizedBox(width: 8),
                  Container(
                    width: 60,
                    height: 6,
                    decoration: BoxDecoration(
                      color: pacote.devolvido ? PacoteStatusEnum.devolvido.color : PacoteStatusEnum.naoRegistrado.color,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        IconButton(
          onPressed: () {
            context.router.push(DetalhesPacoteRoute(pacoteId: pacote.id));
          },
          icon: Icon(Icons.keyboard_arrow_right),
        ),
      ],
    );
  }
}
