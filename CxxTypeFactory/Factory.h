#include <tuple>

namespace cxxtypefactory {
//
// Simple type wrapper generator and convenience macro(s).
//
// Macros are super simple wrapper around c++11 using syntax,
// to allow you to define youri wrappers in a colum format.
//
// examples:
//
// MAKE_WRAPPER(Price, int);
// MAKE_WAPPER(Name, std::string);
// MAKE_WRAPPER(Pluto, std::planet); // Lol
template<typename T>
struct typefactory
{
  using SelfT = typefactory<T>;
  T value_;

  typefactory() = delete;
  typefactory(typefactory<T> &&) = default;
  typefactory(typefactory<T> const&) = default;

  T
  value() const { return value_; }

  SelfT&
  operator=(SelfT const&) = default;

  SelfT&
  operator=(SelfT &&) = default;
};

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

template<typename T>
using TypeF = typefactory<T>;

} // ns cxxtypefactory
namespace cxxtf = cxxtypefactory;

#define MAKE_WRAPPER(Name, T) using Name = TypeF<T>

#define MAKE_TUPLE_WRAPPER(...) MultiTypeFactory<__VA_ARGS__>;
