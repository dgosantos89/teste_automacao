Dado(/^que esteja no site "([^"]*)"$/) do |site|
    visit 'http://www.walmart.com.br/'
    window = Capybara.current_session.driver.browser.manage.window
    window.maximize
end

Dado(/^pesquiso pelo item "([^"]*)"$/) do |item|
  fill_in 'suggestion-search', :with => item
end

Dado(/^clico no botão "([^"]*)"$/) do |btn|
  find_button(btn).click
  sleep(5)
end

Então(/^o site deverá retornar produtos com o nome "([^"]*)"$/) do |produto|
	expect(page).to have_content(produto)
end

Dado(/^clico na tv$/) do
  find('.product-title', :text => "TV LED 40” Samsung 40H5100 Full HD Função Futebol ConnectShare Movie").click
end

Então(/^o site deverá exibir os detalhes do produto$/) do
  expect(page).to have_content("TV Samsung 40” com Função Futebol")
end

Dado(/^clico em meu carrinho$/) do
  find('.number', :text => '1').click
end

Então(/^o site deverá exibir o produto adicionado$/) do
  expect(page).to have_content("TV LED 40” Samsung 40H5100 Full HD Função Futebol ConnectShare Movie")
end