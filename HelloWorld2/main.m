//
//  main.m
//  HelloWorld
//
//  Created by Samuel Villegas on 2021-12-11.
//

#import <Foundation/Foundation.h>

@interface Employee: NSObject {
    NSString *name;
    int age;
    float salary;
}
-(void) print;
-(void) setName: (NSString*) n;
-(void) setAge: (int) a;
-(void) setSalary: (float) s;
-(NSString*) name;
-(int) age;
-(float) salary;

@end

@implementation Employee

- (void)print {
    NSLog(@"The employee's name is: %@\n    their salary is: %f\n    and is %i years old\n", name, salary, age);
}

- (void)setAge:(int)a {
    age = a;
}

- (void)setName:(NSString *)n{
    name = n;
}

- (void)setSalary:(float)s{
    salary = s;
}

- (NSString*) name{
    return name;
}

- (int) age{
    return age;
}

- (float) salary{
    return salary;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSString *a = @"uno";
        NSString *b = @"dos";
        int c = 49;
        int d = 34;
        int sum = c + d;
        
        // Employee usage
        Employee *employeeInstance  = [[Employee alloc]init];
        Employee *employee  = [[Employee alloc]init];
        
        [employeeInstance setName: @"Sam"];
        [employeeInstance setAge:31];
        [employeeInstance setSalary:68.50];
        [employeeInstance print];
        
        NSLog(@"employeeeeee is : %@\n",[employeeInstance name]);
        
        [employee setName: @"Ron"];
        [employee setAge:40];
        [employee setSalary:48.50];
        [employee print];
        
        NSLog(@"Hello, World! %@ %@\n    %i + %i = %i", a, b, c, d, sum);
    }
    return 0;
}
