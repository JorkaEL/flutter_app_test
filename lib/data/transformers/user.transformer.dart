import 'package:flutter_app_test/data/api/dto/user.dto.dart';
import 'package:flutter_app_test/domain/entities/user.entity.dart';

User userFromDto(DtoUser dto) => User(
    gender: dto.gender,
    email: dto.email,
    lastName: dto.name.lastName,
    firstName: dto.name.firstName,
    title: dto.name.title,
    thumbnail: dto.picture.thumbnail,
    phone: dto.phone,
    cell: dto.cell,
    picture: dto.picture.large,
    postcode: dto.location.postcode,
    country: dto.location.country,
    state: dto.location.state,
    street: dto.location.street.name,
    streetNumber: dto.location.street.number,
    city: dto.location.city,
    dob: dto.dob.date,
    age: dto.dob.age,
    nat: dto.nat);
