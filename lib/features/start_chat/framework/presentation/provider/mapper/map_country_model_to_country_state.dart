import 'package:whatsappsendnumber/features/start_chat/domain/models/country_model.dart';
import 'package:whatsappsendnumber/features/start_chat/framework/presentation/page/ui_models/country_state.dart';
import 'package:whatsappsendnumber/resources/utils/interface/mapper.dart';

class MapCountryModelCountryState implements Mapper<CountryModel, CountryState> {
  @override
  CountryState map(CountryModel input) {
    return CountryState(
      identifier: input.identifier,
      nameFull: input.nameFull,
      codeIso2: input.codeIso2,
      codeIso3: input.codeIso3,
      code: input.code,
    );
  }
}
