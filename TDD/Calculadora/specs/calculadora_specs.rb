require "rspec"
require_relative "../logic/calculadora.rb"

describe("Calculadora") do
    calculadora = Calculadora.new

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

    it("Deve subtrair números positivos") do
        expect(calculadora.subtracao(5, 4)).to eq 1
    end

    it("Deve subtrair números por 0") do
        expect(calculadora.subtracao(4, 0)).to eq 4
        expect(calculadora.subtracao(0, 4)).to eq -4
    end

    it("Deve subtrair números negativos") do
        expect(calculadora.subtracao(-5, -6)).to eq 1
    end

    it("Deve subtrair números reais") do
        expect(calculadora.subtracao(2.5, 1)).to eq 1.5
    end

    it("Deve multiplicar números positivos") do
        expect(calculadora.multiplicacao(2, 3)).to eq 6
    end

    it("Deve multiplicar números negativos") do
        expect(calculadora.multiplicacao(-2, -3)).to eq 6
    end

    it("Deve multiplicar números negativos e positivos") do
        expect(calculadora.multiplicacao(2, -3)).to eq -6
        expect(calculadora.multiplicacao(-2, 3)).to eq -6
    end

    it("Deve multiplicar com e por 0") do
        expect(calculadora.multiplicacao(2, 0)).to eq 0
        expect(calculadora.multiplicacao(0, 2)).to eq 0
    end

    it("Deve multiplicar números reais") do
        expect(calculadora.multiplicacao(2.5, 5)).to eq 12.5
    end

    it("Deve dividir números positivos") do
        expect(calculadora.divisao(9, 3)).to eq 3
        expect(calculadora.divisao(5, 2)).to eq 2.5
        expect(calculadora.divisao(3, 6)).to eq 0.5
    end

    it("Deve dividir números negativos") do
        expect(calculadora.divisao(-6, -3)).to eq 2
    end

    it("Deve dividir números negativos e positivos") do
        expect(calculadora.divisao(6, -3)).to eq -2
        expect(calculadora.divisao(-6, 3)).to eq -2
    end

    it("Não deve dividir números por 0") do
        expect(calculadora.divisao(2, 0)).to include("Não é possível dividir números por 0")
    end

    it("Deve dividir 0 por outros números") do
        expect(calculadora.divisao(0, 5)).to eq 0
    end

    it("Deve dividir números reais") do
        expect(calculadora.divisao(6.5, 2)).to eq 3.25
        expect(calculadora.divisao(10, 3.5)).to eq 2.86
    end

    it("Deve potencializar dois números positivos") do
        expect(calculadora.potenciacao(3, 3)).to eq 27
    end

    it("Deve potencializar números negativos") do
        expect(calculadora.potenciacao(-3, 3)).to eq -27
        expect(calculadora.potenciacao(-3, 2)).to eq 9
    end

    it("Deve realizar potências não exatas") do
        expect(calculadora.potenciacao(1.5, 2)).to eq 2.25
    end

end