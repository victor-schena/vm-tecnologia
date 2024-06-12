class CustomersController < ApplicationController
    def index
        # 3.1 -

        # A query original traria todos os clientes de todos os operadores
        # @customers = Customer.order(:name)

        # A nova query traz filtrando por operador:
        @customers = Customer.where(operator_id: user.operator_id).order(:name)
    end
end
