require "application_system_test_case"

class ProponentesTest < ApplicationSystemTestCase

  test "criar, editar e excluir proponente" do

    #visita a página inicial
    visit proponentes_path
  
    #acessa a página de criar novo proponente
    click_on "novo-prop"

    #preenche o formulário com os dados abaixo e submete
    fill_in "proponente_nome", with: 'Pedro da Silva'
    fill_in "proponente_cpf", with:  '123.456.999-10'
    select('10', :from => 'proponente_nasc_3i')
    select('Janeiro', :from => 'proponente_nasc_2i')
    select('1963', :from => 'proponente_nasc_1i')
    fill_in "proponente_log", with:  "Avenida Frei Serafim"
    fill_in "proponente_cidade", with:  "Teresina"
    select('PI', :from => 'proponente_estado')
    fill_in "proponente_num", with:  123
    fill_in "proponente_cep", with:  "64512-983"
    fill_in "proponente_bairro", with:  "Centro"
    fill_in "proponente_salario", with:  3520.00
    fill_in "proponente_tel1_pes", with:  "89 12345678"
    fill_in "proponente_tel1_ref", with:  "89 12345678"

    sleep(inspection_time=3)

    click_on "Salvar proponente"
    
    #se nenhum erro for encontrado, será redirecionado para a página inicial e irá procurar pelo novo registro através do cpf
    assert_text '123.456.999-10'

    #clica no botão editar, altera o nome, atualiza os dados do proponente e verifica se foi alterado com sucesso
    click_on 'dropdownMenuButton2'
    page.find('.editar').click
    fill_in "proponente_nome", with: 'Lucas Matias Oliveira'
    sleep(inspection_time=3)
    click_on "Salvar proponente"
    assert_text 'Lucas Matias Oliveira'

    #clica no botão excluir, apaga o proponente criado e verifica se realmente foi deletado
    click_on 'dropdownMenuButton2'
    page.find('.excluir').click
    click_on "btn-excluir"
    assert_no_text 'Lucas Matias Oliveira'
  end
end
