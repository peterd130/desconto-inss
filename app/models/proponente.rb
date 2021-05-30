class Proponente < ApplicationRecord
    validates :nome, presence: true
    validates :cpf, presence: true, length: { is: 14 }, uniqueness: true
    validates :nasc, presence: true
    validates :log, presence: true
    validates :cidade, presence: true
    validates :bairro, presence: true
    validates :cep, presence: true, length: { is: 9 }
    validates :num, numericality: { only_integer: true }
    validates :salario, numericality: { less_than_or_equal_to: 6101.06  }
    validates :desconto, numericality: true
    validates :estado, presence: true, length: { is: 2 }
    validates :tel1_pes, presence: true, length: { minimum: 11 }
    validates :tel1_ref, presence: true, length: { minimum: 11 }


end
