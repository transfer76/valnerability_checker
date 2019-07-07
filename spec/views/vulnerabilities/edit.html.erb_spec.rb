require 'rails_helper'

RSpec.describe "vulnerabilities/edit", type: :view do
  before(:each) do
    @vulnerability = assign(:vulnerability, Vulnerability.create!())
  end

  it "renders the edit vulnerability form" do
    render

    assert_select "form[action=?][method=?]", vulnerability_path(@vulnerability), "post" do
    end
  end
end
