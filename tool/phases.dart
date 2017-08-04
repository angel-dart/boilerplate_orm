import 'package:angel_orm_generator/angel_orm_generator.dart';
import 'package:angel_serialize_generator/angel_serialize_generator.dart';
import 'package:build_runner/build_runner.dart';
import 'package:source_gen/source_gen.dart';

// TODO: Change the `angel` string to the name of your project.
final InputSet models = new InputSet('angel', const ['lib/src/models/*.dart']);

final PhaseGroup phaseGroup = new PhaseGroup()
  ..addPhase(new Phase()
    ..addAction(new GeneratorBuilder([new JsonModelGenerator()]), models))
  ..addPhase(new Phase()
    ..addAction(
        new GeneratorBuilder([new PostgresORMGenerator()],
            isStandalone: true, generatedExtension: '.orm.g.dart'),
        models));
