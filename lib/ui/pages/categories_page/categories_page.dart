import 'package:flutter/material.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

import '../../../scope/scope.dart';
import '../../widgets/page_row.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  final _searchController = TextEditingController();
  String? _search;

  @override
  Widget build(BuildContext context) {
    final categories = ScopeProvider.of<AppContainer>(context)!.categories;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Мои статьи'),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          ColoredBox(
            color: ColorScheme.of(context).surfaceContainerHigh,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: TextField(
                controller: _searchController,
                keyboardType: TextInputType.text,
                onChanged:
                    (value) => setState(() => _search = value.toLowerCase()),
                decoration: InputDecoration(
                  hintText: 'Найти статью',
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  focusedBorder: InputBorder.none,
                ),
                style: TextTheme.of(context).bodyLarge,
              ),
            ),
          ),
          StreamBuilder(
            stream: categories.serviceDep.get.value,
            initialData: categories.serviceDep.get.value.value,
            builder: (context, snapshot) {
              final filtered =
                  snapshot.requireData!
                      .where(
                        (element) =>
                            element.name.toLowerCase().contains(_search ?? ''),
                      )
                      .toList();

              return Expanded(
                child: ListView.builder(
                  itemBuilder:
                      (context, index) => PageRow.item(
                        iconText: filtered.elementAt(index).emoji,
                        text: filtered.elementAt(index).name,
                      ),
                  itemCount: filtered.length,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
