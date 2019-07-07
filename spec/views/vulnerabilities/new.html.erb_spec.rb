require 'rails_helper'

RSpec.describe "vulnerabilities/new", type: :view do
  before(:each) do
    assign(:vulnerability, Vulnerability.new())
  end

  it "renders new vulnerability form" do
    render

    assert_select "form[action=?][method=?]", vulnerabilities_path, "post" do
    end
  end
end
