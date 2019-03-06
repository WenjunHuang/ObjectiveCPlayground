cmake_minimum_required(VERSION 3.13)
project(ObjectiveCPlayground)

set(CMAKE_CXX_STANDARD 14)
find_library(FOUNDATION Foundation)

add_executable(ObjectiveCPlayground main.cpp)

add_executable(HelloWorldObjC
        Fraction+MathOps.h Fraction+MathOps.m
        Fraction+Stuff.h Fraction+Stuff.m
        HelloWorld.m Fraction.h Fraction.m Complex.h Complex.m)
target_link_libraries(HelloWorldObjC PRIVATE ${FOUNDATION})

add_executable(Inheritance Inheritance.m XYPoint.h XYPoint.m Rectangle.h Rectangle.m)
target_link_libraries(Inheritance PRIVATE ${FOUNDATION})

add_executable(Exception ExceptionHandling.m)
target_link_libraries(Exception PRIVATE ${FOUNDATION})

add_executable(String String.m)
target_link_libraries(String PRIVATE ${FOUNDATION})

add_executable(ARC ARC.m)
target_link_libraries(ARC PRIVATE ${FOUNDATION})
target_compile_options(ARC PRIVATE -fobjc-arc)

add_executable(enum Enum.m)
target_link_libraries(enum PRIVATE ${FOUNDATION})
target_compile_options(enum PRIVATE -fobjc-arc)

add_executable(protocol Drawing.h Drawing.m)
target_link_libraries(protocol PRIVATE ${FOUNDATION})
target_compile_options(protocol PRIVATE -fobjc-arc)
