#language: pt

Funcionalidade: Procurar pelo termo tv
				Abrir um dos produtos pesquisado
				Adicionar o Produto ao carrinho

Cenário: Realizar a pesquisa de um produto no site do wallmart
	Dado que esteja no site "http://www.walmart.com.br"
	Quando pesquiso pelo item "TV"
	E clico no botão "Procurar"	
	Então o site deverá retornar produtos com o nome "TV"

Cenário: Abrir um produto dentre os listados
	Quando clico na tv 
	Então o site deverá exibir os detalhes do produto

Cenário: Adicionar o produto ao carrinho
	Quando clico no botão "Adicionar ao carrinho"
	E clico no botão "Continuar"
	E clico em meu carrinho
	Então o site deverá exibir o produto adicionado
	

