```
docker build . --tag="test_image"
docker run -it -v $PWD:/var/www/html test_image sh -c "composer install && php test.php"
```