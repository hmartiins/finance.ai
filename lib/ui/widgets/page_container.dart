import 'package:flutter/material.dart';

class PageContainer extends StatelessWidget {
  const PageContainer({
    super.key,
    required this.children,
    this.isAFormPage = false,
    this.appBarTitle,
  });

  final List<Widget> children;
  final bool isAFormPage;

  final String? appBarTitle;

  final EdgeInsetsGeometry padding = const EdgeInsets.all(16);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarTitle != null
          ? AppBar(
              leading: Navigator.of(context).canPop()
                  ? IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )
                  : null,
              title: Text(
                appBarTitle!,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              centerTitle: true,
            )
          : null,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Padding(
                  padding: padding,
                  child: isAFormPage
                      ? Form(child: Column(children: children))
                      : Column(children: children),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
