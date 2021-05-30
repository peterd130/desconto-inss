# Desconto INSS

## Descrição
- CRUD de proponentes desenvolvido utilizando Rails 6.1.3.2, PostgreSQL e Bootstrap.
- Foram realizados Testes de Sistema e Testes de Integração

## Utilização
- Para cadastrar um novo registro, basta clicar no botão fixo do canto inferior direito, preencher o formulário com os dados do proponente e salvar.
- Os registros são exibidos em cards com todos os dados do proponente, inclusive o valor calculado do desconto do INSS (em vermelho)
- Para editar ou excluir um determinado proponente, basta clicar no botão (3 pontos) do canto superior direito do card

## Instalação
- Após clonar o repositório, é necessário instalar as dependências com o comando `bundle install` seguido de `yarn install`
- Execute os seguintes comandos para criar toda a estrutura do banco de dados e para migrar todas as tabela: `rake db:create` e `rake db:migrate`

## Demonstração
- Para testar a aplicação basta acessar o link https://serene-peak-08580.herokuapp.com/ (o primeiro acesso pode demorar um pouco, por conta de limitações impostas pelo Heroku) 

