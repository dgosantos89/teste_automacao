require 'httparty'
require 'pp'

class Rep
  include HTTParty

  def self.busca(cep)
    get('http://cep.correiocontrol.com.br/'+cep+'.json')
    
  end
  
  def self.valida(cep)
    body =  busca(cep)
    bairro = body["bairro"]
    logradouro = body["logradouro"]
    codigoPostal = body["cep"]
    uf = body["uf"]
    localidade = body["localidade"]

    if bairro == "Jardim Nova Europa"
      puts "Bairro ok"
    else
      puts "Bairro não ok"
    end
    
    if logradouro == "Rua Manoel Sylvestre de Freitas Filho"
      puts "Logradouro ok"
    else
      puts "Logradouro não ok"
    end

    if codigoPostal == "13040089"
      puts "CEP ok"
    else
      puts "CEP não ok"
    end

    if uf == "SP"
      puts "UF ok"
    else
      puts "UF não ok"
    end

    if localidade == "Campinas"
      puts "Localidade ok"
    else
      puts "Localidade não ok"
    end
  end
 
end

begin
  pp Rep.valida('13040089')
rescue
  puts "CEP Inválido"
end


begin
  pp Rep.valida('04186111')
rescue
  puts "CEP Inválido"
end

