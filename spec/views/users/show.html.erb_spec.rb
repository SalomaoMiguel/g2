require 'rails_helper'

RSpec.describe "user/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      nome: "Nome",
      email: "Email",
      senha: "Senha",
      ativo: false,
      master: false,
      admin: false,
      idioma: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Senha/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end
