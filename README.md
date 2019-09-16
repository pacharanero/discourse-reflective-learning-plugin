# discourse-reflexivity
A plugin to support Reflective Learning, using Discourse as a knowledge management platform

Developed by AHSN NENC

------

## Installation
Follow [Install a Plugin](https://meta.discourse.org/t/install-a-plugin/19157)
how-to from the official Discourse Meta.

## Usage

## Feedback
If you have issues or suggestions for the plugin, please bring them up on
[Discourse Meta](https://meta.discourse.org).

------

## Developing with this plugin
follow the Getting Started guide https://meta.discourse.org/t/beginners-guide-to-install-discourse-for-development-using-docker to create a Docker development environment. Once done, you should be able to restart development using the following:

start Discourse applications again
`d/shutdown_dev; d/boot_dev --init`

you only need the --init flag if you're starting a new container, and if you get odd messages about things not being installed

`d/shutdown_dev; d/boot_dev`

Bundle if needed
`./bin/docker/bundle`

start the development web server (with SideKiq)
`./bin/docker/unicorn`
Discourse should be visible at
http://localhost:9292/

start mailcatcher to enable interception of sent email
`./bin/docker/mailcatcher`
Mailcatcher should be visible at
http://0.0.0.0:1080/
