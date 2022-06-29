class Calculadora

    def soma(a, b)
        a + b
    end

    def subtracao(a, b)
        a - b
    end

    def multiplicacao(a, b)
        a * b
    end

    def divisao(a, b)
        if b == 0
            return "Não é possível dividir números por 0"
        end

        if a % b != 0
            return ((a).to_f / (b).to_f).round(2)
        end
        a / b 
    end

    def potenciacao(a, b)
        a ** b
    end


end