#include <iostream>
#include "file_input.hpp"
#include "file_utils.hpp"

bool init_directorys()
{
    std::cout << "checking directorys...\n";
    
    if (check_and_make_directory(input_folder) == false)
    {
        return false;
    }
    
    if (check_and_make_directory(output_folder) == false)
    {
        return false;
    }

    else return true;
}