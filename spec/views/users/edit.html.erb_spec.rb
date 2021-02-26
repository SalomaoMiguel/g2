require 'rails_helper'

RSpec.describe "user/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      nome: "MyString",
      email: "MyString",
      senha: "MyString",
      ativo: false,
      master: false,
      admin: false,
      idioma: false
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

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
