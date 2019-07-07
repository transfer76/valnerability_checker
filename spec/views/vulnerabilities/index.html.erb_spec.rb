require 'rails_helper'

RSpec.describe "vulnerabilities/index", type: :view do
  before(:each) do
    assign(:vulnerabilities, [
      Vulnerability.create!(),
      Vulnerability.create!()
    ])
  end

  it "renders a list of vulnerabilities" do
    render
  end
end
