require "test_helper"

class ProponenteFlowTest < ActionDispatch::IntegrationTest
  test "criar, editar e excluir proponente" do

    #acessa a página de novo proponente, preenche o form e salva
    get "/proponentes/new"
    assert_response :success
  
    post "/proponentes",
      params: { proponente: { 
        nome: "Pedro da Silva",
        cpf: "123.456.999-10",
        nasc: '10/10/2000',
        log: 'Avenida Frei Serafim',
        cep: '64512-983',
        bairro: 'Centro',
        num: 1025,
        cidade: 'Teresina',
        estado: 'PI',
        salario: 3000.00,
        desconto: 281.64,
        tel1_pes: "89 12345678",
        tel1_ref: "89 12345678"
      }
    }
    assert_response :redirect
    follow_redirect!
    assert_response :success

    #acessa a página de editar proponente, altera o CPF e salva
    get "/proponentes/#{Proponente.last.id}/edit"
    assert_response :success
  
    patch "/proponentes/#{Proponente.last.id}",
      params: { proponente: { 
        nome: "Pedro da Silva",
        cpf: "049.782.999-55",
        nasc: '10/10/2000',
        log: 'Avenida Frei Serafim',
        cep: '64512-983',
        bairro: 'Centro',
        num: 1025,
        cidade: 'Teresina',
        estado: 'PI',
        salario: 3000.00,
        desconto: 281.64,
        tel1_pes: "89 12345678",
        tel1_ref: "89 12345678"
      }
    }
    assert_response :redirect
    follow_redirect!
    assert_response :success

    #deleta o proponente que foi criado e editado
    delete "/proponentes/#{Proponente.last.id}"
    assert_response :success
  end
end
