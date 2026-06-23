import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/holdings_entity.dart';
import '../../domain/usecases/get_holdingss_usecase.dart';

part 'holdings_controller.g.dart';

@riverpod
class HoldingsController extends _$HoldingsController {
  @override
  FutureOr<List<HoldingsEntity>> build() {
    return ref.watch(getHoldingssProvider.future);
  }
  
  Future<void> refresh() async {
     state = const AsyncValue.loading();
     state = await AsyncValue.guard(() => ref.refresh(getHoldingssProvider.future));
  }
}
