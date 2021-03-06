[![Circle CI](https://circleci.com/gh/paperg/tagcompare/tree/master.svg?style=shield&circle-token=2ab0b5bce0728be579eb7aba17e52668e7ebf031)](https://circleci.com/gh/paperg/tagcompare/tree/master)[![Code Climate](https://codeclimate.com/github/d3ming/tagcompare/badges/gpa.svg)](https://codeclimate.com/github/d3ming/tagcompare)
[![Coverage Status](https://coveralls.io/repos/paperg/tagcompare/badge.svg?branch=master&service=github)](https://coveralls.io/github/paperg/tagcompare?branch=master)
[![Issue Count](https://codeclimate.com/github/d3ming/tagcompare/badges/issue_count.svg)](https://codeclimate.com/github/d3ming/tagcompare)

```
╔╦╗╔═╗╔═╗  ╔═╗╔═╗╔╦╗╔═╗╔═╗╦═╗╔═╗
 ║ ╠═╣║ ╦  ║  ║ ║║║║╠═╝╠═╣╠╦╝║╣ 
 ╩ ╩ ╩╚═╝  ╚═╝╚═╝╩ ╩╩  ╩ ╩╩╚═╚═╝
```
There are many differences and issues when trying to render an HTML5 creative under different platform/browsers.
  1. Fonts might look or **be** different
  2. CSS / layout differences
  3. Animation / timing differences

This tool tries to address the first 2 points above by doing image comparison of an HTML5 creative tag under different 
platform/browser configurations

## Setup
`make install` to install dependencies

### settings.json
Make a local copy of [`settings.json`](tagcompare/settings.json) called `settings.local.json`
Update the values for webdriver user/key and placelocal secret:
```json
  "webdriver": {
    "user": "USER",
    "key": "KEY",
    "url": "REMOTE_WEBDRIVER_URL"
  },
  "placelocal": {
    "domain": "www.placelocaldemo.com",
    "secret": {
      "pl-secret": "SECRET",
      "pl-service-identifier": "SERVICEID"
    }
  }
```

## Running the tool
`make run` will run the tool to capture screenshots and compare them
  - `make capture` will run a new capture images job
  - `make compare` will compare existing output, given a list of campaigns and configs

## Running tests
`make test` will run unit tests
