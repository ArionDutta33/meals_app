import 'package:flutter/material.dart';
import 'package:meals_app/screens/tabs.dart';
import 'package:meals_app/widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});
  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _gluttenFree = false;
  bool _lactoseFree = false;
  bool _vegetarian = false;
  final bool _vegan = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Filters"),
      ),
      // drawer: MainDrawer(onSelect: (identifier) {
      //   Navigator.of(context).pop();
      //   if (identifier == "Meals") {
      //     Navigator.pushReplacement(
      //         context,
      //         MaterialPageRoute(
      //           builder: (context) => const TabsScreen(),
      //         ));
      //   }
      // }),
      body: Column(
        children: [
          SwitchListTile(
            value: _gluttenFree,
            onChanged: (value) {
              setState(() {
                _gluttenFree = value;
              });
            },
            title: Text(
              "Glutten free",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            subtitle: Text(
              "Only include glutten free meals",
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: _lactoseFree,
            onChanged: (value) {
              setState(() {
                _lactoseFree = value;
              });
            },
            title: Text(
              "Lactose free",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            subtitle: Text(
              "Only include lacotse free meals",
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: _vegetarian,
            onChanged: (value) {
              setState(() {
                _vegetarian = value;
              });
            },
            title: Text(
              "Vegetarian",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            subtitle: Text(
              "Only include vegetarian meals",
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
        ],
      ),
    );
  }
}
