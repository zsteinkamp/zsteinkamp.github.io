#!/usr/bin/ruby

require 'yaml'
require 'json'

entries = YAML.load_file('entries.yml')

##Dir.glob('*.markdown').each { |file| File.delete(file) }

entries.each do |entry|
  next unless ['post','flickr','youtube'].include?(entry['source'])
  next if entry['disabled'] == 1
  entry['data'] = JSON.parse(YAML.load(entry['data']).to_json)

  # remove leading datestamp from some titles
  entry['data']['title'] = entry['data']['title'].gsub(/^\d{8} /,'')

  smashname = entry['data']['title'].downcase.gsub(/[^0-9a-z]+/, '-').gsub(/-+/, '-')[0..50]
  filename = '_posts/' + entry['pub_date'].split(/ /)[0] + '-' + smashname + '-' + entry['source'] + '.markdown'

  content = entry['data']['content']
  entry['data'].delete('content')

  puts filename

  front_matter = {
    'layout' => 'post',
    'title' => entry['data']['title'],
    'date' => entry['pub_date'],
    'categories' => 'post ' + entry['source'],
    'entry' => entry
  }

  File.open(filename, 'w') do |file|
    file.puts(front_matter.to_yaml)
    file.puts '---'
    file.puts content if content
  end
end
