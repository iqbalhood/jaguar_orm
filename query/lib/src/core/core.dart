// Copyright (c) 2016, Ravi Teja Gudapati. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library query;

import 'dart:core';
import 'dart:core' as core;
import 'dart:async';
import 'dart:collection';

import 'package:jaguar_query/src/operators/operators.dart' as q;
import 'package:jaguar_query/src/adapter/adapter.dart';
import 'package:jaguar_query/src/field/field.dart';

part 'expression/and.dart';
part 'expression/condition.dart';
part 'expression/expressions.dart';
part 'expression/in_between.dart';
part 'expression/or.dart';

part 'operators/comparision.dart';

part 'statement/statements.dart';
part 'statement/alter.dart';
part 'statement/find.dart';
part 'statement/insert.dart';
part 'statement/insert_many.dart';
part 'statement/update.dart';
part 'statement/remove.dart';
part 'statement/create.dart';
part 'statement/create_db.dart';
part 'statement/drop.dart';

part 'table/table.dart';

part 'values/values.dart';

/// Main DSL class to create SQL statements
class Sql {
  /// Creates a new [Find] statement
  static Find find(String table, [String alias]) =>
      new Find().from(table, alias);

  /// Creates a new [Insert] statement
  static Insert insert(String table) => new Insert().into(table);

  /// Creates a new [InsertMany] statement
  static InsertMany insertMany(String table) => new InsertMany().into(table);

  /// Creates a new [Update] statement
  static Update update(String table) => new Update().into(table);

  /// Creates a new [Delete] statement
  static Remove remove(String table) => new Remove().from(table);

  /// Returns a new [Create] statement
  static Create create(String table) => new Create().named(table);

  /// Returns a new [Drop] statement
  static Drop drop(String table) => new Drop().named(table);

  /// Returns a new [CreateDb] statement
  static CreateDb createDb(String database) => new CreateDb(database);
}
