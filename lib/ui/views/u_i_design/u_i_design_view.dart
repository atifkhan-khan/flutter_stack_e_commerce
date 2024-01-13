import 'package:flutter/material.dart';
import 'package:flutter_stack_e_comerce/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'u_i_design_viewmodel.dart';

class UIDesignView extends StackedView<UIDesignViewModel> {
  const UIDesignView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    UIDesignViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: screenHeight(context) / 2,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "SPANISH WINE 🍾",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white),
                  )
                ]),
          ),
          Container(
              height: screenHeight(context) / 2,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: ClampingScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        viewModel.navToProductDetail();
                      },
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 5, right: 5, bottom: 15),
                              height: 270,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 200,
                                height: 200,
                                child: Image.network(
                                    "https://pngimg.com/uploads/glass/wineglass_PNG2866.png"),
                              ),
                              const Padding(
                                  padding: EdgeInsets.only(top: 10, left: 10),
                                  child: Text(
                                    "Glass of wine",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )),
                              const Padding(
                                  padding: EdgeInsets.only(top: 10, left: 10),
                                  child: Text(
                                    "Price 10£",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(top: 10, left: 10),
                                  child: Text(
                                    "Ratting  ⭐⭐⭐✰✰",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    );
                  }))
        ]),
      ),
    );
  }

  @override
  UIDesignViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      UIDesignViewModel();
}
