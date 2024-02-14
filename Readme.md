```
docker build . --tag="test_image"
docker run -it -v $PWD:/var/www/html test_image sh -c "composer install && php test.php"
// error occured

//without xdebug - no error
docker run -it -v $PWD:/var/www/html test_image sh -c "XDEBUG_MODE=off && composer install && php test.php"
```