part of jaguary_query.operators;

/// DSL to create 'is equal to column' relational condition
CondCol<ValType> eqCol<ValType>(String field, Col<ValType> value) =>
    new CondCol<ValType>(col<ValType>(field), Op.Eq, value);
