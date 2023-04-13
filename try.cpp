#include <iostream>
using namespace std;
class student
{
    int id;
    static char coursename[50];

public:
    void setdata()
    {
        cout << "enter the students details" << endl;
        cin >> id;
    }
    void getdata()
    {
        cout << id << " " << coursename << endl;
    }
};
char student::coursename[50] = "bca";
int main()
{
    student s1;
    s1.setdata();
    s1.getdata();
}