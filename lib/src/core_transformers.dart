part of dartson;

const _getName = MirrorSystem.getName;

final Symbol _QN_STRING = reflectClass(String).qualifiedName;
final Symbol _QN_NUM = reflectClass(num).qualifiedName;
final Symbol _QN_INT = reflectClass(int).qualifiedName;
final Symbol _QN_BOOL = reflectClass(bool).qualifiedName;
final Symbol _QN_LIST = reflectClass(List).qualifiedName;
final Symbol _QN_MAP = reflectClass(Map).qualifiedName;
final Symbol _QN_OBJECT = reflectClass(Object).qualifiedName;
final Symbol _QN_DOUBLE = reflectClass(double).qualifiedName;

var _qn = (Type t) => _getName(reflectClass(t).qualifiedName);

final _defaultSimpleTransformer = new _SimpleTypeTransformer();

/// These are dart.core.* Types that can be be used as they are.
final Map<String, TypeTransformer> _simpleTransformers = {
  _qn(String): _defaultSimpleTransformer,
  _qn(num): _defaultSimpleTransformer,
  _qn(int): _defaultSimpleTransformer,
  _qn(bool): _defaultSimpleTransformer,
  _qn(List): _defaultSimpleTransformer,
  _qn(Map): _defaultSimpleTransformer,
  _qn(Object): _defaultSimpleTransformer,
  _qn(double): _defaultSimpleTransformer,
  'dart.core._OneByteString': _defaultSimpleTransformer,
  'dart.core._Smi': _defaultSimpleTransformer
};
