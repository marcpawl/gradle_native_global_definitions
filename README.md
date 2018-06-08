# gradle_native_global_definitions
Demonstrating how to have a common definition in Gradle nested projects.

The nested projects should use the cpp compiler options from the base project.

Trick is to use allprojects in the root.

To run:

  docker build --build-arg VERSION=2.8  -t test .

where 2.8 is the version of gradle you want to test.

This technique broke with gradle 2.9

