This is my experimentation with Docker, Centos 7, Nginx and PHP7.

It will serve as a base for my future blog / personal website.

This was originally based on [https://github.com/eko/docker-symfony], but has been rewritten to use centos 7 and not so specific to symfony (replaced a few references of the word).

Thanks for taking the time to read. There are probably a lot more elegant ways of doing what I have done, but this was all part of the learning curve.

To run tests:

1. Install the phpunit/phpunit container:

    ``` sh
    $ docker pull phpunit/phpunit
    ```

2. Run PHPUnit through the PHPUnit container:

    ``` sh
    $ docker run -v $(pwd)/www:/app phpunit/phpunit tests/AppBundle/
    ```

Any questions, feel free to get in touch.

