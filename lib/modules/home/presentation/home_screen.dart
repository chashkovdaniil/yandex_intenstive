import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../configs/colors.dart';

import 'components/animation_numbers_text.dart';
import 'components/home_card.dart';
import 'components/home_line_chart.dart';
import 'components/list_countries_confirmed.dart';
import 'components/ratio_recovered_chart.dart';
import 'state/home_screen_state.dart';

final _homeScreenProvider =
    StateNotifierProvider<HomeScreenProvider, HomeScreenState>(
  (ref) => HomeScreenProvider(),
);

class HomeScreen extends HookConsumerWidget {
  static const route = '/';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeScreenStatus = ref.watch(_homeScreenProvider).status;

    useEffect(
      () {
        ref.read(_homeScreenProvider.notifier).load();
      },
      const [],
    );

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          ref.read(_homeScreenProvider.notifier).load();
        },
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        child: homeScreenStatus.when(
          success: () => HomeScreenSuccessState(
            confirmedSpots: ref.watch(_homeScreenProvider).confirmedSpots,
            recoveredSpots: ref.watch(_homeScreenProvider).recoveredSpots,
            testData: ref.watch(_homeScreenProvider).testData,
          ),
          failed: () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Text('Error'),
              ),
              ElevatedButton(
                onPressed: () => ref.read(_homeScreenProvider.notifier).load(),
                child: const Text('Обновить'),
              )
            ],
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}

class HomeScreenSuccessState extends StatelessWidget {
  final List<List<double>>? confirmedSpots;
  final List<List<double>>? recoveredSpots;
  final Map<String, Object>? testData;
  const HomeScreenSuccessState({
    Key? key,
    required this.confirmedSpots,
    required this.recoveredSpots,
    required this.testData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: CustomScrollView(
              controller: ScrollController(),
              physics: const BouncingScrollPhysics(),
              slivers: [
                const SliverAppBar(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  floating: true,
                  flexibleSpace: SearchField(),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 10),
                ),
                SliverGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 25,
                  children: [
                    HomeCard(
                      child: HomeLineChart(
                        title: 'Confirmed',
                        value: 123456,
                        colors: const [AppColors.orange],
                        spots: confirmedSpots!,
                        showAnimation: true,
                      ),
                    ),
                    HomeCard(
                      child: HomeLineChart(
                        title: 'Recovered',
                        value: 123456,
                        colors: const [AppColors.green],
                        showAnimation: true,
                        spots: recoveredSpots!,
                      ),
                    ),
                    HomeCard(
                      child: HomeLineChart(
                        title: 'Deaths',
                        value: 123456,
                        colors: const [AppColors.red],
                        showAnimation: true,
                        spots: confirmedSpots!,
                      ),
                    ),
                    HomeCard(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Fatality rate'),
                          AnimatedNumbersText(
                            additionText: '%',
                            fractionDigits: 1,
                            from: 0,
                            to: 0.7,
                            textStyle: Theme.of(context).textTheme.headline3,
                          ),
                          const SizedBox.shrink(),
                        ],
                      ),
                    ),
                  ],
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 25),
                ),
                SliverToBoxAdapter(
                  child: HomeCard(
                    child: RatioRecoveryChart(
                      deaths: (testData!['Global']
                          as Map<String, Object>)['TotalDeaths'] as int,
                      recovered: (testData!['Global']
                          as Map<String, Object>)['TotalRecovered'] as int,
                      confirmed: (testData!['Global']
                          as Map<String, Object>)['TotalConfirmed'] as int,
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 25),
                ),
                SliverToBoxAdapter(
                  child: HomeCard(
                    child: ListCountriesConfirmed(
                      testData: List<Map<String, Object>>.from(
                        testData!['Countries'] as Iterable<dynamic>,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SearchField extends StatefulWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final _focusNode = FocusNode();
  late final TextEditingController _searchFieldController;
  OverlayEntry? _suggestsOverlay;

  @override
  void initState() {
    super.initState();
    _searchFieldController = TextEditingController();
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _suggestsOverlay = _createSuggestsOverlay();
        Overlay.of(context)?.insert(_suggestsOverlay!);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _suggestsOverlay?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: TextField(
        controller: _searchFieldController,
        focusNode: _focusNode,
        toolbarOptions: const ToolbarOptions(
          copy: true,
          paste: true,
          cut: true,
          selectAll: true,
        ),
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(
              color: AppColors.grey,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(
              color: AppColors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(
              color: AppColors.grey,
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> _onWillPop() async {
    if (_suggestsOverlay != null) {
      _defeatSuggestsOverlay();
      return false;
    }
    return true;
  }

  OverlayEntry _createSuggestsOverlay() {
    var renderBox = context.findRenderObject() as RenderBox;
    var size = renderBox.size;
    var sizeScreen = MediaQuery.of(context).size;
    var offset = renderBox.localToGlobal(Offset.zero);
    return OverlayEntry(
      builder: (context) {
        return SuggestsOverlay(
          offset: offset,
          size: size,
          sizeScreen: sizeScreen,
          textFieldController: _searchFieldController,
        );
      },
    );
  }

  void _defeatSuggestsOverlay() {
    _suggestsOverlay?.remove();
    _suggestsOverlay = null;
    _focusNode.unfocus();
  }
}

class SuggestsOverlay extends StatelessWidget {
  final Offset offset;
  final Size size;
  final Size sizeScreen;
  final Duration duration;
  final TextEditingController textFieldController;

  const SuggestsOverlay({
    Key? key,
    required this.offset,
    required this.size,
    required this.sizeScreen,
    this.duration = const Duration(
      seconds: 1,
    ),
    required this.textFieldController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      duration: duration,
      tween: Tween(
        begin: 0.0,
        end: sizeScreen.height - size.height,
      ),
      builder: (context, value, child) {
        return Positioned(
          top: offset.dy + size.height,
          width: sizeScreen.width,
          height: value,
          child: child!,
        );
      },
      child: Container(
        color: Colors.white,
        child: Text(textFieldController.text),
      ),
    );
  }
}
