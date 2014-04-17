# AMQP 0-9-1 and MQTT interoperability using Ruby and RabbitMQ MQTT plugin

This is an example of RabbitMQ MQTT plugin in action. It has two parts:

 * A Ruby MQTT producer that connects to RabbitMQ and publishes messages.
 * A Ruby AMQP 0-9-1 consumer that subscribes to messages from the producer.

## Libraries used

 * [Bunny](http://rubybunny.info)
 * [mqtt gem](https://github.com/njh/ruby-mqtt)

## Getting started

Pre-requisites are

 * Having a RabbitMQ 3.0+ installed. See [RabbitMQ installation guide](http://www.rabbitmq.com/install.html) and [downloads](http://www.rabbitmq.com/download.html). On Mac OS X we recommend using [Homebrew](http://mxcl.github.com/homebrew):

    brew install rabbitmq

 * Having a RabbitMQ MQTT plugin enabled. See [MQTT plugin docs](http://www.rabbitmq.com/stomp.html).

The install dependencies with Bundler:

    gem install bundler

and then, from Git repository root

    bundle install

Finally, run both scripts (in two shells), consumer first:

    bundle exec ruby ./amqp091_consumer.rb

and then the producer

    bundle exec ruby ./mqtt_producer.rb

## License

Copyright (c) 2014, Michael S. Klishin

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
