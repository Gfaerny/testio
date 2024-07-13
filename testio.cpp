#include <iostream>
#include <string>
std::string runCommand(const std::string& command) 
{
    char buffer[128];
    std::string result = "";
    FILE* pipe = popen(command.c_str(), "r");
    if (!pipe) 
    {
        std::cerr << "Error: Unable to execute command" << std::endl;
        return "";
    }
    while (fgets(buffer, sizeof(buffer), pipe) != NULL) 
   {
        result += buffer;
    }
    pclose(pipe);
    return result;
}


int main(int argc, char* argv[])

{
std::string in , out;
std::string script = argv[1];
long long n = argv[2];
 if ( argc == 3)
{
    for ( int i = 0; i< n; i++)

    {
        std::cout << "Enter input :"<<std::endl;
        std::cin>>in;
        std::cout << "Now enter the output :"<<std::endl;
        std::cin>>out;
        std::string command = script + " < " + input;
        std::string appOutput = runCommand(command);

    // Read the expected output from the file
        std::ifstream file(output);
        std::string expectedOutput((std::istreambuf_iterator<char>(file)), std::istreambuf_iterator<char>());

    // Compare the output with the expected output
        if (appOutput == expectedOutput) 
        {
        std::cout << "Output matches the expected output." << std::endl;
        }       
             else 
            {
               std::cout << "Output does not match the expected output." << std::endl;
            }






            }
     }

else 
{
std::cerr<<"You have to enter command with argument( your script that want to test)";

return 1;
}
return 0;


}
