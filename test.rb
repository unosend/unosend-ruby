#!/usr/bin/env ruby

$LOAD_PATH.unshift(File.expand_path('lib', __dir__))

require 'unosend'

client = Unosend::Client.new('un_YUp9yHlMtrGvuJqmH6kU_7eXJaU3gPcW')

puts "Testing Ruby SDK..."
puts ""

puts "Sending email..."
begin
  email = client.emails.send(
    from: 'hello@unosend.co',
    to: 'bittucreator@gmail.com',
    subject: 'Test from Ruby SDK',
    html: '<h1>Hello from Ruby!</h1><p>This email was sent using the official Unosend Ruby SDK.</p>'
  )
  puts "Success! Email ID: #{email['id']}"
rescue Unosend::Error => e
  puts "Error #{e.code}: #{e.message}"
end
