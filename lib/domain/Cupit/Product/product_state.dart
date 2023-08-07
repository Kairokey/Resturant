part of 'product_cubit.dart';

@immutable
abstract class ProductState {}

class ProductInitial extends ProductState {}
class ProductLoading extends ProductState
{

}
class ProductSuccess extends ProductState
{
  List Product;
  ProductSuccess(this.Product);
}
class ProductFailed extends ProductState {
  String? msg;
  ProductFailed(this.msg);
}
class AddProductFailed extends ProductState {
  String? msg;
  AddProductFailed(this.msg);
}
class AddProductSuccess extends ProductState
{
  List Product;
  AddProductSuccess(this.Product);
}
class DeleteProductSuccess extends ProductState
{
  List Product;
  DeleteProductSuccess(this.Product);
}
class DeleteProductFailed extends ProductState {
  String? msg;
  DeleteProductFailed(this.msg);
}

