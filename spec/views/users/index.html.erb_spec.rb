require 'rails_helper'

RSpec.describe "user/index", type: :view do
  before(:each) do
    assign(:user, [
      User.create!(
        nome: "Nome",
        email: "Email",
        senha: "Senha",
        ativo: false,
        master: false,
        admin: false,
        idioma: false
      ),
      User.create!(
        nome: "Nome",
        email: "Email",
        senha: "Senha",
        ativo: false,
        master: false,
        admin: false,
        idioma: false
      )
    ])
  end

  it "renders a list of user" do
    render
    assert_select "tr>td", text: "Nome".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Senha".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
