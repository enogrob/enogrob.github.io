#!/usr/bin/env ruby
# frozen_string_literal: true

path = ARGV.fetch(0) do
  warn "Usage: ruby convert_mermaid_fences.rb path/to/post.md"
  exit 1
end

content = File.read(path)
print content.gsub(/^```mermaid[ \t]*$/) { "```mermaid!" }
