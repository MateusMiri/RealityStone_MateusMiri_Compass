require "rspec"
require_relative "../logic/calculadora.rb"

describe("Calculadora") do
    calculadora = Calculadora.new

    # Soma

    it("Deve somar dois positivos") do
        expect(calculadora.soma(4, 5)).to eq 9
    end

    it("Deve somar número qualquer com 0") do
        expect(calculadora.soma(0, 5)).to eq 5
    end

    it("Deve somar números negativos") do
        expect(calculadora.soma(-5, -4)).to eq -9
    end

    it("Deve somar numeros reais") do
        expect(calculadora.soma(2.5, 5)).to eq 7.5
    end

    # Subtração

    it("Deve subtrair números positivos") do
        expect(calculadora.subtracao(5, 4)).to eq 1
    end

    it("Deve subtrair números por 0") do
        expect(calculadora.subtracao(4, 0)).to eq 4
    end

    it("Deve subtrair números com resposta negativa") do
        expect(calculadora.subtracao(0, 4)).to eq -4
    end

    it("Deve subtrair números negativos") do
        expect(calculadora.subtracao(-5, -6)).to eq 1
    end

    it("Deve subtrair números reais") do
        expect(calculadora.subtracao(2.5, 1)).to eq 1.5
    end

    # Multiplicação

    it("Deve multiplicar números positivos") do
        expect(calculadora.multiplicacao(2, 3)).to eq 6
    end

    it("Deve multiplicar números negativos") do
        expect(calculadora.multiplicacao(-2, -3)).to eq 6
    end

    it("Deve multiplicar números negativos e positivos") do
        expect(calculadora.multiplicacao(2, -3)).to eq -6
    end

    it("Deve multiplicar com e por 0") do
        expect(calculadora.multiplicacao(2, 0)).to eq 0
    end

    it("Deve multiplicar números reais") do
        expect(calculadora.multiplicacao(2.5, 5)).to eq 12.5
    end

    # Divisão

    it("Deve dividir números positivos") do
        expect(calculadora.divisao(9, 3)).to eq 3
    end

    it("Deve dividir números com resposta real") do
        expect(calculadora.divisao(5, 2)).to eq 2.5
    end

    it("Deve dividir números com resposta menor que 0") do
        expect(calculadora.divisao(3, 6)).to eq 0.5
    end

    it("Deve dividir números negativos") do
        expect(calculadora.divisao(-6, -3)).to eq 2
    end

    it("Deve dividir números negativos e positivos") do
        expect(calculadora.divisao(6, -3)).to eq -2
    end

    it("Não deve dividir números por 0") do
        expect(calculadora.divisao(2, 0)).to include("Não é possível dividir números por 0")
    end

    it("Deve dividir 0 por outros números") do
        expect(calculadora.divisao(0, 5)).to eq 0
    end

    it("Deve dividir números reais") do
        expect(calculadora.divisao(6.5, 2)).to eq 3.25
    end

    # Potenciação

    it("Deve potencializar dois números positivos") do
        expect(calculadora.potenciacao(3, 3)).to eq 27
    end

    it("Deve potencializar números negativos com expoente par") do
        expect(calculadora.potenciacao(-3, 2)).to eq 9
    end

    it("Deve potencializar números negativos com expoente ímpar") do
        expect(calculadora.potenciacao(-3, 3)).to eq -27
    end

    it("Deve realizar potências não exatas") do
        expect(calculadora.potenciacao(1.5, 2)).to eq 2.25
    end

    it("Deve potencializar números negativos") do
        expect(calculadora.potenciacao(-4, -2)).to eq 0.0625
    end

    # Raiz Quadrada

    it("Deve calcular a raiz quadrada de um número positivo") do
        expect(calculadora.raizQuadrada(9)).to eq 3
    end

    it("Não deve calcular a raiz quadrada de um número negativo") do
        expect(calculadora.raizQuadrada(-9)).to include("Não é possível calcular radiciação de número negativo!")
    end

    it("Deve calcular a raiz quadrada de um número positivo com número decimal") do
        expect(calculadora.raizQuadrada(2.5)).to eq 1.58
    end

    # Raiz Cúbica

    it("Deve calcular a raiz cúbica de um número positivo") do
        expect(calculadora.raizCubica(125)).to eq 5
    end

    it("Não deve calcular a raiz cúbica de um número negativo") do
        expect(calculadora.raizCubica(-125)).to include("Não é possível calcular radiciação de número negativo!")
    end

    it("Deve calcular a raiz cúbica de um número positivo com número decimal") do
        expect(calculadora.raizCubica(10.5)).to eq 2.19
    end

    # Cálculo de Área

    it("Deve calcular a área de dois numeros inteiros positivos") do
        expect(calculadora.calcArea(4, 6)).to eq 24
    end

    it("Deve calcular a área de números reais positivos") do
        expect(calculadora.calcArea(5.5, 7.25)).to eq 39.88
    end

    it("Não deve calcular a área com números negativos") do
        expect(calculadora.calcArea(3, -2)).to include("Não existe área de número negativo")
    end

    # Hipotenusa pelo Teorema de Pitágoras

    it("Deve calcular a Hipotenusa de dois números inteiros positivos") do
        expect(calculadora.hipotenusa(3, 4)).to eq 5
    end

    it("Não deve calcular a Hipotenusa de catetos com número negativo") do
        expect(calculadora.hipotenusa(3, -4)).to include("Não é possível calcular hipotenusa com número negativo")
    end

    it("Deve calcular a Hipotenusa de números reais positivos") do
        expect(calculadora.hipotenusa(2.5, 5)).to eq 5.59
    end

    # Logaritmo de Base 2

    it("Deve calcular o logarítmo de um número positivo na base 2") do
        expect(calculadora.logBase2(8)).to eq 3
    end

    it("Deve calcularo o logaritmo de um número real positivo na base 2") do
        expect(calculadora.logBase2(12.5)).to eq 3.64
    end

    it("Não deve calcular o logaritmo de um número negativo") do
        expect(calculadora.logBase2(-8)).to include("Não é possível calcular Logaritmo de número negativo")
    end

    # Logaritmo de Base 10

    it("Deve calcular o logarítmo de um número positivo na base 10") do
        expect(calculadora.logBase10(8)).to eq 0.90
    end

    it("Deve calcularo o logaritmo de um número real positivo na base 10") do
        expect(calculadora.logBase10(12.5)).to eq 1.10
    end

    it("Não deve calcular o logaritmo de um número negativo") do
        expect(calculadora.logBase10(-8)).to include("Não é possível calcular Logaritmo de número negativo")
    end

    # Volume

    it("Deve calcular o volume de três valores positivos inteiros") do
        expect(calculadora.volume(2, 4, 3)).to eq 24
    end

    it("Deve calcular o volume de três valores positivos reais") do
        expect(calculadora.volume(2.5, 4.75, 3.25)).to eq 38.59
    end

    it("Não deve calcular o volume de valores negativos") do
        expect(calculadora.volume(2, -5, 9)).to include("Não é possível calcular Volume com valor negativo")
    end


end