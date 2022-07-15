part of 'ConstantsImports.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers:
        [
          SliverAppBar(
            backgroundColor: AppColors.primary,
            shape: const ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            bottom:  PreferredSize(
                preferredSize: const Size.fromHeight(50.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(Res.terms),
                      const SizedBox(
                        width: 10,
                      ),
                      CustomText(
                        title: 'الشروط والأحكام',
                        size: 20,
                        color: AppColors.white,
                      )
                    ],
                  ),
                )
            ),
            leading: IconButton(
              onPressed: ()=>Navigator.of(context).pop(),
              icon: const Icon(Icons.arrow_back_ios_outlined),
            ),
            floating: false,
            pinned: false,
            expandedHeight: 180,

          ),
          SliverList(
            delegate: SliverChildListDelegate(
                [
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children:  [
                        CustomText(
                          title: 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.\n إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم الموقع. ومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء البحث عن نص بديل لا علاقة له بالموضوع الذى يتحدث عنه التصميم فيظهر بشكل لا يليق.\n هذا النص يمكن أن يتم تركيبه على أي تصميم دون مشكلة فلن يبدو وكأنه نص منسوخ، غير منظم، غير منسق، أو حتى غير مفهوم. لأنه مازال نصاً بديلاً ومؤقتاً.',
                          align: TextAlign.start,
                        )
                      ],
                    ),
                  ),
                ]
            ),
          ),
        ],
      ),
    );
  }
}
