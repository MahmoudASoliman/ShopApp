import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/services/all_product_service.dart';
import 'package:store_app/services/update_product_service.dart';

part 'store_state.dart';

class StoreCubit extends Cubit<StoreStates> {
  StoreCubit() : super(StoreInitialState());

  static StoreCubit get(context) => BlocProvider.of(context);

  bool isAdmin = false;

  updateAdmin() {
    isAdmin = !isAdmin;
    emit(ChangeAdminStoreState());
  }

  Future<void> updateProduct({
    required String title,
    required String price,
    required String desc,
    required String id,
  }) async {
    emit(UpdateProductLoadingState());

    await UpdateProductService().updateProductService(
      id: id,
      title: title,
      price: price,
      desc: desc,
    );
    emit(UpdateProductSuccessState());

    // اعمل emit للداتا الجديدة بعد التحديث
    await AllProudctService().getallproduct();
    emit(ProductsLoadedState());
  }
}
