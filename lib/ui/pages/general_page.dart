part of 'pages.dart';

class GeneralPage extends StatelessWidget {
  final String title;
  final String subTitle;
  final Function onBackButtonPressed;
  final Widget child;
  final Color backColor;
  const GeneralPage({
    Key key,
    this.title = 'Title',
    this.subTitle = 'Subtitle',
    this.onBackButtonPressed,
    this.child,
    this.backColor,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
            child: Container(
              color: backColor ?? Colors.white,
            ),
          ),
          SafeArea(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.symmetric(horizontal: defaultMargin),
                      width: double.infinity,
                      height: 100,
                      color: Colors.white,
                      child: Row(
                        children: [
                          onBackButtonPressed != null
                              ? GestureDetector(
                                  onTap: onBackButtonPressed,
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        right: defaultMargin),
                                    width: 24,
                                    height: 24,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/ic_back_arrow.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              : SizedBox(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                title,
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                subTitle,
                                style: TextStyle(
                                  fontSize: 22,
                                  color: greyColor,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: defaultMargin,
                      width: double.infinity,
                      color: 'FAFAFC'.toColor(),
                    ),
                    child ?? SizedBox(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
