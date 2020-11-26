// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'injector.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$Injector extends Injector {
  @override
  void common() {
    final KiwiContainer container = KiwiContainer();
    container.registerSingleton((c) => MemeDomain(c<IMemeRepository>()));
    container.registerSingleton((c) => MemeApi());
  }

  @override
  void development() {
    final KiwiContainer container = KiwiContainer();
    container.registerSingleton<IMemeRepository>(
        (c) => DevMemeRepositoryImpl(c<MemeApi>()));
  }

  @override
  void production() {
    final KiwiContainer container = KiwiContainer();
    container.registerSingleton<IMemeRepository>(
        (c) => ProdMemeRepositoryImpl(c<MemeApi>()));
  }
}
