part of 'CommonQuestionsWidgetsImports.dart';

class BuildCommonQuestionsCard extends StatelessWidget {
  const BuildCommonQuestionsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: CommonQuestionsModel().commonQuestionsModel.length,
        itemBuilder: (context,i)=>Card(
          margin: const EdgeInsets.only(bottom: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 10,
          child: ExpansionTile(
            title: CustomText(
              title: CommonQuestionsModel().commonQuestionsModel[i]['title'],
              color: AppColors.primary,
              size: 14,
              fontWeight: FontWeight.bold,
            ),
            iconColor: AppColors.primary,
            childrenPadding: const EdgeInsets.all(15),
            children: [
              CustomText(
                title: CommonQuestionsModel().commonQuestionsModel[i]['text'],
                size: 12,
              ),
            ],
          ),
        )
    );
  }
}
