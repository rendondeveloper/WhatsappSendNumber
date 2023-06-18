import 'package:whatsappsendnumber/features/home/framework/data/config/response/CountriesResponse.dart';
import 'package:whatsappsendnumber/features/start_chat/framework/data/config/response/country_dto.dart';
import 'package:whatsappsendnumber/resources/utils/interface/mapper.dart';

class MapCountriesResponseToCountryDto implements Mapper<CountriesResponse, CountryDto> {
  @override
  CountryDto map(CountriesResponse input) {
    return CountryDto(0, input.countrySpanish, input.iso2, input.iso3, "+${input.code}", false);
  }
}
