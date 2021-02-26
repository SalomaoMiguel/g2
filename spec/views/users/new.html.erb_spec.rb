require 'rails_helper'

RSpec.describe "user/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      nome: "MyString",
      email: "MyString",
      senha: "MyString",
      ativo: false,
      master: false,
      admin: false,
      idioma: false
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input[name=?]", "user[nome]"

      assert_select "input[name=?]", "user[email]"

      assert_select "input[name=?]", "user[senha]"

      assert_select "input[name=?]", "user[ativo]"

      assert_select "input[name=?]", "user[master]"

      assert_select "input[name=?]", "user[admin]"

      assert_select "input[name=?]", "user[idioma]"
    end
  end
end
