#ifndef BAR_BUILD_BUILD_HPP
#define BAR_BUILD_BUILD_HPP

#include <cstddef>
#include <ostream>

namespace bar {
struct BuildInfo {
  // version number
  std::size_t major_version{0};
  std::size_t minor_version{0};
};

std::ostream& operator<<(std::ostream& out, BuildInfo const& buildinfo);
} // namespace bar

#endif // BAR_BUILD_BUILD_HPP
