#include <bar/build/build.hpp>

namespace bar {
std::ostream& operator<<(std::ostream& out, BuildInfo const& buildinfo)
{
  out << "{\n";
  out << "  \"version\": {\n";
  out << "    \"major\" :" << buildinfo.major_version << ",\n";
  out << "    \"minor\" :" << buildinfo.minor_version << ",\n";
  out << "  }\n";
  out << "}\n";
  return out;
}
} // namespace bar
