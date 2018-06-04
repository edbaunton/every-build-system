cmake_minimum_required (VERSION 2.6)
# Expressly say it's C so that tcc can build inside buildstream
project (hello C)
add_executable(hello hello.c)

# Setup include rules for buildstream.
include("GNUInstallDirs")
install(TARGETS hello RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR})
