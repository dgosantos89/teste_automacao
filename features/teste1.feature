#language: pt

Funcionalidade: Procurar pelo termo tv
				Abrir um dos produtos pesquisado
				Adicionar o Produto ao carrinho

Cenário: Realizar a pesquisa de um produto no site do wallmart
	Dado que esteja no site "http://www.walmart.com.br"
	E pesquiso pelo item "TV"
	E clico no botão "Procurar"	
	Então o site deverá retornar produtos com o nome "TV"

Cenário: Abrir um produto dentre os listados
	Dado clico na tv 
	Então o site deverá exibir os detalhes do produto

Cenário: Adicionar o produto ao carrinho
	Dado clico no botão "buy-button btn btn-success"
	E clico no botão "navegaCarrinho"
	E clico em meu carrinho
	Então o site deverá exibir o produto adicionado
	

