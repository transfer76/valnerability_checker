require 'rails_helper'

RSpec.describe "vulnerabilities/show", type: :view do
  before(:each) do
    @vulnerability = assign(:vulnerability, Vulnerability.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
