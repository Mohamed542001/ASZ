part of 'VisitorNavigatorPageImports.dart';

class VisitorNavigatorPage extends StatefulWidget {
  const VisitorNavigatorPage({Key? key}) : super(key: key);

  @override
  State<VisitorNavigatorPage> createState() => _VisitorNavigatorPageState();
}

class _VisitorNavigatorPageState extends State<VisitorNavigatorPage> {

  int currentTab = 0;
  final List<Widget> screens = [
    const VisitorHome(),
    const VisitorStatus(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const VisitorHome();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: SizedBox(
        height: 80,
        width: 70,
        child: FloatingActionButton(
          backgroundColor: AppColors.primary,
          child: Image.asset(
            Res.floatingButton,
          ),
          onPressed: () {  },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
            height: 60,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = const VisitorHome();
                        currentTab = 0;
                      });
                    },
                    child: Image.asset(
                      Res.userHome,
                      color: currentTab == 0 ?AppColors.primary:AppColors.formBgColor,
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = const VisitorStatus();
                        currentTab = 1;
                      });
                    },
                    child: Image.asset(
                      Res.status,
                      color: currentTab == 1 ?AppColors.primary:AppColors.formBgColor,
                    ),
                  ),
                ],

              ),
            )
        ),
      ),
    );
  }
}
