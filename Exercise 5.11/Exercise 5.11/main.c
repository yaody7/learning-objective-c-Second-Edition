//
//  main.c
//  Exercise 5.11
//
//  Created by ydy on 2020/1/21.
//  Copyright © 2020 ydy. All rights reserved.
//

#include <stdio.h>

float remainingAngle(float angleA, float angleB) {
    return 180 - angleA - angleB;
}
int main(int argc, const char * argv[]) {
    // insert code here...
    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    printf("The third angle is %.2f\n", angleC);
    return 0;
}
