#!/usr/bin/env ruby
# frozen_string_literal: true

path = ARGV.fetch(0) do
  warn "Usage: ruby validate_jekyll_mermaid.rb path/to/post.md"
  exit 1
end

content = File.read(path)
errors = []

errors << "Plain ```mermaid fence remains." if content.match?(/^```mermaid[ \t]*$/)

if content.match?(/^```mermaid![ \t]*$/) && !content.match?(/^mermaid:\s*true\s*$/)
  errors << "Missing `mermaid: true` in front matter."
end

if errors.empty?
  puts "Jekyll Mermaid validation passed."
  exit 0
end

errors.each { |e| warn e }
exit 1
