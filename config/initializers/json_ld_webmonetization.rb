# frozen_string_literal: true

require 'json/ld'
class JSON::LD::Context
  add_preloaded("https://webmonetization.org/ns.jsonld") do
    new(processingMode: "json-ld-1.1", term_definitions: {
      "wm" => TermDefinition.new("xsd", id: "https://webmonetization.org/ns#", simple: true, prefix: true),
      "monetization" => TermDefinition.new("monetization", id: "https://webmonetization.org/ns#monetization", simple: true)
    })
  end
end
