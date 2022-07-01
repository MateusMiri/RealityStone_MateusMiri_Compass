# Challenge - Sprint 4
Repositório criado para o Estágio de Automação em QA da [Compass.uol](https://compass.uol/).  
Estão presentes arquivos de exercícios do Ruby Koans, algoritmo de cálculo de IMC, com os testes unitários respectivos e algoritmo de uma Calculadora, também com os testes unitários das respectivas funcionalidades.  
Tudo aqui presente foi desenvolvido com Ruby, a partir dos conhecimentos adquiridos através das Master Classes e artigos disponibilizados pela Compass.uol.

## Pré-Requisitos
* Git v.2.37.0
* Ruby v.3.1.2
* Rspec v.3.11.0

## Instalação
* Git: Baixar o instalador da versão mais recente e respectiva ao seu Sistema Operacional através do [Site do Git](https://git-scm.com/download).
* Ruby: Baixar o instalador [Ruby+Devkit 3.1.2-1 (x64)](https://rubyinstaller.org/downloads/), ou a mais recente.  
  OBS: Se o seu Sistema Operacional for de 32 bits, você deverá fazer o Download da versão (x86).
* Rspec: A instalação pode ser feita através do comando  

  > gem install rspec

## Implementação e Versionamento
A Implementação e Versionamento dos arquivos presentes neste repositório foi realizada através do Git.  
Você pode utilizar este repositório em seu computador através do comando:
> git clone https://github.com/MateusMiri/RealityStone_MateusMiri_Compass.git  

OBS: Este comando irá baixar os arquivos deste repositório, por isso, você deve abrir o seu Prompt de Comando na pasta em que você deseja efetuar este download.  

Além deste comando, outros comandos utilizados e que você também pode achar útil foram:
> git init - Para inicializar um repositório git local na pasta selecionada.  
> git remote add "<link_do_repositorio>" - Para sincronizar o seu repositório local com o repositório do GitHub desejado.  
> git add "<nome_do_arquivo>" - Para adicionar arquivos a serem versionados.  
> git commit -m "<nome_do_commit>" - Para criar uma versão dos arquivos selecionados.  
> git push origin main - Para enviar os Commits locais para o Repositório remoto do GitHub.  

# Testes Unitários
Os testes unitários do algoritmo de IMC foram desenvolvidos como exemplo para estudo.  
Os testes unitários da Calculadora foram criados a partir do conteúdo estudado, abrangendo diferentes cenários possíveis de cada funcionalidade desenvolvida, tais como:
* Soma;
* Subtração;
* Multiplicação;
* Divisão;
* Potenciação;
* Raiz Quadrada;
* Raiz Cúbica;
* Cálculo de Área;
* Cálculo de Volume;
* Cálculo de Hipotenusa;
* Logarítmo de Base 2;
* Logarítmo de Base 10.

## Execução
### Ruby Koans
Você deverá abrir o Prompt de Comando (CMD, CMDER) na pasta Koans e utilizar o seguinte comando:
> ruby "<nome_do_arquivo>"  
> Ex: ruby about_arrays.rb  

### Testes da Calculadora
Você deverá abrir o Prompt de Comando (CMD, CMDER) na pasta do repositório baixado e executar o seguinte comando:
> bundle exec rspec TDD/specs/calculadora_specs.rb  

OBS: Para você conseguir executar os testes acima, você deve ter todos os Pré-Requisitos listados neste documento.

## Tecnologias Utilizadas
Para o desenvolvimento e implantação dos códigos aqui presentes, foi utilizado;
* Git e GitHub;
* Visual Studio Code e suas extensões, como Gherkin;
* Ruby;
* CMDER;
* Ruby Gems, como: rspec e pry;
* Prompt de Comando.

## Autor
### Mateus Miri
[LinkedIn](https://www.linkedin.com/in/mateus-miri-0a3a81232/)  
[GitHub](https://github.com/MateusMiri)  
E-mail: mateusmiri19@gmail.com  
  
## Créditos e Documentação
[Git](https://git-scm.com/doc)  
[Ruby](https://www.ruby-lang.org/pt/documentation/)  
[RSpec](https://rspec.info/documentation/)  
[RSpec - Relish](https://relishapp.com/rspec/docs/)  
[Ruby Koans](http://rubykoans.com/)  
[Compass.uol](https://compass.uol/)

## Licença
[MIT](https://choosealicense.com/licenses/mit/) - Copyright © 2022 Mateus Miri  

## Agradecimentos
Agradeço à toda equipe Compass pelo apoio no compartilhamento e em todas as partes do processo do estágio e programa de bolsas.  
Agradeço à toda turma do Programa de Bolsas, pela constante troca de ideias e ajuda durante o estágio.
