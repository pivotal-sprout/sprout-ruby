# sprout-ruby cookbook

[![Build Status](https://travis-ci.org/pivotal-sprout/sprout-ruby.png?branch=master)](https://travis-ci.org/pivotal-sprout/sprout-ruby)

Cookbook for managing ruby related workstation config

## Usage

### Prerequisites

- [system ruby](.ruby-version)
- [bundler](http://bundler.io/)

### Quickstart

```
bundle
bundle exec soloist
```

## Cookbook Usage

### Recipes

1. `sprout-ruby`
1. `sprout-ruby::gemrc`

## Contributing

### Before committing

```
bundle
bundle exec rake
```

The default rake task includes rubocop, foodcritic, unit specs

### [Rubocop](https://github.com/bbatsov/rubocop)

```
bundle
bundle exec rake rubocop
```

### [FoodCritic](http://acrmp.github.io/foodcritic/)

```
bundle
bundle exec rake foodcritic
```

### Unit specs

Unit specs use [ServerSpec](http://serverspec.org/)

```
bundle
bundle exec rake spec:unit
```

### Integration specs

Integrations specs will run the default recipe on the host system (destructive) and make assertions on the system after
install.

*Note:* It has a precondition this cookbook has not _not_ already been converged on this computer (prefer using a clean VM)

```
bundle
bundle exec rake spec:integration
```
