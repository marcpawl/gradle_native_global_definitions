# gradle_native_global_definitions
Demonstrating how to have a common definition in Gradle nested projects.

The nested projects should use the cpp compiler options from the base project.

Trick is to use allprojects in the root.

To run:

  docker build --build-arg VERSION=4.8  -t test .

where 4.8 is the version of gradle you want to test.

This technique was changed starting with gradle 2.9.

