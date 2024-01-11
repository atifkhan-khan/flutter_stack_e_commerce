import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_stack_e_comerce/ui/common/ui_helpers.dart';
import 'package:intrinsic_grid_view/intrinsic_grid_view.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      key: viewModel.key,
      drawer: DrawerWidget(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              verticalSpaceMedium,
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        viewModel.key.currentState!.openDrawer();
                      },
                      icon: const Icon(
                        Icons.menu,
                      )),
                  Container(
                    width: screenWidth(context) / 1.5,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(22)),
                    height: 35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Icon(Icons.search)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(right: 8),
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                )),
                            horizontalSpaceSmall,
                            Padding(
                                padding: EdgeInsets.only(right: 8),
                                child: InkWell(
                                    onTap: () {
                                      viewModel.navToUIScreen();
                                    },
                                    child: Icon(
                                      Icons.shopping_bag_outlined,
                                      color: Colors.amber,
                                    )))
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ProductsListWidget()
            ],
          )),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}

Widget DrawerWidget() {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text(
            'Drawer Header',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.message),
          title: const Text('Messages'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.account_circle),
          title: const Text('Profile'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('Settings'),
          onTap: () {},
        ),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget ProductsListWidget() {
  return Expanded(
    child: Container(
        child: IntrinsicGridView.vertical(
            verticalSpace: 10,
            horizontalSpace: 10,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            //shrinkWrap: true,
            children: List.generate(112, (index) {
              return Card(
                  clipBehavior: Clip.antiAlias,

                  // margin: EdgeInsetsDirectional.all(8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          SizedBox(
                            height: 120,
                            width: 170,
                            child: Image.network(
                                height: 120,
                                width: 170,
                                fit: BoxFit.fill,
                                "https://hornblower-businesses.co.uk/wp-content/uploads/2020/02/electrical-equipment-manufacturer_1000X750.jpg"),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )),
                        ],
                      )),
                      verticalSpaceTiny,
                      const Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          "Product Name",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      verticalSpaceTiny,
                      const Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          "Price 12£",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      verticalSpaceSmall,
                    ],
                  ));
            }))),
  );
}
