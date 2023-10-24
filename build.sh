rm -rf ./build/* ./tmp/*

box compile
mkdir -p ./build
mv index.phar ./build/

cd tmp 
curl -O https://dl.static-php.dev/static-php-cli/common/php-8.2.10-micro-macos-aarch64.tar.gz
tar -xvf php-8.2.10-micro-macos-aarch64.tar.gz
cd ..

cat ./tmp/micro.sfx ./build/index.phar > ./build/appbin && chmod 0755 ./build/appbin
