#include <iostream>

using namespace std;

int main()
{
    int choice;

    cout << "Please enter a number between 1 and 3: ";
    cin >> choice;

    switch (choice)
    {
        case 1:
            if (choice == 1)
            {
                cout << "You chose option 1.\n";
            }
            else
            {
                cout << "Invalid choice.\n";
            }
            break;
        case 2:
            if (choice == 2)
            {
                cout << "You chose option 2.\n";
            }
            else
            {
                cout << "Invalid choice.\n";
            }
            break;
        case 3:
            if (choice == 3)
            {
                cout << "You chose option 3.\n";
            }
            else
            {
                cout << "Invalid choice.\n";
            }
            break;
        default:
            cout << "Invalid choice.\n";
            break;
    }

    return 0;
}

