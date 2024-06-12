class MathOperation
    OPERATIONS = {'ADD' => '+', 'SUB' => '-', 'MUL' => '*', 'DIV' =>'/'}

    def initialize(operation)
        @operation = operation
    end

    def commit_operation
        return if @operation.empty?

        operation, n1, n2 = @operation.gsub!(",","").split

        raise ArgumentError.new unless OPERATIONS.include?(operation)

        raise ZeroDivisionError.new if operation.eql?(OPERATIONS.key('/')) && n2.to_f.zero?

        p eval(n1 + OPERATIONS.fetch(operation) + n2)

    rescue ZeroDivisionError => e
        p "Divisão por zero é indefinida."

    rescue ArgumentError => e
        p 'Operação inválida.'
    end
end
