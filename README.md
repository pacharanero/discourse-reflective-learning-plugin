# discourse-reflexivity
A plugin to support Reflective Learning using Discourse as a knowledge management platform

------

## Installation
Follow [Install a Plugin](https://meta.discourse.org/t/install-a-plugin/19157)
how-to from the official Discourse Meta, using `git clone https://github.com/<%= @github_username %>/<%= dasherized_name %>.git`
as the plugin command.

## Usage

## Feedback
If you have issues or suggestions for the plugin, please bring them up on
[Discourse Meta](https://meta.discourse.org).

------

## Developing with this plugin
follow the Getting Started guide https://meta.discourse.org/t/beginners-guide-to-install-discourse-for-development-using-docker to create a Docker development environment. Once done, you should be able to restart development using the following:

start Discourse applications again
`./bin/docker/boot_dev`

start Unicorn for the web server frontend
`./bin/docker/unicorn`

start mailcatcher to enable interception of sent email
`./bin/docker/mailcatcher`

Discourse should be visible at
http://localhost:9292/

Mailcatcher should be visible at
http://0.0.0.0:1080/
