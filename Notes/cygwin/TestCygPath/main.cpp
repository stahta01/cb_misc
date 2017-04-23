#include <iostream>

#include "globals.h"

void DetectCygwinMount(void);
void CorrectCygwinPath(wxString& path);

int main()
{
    std::cout << "Testing!" << std::endl;
    std::cout << "Testing CorrectCygwinPath." << std::endl;
    // Setup for test 1
    wxString test1 = "/c/path";
    m_CygwinPresent  = true;
    m_CygdrivePrefix = "/";
    CorrectCygwinPath(test1);
    if (test1 == "c:/path"){
        std::cout << "Test1 Worked!" << std::endl;
    } else {
        std::cout << "Test1 Failed!" << std::endl;
    }

    // Setup for test 2
    wxString test2 = "/cygdrive/c/path";
    m_CygwinPresent  = true;
    m_CygdrivePrefix = "/cygdrive";
    CorrectCygwinPath(test2);
    if (test2 == "c:/path"){
        std::cout << "Test2 Worked!" << std::endl;
    } else {
        std::cout << "Test2 Failed!" << std::endl;
    }

    std::cout << "Testing DetectCygwinMount." << std::endl;
    m_CygwinPresent  = false;
    m_CygdrivePrefix = "";
    DetectCygwinMount();

    if (m_CygwinPresent == false){
        std::cout << "Detection Failed!" << std::endl;
    } else {
        std::cout << "Detection Worked!" << std::endl;
        std::cout << "value is " << m_CygdrivePrefix << std::endl;
    }

    return 0;
}
