![Boost: Enterprise AppStore in Swift](https://github.com/LiveUI/Boost/raw/master/Other/Images/header.jpg)

[![Slack](https://img.shields.io/badge/join-slack-745EAF.svg?style=flat)](http://bit.ly/2B0dEyt)
[![Apiary.io API documentation for Boost](https://img.shields.io/badge/docs-API-02BFF4.svg?style=flat)](https://boost.docs.apiary.io)
[![Platforms](https://img.shields.io/badge/platforms-macOS%2010.13%20|%20Ubuntu%2016.04%20LTS-ff0000.svg?style=flat)](http://cocoapods.org/pods/FASwift)
[![Swift 4](https://img.shields.io/badge/swift-4.0-orange.svg?style=flat)](http://swift.org)
[![Vapor 3](https://img.shields.io/badge/vapor-3.0-blue.svg?style=flat)](https://vapor.codes)
[![iOS app](https://img.shields.io/badge/app-iOS-blue.svg?style=flat)](https://github.com/manGoweb/Boost-iOS/)
[![Android app](https://img.shields.io/badge/app-Android-green.svg?style=flat)](https://github.com/manGoweb/Boost-Android/)

##

Boost is an enterprise mobile app distribution platform. Boost has been made originally to help us distribute mobile apps to our clients on our own platform but eventually we have decided to share our baby with the world. Let’s see what it will grow into!


## Tags

Tags are very important part of the platform, they are the heart and soul of Boost. Tags are used to sort and find the right build you are looking for, to identify a release or to inform your testers of what is included in the build.

When uploading the build you can specify any number of tags like versions of specific libraries, API integrations or just whatever else you might think of.

Adding a tag to your upload from any CI is super easy, just add them to your curl (or any other program of your preference) and you are good to go. An example curl upload could look like this:

```ruby
curl https://api.appstorehq.net\
	-f /build/folder/Boost-Client.apk\
	-p “tag=crashlytics_1.35”
	-p “tag=bumpup_2.0”
	-p “tag=ci_build&example tag”
	-p “tag=Branch: master”
```

Previous example will upload called `Boost-Client.apk` into your appstore and creates following tags: `crashlytics_1.35`, `bumpup_2.0`, `ci_build`, `example tag` and `Branch: master`. You can later search your appstore and filter builds by them.


## Table of contents

* [Slack](#slack)
* [Features](#features)
* [Frontend apps](#frontend-apps)
* [Installation](#installation)
* [Docker](#docker)
* [macOS](#macos)
* [Ubuntu](#ubuntu)
* [Heroku](#heroku)
* [Continuous Integration](#continuous-integration)
* [Author](#author)
* [License](#license)

## Slack

Get help using and installing this product on our [Slack](http://bit.ly/2B0dEyt), channel <b>#help-boost</b>

## Features

**Warning! - *Project is not finished, contact us on Slack for ETA or follow the status below***

#### MVP (current)
- [x] Build basic framework
- [ ] Authenticate with username and password
- [ ] Authenticate in enterprise environment (`ActiveDirectory`, etc ...)
- [ ] Upload, process and install iOS app
- [ ] Upload, process and install Android app
- [ ] Search apps by it's tags, name, platform and bundle Id
- [ ] Integrated web client (web interface)
- [ ] Create client accounts
- [ ] Basic emails (forgotten password, registration, invitation)


#### Phase 2
- [ ] Create client accounts
- [ ] Upload, process and install tvOS app
- [ ] Comment on builds
- [ ] Native iOS client
- [ ] Native Android client
- [ ] Email notifications (new builds, clents, etc)


#### Phase 3
- [ ] Create virtual apps for web-apps (urls)
- [ ] Authenticate in enterprise environment (custom plugins and integrations for common systems)


#### Phase 4
- [ ] Upload, process and download standalone files
- [ ] Upload, process and install macOS app
- [ ] Upload, process and install Windows app
- [ ] Upload, process and display web app (.zip)

## Frontend apps

* [iOS app](https://github.com/manGoweb/Boost-iOS/)
* [Android app](https://github.com/manGoweb/Boost-Android/)


## Vapor

Boost has been built on the top of a Vapor framework. We have picked Vapor as it was the most advanced Swift framework at the time. They also have an amazing support through their Slack channel where you very often able to talk to the developers themselves!

Coming with version 3, Vapor has become fully asynchronous and non-blocking which made it even faster and efficient processing requests.

## Installation process

	- Info about Docker 
		- Docker compose
		- Configuring your own database
	- Installing from repo
		- Install pre-requisites using an install script from github.com
		- Manually
			- Installing Swift
			- Installing Java
			- Installing Python (if we don’t convert .py to swift)
			- Installing MySQL
	- Embedding boost in your Swift server app

#### Docker

```ruby
docker install boost
```

#### macOS

```ruby
#brew install mysql
#brew install python
#brew install java
brew install boost
```

#### Ubuntu 16.04 LTS

```ruby
#brew install mysql
#brew install python
#brew install java
brew install boost
```

#### Heroku

[![Deploy Boost enterprise appstore to heroku](https://camo.githubusercontent.com/c0824806f5221ebb7d25e559568582dd39dd1170/68747470733a2f2f7777772e6865726f6b7563646e2e636f6d2f6465706c6f792f627574746f6e2e706e67)](https://heroku.com/deploy?template=https://github.com/LiveUI/Boost)


## Integration

Boost can be integrated by literally any CI system due to it’s API based core. The whole system including all of the admin panel functionality is a REST API. Usually the easiest way to upload a build is to use a CURL request. Example curl requests are listed below.

Curl requests
	- basic
	- with tags

You can also upload builds manually from our Web or native Android app. Upload feature is not available on any of the native iOS apps.

Available parameters for app are 


## Embedding Boost in any server side swift app

Boost is just a Swift package managed by the SPM (Swift Package Manager) so it can be included in any swift server side app, although we would recommend using it within a Vapor 3 context only.


## Code contributions

We love PR’s, we can’t get enough of them ... so if you have an interesting improvement, bug-fix or a new feature please don’t hesitate to get in touch. If you are not sure about something before you start the development you can always contact our dev and product team through our Slack.

## Client apps

We have already built three for you, a web based one which is distributed directly with this project, a native iOS app and an Android app. Both native apps are also distributed with all the source codes under an Apache 2.0 license. Code is available here:
	- iOS
	- Android
	- Web app (included in the base package)

XXXXXX Screenshots of all apps 


## Custom clients

As it has been mentioned above, the whole system is just a one big API so building your client will be super easy. You can always use one of our pre-built apps as a starting point. 

We also have SDK’s for iOS and Android available here:
	- JS client library
	- iOS SDK
	- Android SDK



## Continuous integration

You can upload a new build simply by sending the following `curl`

```ruby
curl -X POST -H "Authorization: Token XXXXXX-XXXXXX-XXXXXX-XXXX" -d @myfilename https://api.appstorehq.net?tags=some_tag_no1,some_tag_2
```

## API documentation

A complete API documentation is on [Apiary.io](https://boost.docs.apiary.io/). In the repo we also maintain a [Postman](https://www.getpostman.com) collection of all available requests [here](https://github.com/LiveUI/Boost/tree/master/Other/Postman).

[![Apiary.io API documentation for Boost](https://github.com/LiveUI/Boost/raw/master/Other/Images/apiary.png)](https://boost.docs.apiary.io/)

## Supplementary components

BumpUp!
Cloud based build number management system
Like Boost, BumpUp! Is an open source feature licensed under Apache 2.0 license
BumpUp! Is also available as a free service online.
Support for Android and all current Apple based operating systems
BumpUp! Can be found here: http://github.com/liveui/bumpup
Xxxxxxxxxxx include screenshot


## OnDemand hosted service (sounds better than software as a service)

We also provide a hosted service including a free tier for indie developers. For more information on our hosted services, please visit our website on http://www.boostappstore.com


## Support

We try to support even our free tier clients through our Slack channel or create a Stack Overflow question tagging BoostXXXXXXXXXX.
To signup for our Slack please visit http://xxxxxx.xxxxx.xx and we’ll send you an invitation email.


## Enterprise

Our enterprise package contains a tailored solution designed to match your needs exactly. We have a team of amazing developers on standby to help you using remote desktops or even to fly them over, should you require help with the setup onsite.

We are a dev house so happy to quote on any customisations you may need on request. Please contact us on enterprise@mangoweb.cz for further details.

## License

Boost is distributed under an Apache 2 license and can be shared or used freely within the bounds of the license itself.
All third party components used (like Vapor framework and all it’s components) in this software are MIT licensed only.
List of all used software is listed in the repository. All Vapor components are available in Vapor dependencies folder.

See the LICENSE file for more info.



