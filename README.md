# Web Automation Base

This repository provides a solid foundation for a web automation testing framework. It does so by:

* Pinning the project to a specific Ruby version ([2.6.0](/.ruby-version)).
* Enforcing said pinned Ruby version from within the project's [Gemfile](/Gemfile).
* Pinning gem versions in the project's [Gemfile](/Gemfile), preventing regressions due to breaking changes being made to dependencies.
* Including a code linter ([Rubocop](https://rubocop.readthedocs.io/en/latest/)) as a `development` dependency and [disabling some noisy cops by default](/.rubocop.yml).
* [Registering a Capybara driver](https://github.com/lastnamevega/web_automation_base/blob/67d0a3b23963667cf3622efba809c6107ac08cc5/features/support/env.rb#L7-L17) which will run headlessly in continuous integration/deployment environments (e.g. [CircleCI](http://circleci.com/)) without issue, given a viable Chrome/Chromium binary is available.
* [Saving screenshots](https://github.com/lastnamevega/web_automation_base/blob/67d0a3b23963667cf3622efba809c6107ac08cc5/features/support/env.rb#L32-L38) with human-readable filenames, replete with timestamps and the relevant scenario's name, upon failure.
* The project also includes a (_very_) basic suite and all relevant configuration, including an app object ([`ExampleApp`](/features/example_suite/support/app.rb)), feature ([`example.feature`](/features/example_suite/example.feature)), [step definitions](/features/example_suite/support/step_definitions/example_steps.rb), and a [SitePrism](https://github.com/natritmeyer/site_prism) page ([`example_page.rb`](/features/example_suite/support/pages/example_page.rb)).

## Dependencies

* Ruby 2.6.0 with Bundler installed.
* Chrome or Chromium.

## Installation

First, clone the project:

```sh
$ git clone git@github.com:lastnamevega/web_automation_base.git
$ cd web_automation_base
```

Next, install the project's bundle:

```sh
$ bundle install --path=vendor/bundle
```

## Execution

The project's example Cucumber suite can be executed as follows:

```sh
$ bundle exec cucumber
```

## Linting

If you've made changes to the project and would like to lint the code you added, you can do so by running the following:

```sh
$ bundle exec rubocop -a
```
