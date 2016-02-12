template<typename T>
struct typefactory
{
  using SelfT = typefactory<T>;
  T value_;

  typefactory(typefactory<T> &&) = default;//: value_(std::move(value)) {}
  typefactory(typefactory<T> const&) = default;

  T
  value() const { return value_; }

  SelfT&
  operator=(SelfT const&) = default;

  SelfT&
  operator=(SelfT &&) = default;
};

template<typename T>
using TypeF = typefactory<T>;

#define MAKE_WRAPPER(Name, T) using Name = TypeF<T>

#include <tuple>
template<typename ...T>
struct MultiTypeFactory
{
  using V = std::tuple<T...>;
  V values_;

  template<typename ...Z>
  MultiTypeFactory(Z&&... values) : values_(std::move(values)...) {}

  V
  values() const { return this->values_; }
};

#define MAKE_TUPLE_WRAPPER(...) MultiTypeFactory<__VA_ARGS__>;
