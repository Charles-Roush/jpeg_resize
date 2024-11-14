#ifndef FILE_UTILS_H
#define FILE_UTILS_H

#include <iostream>
#include <filesystem>

bool check_and_make_directory(const std::filesystem::path& directory_name);

#endif