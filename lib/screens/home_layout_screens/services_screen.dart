import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marakez/cubits/services_cubit/services_cubit.dart';
import 'package:marakez/cubits/services_cubit/services_state.dart';
import 'package:marakez/shared/widgets/category_item_data_widget.dart';
import 'package:marakez/shared/widgets/category_item_widget.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ServicesCubit(),
      child: BlocConsumer<ServicesCubit, ServicesState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: const Color(0xffF3F4FB),
            body: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CategoryItemWidget(
                      title: 'Services',
                      isSelected: ServicesCubit.get(context).selectedIndex == 0,
                      onPressed: () =>
                          ServicesCubit.get(context).changeItemCat(index: 0),
                    ),
                    CategoryItemWidget(
                      title: 'Open',
                      isSelected: ServicesCubit.get(context).selectedIndex == 1,
                      onPressed: () =>
                          ServicesCubit.get(context).changeItemCat(index: 1),
                    ),
                    CategoryItemWidget(
                      title: 'History',
                      isSelected: ServicesCubit.get(context).selectedIndex == 2,
                      onPressed: () =>
                          ServicesCubit.get(context).changeItemCat(index: 2),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.2,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                    ),
                    itemCount: 16,
                    itemBuilder: (context, index) => const CategoryItemData(
                          title: 'Maintenance',
                          image: 'assets/images/image_1.JPG',
                        )),
              ],
            ),
          );
        },
      ),
    );
  }
}
