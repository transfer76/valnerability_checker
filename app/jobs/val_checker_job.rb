class ValCheckerJob < ApplicationJob
  queue_as :default

  def perform(valnerability)
    uri = URI.parse('https://rubysec.com/advisories')
    response = Net::HTTP.get_response(uri)
    doc = REXML::Document.new(response.body)
    valnerability = doc.root.elements['//valnerability'].text.delete(',')
  end
end
