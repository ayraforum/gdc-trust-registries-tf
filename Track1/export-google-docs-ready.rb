#!/usr/bin/env ruby

require "fileutils"
require "json"
require "pathname"

repository_root = Pathname.new(File.expand_path("..", __dir__))
track_root = Pathname.new(__dir__)
output_root = track_root.join("google-docs-ready")
map = JSON.parse(track_root.join("google-doc-link-map.json").read)
documents = map.fetch("documents")
aliases = map.fetch("aliases", {})

sources = [
  "Track1/SCOPE-Track1.md",
  "Track1/start-here-issuer-trust-registries.md",
  "Track1/taxonomy-and-vocabulary.md",
  "Track1/governance-framework/issuer-trust-registry-governance-framework.md",
  "Track1/standalone-framework-alignment-plan.md"
]

github_root = "https://github.com/ayraforum/gdc-trust-registries-tf/blob/main"

sources.each do |source_name|
  source_path = repository_root.join(source_name)
  unless source_path.file?
    warn "Skipping missing source: #{source_name}"
    next
  end

  content = source_path.read
  content = content.gsub(/(?<!!)\[([^\]]+)\]\(([^)]+)\)/) do
    label = Regexp.last_match(1)
    target = Regexp.last_match(2)

    replacement = aliases[target]

    unless replacement
      path_part, anchor = target.split("#", 2)

      unless path_part.match?(/\A(?:https?:|mailto:)/) || path_part.empty?
        resolved = source_path.dirname.join(path_part).cleanpath

        begin
          repository_name = resolved.relative_path_from(repository_root).to_s
          replacement = documents[repository_name]
          mapped_to_google_doc = !replacement.nil?

          if !replacement && File.extname(path_part).downcase == ".md"
            replacement = "#{github_root}/#{repository_name}"
          end

          # Repository heading anchors do not correspond to Google Docs bookmarks.
          replacement = "#{replacement}##{anchor}" if replacement && anchor && !mapped_to_google_doc
        rescue ArgumentError
          replacement = nil
        end
      end
    end

    replacement ? "[#{label}](#{replacement})" : Regexp.last_match(0)
  end

  relative_output = Pathname.new(source_name).relative_path_from(Pathname.new("Track1"))
  output_path = output_root.join(relative_output)
  FileUtils.mkdir_p(output_path.dirname)
  output_path.write(content)
  puts "Generated #{output_path.relative_path_from(repository_root)}"
end
