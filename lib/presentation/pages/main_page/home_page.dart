import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notion_client/domain/blocs/home_page_bloc/home_page_bloc.dart';
import 'package:notion_client/internal/di/home_page_scope.dart';
import 'package:notion_client/presentation/components/home_page_component.dart';
import 'package:notion_client/presentation/widgets/loader.dart';
import 'package:notion_client/presentation/widgets/retry_error_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomePageScope(
      child: BlocBuilder<HomePageBloc, HomePageState>(
        builder: (context, state) {
          if (state is Error) {
            return Center(
              child: RetryErrorWidget(
                errorText: state.error,
                callback: () {
                  BlocProvider.of<HomePageBloc>(context).add(
                    const HomePageEvent.fetch(),
                  );
                },
              ),
            );
          }

          if (state is Success) {
            return HomePageComponent(
              baseGraph: state.result,
            );
          }

          return const Center(
            child: Loader(),
          );
        },
      ),
    );
  }
}
