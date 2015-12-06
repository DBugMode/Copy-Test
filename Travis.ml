language: objective-c

#addons:
#  sauce_connect: true

global:
before_install:
# Commands to excecute before install
  - echo "Before install stage"
#  - nvm install 4.1.1
#  - nvm use 4.1.1
  - node -v
  - echo "END - Before install stage"

install:
  - echo "Install stage"
#  - npm i
  - echo "END - install stage"
#  - sudo npm install -g cordova
#  - sudo npm install -g ios-deploy
#  - sudo npm install -g ios-sim

before_script:
# Commands to excecute before running tests
  - echo "Before script stage"
script:
  - xctool clean build CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO -scheme "IMMSlackerClient" test -sdk iphonesimulator -arch "i386" ONLY_ACTIVE_ARCH=NO VALID_ARCHS="i386 x86_64"

# script:
# Run tests
#  - echo "Running tests"
#  - npm test
#  - echo "Starting build"
#  - npm run build-ios
#  - cd TestCIiOS
#  - cordova build ios

after_success:
# You can do thing after success
  - echo "Build success"

after_failure:
# What if your test fails?
  - echo "After failure stage"

after_script:
# Do things anyway after script/test pass or not
  - echo "After script stage"