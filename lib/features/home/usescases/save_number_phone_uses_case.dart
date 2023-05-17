import 'package:whatsappsendnumber/features/home/data/numbers_send/number_phone_repository.dart';import 'package:whatsappsendnumber/features/home/domain/models/number_phone.dart';import 'package:whatsappsendnumber/resources/models/response/result.dart';class SaveNumberPhoneUesCase {  final NumberPhoneRepository _numberPhoneRepository;  SaveNumberPhoneUesCase(this._numberPhoneRepository);  Future<Result<bool>> saveNumberPhone(NumberPhone numberPhone) => _numberPhoneRepository.saveNumberPhone(numberPhone);}