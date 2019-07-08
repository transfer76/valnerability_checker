require 'rails_helper'

RSpec.describe VulnerabilityWorker, type: :worker do
  it 'saves vulnerabilities from the website' do
    VCR.use_cassette('vulnerability_index') do
      expect { VulnerabilityWorker.new.perform }.to \
        change { Vulnerability.count }.by(30)
    end
  end

  it "doesn`t add duplicate vulnerabilities" do
    VCR.use_cassette('vulnerability_index_twice') do
      expect do
        2.times { VulnerabilityWorker.new.perform }
      end.to change { Vulnerability.count }.by(30)
    end
  end
end
