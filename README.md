# RUBY CREATING A GEM
A _gem_ is a Ruby library that promotes code reuse. This project shows a _gem_ that lists AWS S3 buckets as an example of creating _gems_.


## Project Overview
The _gem_ consists of a [single file](./show_buckets/lib/show_buckets.rb) that instantiates AWS S3 SDK client and retrieve a bucket list.

> Note that AWS CLI must be [properly configured](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-quickstart.html) beforehand.

One can easily create a gem following [few steps](https://guides.rubygems.org/make-your-own-gem/). In this project, we:

1. [Scaffolded the project](https://github.com/gabrielcostasilva/ruby-creating-gem/commit/588b2e42822bfdd500bee46181dcd53693b8ebc8);
2. [Added necessary dependencies](https://github.com/gabrielcostasilva/ruby-creating-gem/commit/2e10cad72f8de037f7d7d278e72c17387508a1cb);
3. [Created a unit test to set the expected results](https://github.com/gabrielcostasilva/ruby-creating-gem/commit/8f6fbd851c7153a4f136fef7d94121f212aca0aa);
4. [Created the gem main code, which includes: (i) instantiating the AWS S3 SDK client; and (ii) creating method for listing buckets](https://github.com/gabrielcostasilva/ruby-creating-gem/commit/74de1fc9276f834b4b96d2352794112d441de70b);
5. [Updated the _gem_ spec](https://github.com/gabrielcostasilva/ruby-creating-gem/commit/e793087d7ed123b3358e01df4e4bf6ca73d940c7).

## Additional references

- [Make your own gem](https://guides.rubygems.org/make-your-own-gem/)
- [Consistent naming](https://guides.rubygems.org/patterns/#consistent-naming)
- [Stackoverflow - How to install a local gem](https://stackoverflow.com/questions/220176/how-can-i-install-a-local-gem)
- [Como criar uma gem em Ruby? (Portuguese)](https://gist.github.com/kelvinst/d63d1bfb93d367089217)

