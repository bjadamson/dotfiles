#include <string>
#include <iostream>
#include "factory.h"

int
main(int argc, char **argv)
{
  using MyT = TypeF<std::string>;
  MyT s{"hi"};

  // correctly does not compile
  // s.insert("hi");

  // compiles
  std::string sxk = s.value();

  // lol
  DEFINE_WRAPPER(AccessDeniedCount, std::ptrdiff_t);
  AccessDeniedCount c{32};

  // CORRECTLY, does not compile.
  c = c + 32;

  // does not compile.
  c = std::ptrdiff_t{14};

  MAKE_WRAPPER(Sup, std::string);
  Sup sxxx{"hi"};

  struct ByteBuffer {};

  struct complex_type {
    int c, b;
    std::string p;
  };

  //using SuperT = MAKE_TUPLE_WRAPPER(
      //MW(int, A), MW(int, B), MW(int, C));

  return 0;
}
