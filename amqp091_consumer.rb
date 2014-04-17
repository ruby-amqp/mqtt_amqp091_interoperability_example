#!/usr/bin/env ruby

Bundler.setup

require "bunny"

conn = Bunny.new
conn.start

ch   = conn.create_channel
q    = ch.queue("builds")


q.bind(ch.topic("amq.topic"), routing_key: "builds").subscribe(block: true) do |_, _, payload|
  puts "Payload: #{payload}"
end
