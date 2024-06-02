#include <iostream>
#include <vector>
#include <math.h>
#include <fstream>
#include <sstream>
#include <string>
#include <random>
#include <algorithm>

using namespace std;

#define NUM_DIGITS 512

vector<string> split(const string &s, char delim) {
    stringstream ss(s);
    string item;
    vector<string> tokens;
    while (getline(ss, item, delim)) {
        tokens.push_back(item);
    }
    return tokens;
}

int main(int argc, const char * argv[]) {
    int i=0;
    string line;
    vector<string> line_v;

    ifstream myfile ("data/train.txt");
    ofstream outfile ("data/test512.txt");

    vector<int> digitsy;
    vector<vector<float>> digits;

    for(int i=0; i<NUM_DIGITS; i++) {
        getline(myfile,line);
        line_v = split(line, '\t');
        digitsy.push_back(strtof((line_v[0]).c_str(),0));

        vector<float> digit;
        int size = static_cast<int>(line_v.size());
        for (unsigned i = 1; i < size; ++i) {
            digit.push_back(strtof((line_v[i]).c_str(),0));
        }
        digits.push_back(digit);
    }

    outfile << "int digitsy[DIGITS] = {";
    for(int i=0; i < NUM_DIGITS; i++) {
        outfile << digitsy[i];
        if(i < NUM_DIGITS-1)
            outfile << ", ";
    }
    outfile << "};\n" << endl;
    
    outfile << "float digits[DIGITS][DIGIT_SIZE] = {";
    for(int i=0; i < NUM_DIGITS; i++) {
        outfile << endl << "{";
        for(int j=0; j < 728; j++) {
            outfile << digits[i][j];
            if(j < 728-1)
                outfile << ", ";
        }
        outfile << "}";
        if(i < NUM_DIGITS-1)
            outfile << ", ";
    }
    outfile << "};";

    myfile.close();
    outfile.close();
}