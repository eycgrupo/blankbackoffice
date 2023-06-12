# EyC build script
# this will create a bundle war file  at ./build/libs 
./gradlew clean
./gradlew npm-install
./gradlew npm-build
./gradlew war