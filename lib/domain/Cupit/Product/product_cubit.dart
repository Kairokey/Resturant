import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training/data/Api/Api.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());
  static ProductCubit get(context) => BlocProvider.of(context);
  // Connectivity connectivity = Connectivity();
  List<dynamic> productList = [];

  getProduct() {
    emit(ProductLoading());

    Api()
        .getHttp(url: 'products')
        .then((value) => {
      print('..................................'),
      print(value),
      productList = value,
      emit(ProductSuccess(value)),
      print('Get My Product Response'),
      print(productList.length),
    })
        .onError((error, stackTrace) => {
    emit(ProductFailed(error.toString())),
    print(error),
    });
    }
     AddProduct(ProductModel) {
    emit(ProductLoading());

    Api()
        .postHttp(url: 'products',data: ProductModel.toJson())
        .then((value) => {
      print('..................................'),
      print(value),
      emit(AddProductSuccess(value)),
      print('Get My Product Response'),
      print(productList.length),
    })
        .onError((error, stackTrace) => {
      emit(AddProductFailed(error.toString())),
      print(error),
    });
  }
  DeleteProduct(ProductId) {
    emit(ProductLoading());

    Api()
        .DeleteHttp(url: 'products/$ProductId',)
        .then((value) => {
      print('..................................'),
      print(value),
      emit(DeleteProductSuccess(value)),
      print('Get My Product Response'),
      print(productList.length),
    })
        .onError((error, stackTrace) => {
      emit(DeleteProductFailed(error.toString())),
      print(error),
    });
  }
}
