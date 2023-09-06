#ifndef ARUCOINFO_H
#define ARUCOINFO_H

#include<iostream>

struct ArucoInfo {
    int arucoId = -1;
    std::vector<int> markerCornerIndex = {-1, -1, -1, -1};
    int centerPointIndex = -1;
};

#endif