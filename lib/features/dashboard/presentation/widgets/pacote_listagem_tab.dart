import 'package:beltis_app/features/dashboard/presentation/widgets/pacote_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/pacote/listar_pacotes_cubit.dart';

class PacoteListagemTab extends StatelessWidget {
  const PacoteListagemTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 8),
          child: Row(
            children: [
              Icon(Icons.filter_list),
              SizedBox(width: 8),
              Text(
                'Lista de pacotes',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Divider(),
        Expanded(
          child: BlocBuilder<ListarPacotesCubit, ListarPacotesState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => Container(),
                loading: () => Center(
                  child: CircularProgressIndicator(),
                ),
                error: (mensagem) => Center(
                  child: Text(mensagem),
                ),
                loaded: (pacotes) {
                  return ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      return PacoteItem(
                        pacote: pacotes[index],
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return Divider();
                    },
                    itemCount: pacotes.length,
                  );
                },
              );
            },
          ),
        )
      ],
    );
  }
}
