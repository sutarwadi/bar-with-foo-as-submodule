#include <cassert>
#include <bar/build/build.hpp>
#include <foo/build/build.hpp>
#include <iostream>

int main()
{
  constexpr auto buildinfo = bar::BuildInfo();
  std::cout << buildinfo << std::endl;
  assert(buildinfo.major_version == 0);
  assert(buildinfo.minor_version == 0);
  constexpr auto foo_buildinfo = foo::BuildInfo();
  std::cout << foo_buildinfo << std::endl;
  assert(foo_buildinfo.major_version == 0);
  assert(foo_buildinfo.minor_version == 0);

  return EXIT_SUCCESS;
}
