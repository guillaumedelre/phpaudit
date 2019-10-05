# QATools

- [`7.3`, `latest` (*qatools/7.3/Dockerfile*)](https://github.com/guillaumedelre/dockerfiles/tree/master/qatools/7.3/Dockerfile)
- [`7.2` (*qatools/7.2/Dockerfile*)](https://github.com/guillaumedelre/dockerfiles/tree/master/qatools/7.2/Dockerfile)
- [`7.1` (*qatools/7.1/Dockerfile*)](https://github.com/guillaumedelre/dockerfiles/tree/master/qatools/7.1/Dockerfile)
- [`7.0` (*qatools/7.0/Dockerfile*)](https://github.com/guillaumedelre/dockerfiles/tree/master/qatools/7.0/Dockerfile)

A simple docker images to run some php qatools on your php project.

## Available tools

* [PHPLoc](http://github.com/sebastianbergmann/phploc) as `phploc`
* [PHP_Depend](http://pdepend.org/) as `pdepend`
* [Phan](https://github.com/phan/phan) as `phan`
* [PHP Mess Detector](http://phpmd.org/) as `phpmd`
* [PHP_CodeSniffer](http://pear.php.net/PHP_CodeSniffer) as `phpcs` and `phpcbf`
* [PHP Copy/Paste Detector](http://github.com/sebastianbergmann/phpcpd) as `phpcpd`
* [PHP Dead Code Detector](http://github.com/sebastianbergmann/phpdcd) as `phpdcd`
* [PhpMetrics](http://www.phpmetrics.org/) as `phpmetrics`
* [PHP Coding Standards Fixer](http://cs.sensiolabs.org/) as `php-cs-fixer`
* [PHP Static Analysis Tool](https://github.com/phpstan/phpstan) as `phpstan`
* [Security Checker](https://security.symfony.com/) as `security-checker`
* [Twig Coding Standards](https://github.com/allocine/twigcs) as `twigcs`
* [YAML Linter](https://github.com/HeahDude/yaml-linter) as `yaml-linter`
* [PhpCodeFixer](https://github.com/wapmorgan/PhpCodeFixer) as `phpcf`
* [PhpUnit Bridge](https://symfony.com/doc/current/components/phpunit_bridge.html) as `simple-phpunit`

## Usage

Grab the image, and run one of tool with your project mounted in the work directory `/project` on this image:

```
cd my_php_project
docker pull guillaumedelre/qatools
docker run -t -i -v `pwd`:/project guillaumedelre/qatools phploc src/
```

**List available tools:**

```
docker run -t -i -v `pwd`:/project guillaumedelre/qatools
```

**Explore container via `bash`:**

```
docker run -t -i -v `pwd`:/project guillaumedelre/qatools bash
```

---

Adapted from [mykiwi/phaudit](https://hub.docker.com/r/mykiwi/phaudit)
