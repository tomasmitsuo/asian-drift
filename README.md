# ASIAN DRIFT

Gabriel Kenji Yatsuda Ikuta - 00337491
Tomás Mitsuo Dias Ueda - 00344595

## CONTRIBUIÇÕES DE CADA INTEGRANTE:

##### GABRIEL KENJI YATSUDA IKUTA

- Movimentação com curva de beziér dos objeto
- Testes de Intersecção
- Instância dos objetos
- Lógica de movimentação do carro
- Lógica do jogo

##### TOMÁS MITSUO DIAS UEDA

- Iluminação dos objetos
- Interpolação
- Mapeamento de texturas
- Implementação das câmeras
- Lógica de movimentação do carro

### USO DE IAs:

O grupo utilizou tanto o ChatGPT quanto o Claude para mexer com a parte dos shaders. Desta forma, podemos dizer que foram usados IAs generativas para as seguintes atividades:

- Mapeamento das texturas
- Iluminação e Interpolação

Na parte da iluminação, as IAs foram utilizadas para sugerir parâmetros de Kd, Ka e Ks.
Na parte do UV Mapping, as IAs foram utilizadas para a manipulação dos parâmetros U e V.

Ambas as ferramentas foram úteis para as atividades em que foram utilizadas.

### DESCRIÇÃO DO PROCESSO DE DESENVOLVIMENTO:

O trabalho começou juntando os laboratórios 2,4 e 5 da disciplina. Depois disso, foram sendo implementadas partes do programa pelos integrantes do grupo de maneira tanto sincrona quanto assíncrona.
Ambos os alunos da dupla desenvolveram a lógica da aplicação. Durante o processo de desenvolvimento, os alunos realizaram reuniões para decidir quem realizaria determinada tarefa específica.

### USO DOS CONCEITOS APRENDIDOS NA DISCIPLINA:

#### CÂMERA

Foram implementadas 4 câmeras diferentes:

- Camera Look-at apontando para o carro
  ![Texto Alternativo](trabalho_fcg/imagens_readme/look_at.png)
- Câmera Livre
  ![Texto Alternativo](trabalho_fcg/imagens_readme/livre.png)
- Câmera traseira
  ![Texto Alternativo](trabalho_fcg/imagens_readme/traseira.png)
- Câmera travada atrás do carro
  ![Texto Alternativo](trabalho_fcg/imagens_readme/travada.png)

#### TRANSFORMAÇÕES GEOMÉTRICAS

Para criar o mapa, foram utilizadas as seguintes transformações geométricas:

- TRANSLAÇÃO: Para mover os objetos para seus respectivos lugares.
- ESCALAMENTO: Para modificar o tamanho do plano, especificamente.

As transformações geométricas controladas pelos usuários estão ligadas a movimentação do carro. O usuário tem controle da movimentação do carro por meio de TRANSLAÇÕES do objeto e de ROTAÇÕES do objeto.

#### ILUMINAÇÃO

Os objetos CARRO e MOEDA utilizaram a iluminação Blinn-Phong
![Texto Alternativo](trabalho_fcg/imagens_readme/jogo1.png)
![Texto Alternativo](trabalho_fcg/imagens_readme/moeda_jogo.png)

Os objetos PLANO, CASA, PISTA DE CORRIDA utilizaram a Iluminação de Lambert

#### COLISÕES

Os testes de intersecção implementadas foram:

CARRO-MOEDA: utilizou cubo-cubo
CARRO-PLANO: utilizou cubo-plano
CARRO-CASA: utilizou cubo-cubo

OBS: Existe uma colisão ponto-cubo que é chamada dentro da colisão cubo-cubo.

#### CURVAS DE BEZIÉR

A curva de beziér foi implementada na movimentação da MOEDA. Em que ela faz movimentos circulares.

#### TEXTURAS

TODAS AS TEXTURAS UTILIZADAS SÃO JPG TIRADOS DA INTERNET E LOCALIZAM-SE NA PASTA DATA.

OBJETOS QUE UTILIZARAM MAPEAMENTO PLANAR:

- CARRO
- MOEDA
- PLANO
- PREDIO

OBJETOS QUE UTILIZARAM MAPEAMENTO ESFÉRICO:

- PRÉDIO

### MANUAL:

#### OBJETIVO:

Coletar moedas que surgem no mapa.

#### MOVIMENTAÇÃO

##### W: acelera para frente

##### A: volante para a esquerda

##### S: Acelera para trás

##### D: volante para a direita

##### ESPAÇO: Freio

#### CÂMERA

##### SCROLL: zoom-in / zoom-out

##### MOUSE: Movimentação da câmera

##### E: Camera Livre

##### H: Camera presa no carro

##### C: Camera Traseira

### COMO  RODAR A APLICAÇÃO:

Existe um arquivo executável
