def imc(peso, altura)
    if altura == 0
        return "Não é possível calcular IMC com altura = 0!"
    end
    imcCalculado = peso / (altura ** 2)
    return imcCalculado.round(1)
end
