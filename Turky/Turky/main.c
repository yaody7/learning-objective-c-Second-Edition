//
//  main.c
//  Turky
//
//  Created by ydy on 2020/1/21.
//  Copyright © 2020 ydy. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    float weight;
    weight = 14.2;
    printf("The turkey weighs %f.\n", weight);
    float cookingTime;
    cookingTime = 15.0 + 15.0 * weight;
    printf("Cook it for %f minutes.\n", cookingTime);
    return 0;
}
