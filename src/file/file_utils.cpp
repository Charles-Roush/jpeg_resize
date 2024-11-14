#include <iostream>
#include <filesystem>


bool check_and_make_directory(const std::filesystem::path& directory_name)
{
    
    if (std::filesystem::exists(directory_name))
    {
        std::cout << directory_name << " already exists\n";
        return true;
    }
    else if (std::filesystem::create_directory(directory_name))
    {
        std::cout << directory_name << " created\n";
        return false;
    }
    else
    {
        std::cerr << "Failed to create directory: " << directory_name << "\n";
        return false;
    }
}
