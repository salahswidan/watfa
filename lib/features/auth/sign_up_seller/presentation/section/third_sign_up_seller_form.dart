import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/auth_text_form_field.dart';
import '../widget/platform_container.dart';

class ThirdSignUpSellerForm extends StatefulWidget {
  const ThirdSignUpSellerForm({
    super.key,
  });

  @override
  State<ThirdSignUpSellerForm> createState() => _ThirdSignUpSellerFormState();

  static const List<String> productsOrServices = [
    "Clothes",
    "Electronics",
    "Furniture",
    "Food",
    "Books",
    "Beauty",
    "etc"
  ];
}

class _ThirdSignUpSellerFormState extends State<ThirdSignUpSellerForm> {
  TextEditingController productsOrServicesController =
      TextEditingController(text: ThirdSignUpSellerForm.productsOrServices[0]);
  int _selectedIndex = 0;

  @override
  void dispose() {
    productsOrServicesController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text("complete your Watfa profile",
                textAlign: TextAlign.center,
                style: TextStyles.font20PhilippineGrayw500Roboto(context)),
          ),
        ),
        verticalSpacing(40.h(context)),
        Text(
          "What products or services do you provide?",
          style: TextStyles.font14RaisinBlackw500Poppins(context),
        ),
        AuthTextFormField(
          readOnly: true,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter your products or services';
            }
            return null;
          },
          suffixIconConstraints: BoxConstraints(
            maxWidth: 50,
            maxHeight: 23,
          ),
          suffixIconWidget: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () => buildShowModalBottomSheet(context),
              child: Image.asset(
                "assets/images/Double Down.png",
              ),
            ),
          ),
          hintText: "",
          controller: productsOrServicesController,
        ),
        verticalSpacing(35.h(context)),
        Text(
          "What platform are you using?",
          style: TextStyles.font14Blackw500Poppins(context),
        ),
        verticalSpacing(15.h(context)),
        PlatformContainer(
          onTap: () {
            setState(() {
              _selectedIndex = 0;
            });
          },
          image: "assets/images/salla.png",
          title: "Salla",
          isSelected: _selectedIndex == 0,
        ),
        verticalSpacing(15),
        PlatformContainer(
          image: "assets/images/Zid.png",
          title: "Zid",
          isSelected: _selectedIndex == 1,
          onTap: () {
            setState(() {
              _selectedIndex = 1;
            });
          },
        ),
        verticalSpacing(15),
        PlatformContainer(
          image: "assets/images/woocommerce.png",
          title: "WooCommerce",
          isSelected: _selectedIndex == 2,
          onTap: () {
            setState(() {
              _selectedIndex = 2;
            });
          },
        ),
        verticalSpacing(15),
        PlatformContainer(
          image: "assets/images/shopify.png",
          title: "Shopify",
          isSelected: _selectedIndex == 3,
          onTap: () {
            setState(() {
              _selectedIndex = 3;
            });
          },
        ),
        verticalSpacing(15),
        PlatformContainer(
          image: "assets/images/Direct integration.png",
          title: "Direct integration",
          isSelected: _selectedIndex == 4,
          onTap: () {
            setState(() {
              _selectedIndex = 4;
            });
          },
        ),
        verticalSpacing(15),
        PlatformContainer(
          image: "assets/images/other.png",
          title: "Other",
          isSelected: _selectedIndex == 5,
          onTap: () {
            setState(() {
              _selectedIndex = 5;
            });
          },
        ),
        verticalSpacing(50)
      ],
    );
  }

  buildShowModalBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return Container(
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                    ThirdSignUpSellerForm.productsOrServices.length, (index) {
                  return ListTile(
                    title:
                        Text(ThirdSignUpSellerForm.productsOrServices[index]),
                    onTap: () {
                      setState(() {
                        productsOrServicesController.text =
                            ThirdSignUpSellerForm.productsOrServices[index];
                      });
                      Navigator.pop(context);
                    },
                  );
                }),
              ));
        });
  }
}
