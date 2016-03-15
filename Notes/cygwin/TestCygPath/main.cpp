#include <iostream>

#include "globals.h"

void DetectCygwinMount(void);

int main()
{
    std::cout << "Testing!" << std::endl;

    m_CygdrivePrefix = "";

    std::cout << "Testing DetectCygwinMount." << std::endl;
    DetectCygwinMount();

    if (m_CygwinPresent == false){
        std::cout << "Detection Failed!" << std::endl;
    } else {
        std::cout << "Detection Worked!" << std::endl;
    }

    return 0;
}
