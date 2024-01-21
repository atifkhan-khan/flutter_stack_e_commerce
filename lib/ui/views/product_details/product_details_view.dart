import 'package:flutter/material.dart';
import 'package:flutter_stack_e_comerce/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'product_details_viewmodel.dart';

class ProductDetailsView extends StackedView<ProductDetailsViewModel> {
  const ProductDetailsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ProductDetailsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(top: 30, left: 25.0, right: 25.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: screenHeight(context) / 2,
              child: Image.network(
                  height: 200,
                  "https://pngimg.com/uploads/glass/wineglass_PNG2866.png"),
            ),
          ),
          verticalSpaceMedium,
          Text(
            "Wine Glass",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            "A sparkling coastline stretching more than 3,000 miles, a climate to die for and more tapas than you could possibly eat – that’s Spain. Mix famously vibrant spots",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
          ),
          verticalSpaceMedium,
          Row(
            children: [
              Column(
                children: [
                  Text(
                    "Colors",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  verticalSpaceSmall,
                  Row(
                    children: [
                      Icon(
                        Icons.circle,
                        color: Colors.blueGrey,
                      ),
                      horizontalSpaceTiny,
                      Icon(
                        Icons.circle,
                        color: Colors.yellowAccent,
                      ),
                      horizontalSpaceTiny,
                      Icon(
                        Icons.circle,
                        color: Colors.green,
                      )
                    ],
                  )
                ],
              ),
              horizontalSpaceLarge,
              Column(
                children: [
                  Text(
                    "Quantity",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  verticalSpaceSmall,
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Row(
                      children: [
                        Text(
                          " - ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        horizontalSpaceSmall,
                        Text(
                          " 1 ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        horizontalSpaceSmall,
                        Text(
                          " + ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          Flexible(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 8),
                height: 50,
                width: screenWidth(context),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "12.99 £",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            color: Colors.blueAccent),
                        child: const Text(
                          " 🛍️ Add to cart",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      )
                    ]),
              ),
            ),
          )
        ]),
      ),
    );
  }

  @override
  ProductDetailsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProductDetailsViewModel();
}
