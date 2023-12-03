import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sky_printing/core/app_route.dart';
import 'package:sky_printing/dependencies_injection.dart';
import 'package:sky_printing/ui/login/cubit/login_cubit.dart';
import 'package:sky_printing/ui/main/cubit/main_cubit.dart';
import 'package:sky_printing/ui/main/widgets/bottom_nav_bar.dart';
import 'package:sky_printing/ui/settings/cubit/settings_cubit.dart';
import 'package:sky_printing_core/sky_printing_core.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> with MainBoxMixin {
  late final ActiveTheme _selectedTheme = sl<SettingsCubit>().getActiveTheme();

  late final List<DataHelper> _listLanguage = [
    DataHelper(title: Constants.get.english, type: "en"),
    DataHelper(title: Constants.get.bahasa, type: "id"),
  ];
  late DataHelper _selectedLanguage =
      (getData(MainBoxKeys.locale) ?? "en") == "en"
          ? _listLanguage[0]
          : _listLanguage[1];
  dynamic user;
  @override
  void initState() {
    user = getData(MainBoxKeys.user);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      bottomNavigation: BottomNavBar(
        dataMenu: context.read<MainCubit>().dataMenus,
        currentIndex: (int index) {
          context.read<MainCubit>().updateIndex(
                index,
              );
        },
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(Dimens.space16),
            child: Column(
              children: [
                Text(
                  user.toString(),
                ),
                DropDown<ActiveTheme>(
                  key: const Key("dropdown_theme"),
                  hint: Strings.of(context)!.choose_theme,
                  value: _selectedTheme,
                  prefixIcon: const Icon(Icons.light),
                  items: ActiveTheme.values
                      .map(
                        (data) => DropdownMenuItem(
                          value: data,
                          child: Text(
                            _getThemeName(data, context),
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    /// Reload theme
                    context
                        .read<SettingsCubit>()
                        .updateTheme(value ?? ActiveTheme.system);
                  },
                ),

                /// Language
                DropDown<DataHelper>(
                  key: const Key("dropdown_language"),
                  hint: Strings.of(context)!.choose_language,
                  value: _selectedLanguage,
                  prefixIcon: const Icon(Icons.language_outlined),
                  items: _listLanguage
                      .map(
                        (data) => DropdownMenuItem(
                          value: data,
                          child: Text(
                            data.title ?? "-",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      )
                      .toList(),
                  onChanged: (DataHelper? value) async {
                    _selectedLanguage = value ?? _listLanguage[0];

                    /// Reload theme
                    if (!mounted) return;
                    context
                        .read<SettingsCubit>()
                        .updateLanguage(value?.type ?? "en");
                  },
                ),
                TextButton(
                  onPressed: () {
                    context.read<LoginCubit>().logout();
                    context.goNamed(Routes.splashScreen.name);
                  },
                  child: Text(Strings.of(context)!.logout),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _getThemeName(ActiveTheme activeTheme, BuildContext context) {
    if (activeTheme == ActiveTheme.system) {
      return Strings.of(context)!.theme_system;
    } else if (activeTheme == ActiveTheme.dark) {
      return Strings.of(context)!.theme_dark;
    } else {
      return Strings.of(context)!.theme_light;
    }
  }
}
