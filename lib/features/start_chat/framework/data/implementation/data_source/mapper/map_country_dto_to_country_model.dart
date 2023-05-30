import 'package:whatsappsendnumber/features/start_chat/domain/models/country_model.dart';
import 'package:whatsappsendnumber/features/start_chat/framework/data/config/response/country_dto.dart';
import 'package:whatsappsendnumber/resources/utils/interface/mapper.dart';

class MapCountryDtoToCountryModel implements Mapper<CountryDto, CountryModel> {
  @override
  CountryModel map(CountryDto input) {
    return CountryModel(
      input.identifier,
      input.nameFull,
      input.codeIso2,
      input.codeIso3,
      input.number,
    );
  }
}
