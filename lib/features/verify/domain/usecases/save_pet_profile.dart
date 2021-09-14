import 'package:dartz/dartz.dart';
import 'package:maaru/core/domain/repositories/user_repository.dart';
import 'package:maaru/core/error/failure.dart';
import 'package:maaru/core/usecases/usecase.dart';

class SavePetProfile extends UseCase<void, PetProfileParams> {
  UserRepository userRepository;
  SavePetProfile(this.userRepository);

  @override
  Future<Either<Failure, void>> call(PetProfileParams params) {
    return userRepository.savePetProfile(params);
  }
}

class PetProfileParams {
  final String profileImage;
  final String gender;
  final String petName;
  final String providerName;
  final String petVaccine;
  final String uploadVaccineRecord;
  final String walkingSchedule;
  final String feedingSchedule;
  final String temperament;
  final String medication;
  final String notes;
  final String grooming;
  final String vet;
  final String hotel;
  final String walking;
  final String dayCare;
  final String hospital;
  final String breadType;
  final String height;
  final String weight;
  final String birthDate;
  final String sex;

  final String addMoreVaccine;

  PetProfileParams({
    this.providerName,
    this.uploadVaccineRecord,
    this.walkingSchedule,
    this.feedingSchedule,
    this.temperament,
    this.medication,
    this.notes,
    this.grooming,
    this.vet,
    this.hotel,
    this.walking,
    this.dayCare,
    this.hospital,
    this.profileImage,
    this.gender,
    this.petName,
    this.breadType,
    this.height,
    this.weight,
    this.birthDate,
    this.sex,
    this.petVaccine,
    this.addMoreVaccine,
  });
}
