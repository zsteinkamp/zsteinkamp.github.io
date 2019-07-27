#!/usr/bin/ruby

require 'yaml'

entries = YAML.load_file('entries.yml')

Dir.glob('*.markdown').each { |file| File.delete(file) }

entries.each do |entry|
  next unless entry['source'] == 'post'
  next if entry['disabled'] == 1
  data = YAML.load(entry['data'])
  puts entry['created_at']
  puts data[:title]

  filename = '_posts/' + entry['created_at'].split(/ /)[0] + '-' + (data[:title].downcase.gsub(/[^0-9a-z]+/, '-').gsub(/-+/, '-')) + '.markdown'

  File.open(filename, 'w') do |file|
    file.write <<EOL
---
layout: post
title: "#{data[:title].gsub(/"/, '\"')}"
date: #{entry['created_at']}
categories: post
---
#{data[:content]}
EOL
  end
end
