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
            return (a/b.to_f).round(2)
        end
        a / b 
    end

    def potenciacao(a, b)
        a ** b
    end

    def raizQuadrada(x)
        if x < 0
            return "Não é possível calcular radiciação de número negativo!"
        end

        Math.sqrt(x).round(2)
    end

    def raizCubica(x)
        if x < 0
            return "Não é possível calcular radiciação de número negativo!"
        end

        Math.cbrt(x).round(2)
    end

    def calcArea(largura, comprimento)
        if largura < 0 or comprimento < 0
            return "Não existe área de número negativo"
        end

        (largura * comprimento).round(2)
    end

    def hipotenusa(c1, c2)
        if c1 < 0 or c2 < 0
            return "Não é possível calcular hipotenusa com número negativo"
        end
        Math.hypot(c1, c2).round(2)
    end

    def logBase2(x)
        if x < 0
            return "Não é possível calcular Logaritmo de número negativo"
        end
        Math.log2(x).round(2)
    end

    def logBase10(x)
        if x < 0
            return "Não é possível calcular Logaritmo de número negativo"
        end
        Math.log10(x).round(2)
    end

    def volume(largura, altura, comprimento)
        if largura < 0 or altura < 0 or comprimento < 0
            return "Não é possível calcular Volume com valor negativo"
        end

        (largura * altura * comprimento).round(2)
    end

end