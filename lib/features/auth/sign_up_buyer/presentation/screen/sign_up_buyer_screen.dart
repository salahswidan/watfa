import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/auth_text_form_field.dart';
import '../../../../../core/widgets/custom_gradient_container.dart';
import '../../../countryPicker/logic/cubit/get_all_countries_cubit.dart';
import '../../../countryPicker/ui/country_picker.dart';
import '../../../get_started/presentation/widgets/custom_auth_button.dart';
import '../../../login/presentation/section/social_auth.dart';
import '../../../login/presentation/widget/logo.dart';
import '../section/already_have_an_account.dart';
import '../section/password_listener.dart';

class SignUpBuyerScreen extends StatelessWidget {
  const SignUpBuyerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomGradientContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    verticalSpacing(60),
                    const Logo(),
                    verticalSpacing(28),
                    Center(
                      child: Text("Let’s Get Started!",
                          style: TextStyles.font24Blackw700Roboto(context)),
                    ),
                    verticalSpacing(18),
                    Center(
                      child: Text("Create an account  to get all features",
                          style:
                              TextStyles.font14DarkSilverw400Roboto(context)),
                    ),
                    verticalSpacing(30),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Username or email",
                        style: TextStyles.font14Jetw500Poppins(context),
                      ),
                    ),
                    AuthTextFormField(
                      suffixIcon: 'assets/svgs/username_text_field_icon.svg',
                      hintText: 'Mariam Fawzy',
                      controller: TextEditingController(),
                    ),
                    verticalSpacing(16),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Phone number",
                        style: TextStyles.font14Jetw500Poppins(context),
                      ),
                    ),
                    IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BlocProvider(
                            create: (context) => getit<GetAllCountriesCubit>()
                              ..getAllCountries(),
                            child: const CountryPicker(),
                          ),
                        ],
                      ),
                    ),
                    verticalSpacing(16),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Password",
                        style: TextStyles.font14Jetw500Poppins(context),
                      ),
                    ),
                    AuthTextFormField(
                      isPassword: true,
                      hintText: 'Password',
                      controller: TextEditingController(),
                    ),
                    verticalSpacing(16),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Confirm Password",
                        style: TextStyles.font14Jetw500Poppins(context),
                      ),
                    ),
                    AuthTextFormField(
                      isPassword: true,
                      hintText: 'Confirm Password',
                      controller: TextEditingController(),
                    ),
                    verticalSpacing(10),
                    const PasswordListener(),
                    verticalSpacing(25),
                    CustomAuthButton(
                      onTap: () {},
                      text: 'Sign Up',
                    ),
                    verticalSpacing(40),
                    Center(
                      child: Text(
                        "sign up using",
                        style:
                            TextStyles.font15CharlestonGreenw400Roboto(context),
                      ),
                    ),
                    verticalSpacing(14),
                    const SocialAuth(),
                    verticalSpacing(10),
                    const AlreadyHaveAnAccount(),
                    verticalSpacing(30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
