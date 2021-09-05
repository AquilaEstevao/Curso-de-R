
#CIENCIA DE DADOS COM R - INTRODUCAO

#CAP.1 (INTRODUCAO)

#CIENCIA DE DADOS: E o estudo e a analise de dados, com extracao de conhecimentos e criacao de novas informacoes. Ciencia da Computacao + Estatistica.
#WORKFLOW DA CIENCIA DE DADOS (FLUXO DE TRABALHO)
  #1-CARREGAR DADOS (IMPORT-IMPORTAR)
  #2-LIMPAR OS DADOS (TIDY-ARRUMAR)
  #3-TRANSFORMAR, VISUALIZAR E MODELAR (TRANSFORM-VISUALISE-MODEL=FASE EXPLORATORIA)
  #4-COMUNICAR O RESULTADO (COMMUNICATE)

#R: Conjunto de pacotes e ferramentas estat?siticas, linguagem de programacao free (open-source)
#R-STUDIO
  #1-EDITOR DE CODIGO (SCRIPT)
  #2-CONSOLE (RESULTADOS DOS COMANDOS)
  #3-EVERIONMENT (GUARDA TODOS OS OBJETOS CRIADOS NA SESSAO - MEMORIA RAM)
  #4-HISTORY (HISTORICO DE COMANDOS UTILIZADOS)
  #5-FILES (ARQUIVOS DO COMPUTADOR-DEFINI O DIRETORIO DE TRABALHO)
  #6-PLOTS (GRAFICOS GERADOS)
  #7-PACKAGES (PACOTES INSTALADOS)
  #8-HELP (menu Cheatsheets)
  #9-VIEWER (VISULAIZAR-SE LOCALMENTE CONEUDO WEB)

#STACK OVERFLOW - COMUNIDADE DE AJUDA TECNICA DA INTERNET
  #DICAS PARA AJUDA: Informar a Versao do R, Sistema Operacional, Exemplo replicabel e se a duvida ja nao foi abordada

#____________________________________________________________________________________________________
#EXERCICIOS

#1) Digite ocomando R.Version(). Oqueacontece?
R.Version()
#2) Encontreoitemdemenu Help e descubracomoidentificaravers?odoseuRStudio.
#3) Encontreoitemdemenu Cheatsheets. Oqueestemenuoferece?
        #Como o proprio nome diz, cheats sheets nada mais e do que, uma documentacao "folha" didatica das principais bibliotecas do R: https://rstudio.com/resources/cheatsheets/
#4) Entrenosite https://stackoverflow.com e digite [r] na caixadebusca.Oqueacontece?
        # E apresentado uma breve especificacao do software R
#############################################################################################################################################################################



#CAP.2 (CONCEITOS BASICOS)

  #COMANDOS

 2*3
 7*9+2*6
 2.3*4
 (50+7)/(8*(3-5/2))
 3^4

#SOURCE (Executa todo o script sem plotar os resultados de cada comando do script no Console)
#SOURCE WITH ECHO (Executa dodo o script plotando tos os resultados de cada comando do script no Console). ATALHO (CTRL+SHIFT+ENTER)
#RUN (Executa apenas a linha de comando do script onde o muse esta posicionado). ATALHO (CTRL + ENTER)

#COMENTARIOS DE CODIGOS (#) 
 
#CONSTRUINDO OBJETOS (VARIAVEIS)

 x<-15 #objeto (variavel x)
 x
 x+5
 x*x/2
 2^x
 y<-x/3 #objeto (variavel y)
 y
 carro <- x+y
 carro #ctrl +barradeespaco EXIBE OS OBJETOS EXISTENTES COM AS INICIAIS DIGITADAS

 #FUNCOES

 #FUNCOES DO R BASE: BLIBLIOTECAS NATIVAS DO R
  raiz.quadrada <- sqrt(16) #funcao para calcular raiz quadrada/ 1 parametro_argumento (16)
  raiz.quadrada
  round(5.3499999, 2) #funcao para arredondamento/ 2 parametros numero e casas
  round(digits = 2, x=5.3499999)#nomeando e explicitando os parametros/argumentos fora da sequencia
  

# ? para saber os parametros corretos em cada funcao
  ?round
  ?rnorm
  ??inner_join

  m<-3.141593
  round(m, 3) #utilizando objeto em parametros de funcoes
  ceiling(m) #utilizando objeto em parametros de funcoes
  floor(m) #utilizando objeto em parametros de funcoes

#ALGUMAS FUNCOES ESTATISTCAS BASICAS
 sum(1,1,1,1) #soma de valores
 mean(2,3,6,2,5) #media
 var(2) #variancia
 median(2,3,6,2,5) #mediana
 summary(2, 3, 6, 2, 5) #resumo estatistico
 quantile(2) #quantis

#PACOTES
 install.packages("dplyr") #instalando um pacote
  #dplyr PACOTE DE MANIPULACAO DE DADOS

library(dplyr) #carregando pacotes na memoria para utilizacao

library("dplyr") #carregando pacotes na memoria para utilizacao

#A biblioteca TIDYVERSE possui os pacotes (ggplot2, tibble, tidyr, readr, purrr e dplyr)

install.packages("tidyverse")
#_____________________________________________________________________________________________________________________________________________________________________________
#EXERCICIOS:
#P1. Quais as principais diferencas entre um script e o console?
  #R1. No script podemos ordenar a sequencia de comandos.
#P2. Digite '?dplyr'. O que acontece? E se digitar '??dplyr'? Para que serve esse pacote?
  #R2. '?dplyr' se o pacote ja estiver instalado e  '??dplyr' se o pacote nao estiver instalado. 
  #E apresentado descricao do pacote em Help.Serve para manipulacao de dados
  ?dplyr 
  ??dplyr 
#P3. Para que serve a funcao rnorm()? Quais os seus parametros/atributos?
  #R3. Funcao estatisitca para calcular densidade e funcao de distribuicao normal
  ?rnorm() #rnorm(n, mean = 0, sd = 1)
rnorm(n = 30, mean = 9, sd = 2)
#P4. Para que serve a funcao rm()? Quais os seus parametros/atributos?
  #R4. Funcao para remover objetos.rm    (..., list = character(), pos = -1, envir = as.environment(pos), inherits = FALSE)
  ?rm()
rm(carro)
##############################################################################################################################################################################



#CAP.3 (LENDO OS DADOS)

 #Garantir boa fonte de dados. Dados ruins, inconsistentes, nao confiaveis ou mal formatados podem gerar muita dor de cabeca para o analista

 #Classificacao de estrutura de dados.
   #Dados estruturados
      #Informacoes organizadas (atributos e variaveis) em colunas e linhas (registros e itens)
   #Dados semiestruturados
      #dados que tambem possuem uma organizacao fixa, porem nao seguem o padrao de estrutura linha/coluna (JSON,XML,HTML,YAML)
   #Dados nao estruturados
      #cada conjunto de informacoes possui uma forma unica (e-mail, twitters, PDF, imagens e videos).

#Definindo Local dos Dados

  getwd() #Get Wrking Directory (Carrega Local de trabalho do R)
  
  setwd("C:/Users/Aquila Estevao/Documents")
  #Set Working Directory (Muda o diretorio padrao do R para leitura e escrita)
 
# rm () ---- Exclui objetos criados
  
install.packages("tidyverse")

library(tidyverse)
  
library("readr") #Pacote especifico para leitura dos principais tipos de arquivos (A bliblioteca tidyverse ja possui o pacote readr).
  
  senado <- read_csv("C:/Users/AquilaEstevao/Documents/2.CURSOS/CURSO DE R/Ciencia de dados com R/senado.csv") #Esse comando carrega o conteudo do arquivo senado.csv para oobjeto(variavel)senado
  
  head(senado) #Head funcao para ver a cabeca dos dados (comeco da amostra)

  tail(senado) #Tail funcao para ver o rabo dos dados (fim da amostra)

class(senado) #Class funcao para verificar o tipo do objeto (sua classe)

str(senado) #Verificar a estrutura do objeto, seus campos quando aplicaveis
senado
summary(senado) #Estatisticas basicas do objeto (media, mediana, quantis, minimo, maximo etc...)

#LENDO ARQUIVO COM DELIMITADOR
read_delim('caminho/do/arquivo/arquivo_separado_por#.txt', delim = '#')

#LENDO ARQUIVO DE COLUNA FIXA: coluna 1 de tamanho 5,coluna 2 de tamanho 2 e coluna 3 de tamanho 10
read_fwf('caminho/do/arquivo/arquivo_posicional.txt', col_positions = fwf_widths(c(5, 2, 10), c("col1", "col2", "col3")))

senado
#_________________________________________________________________________________________________
#EXERCICIOS:
# 1) Leia o arquivo TA_PRECOS_MEDICAMENTOS.csv, cujo separador e uma barra |.

remedio <- read_delim("C:/Users/AquilaEstevao/Documents/2.CURSOS/CURSO DE R/Ciencia de dados com R/TA_PRECOS_MEDICAMENTOS.csv", delim = '|')
remedio
rm(remedio)

# 2) Leia o arquivo de colunas fixas fwf-sample.txt, cujo primeira coluna (nome) tem tamanho vinte, a segunda (estado) tem tamanho dez e a terceira (codigo tem tamanho doze).

fwf <- read_fwf("C:/Users/AquilaEstevao/Documents/2.CURSOS/CURSO DE R/Ciencia de dados com R/fwf-sample.txt", col_positions = fwf_widths(c(20, 10, 12), c("NOMES", "ESTADO", "CODIGO")))
fwf
rm(fwf)

# 3) Investigue os parametros das funcoes de leitura do R base: read.csv(), read.delim() e read.fwf()
# R:
# read.csv(file, header = TRUE, sep = ",", quote = "\"", dec = ".", fill = TRUE, comment.char = "", ...)
# read.delim(file, header = TRUE, sep = "\t", quote = "\"", dec = ".", fill = TRUE, comment.char = "", ...)
# read.fwf(file, widths, header = FALSE, sep = "\t", skip = 0, row.names, col.names, n = -1, buffersize = 2000, fileEncoding = "", ...)
#############################################################################################################################################################################



#CAPITULO 4 (MANIPULANDO OS DADOS)

#Manipulacao de dados - transformar, reestruturar, limpar, agregar e juntar os dados.
#80% Do trabalho e encntrar uma boa fonte de dados, limpar e preparar os dados, sendo que os
#20% restantes seriam o trabalho de aplicar modelos e ralizar alguma analise popriamente dita.

#Tipos Basicos de Variaveis e Colunas (numeric, character, logical, intager)

inteiro <- 928 #integer = numeric
outro.inteiro <- 5e2
decimal <- 182.93
caracter <- 'exportacao'
logico <- TRUE
outro.logico <- FALSE

inteiro
outro.inteiro
decimal
logico
outro.logico

class(inteiro) #para ver o tipo de cada uma
dim(senado) #Quantidade de linhas e colunas de um data frame

#Tipos Complexos (vector, array, matrix, list, data.frame e factor)
#Data frame: Armazena conjuntos de dados estruturados em linhas e colunas nomeadas com a mesma quantidade de linhas
#Vetores sao sequencias unidimensionais de valores de um mesmo tipo
# c() funcao de combinacao de valores c() (combine). Esta funcao vai combinar todos os parametros em um unico vetor

vetor.chr <- c('tipo1', 'tipo2', 'tipo3', 'tipo4')
vetor.chr
vetor.num <- c(1, 2, 5, 8, 1001)
vetor.num
vetor.num.repetidos <- c(rep(2, 50))#Usando funcao para repetir numeros
vetor.num.repetidos
vetor.num.sequencia <- c(seq(from=0, to=100, by=5))#Usando funcao para criar sequencia
vetor.num.sequencia
vetor.logical <- c (TRUE, TRUE, TRUE, FALSE, FALSE)
vetor.logical

#Cada coluna de um DATA.FRAME e um VETOR, pois cada coluna so pode ter registros de unico tipo.
#Criando um data.frame:
#1-cria-se diferentes vetores
nome <- c('Joao','Jose','Maria','Joana')
idade <- c(45, 12, 28, 31)
adulto <- c(TRUE, FALSE, TRUE, TRUE)
uf <- c('DF','SP','RJ','MG')
#Cada vetor e uma combinacao de elementos de um MESMO tipo de dados
#Sendo assim, cada vetor pode ser uma coluna de um data.frame
clientes <- data.frame(nome, idade, adulto, uf)
clientes
str(clientes)


#Funceos para Conversoes de tipos de variaives:
class('2015')
as.numeric('2015')
class(55)
as.character(55)
class(3.14)
as.integer(3.14)
as.numeric(TRUE)
as.numeric(FALSE)
as.logical(1)
as.logical(0)

#Coercao de tipos pelo R: Realizando operacoes entre dois tipos diferentes, o R trabalha tentando corrigor
7 + TRUE 
2015 > "2016"
"2014" < 2017
#Em alguns casos a coercao ira falhar ou dar resultado indesejado
6 > "100"
"6" < 5
1 + "1" 

#E fortemente recomendado q as conversoes sejam feitas de maneira explicitas

#OUTROS TIPOS DE VARIAVEIS:

#VETOR:
#Descricao = Colecao de elementos simples. Todos os elementos precisam ser do mesmo tipo basico de dado
#Dimensoes = 1 (unidimensional)
#Homogeneo = Sim

#ARRAY:
#Descricao = Colecao que se parece com o vetor, mas e multidimensional
#Dimensoes = n
#Homogeneo = Sim

#MATRIX:
#Descricao = Tipo especial de array com duas dimensoes
#Dimensoes = 2 (Bidimensional)
#Homogeneo = Sim

#LIST:
#Descricao = Objeto Complexo com elementos que podem ser de diferentes tipos
#Dimensoes = 1 (unidimensional)
#Homogeneo = Nao

#DATA.FRAME:
#Descricao = Especial de lista, onde cada coluna e um vetor de apenas um tipo e todas as colunas tem o mesmo numero de registros. E o tipo mais utilizado para se trabalhar com dados
#Dimensoes = 2 (Bidimensional)
#Homogeneo = Nao

#FACTOR:
#Descricao = Tipo especial de vector, que so contem valores predefinidos (levels) e categoricos (charecters). Nao e possivel adicionar novas categorias sem criacao de novas levels 
#Dimensoes = 1 (unidimensional)
#Homogeneo = Nao

#VALORES FALTANTES E O 'NA'
#summary(): pode ser usado para averiguar a ocorrencia de NA
#is.na(): realiza um teste para saber se a variavel/coluna possui um valor NA. ertorna TRUE se for NA e FALSE se nao for.
#complete.cases(): retorna TRUE para as linhas em que todas as colunas possuem valores validos (preenchidos) e false para as linhas em que, em alguma coluna, existe um NA.
#Algumas funcoes possuem o argumetnto na.rm, ou semelhantes, para desconsiderar NA no calculo 

data("airquality") #carrega uma base de dados pre-carregada no R
summary(airquality) #verificando ocorrencia de NA

is.na(airquality$Ozone)
complete.cases(airquality$Ozone)

#ESTRUTURA DE CONSTORLE DE FLUXO
#sao loops e condicoes

#IF E ELSE (Estrutura condicional - padroes de logica)

#Esta estrutura so opera variaveis uma por uma, mais usada para comparacoes fora dos dados:
if(variavel >= 500) {
  #executa uma tarefa se operacao resultar TRUE
} else {
  #executa outra tarefa se operacao resultar FALSE
}

#Esta estrutura opera vetores, consegue fazer a comparacao para todos os elementos e mais usada para comparacoes dentro dos dados, com colunas, vetores e linhas:
ifelse(variavel >= 500, 'executa essa tarefa se TRUE', 'executa outra se FALSE') #A estrutura [if_else()] pertence ao pacote dplyr

#Qualquer uma dessas estrutras pode ser encadeada:

a <- 9823
a

if(a >= 10000) {
  b <- 'VALOR ALTO'
} else if (a < 10000 & a >=1000) {
  b <- 'VALOR MEDIO'
} else if(a < 1000){
  b <- 'VALOR BAIXO'
}
b

#OU AINDA:
c <- ifelse(a >= 10000, 'VALOR ALTO', ifelse(a< 10000 & a >= 1000, 'VALOR MEDIO', 'VALOR BAIXO'))
c

#LOOPS:

#FOR (Usado para realizar uma seria de ordens para uma determinada sequencia ou indices (vetor))

for (i in c(1, 2, 3, 4, 5)) {
  print(i^2)
}

lista.de.arquivos <- list.files('Ciencia de dados com R/dados_loop')#lista todos os arquivos de uma pasta
is.vector(lista.de.arquivos)

for (i in lista.de.arquivos) {
  print(paste('Leia o arquivo:', i))
  #exemplo: read_delim(i, delim="|")
}

#Numeros divisiveis por 29 e 3:
for (i in 1:1000) {
  if((i %% 29 == 0) & (i %% 3 == 0)){
    print(i)
  }
}

#WHILE (tambem e uma estrutura de controle de fluxo de tipo loop, mais apropriado para eventos de automacao ou simulacao)
i <- 1
while (i <= 5) {
  print(i)
  i <- i + 1
}
?list.files
automatico <- list.files('Ciencia de dados com R/automatico/')
length(automatico) == 0
while (length (automatico) == 0) {
  automatico <- list.files('Ciencia de dados com R/automatico/')
  if(length(automatico) > 0){
    print('O arquivo chegou!')
    print('Inicio a leitura dos dados')
    print('Faz a manipulacao')
    print('Envia email informando conclusao dos calculos')
  } else {
    print('aguardando arquivo...')
    Sys.sleep(5)
  }
  
}

#FUNCOES ("Ecapsulam" Sequencia de comandos e intrucoes, uma estrutura nomeada, que recebe parametros para incicar sua execucao e retorna um resultado ao final)

sua_funcao <- function(parametro1, parametro2){
  #sequencia de tarefas
  return(valores_retornados)
}

#chamada da funcao
sua_funcao

montanha_russa <- function(palavra){
  retorno <- NULL
  for(i in 1:nchar(palavra)) {
    if(i %% 2 == 0){
      retorno <- paste0(retorno, tolower(substr(palavra, i, i)))
    } else {
      retorno <- paste0(retorno, toupper(substr(palavra, i, i)))
    }
  }
  return(retorno)
}

montanha_russa('teste de funcao: letras maiusculas e minusculas')
montanha_russa('CONSEGIU ENTENDER?')
montanha_russa('E facil usar funceos!')



#MANIPULACAO COM R BASE(Conceitos do R base precisam ser dominados)
#Trabalhando com colunas de um data.frame

head(airquality$Ozone)

tail(airquality$Ozone)

class(airquality$Ozone) #informa o tipo de coluna

is.vector(airquality$Ozone) #apenas para verificar que cada coluna de um data.frame e um vector

unique(senado$Party) #Funcao que retorna apenas os valores unicos, sem repeticao, de um vetor

#LEMBRETE - data.frame e um conjunto de daods HETEROGENEOS, pois cada coluna pode ser de um tipo, e BIDIMENSIONAL, por possuir apenas linhas e colunas.
#LEMBRETE - vetor e um conjunto de dados HOMOGENEO, pois so pode ter valores de um mesmo tipo, e UNIDIMENSIONAL


vetor <- c(seq(from=0, to=100, by=15)) #vetor de 0 a 100, de 15 em 15
vetor #lista todos os elementos

vetor[1]#Seleciona um elemento no vetor na posicao desejada 
vetor[2]
vetor[3]
vetor[4]
vetor[5]
vetor[6]
vetor[7]
vetor[9]

#Selecionando elementos de um data.frame

senado[10, ] #linha 10, todas as colunas

senado[72, 3] #linha 72, coluna 3

senado[c(100, 200), c(2, 3, 4)] #Seleciona mais de uma linha e coluna em um data.frame

senado[c(10:20), ] #Seleciona da linha 10 a linha 20 de todas as colunas

senado[1:10, c('SenatorUpper', 'Party', 'State')] #Seleciona da linha 1 a linha 10 de 3 colunas

head(senado[senado$Party == 'PDT', ]) #Selecao condicional - Retorna todas as linhas onde o registro da Coluna 'Party' for igual a 'PDT'
tail(senado[senado$Party == 'PDT', ])

senado[c(senado$Party == 'PDT'), ]

#OPERADORES LOGICOS:
# == igal a :compara dois objetos e se forem iguais retorna TRUE, caso contrario, FALSE
# != diferente :compara dois objetos e se forem diferentes retorna TRUE, caso contrario, FALSE
# | ou (or) :compara dois objetos, se um dos dois for TRUE, retorna TRUE, se os dois forem FALSE, retorna FALSE
# & e (and) :compara dois objetos, se os dois forem TRUE, retorna TRUE, se um dos dois ou os dois forem FALSE, retorna FALSE
# >, >=, <, <= (maior, maior ou igual, menor, menor ou igual) :compara grandeza de dois numeros e retorna TRUE ou FALSE conforme a condicao

#PACOTE DPLYR:
#Tarefas basicas da manipulacao de dados, agregar, sumarizar, filtrar, ordenar, criar variaveis, joins e etc...
install.packages('dplyr') #Biblioteca ja inclusa no pacote 'tidyverse' e pode ser carregada individualmente.
library(dplyr)
?dplyr

#Funcoes para as principais tarefas da manipulacao (Principais funceos do dplyr):
#select()
#filter()
#arrange()
#mutate()
#group_by()
#summarise()
#slice()
#rename()
#transmutate

# O operador %>% encadeia as chamadas de funcoes (Apenas no pacote tidyverse). Um resultado da operacao anterior sera a entrada para a nova operacao.

# select() :usada para selecionar variaveis (colunas, campos, features...) do seu data.frame.
senadores.partido <- senado %>% select(SenatorUpper, Party)
head(senadores.partido)
senadores.partido <- senado %>% select(-SenatorUpper, -Party) #selecao negativa - colunas que nao quer
head(senadores.partido)

# filter() :escolher apenas alguns campos, apenas algumas linhas utilizando alguma condicao com filtragem
senadores.pdt.df <- senado %>%
  select(SenatorUpper, Party, State) %>%
  filter(State == 'RJ', Party == 'PMDB') %>%
  distinct() #semelhante ao unique(), traz registros unicos sem repeticao
  head(senadores.pdt.df)

# mutate() :para criar novos campos
  senadores.pdt.df <- senado %>%
    select(SenatorUpper, Party, State) %>%
    filter(Party == 'PMDB') %>%
    distinct()
  head(senadores.pdt.df)

# group_by() :separa seus dados nos grupos que vc selecionar
# summarise() :operacoes de agregacao de linhas limitadas a esse grupo
  install.packages("nycflights13") #como exemplo utilizaremos os dados disponiveis no pacote nycflights13
  library(nycflights13)
  data("flights")
  str(flights)
  
 # obtendo a media de atraso da chegada para cada mes. primeiro agrupamos no nivel necessario e depois sumarizamos:
  media <- flights %>%
    group_by(month) %>%
    summarise(arr_delay_media = mean(arr_delay, na.rm = TRUE),
              dep_delay_media = mean(dep_delay, na.rm = TRUE))
  media

# arrange() serve para organizar os dados em sua ordena??o:
  media <- flights %>%
    group_by(month) %>%
    summarise(arr_delay_media = mean(arr_delay, na.rm = TRUE),
               dep_delay_media = mean(dep_delay, na.rm = TRUE)) %>%
    arrange(dep_delay_media)
  media
  
# slice()
# rename()
# transmute()

#VERBETES DO dplyr E O OPERADOR %>%

#EXERCICIOS:
  
  #1) Verifique a exist?ncia de registros NA em State. Caso existam, crie um novo data.frame senado2 sem esses registros e utilize-o para os pr?ximos exercicios. Dica: is.na(State)
  #Excluir variavel
  senado2 <- senado[is.na(senado$State)==FALSE, ]
  is.na(senado2$State)

  #2) Quais partidos foram parte da coalizao do governo? E quais nao foram? DICA: filter()
  
  coa <- senado2 %>%
    select(GovCoalition, Party) %>%
    filter(GovCoalition == TRUE) %>%
    distinct() #semelhante ao unique(), traz registros unicos sem repeticao
  # Partidos de coalizao (PT, PRB, PR, PMDB, PP, PSB, PTB, PCdoB e PDT)
  
  ncoa <- senado2 %>%
    select(GovCoalition, Party) %>%
    filter(GovCoalition == FALSE) %>%
    distinct() #semelhante ao unique(), traz registros unicos sem repeticao
  # Partidos de nao coalizao (PSDB, PDT, PFL/DEM, PSOL, S/PART, PSC, PV1 e PTB)
  
  #3) Quantos senadores tinham cada partido? Qual tinha mais? Qual tinha menos? Dica: group_by(), summarise() e n_distinct()
  senadores <- senado2 %>%
    group_by(Party) %>%
    summarise(QntSenadores = n_distinct(SenatorUpper, na.rm = FALSE)) %>%
    arrange(-QntSenadores)
  # Partido com mais senadores (PMDB) com 27.
  # Partido com menos senadores (PCdoB, PP, PSOL e PV1) com 1.
  
  #4) Qual partido votou mais 'sim'? E qual votou menos 'sim'? Dica: sum(Vote == 'S')
  votos <- senado2 %>%
    group_by(Party) %>%
    summarise(QntVotos = sum(Vote == 'S', na.rm = FALSE)) %>%
    arrange(-QntVotos)
  #PMDB votou mais com 1727 'S' e S/PART votou menos com 7 votos 'S' 
  
  #5) Qual regiao do pais teve mais votos 'sim'? Primeiro sera necessario criar uma coluna regiao para depois contabilizar o total de votos regiao
#Dica: mutate(Regiao = ifelse(State %in% c("AM", "AC", "TO", "PA", "RO", "RR"), "Norte", 
  #ifelse(State %in% c("SP", "MG", "RJ", "ES"), "Sudeste", 
  #ifelse(State %>% c("MT", "MS", "GO", "DF"), "Centro-Oeste", 
  #ifelse(State %>% c("PR", "SC", "RS"), "Sul", "Nordeste")))))
  regiao <- senado2 %>%
    mutate(Regiao = ifelse(State %in% c("AM", "AC", "TO", "AP", "PA", "RO", "RR"), "Norte",
                        #ifelse(State %in% c("MA", "PI", "CE", "RN", "PE", "PB", "SE", "AL", "BA"), "Nordeste",
                        ifelse(State %in% c("SP", "MG", "RJ", "ES"), "Sudeste", 
                        ifelse(State %in% c("MT", "MS", "GO", "DF"), "Centro-Oeste", 
                        ifelse(State %in% c("PR", "SC", "RS"), "Sul", "Nordeste"))))) %>%
    group_by(Regiao) %>%
    summarise(QntVotosRe = sum(Vote == 'S', na.rm = FALSE)) %>%
    arrange(-QntVotosRe)
  # O Nordeste foi a regiao com a maior quantidade de votos 'S'
###################################################################################################################################################################################################  



#CAPITULO 5 (LIMPANDO DADOS)

  #Unica variavel em uma coluna e uma unica observacao em uma linha
  #Dados bem estruturados: Cada colluna deve ser uma unica variavel e cada linha deve ser uma unica observacao
  
#O formato idela dos dados: 
library(tidyverse)
table1  
table2
table3
table4a  
table4b           
table5

#Tres pacotes em conjunto para limpeza de dados dplyr - tidyr - stringr

#Pacote TIDYR - pacote facilmente conectado com as funcoes do dplyr por meio do conector %>%
install.packages("tidyr")
library(tidyr)
?tidyr

#verbetes basicos do tidyr:
#gather()
#separate()
#spread()
#unite()
#R base, malt() e cast()


#Gather: 
#Agrupar duas ou mais colunas, o resultado do agrupamento sempre sera duas colunas(Reduz a quantidade de colunas 
#e aumenta a quantidade de linhas)

data("USArrests")
str(USArrests)
head(USArrests)
tail(USArrests)

#Transformando o nome das linhas em colunas
USArrests$State <- rownames(USArrests)
head(USArrests)

usa.long <- USArrests %>%
  gather(key = "tipo_crime", value = "valor", -State) 
#No primeiro parametro e informado a chave, q gaurdava as antigas colunas (Uma coluna com nome q atribuirmos 
#guardara o nome que era de cada coluna na variavel) e o segundo e informado o valor de cada uma das antigas 
#colunas (Valor de cada tipo da coluna) pega toodas as colunas (Menos State) e transforma apenas em uma coluna

head(usa.long)
tail(usa.long)


#Spread:
#Operacao oposta a do (gether), os valores de uma coluna viram o nome das novas colunas e os valores de outra 
#viram valores de cada registro nas novas colunas

head(table2)
table2.wide <- table2 %>%
  spread(key = type, value = count)

head(table2.wide)
tail(table2.wide)

#Separate:
#Utilizado para separar duas variaveis q estao em uma mesma coluna

head(table3)
table3.wide <- table3 %>%
  separate(rate, into = c("cases", "population"), sep = '/')

head(table3.wide)
tail(table3.wide)

#Unite:
#Operacao oposta a do (separate), transforma duas colunas em apenas uma. Mais utilizado para construcao de relatorios 
#finais ou tabelas para analise visual

head(table2)
table2.relatorio <- table2 %>%
  unite(type_year, type, year) %>% 
  #No primeiro parametro definimos a coluna q desejamos criar, os demais sao as colunas q desejamos unir 
  spread(key = type_year, value = count, sep = '_') 
  #Definimos qual a coluna q sera os valores para todas as colunas criadas e separador para o nome de cada coluna

head(table2.relatorio)

#Manipula??o de texto
#Variaveis categoricas baseadas em texto

a <- 'texto 1'
b <- 'texto 2'
c <- 'texto 3'
paste(a, b, c) #Funcao do R base para concatenar variaveis textuais q forem informadas
paste(a, b, c, sep = '-')
paste(a, b, c, sep = ';')
paste(a, b, c, sep = '---%---')

#Pacote stringr:
#Pacote fora do tidyverse
install.packages('stringr')
library(stringr)
?stringr
?str_trim
#Funcao str_sub()
#Extrai parte de um texto
cnae.texto <- c('10 Fabrica??odeprodutosaliment?cios', 
                '11 Fabrica??odebebidas',
                '12 Fabrica??odeprodutosdofumo', 
                '13 Fabrica??odeprodutost?xteis',
                '14 Confec??o deartigosdovestu?rioeacess?rios',
                '15 Prepara??odecourosefabrica??odeartefatosdecouro,artigosparaviagemecal?ados',
                '16 Fabrica??odeprodutosdemadeira',
                '17 Fabrica??odecelulose,papeleprodutosdepapel')
cnae.texto
cnae <- str_sub(cnae.texto, 0, 2)
cnae
texto <- str_sub(cnae.texto, 4)
texto

#Funcao str_replace() e str_replace_all()
#Substituem determinados caracteres
telefones <- c('9931|9512', '8591|5892', '8562|1923')
telefones
str_replace(telefones, '|', '/')

cnpj <- c('19.702.231/9999-98', '19.498.482/9999-05', '19.499.583/9999-50', '19.500.999/9999-46')
str_replace_all(cnpj, '\\.|/|-', '')

#Regex:
#Expressoes Regulares. Sao simbolos especiais utilizados em funcoes textuais para reconheceimento de padrao
#Ver em: http://turing.com.br/material/regex/introducao.html
#Ver em: https://regexone.com/

#EXERCICIOS:
  
  #1) Utilizando senado.csv, monte uma tabela mostrando a quantidade de votos sim e nao por cooalisao, no formato wide ("sim" e "nao" sao linhas e "coalisao" ou "nao coalisao" sao colunas).
    #DICA: mutate(tipo_coalisao = ifelse(GovCoalition, 'Coalisao', 'Nao Coalisao'))

        senadoCal <- senado %>%
          mutate(tipo_coalisao = ifelse(GovCoalition, 'Coalisao', 'Nao Coalisao')) %>%
          mutate(tipo_voto = ifelse(Vote == 'S', "VotosSim", "VotosN?o"))
                  
        senadoCal <- senado %>%
          mutate(tipo_coalisao = ifelse(GovCoalition, 'Coalisao', 'Nao Coalisao')) %>%
          #mutate(tipo_voto = ifelse(Vote == 'N', 'VotosNao', 'VotosSim')) %>%
          #select(tipo_coalisao) %>%
          group_by(tipo_coalisao) %>%
          summarise(VotosNao = sum(Vote == 'N', na.rm = TRUE)) #%>%
          #summarise(VotosSim = sum(Vote == 'S', na.rm = TRUE))
        # arrange(-QntVotosN)
                
      senado.wide <- senadoCal %>%
        spread(key = tipo_coalisao, value = Vote)
          

  #2) Utilizando o dataframe abaixo, obtenha o resultado a seguir:
    #DICA: separate(), str_replace_all(), str_trim(), str_sub()
      
      # login           dominio  telefonedd
      # joaodasilva     gmail    99831-948261
      # rafael          hotmail  8976-291332
      # maria           uol      9661-123462
      # juliana.morais  outlook  40192-581215
      
      cadastros <- data.frame(
        email = c('joaodasilva@gmail.com', 'rafael@hotmail.com', 'maria@uol.com.br', 'juliana.morais@outlook.com'),
        telefone = c('(61)99831-9482', '32 89762913', '62-9661-1234', '15-40192.5812'))
      
      cadastros
     
      cadastros.email <- cadastros %>%
        separate(email, into = c('login', 'dominio'), sep = '@')
      cadastros.email
      
      #cadastros.tel <- cadastros.email %>%
        cadastros.tel <- str_replace_all(cadastros.email$telefone, '\\.|/|-(', '')
        cadastros.tel
####################################################################################################################################################################################################  



#CAPITULO 6 (JUNTANDO DADOS)
        #Existem duas grandes formas de juncao de dados (UNIAO) e (CRUZAMENTO)
        #UNIAO - Para que seja possivel, os dois conjuntos de dados precisam ter os mesmos campos
        #JUNCAO - para que seja possivel, os dois conjuntos precisam ter pelo menos um campo em comum

#Uniao de dados (Union)
        
#rbind
  dados2016 <- data.frame(ano = c(2016, 2016, 2016), valor = c(938, 113, 1748), produto = c('A', 'B', 'C'))
  dados2017 <- data.frame(valor = c(8400, 837, 10983), produto = c('H', 'Z', 'X'), ano = c(2017, 2017, 2017))        
  dados.finais <- rbind(dados2016, dados2017)  
  dados.finais
  #A uniao e a forma mais simples de juntar os dados
  
#Cruzamento de Dados (JOIN)
  # merge() - Funcao do Rbase para joins
  # dplyr - Pacote para trabalhar com joins
  
#Inner Join (Ou apenas join)
  #Matem no resultado apenas as linhas presentes nos dois conjuntos de dados que estao sendo cruzados
  #A tabela final contera as linhas com as chaves que estiverem em AMBOS os conjuntos de dados
  #As linhas com chaves que n?o est?o em ambos serao descartadas
  
  band_members
  band_instruments  
  
  str(band_members)  
  str(band_instruments)  
  
#Vamos juntar os dois conjuntos com um (Inner Join)
  band_members %>% inner_join(band_instruments) #O dplyr advinhou a coluna chave pelo 'nome'
  
  band_instruments2 
  str(band_instruments2) #O nome da coluna e diferente
  
  band_members %>% inner_join(band_instruments2, by = c('name' = 'artist')) 
  #Tivemos que especificar qual a coluna chave para o join acontecer
  
  #Outro exemplo de join
  empregados <- read_csv("C:/Users/AquilaEstevao/Documents/2.CURSOS/CURSO DE R/Ciencia de dados com R/Emplyees.csv")
  departamentos <- read_csv("C:/Users/AquilaEstevao/Documents/2.CURSOS/CURSO DE R/Ciencia de dados com R/Departments.csv")
  
  str(empregados)  
  str(departamentos) 
  
  empregados
  departamentos

  final <- empregados %>%
    inner_join(departamentos, by = c('Employee' = 'Manager'))
  
  final  
  
  #Existem tres tipos basicos de outer join
    # left outer join   -  laft join
    # right outer join  -  right join
    # full outer join - full join

  #Left Outer Join
    #Todos os registros do conjunto a 'esquerda' estarao presentes no resultado final, alem dos registros a direita q coincidierem na chave
  
  band_members
  band_instruments2
  band_members %>% left_join(band_instruments2, by = c('name' = 'artist'))
  
  empregados
  departamentos
  final2 <- empregados %>%
    left_join(departamentos, by = c('Employee' = 'Manager'))

  final2  
  
  #Right Outer Join
    #Todos os registros do conjunto a 'direita' estarao presentes no resultado final, alem dos registros a esquerda q coincidierem na chave
  
  band_instruments2
  band_members
  band_instruments2 %>% right_join(band_members, by = c('artist' = 'name'))
  
  departamentos
  empregados
  final3 <- departamentos %>%
    right_join(empregados, by = c('Manager'='Employee'))

  final3  
  final2

  #Full Outer Join
    #Nenhum dos conjuntos de dados perdera registros no resultado final
    #Quando as chaves forem iguais, todos os campos estarao preenchidos
    #Quando nao houver ocorrencia das chaves em amos os lados, sera infomado NA em qualquer um deles
  
  band_members
  band_instruments2
  band_members %>% full_join(band_instruments2, by = c('name'='artist'))

  departamentos
  empregados
  final4 <- departamentos %>%
    full_join(empregados, by = c('Manager'='Employee'))
  
  final4

  
#EXERCICIOS:
  
  #1) Utilizando as bases de dados do pacote nycflights13, encontre a tabela abaixo que mostra quais aeroportos
  #   (origem e destino) tiveram mais voos. Ser? necess?rio utilizar o dataframe flights e airports.
  #   Dica: primeiro descubra as chaves.
  
  
  library('nycflights13')
  data("flights")
  data("airports")
  str(flights)
  str(airports)
    
  tabela_voos <- flights %>%
    full_join(airports, by = c('origin' = 'faa'))
  
  tabela_voos <- flights %>%
    full_join(tabela_voos, by = c('dest' = 'faa'))

  #2) Utilizando os dataframes abaixo,chegue no resultado a seguir
    
  participantes <- data.frame(
    Nome = c('Carlos', 'Maur?cio', 'Ana Maria', 'Rebeca', 'Patr?cia'),
    Estado = c('Bras?lia', 'Minas Gerais', 'Goi?s', 'S?o Paulo', 'Cear?'),
    Idade = c(23, 24, 22, 29, 28)
  )
  aprovados <- data.frame(
    Nome = c('Carlos', 'Patr?cia'),
    Pontuacao = c(61, 62)
  )
  eliminados <- data.frame(
    Nome = c('Maur?cio', 'Ana Maria', 'Rebeca'),
    Pontuacao = c(49, 48, 48)
  )
  participantes
###################################################################################################################################################################################################  



#CAPITULO 7 (ESCREVENDO DADOS)
  
  #Escrevendo CSV
    # write.table() funcao do Rbase para escrever um arquivo de dados em CSV
    
  #Salvar objetos com o Rbase
  participantes <- data.frame(
    Nome = c('Carlos', 'Maur?cio', 'Ana Maria', 'Rebeca', 'Patr?cia'),
    Estado = c('Bras?lia', 'Minas Gerais', 'Goi?s', 'S?o Paulo', 'Cear?'),
    Idade = c(23, 24, 22, 29, 28)
  )
  
  save(participantes, file = 'participantes.Rdata')
  
  rm(participantes)

  load('participantes.Rdata')  
  
  str(participantes)  
  
  # openxlsx - outro pacote para escrevar dados em planilhas
  install.packages('openxlsx')
  library(openxlsx)  
  ?openxlsx  
  
  write.xlsx(senado, 'C:/Users/AquilaEstevao/Downloads/senado.xlsx')
  
  
#EXERCICIOS:
  
  #1) Escolha qualquer dataframe ja trabalhado ate agora e escreva-o em csv
  
  write.table(flights, file = 'C:/Users/AquilaEstevao/Downloads/voos.csv')
  
  #2) Experimente algo semelhante ao exemplo a seguir: escolha qualquer dataframe, save-o como Rdata,
  #   remova-o como rm() e, em seguida,carregue-o novamente como load()
  
  save(receita_ano, file = 'receita_ano.Rdata')
  rm(receita_ano)
  load('receita_ano.Rdata')
###################################################################################################################################################################################################  



#CAPITULO 8 (OBTENDO DADOS)
  #Duas formas comuns para obtencao de dados externos sao, API (Application Programming Interface) ou por meio da tecnica de WebScrapping

  #API - Application Programming Interface
    #Forma de comunicacao de dados mais apropriada para as trocas de informacoes entre softwares
    #Trocam dados em formato hierarquico
    #Os dois formatos hierarquicos mais comuns sao Javascript Object Notation (JSON) e Xtensible Markup Language (XML)
    #jsonlite - Pacote recomendado para obter dados de APIs
  
  install.packages('jsonlite')
  library(jsonlite)    
  
  hadley.rep <- jsonlite::fromJSON("https://api.github.com/users/hadley/repos")
  dim(hadley.rep)  

  head(hadley.rep[ , c('name', 'description')], 15)
  
  proposicoes <- jsonlite::fromJSON("https://dadosabertos.camara.leg.br/swagger/api/blocos")
  head(proposicoes$dados %>% select(siglaTipo, numero,ano,ementa))
  
  camara <- read_json("C:/Users/AquilaEstevao/Downloads/Ano-2021.json")
  camara <- read.csv("C:/Users/AquilaEstevao/Downloads/Ano-2021.csv",  delim = ';')
  
  #O R possui diversos pacotes para consumir APIs
  #Quandl - pacote que fornece diversos dados economicos de diversos paises
  #Rfacebook - pacote que facilita o uso da API do facebook (reaquer cadastro previo)
  #twitterR - pacote que facilita o uso da API do twitter (requer cadastro previo)
  
  #WEB SCRAPPING
    #Consumo de dados da internet HTML
    #rvest - pacote em R que facilita o consumo de dados em HTML
    #O rvest mapeia os elementos HMTL(tags) de uma pagina web e facilita a "navegacao" do R por estes nos da arvore do HTML
  
  library(dplyr)
  
  html <- read_html("https://pt.wikipedia.org/wiki/Lista_de_redes_de_televis%C3%A3o_do_Brasil")
  #Obtivemos todo o HTML da pagina
  
  html.table <- html %>% html_nodes("table") #Mapeamos os nos de tabela
  
  dados <- html.table[[1]] %>% html_table() #Pegamos o seu conteudo
  
  dados <- dados %>%
    select('Redes') #transformamos em um dataframe normal que pode ser manioulado com o dplyr
  
  head(dados)
  
#EXERCICIOS:
  
  #1) Obtenha a tabela exibida em http://globoesporte.globo.com/futebol/brasileirao-serie-a/ e chegue ao
  #   seguinte resultado:
  
  html <- read_html("https://globoesporte.globo.com/futebol/brasileirao-serie-a/")
  html.table <- html %>% html_nodes("table")
  dados <- html.table[[1]] %>% html_table() 
  dados <- dados %>%
    select("tabela tabela__pontos-corridos")
  
  #2) Escolha um site do seu interesse e fa?a um data frame com uma parte do seu conte?do (tabelas,listas etc.).
  
###################################################################################################################################################################################################  



#CAPITULO 9 (VISUALIZACAO DE DADOS(ggplot2))
  #Graficos sao camadas, camadas formadas por dados, mapementos esteticos, transformacoes estatisticas 
  #dos dados, objetos gemetricos (pontos, linhas, barras etc.) e ajuste de posicionamento.
  
  #extrutura do ggplot2
  
  ggplot(data = <DATA>) +
    <GEOM_FUNCTION(
      mapping = aes(<MAPPINGS>),
      stat = <STAT>,
      position = <POSITION>
    ) + 
    <COORDINATE_FUNCTION> +
    <FACET_FUNCTION> #dividir o gr?fico em sublots
    
    #E possivel criar uma nova camada a partid de dados diferentes daqueles que estao inicialmente nos graficos
    
    ggplot(data = <DATA>) +
    <GEOM_FUNCTION(
      mapping = aes(<MAPPINGS>),
      stat = <STAT>,
      position = <POSITION>,
      data = <DATA> #pode receber os dados diretamente
    ) + 
    <SCALE_FUNCTION> + #uma para cada elemento estetico
    <COORDINATE_FUNCTION> +
    <FACET_FUNCTION> #dividir o gr?fico em sublots
    
library(ggplot2)
data ("mtcars")
?mtcars

#inicia o plot
g <- ggplot(mtcars)
  
#adiciona pontos (geom_point) e vamos mapear variaveis a elementos esteticos dos pontos
#size = 3 define o tamanho de todos os pontos
g <- g +
  geom_point(aes(x = hp, y = mpg, color = factor(am)),
             size = 3)
             
#altera a escala de cores
g <- g +
  scale_color_manual ("Automatic",
                     values = c ("red", "blue"),
                     labels = c ("No", "Yes"))
                     
#Rotulos (titulos)
g <- g +
  labs(title = 'Rela??o entre consumo, pot?ncia e tipo de c?mbio',
       y = 'Consumo',
       x = 'Pot?ncia')
g


#grafico em bloco unico

ggplot(mtcars) + 
  geom_point(aes(x = hp, y = mpg, color = factor(am)),
             size = 3) + 
  scale_color_manual("Automatic",
                     values = c("red", "blue"),
                     labels = c("No", "Yes")) +
  labs(title = 'Relacao entre consumo, potencia e tipo de cambio', 
       y = 'Consumo',
       x = 'Pot?ncia')

#Mapeamento Estetico

  #mapeamento das variaveis dos dados para as caracteristicas visuais dos objetos geometricos (pontos, barras, linhas etc.)
  #a partir da funcao aes()
    #caracteristicas visuais de um objeto geometrico
      
      # Posicao (x e y)
      # Cor (color)
      # Tamanho (size)
      # Preenchimento(fill)
      # Transparencia (alpha)
      # Texto(label)

#Objetos Geometricos

  #expressao geom_ seguidos pelo tipo de objeto
  #ex.: geom_point() para pontos e geom_bar() para barras.
    #alguns tipos de graficos populares
      
          # Tipo                  Objeto Geometrico
    # Dispersao(scatterplot)  geom_point()
    # Grafico de bolhas       geom_point()
    # Grafico de barras       geom_bar() e geom_col()
    # Histograma              geom_histogram()
    # Boxplot                 geom_boxplot()
    # Densidade               geom_density()
    # Gr?fico de linhas       geom_line()

#utilizando a funcao aes() como global dieretamente na funcao ggplot(), dessa forma o mapeamento estetico
#e aplicado para todos os objetos geometricos do grafcio
g1 <- ggplot(mtcars, aes(y = mpg, x = disp)) +
  geom_point()
  
g1

#grafico com mais de um objeto geometrico, mais uma camada adicionando uma curva de ajustamento aos dados
#que tem o objetivo de evidenciar um padrao nos dados
library(dplyr)
mtcars <- mtcars %>%
  mutate(name = rownames(mtcars))
ggplot(mtcars, aes(y = mpg, x = disp)) +
  geom_point() +
  geom_smooth()


#Escalas
  #se interesse e ter o controle sobre todos os aspectos de um grafico esse componente e fundamental

#grafico criado com definicao de escalas de cores automatica,setosa = vermelho, versicolor = verde e virginica = azul
ggplot(iris, aes(x = Petal.Length, y = Petal.Width, color = Species)) +
  geom_point()

#alterando a escala de cor com a funcao scale_color_manual()
  ggplot(iris, aes(x = Petal.Length, y = Petal.Width, color = Species)) +
    geom_point() +
    scale_color_manual(values = c("orange", "black", "red"))
  #a funcao scale_color_manual foi utilizada na variavel spacies poies esta variavel e categorica, para o ggplot
  #dados categoricos sao discretos e a funcao citada permite criar-se uma escala discreta customizada
  #esta nao e a unica funca para se contrloar escala de cor
    #Ex.: Escala de cor
        #scale_color_discrete()
        #scale_color_continuous()
        #scale_color_gradient()
  #a utilizacao de cada funcao depende do tipo de dado que se esta associando ao elemento estetico color

#as funcoes utilizadas para controlar as escalas dos elementos de um grafico do ggplot2 seguem um padrao
  #todas iniciam-se com scale_
  #depois o nome do elemento estetico (color, fill, x etc)
  #e o tipo/nome da escala que sera aplicada
  
#alterando as escalas dos eixos x e y
  #Patel.Length e Petal.Width variaveis numericas/continuas
  #funcoes scale_x_continuous e scale_y_continuous
  ggplot(iris, aes(x = Petal.Length, y = Petal.Width, color = Species)) +
    geom_point() + 
    scale_color_manual(values = c("orange", "black", "red")) +
    scale_x_continuous(name = "Petal Length", breaks = 1:7) +
    scale_y_continuous(name = "Petal Width", breaks = 0:3, limits = c(0,3))
  #definimos quais seriam os pontos em que rotulos deveriam ser exibidos em cada exio
  #no eixo y definimos que os limites seriam 0 e 3
  
#Tipos de Vari?veis
  #para utilizar escala e importante saber o tipo de variavel de cada elemento estetico
  #pois assim sabera com mais facilidade qual e o tipo de escala que deve ser escolhido
  
  #relacao de tipo de variaveis:

  ###################################################################################################  
  # Classe     | Exemplo                                                  | Tipo no ggplot2         #
  #=================================================================================================#
  # numeric    | seq(0,1, length.out = 10)                                | continuous              #
  # integer    | 1L:10L                                                   | continuous ou discrete  #
  # character  | c("Sim", "Nao")                                          | discrete                #
  # factor     | factor(c("Sim", "Nao"))                                  | discrete                #
  # data       | seq(as.Date("2000/1/1"), by = "month", length.out = 12)  | date                    #
  ###################################################################################################
  
#Eixos
  
  #variaveis continuas
  
  scale_x_continuous(name = waiver(), breaks = waiver(), minor_breaks = waiver(),
                     lables = waiver(), limits = NULL, expand = waiver(),
                     ood = censor, na.value = NA_real_, trans = "identity")
  
  scale_y_continuous(name = waiver(), breaks = waiver(), minor_breaks = waiver(),
                     labels = waiver(), limits = NULL, expand = waiver(),
                     ood = censor, na.value = NA_real_, trans = "identity")
  
  #variaveis continuas - ediando os valores dos eixos x e y
  install.packages("ISLR")
  library(ISLR)
  
  #No eixo X quebras a cada 5 anos (breaks), adicinar espacos no final do grafico (expand)
  #No eixo y nome 'Salario' com limites inferior 0 e superior 400 (limits) com alteracao de rotulos
  #Concatenando 'US$' com o valor que ja seria exibido.Obs.: sabendo todos os breaks e possivel definir-se manualmente os labels
  ggplot(Wage, aes(x = age, y = wage, color = education)) +
    geom_point() +
    scale_x_continuous("Idade", breaks = seq(0, 80, 5),
                       expand = c(0, 5)) + 
    scale_y_continuous("Sal?rio", labels = function(x) paste0("US$ ", x),
                       limits = c(0, 400))
  
  #variaveis discretas
  
  scale_x_discrete(..., expand = waiver(), position = "bottom")
  
  scale_y_discrete(..., expand = waiver(), position = "left")
  
  #alteraremos os rotulos para uma escala discreta, que originalmente contem os valores Yes e No
  ggplot(Default, aes(x = default, y = balance)) +
    geom_boxplot() +
    scale_x_discrete("Calote", labels = c("N?o", "Sim")) +
    labs(y = "Valor devido m?dio ap?s o pagamento mensal")
  #utilizando o argumento limits para alterar a ordem das categorias
  ggplot(Default, aes(x = default, y = balance)) +
    geom_boxplot() +
    scale_x_discrete("Calote", limits = c("Yes", "No"),
                     labels = c("Sim", "N?o")) +
    labs(y = "Valor devido m?dio ap?s o pagamento mensal")
  #pode-se alterar a ordem de variaveis categoricas utilizando as funcoes de ylim() e xlim()

#Variaveis de Dados
  #comumente utilizado em series temporais no eixo X
  #funceos padrao para contole de escalas dois eixos, sao:
  
  scale_x_date(nome = waiver(), breaks = waiver(), data_breaks = waiver(),
               lavels = waiver(), date_labels = waiver(), minor_breaks = waiver(),
               date_minor_breaks = waiver(), limits = NULL, expand = waiver())

  scale_y_date(nome = waiver(), breaks = waiver(), data_breaks = waiver(),
               lavels = waiver(), date_labels = waiver(), minor_breaks = waiver(),
               date_minor_breaks = waiver(), limits = NULL, expand = waiver())
  
  scale_x_datetime(nome = waiver(), breaks = waiver(), data_breaks = waiver(),
               lavels = waiver(), date_labels = waiver(), minor_breaks = waiver(),
               date_minor_breaks = waiver(), limits = NULL, expand = waiver())
  
  scale_y_datetime(nome = waiver(), breaks = waiver(), data_breaks = waiver(),
               lavels = waiver(), date_labels = waiver(), minor_breaks = waiver(),
               date_minor_breaks = waiver(), limits = NULL, expand = waiver())
  
  #scale_*_date variaveis do tipo DATA, informacoes de dia, mes e ano
  #scale_*_datetime varivaveis do tipo POSIXct, informacoes de tempo/horario
  #o argumento data_lebels possibilita alteracao de modo de apresentacao de datas
  
  ggplot(economics, aes(x = date, y = unemploy)) +
    geom_line()
  
  #alterando para o formato "Jan/1970"
  ggplot(economics, aes(x = date, y = unemploy)) +
    geom_line() +
    scale_x_date(date_labels = "%b/%y") #%b/%y utilizado para defiir o formato de data desejado

help(strptime)

  #breaks pode ser informado um vetor de datas
  #date_breaks pode ser informado uma frequencia dos breaks
 
  #1
  ggplot(economics, aes(x = date, y = unemploy)) +
    geom_line() +
    scale_x_date(date_breaks = "5 years", date_labels = "%y")

  #2
  seq_datas <- seq.Date(as.Date('1970-01-01'),
                        as.Date('2015-04-01'),
                        by = '5 years')
  ggplot(economics, aes(x = date, y = unemploy)) +
    geom_line() +
    scale_x_date(breaks = seq_datas, date_labels = "%y")
  
#Escala de Cores (color) e Preenchimento (fill)
  #O tipo de variavel utilizado define qual o tipo de escala
  
  ###############################################################################################
  # Tipo da Variavel  | Escala      | Descricao                                                 #
  #=============================================================================================#
  #                   |  hue        | escolhe n cores igualmente espacadas em um disco de cores.# 
  #                   |             | e possivel editar a luminosidade e a saturacao            #
  # Discreta          |  grey       | escala de cinza                                           #
  #                   |  brewer     | ver pacote RColorBrewer                                   #
  #                   |  identity   | use as cores inseridas na propria variavel                #
  #                   |  manual     | escolha as cores manualmente                              #
  #===========================================================================================--#
  #                   |  gradient   | cria um gradiente de das cores (low-high)                 #
  # Continua          |  gradient2  | cria um gradiente de cores divergentes (low-mid-high)     #
  #                   |  gradientn  | cria um gradiente com n cores                             #
  ###############################################################################################
  
  #hue - usa a seguintes roda de cores:
  #brewer pode usar as paletas de cores disponiveis no pacote RColor Brewer
  
library(RColorBrewer)
  display.brewer.all(n=NULL, type = "all", select = NULL, exact.n = TRUE,
                      colorblindFriendly = FALSE)  

  #utilizando a funcao brewer.pal para retornar um vetor de cores de alguma paleta do pacote RColorBrewer
  #Objeto paleta.gadientn recebe nove cores da paleta Reds, cores utilizadas na funcao scale_fill_gradientn()
  
  paleta.gradientn <- brewer.pal(n = 9, name = 'Blues')
  Credit %>%
    group_by(Cards, Student) %>%
    summarise(Balance = mean(Balance), n = n()) %>%
    ggplot(aes(x = Cards, y = Student, fill = Balance)) +
    geom_tile() +
    scale_fill_gradientn(colors = rev(paleta.gradientn)) +
    scale_x_continuous(breaks = 1:9)
  
  #Cores proprias em outros pacotes. Ex. pacote viridis
  
  install.packages("viridis")
  library(viridis)
  Credit %>%
    group_by(Cards, Student) %>%
    summarise(Balance = mean(Balance), n = n()) %>%
    ggplot(aes(x = Cards, y = Student, fill = Balance)) +
    geom_tile() +
    viridis::scale_fill_viridis() +
    scale_x_continuous(breaks = 1:9)

  #utilizando o scale_color_manual()
  ggplot(Wage, aes(y = Wage, x = age, color = education)) +
    geom_point() +
    scale_color_manual(values = c("#66C2A5", "#FC8D62", "#8DA0CB", "#E78AC3", "#A6D854"))
    
#Subplots (facet)
  #Permite que se cire ou replique o mesmo grafico para um conjunto de valores de outra variavel
  #Principais funcoes: facet_wrap() e facet_grid()
  
  #Paineis em formato de grid:
  facet_grid(facets, margins = FALSE, scales = "fixed", space = "fixed", shrink = TRUE,
             labeller = "label_value", as.table = TRUE, switch = NULL, drop = TRUE)
  
  #Converte paineis de uma mimensao para duas dimensoes:
  facet_grid(facets, nrow = NULL, ncol = NULL, scales = "fixed", shrink = TRUE,
             labeller = "label_value", as.table = TRUE, switch = NULL, drop = TRUE,
             dir = "h")
  
  #facet_wrap()
  ggplot(diamonds, aes(x = carat, y = price)) +
    geom_point()
  
  ggplot(diamonds, aes(x = carat, y = price)) +
    geom_point() +
    facet_wrap(~ cut) #(~ cut) para dizer que queremos quebrar os graficos pela variavel cut
  #numero de colunas e linhas e escalas fixas
  #brow e ncol para definir o numero de linhsa e colunas
  #possivel definir a escala de cada grafico
  
  #escala do eixo y livre
  ggplot(diamonds, aes(x = carat, y = price)) +
    geom_point() +
    facet_wrap(~ cut, scales = "free_y")

  #facet_grid() indicado para o cruzamento de variaveis
  ggplot(diamonds, aes(x = carat, y = price)) +
    geom_point() +
    facet_grid(clarity ~ cut)
  
  #para cada categoria existe um rotulo 
  #pode ser alterado diretametne no dataframe ou utilizando a funcao labeller()
  
  nomes_cut <- c(
    Fair = "FAIR",
    Good = "GOOD",
    'Very Good' = "VERY GOOD",
    Premium = "PREMIUM",
    Ideal = "IDEAL"
    )
  
  ggplot(diamonds, aes(x = carat, y = price)) +
    geom_point() +
    facet_wrap(~ cut, scales = "free_y",
               labeller = labeller(cut = nomes_cut))
  
#Temas
  #podemos criar temas que podem ser utilizados em outras visualizaceos
  #a funcao theme() permite editar temas, como cor, de fundo do painel, tamanho da fonte, do eixo x, posicao de legenda etc..
  
  install.packages('ggThemeAssist')
  library(ggThemeAssist)
  
  #alteracao de tema manualmente
  ggplot(diamonds, aes(x = carat, y = price)) +
    geom_point() +
    labs(title = "Carat vs Price") +
    theme (text = element_text(face = "bold"),
           panel.grid.major = element_line(colour = "gray80"),
           axis.title = element_text(size = 14),
           panel.background = element_rect(fill = "gray100"))
  
  #temas disponiveis no ggplot2
  p <- ggplot(diamonds, aes(x = carat, y = price)) +
    geom_point()
  
  p + theme_gray() +
    labs(title = "theme_gray()")
  
  p + theme_bw() +
    labs(title = "theme_bw()")
  
  p + theme_linedraw() +
    labs(title = "theme_linedraw()")
  
  p + theme_light() +
    labs(title = "theme_light()")
  
  p + theme_minimal() +
    labs(title = "theme_minimal()")
  
  p + theme_classic() +
    labs(title = "theme_classic()")
  
  p + theme_dark() +
    labs(title = "theme_dark()")
  
  p + theme_void() +
    labs(title = "theme_void()")
  
  #temas no pacote ggthemes
  install.packages('ggthemes')
  library(ggthemes)
  
  p + theme_base() +
    labs(title = "theme_base()")

  p + theme_economist() +
    labs(title = "theme_economist()")  

  p + theme_few() +
    labs(title = "theme_few()")  
  
  p + theme_fivethirtyeight() +
    labs(title = "theme_fivethirtyeight()")
  
  p + theme_gdocs() +
    labs(title = "theme_gdocs()")
  
  p + theme_hc() +
    labs(title = "theme_hc()")
  
  p + theme_tufte() +
    labs(title = "theme_tufte()")
  
  p + theme_wsj() +
    labs(title = "theme_wsj()")
  
  #hrbrthemes
  #O pacote hrbrthemes fornece seus proprios temas, tambem possivel de edicao com a funcao theme()
  install.packages('hrbrthemes')
  library(hrbrthemes)  

  ggplot(diamonds, aes(x = carat, y = price)) +
    geom_point() +
    labs(title = "theme_ipsum()") +
    theme_ipsum(plot_title_size = 12,
                axis_title_size = 10)
  
  #setando o tema golobalmente
  theme_set(theme_ipsum(plot_title_size = 12,
                        axis_title_size = 10) +
              theme(text = element_text(angle = 0)))
  
#Legendas
  #alteracoes de legendas podem ser realizadas diretametne em theme, mas serao aplicadas globalmente
  #funcoes para alteracoes pontuais em legendas
  #guides()
  #guide_legend()
  #guide_colorbar()
  
  guide_legend(title = waiver(), title.position = NULL, title.theme = NULL,
               title.hjust = NULL, title.vjust = NULL, label = TRUE,
               label.position = NULL, label.theme = NULL, label.hjust = NULL,
               label.vjust = NULL, keywidth = NULL, keyheight = NULL,
               direction = NULL, default.unit = "line", override.aes = list(),
               nrow = NULL, ncol = NULL, byrow = FALSE, reverse = FALSE, order = 0, ...)
  
  guide_colourbar(title = waiver(), title.position = NULL, title.theme = NULL,
                  title.hjust = NULL, title.vjust = NULL, label = TRUE,
                  label.position = NULL, label.theme = NULL, label.hjust = NULL,
                  label.vjust = NULL, barwidth = NULL, barheight = NULL, nbin = 20,
                  raster = TRUE, ticks = TRUE, draw.ulim = TRUE, draw.llim = TRUE,
                  direction = NULL, default.unit = "line", reverse = FALSE, order = 0, ...)
  
  #guid_legend()
  ggplot(diamonds, aes(x = carat, y = price, color = cut, shape = cut)) +
    geom_point() +
    guides(color = guide_legend(title = "Cor", title.position = "left", keywidth = 5),
           shape = guide_legend(title = "Forma", title.position = "right", override.aes = aes(size = 5)))
  
  ggplot(diamonds, aes(x = carat, y = price, color = cut, shape = cut)) +
    geom_point() +
    guides(color = guide_legend(title = "Cor", title.position = "left", keywidth = 5),
           shape = 'none')
  
  #escolhendo o tipo de grafico
    #o objetivo guiara o tipo de grafico mais adequado, e preciso saber o que se deseja representar
    #alguns pacotes estao disponiveis para graficos mais complexos
    #para criacao de treemaps, existe o pacote treemapify
  install.packages('treemapify')
  library(treemapify)
  
  ggplot(G20, aes(area = gdp_mil_usd, fill = hdi, label = country)) + 
    geom_treemap() +
    geom_treemap_text(fontface = "italic", colour = "white", place = "centre",
                      grow = TRUE) +
    theme(legend.position = "bottom")

#Grafico de Dispersao (geom_point())
  geom_point(mapping = NULL, data = NULL, stat = "identity", position = "identity",
             ..., na.rm = FALSE, show.legend = NA, inherit.aes = TRUE)
  
  #para verificar-se relacoes entre duas variaveis quantitativas
  
  #Ex. base gapminder, expectativa de vida e renda per capita
  #Grafico de pontos = Objeto geometrico natural geom_point()
  #Parametros esteticos (aes):
    # x
    # y
    # alpha
    # color
    # fill
    # shape
    # size
    # stroke
    
  library(hrbrthemes)
  install.packages("gapminder")  
  library(gapminder)
  gapminder %>%
    filter(year == max (year)) %>%
    ggplot(aes(x = gdpPercap, y = lifeExp)) + 
    geom_point() +
    labs(title = "Rela??o entre Renda per Capita e Expectativa de Vida - 2007",
         x = "Renda per Capita",
         y = "Expectativa de Vida") +
    theme_ipsum(plot_title_size = 12,
                axis_title_size = 10)
  
  #Representando renda per capita em escala logaritimica
  #Funcao log10(): scale_x_log10()
  #Valores incrementados na ordem de dez vezes serao igualmente espacados
  
  gapminder %>%
    filter(year == max(year)) %>%
    ggplot(aes(x = gdpPercap, y = lifeExp)) +
    geom_point() +
    scale_x_log10() + 
    labs(title = "Rela??o entre Renda per capita e Expectativa de Vida - 2007",
         x = "Renda per Capita (escala log 10)",
         y = "Expectativa de Vida") +
    theme_ipsum(plot_title_size = 12,
                axis_title_size = 10)

  #Mapeando a vareavel continent ao elemento estetico color e shape
  
  gapminder %>%
    filter(year == max(year)) %>%
    ggplot(aes(x = gdpPercap, y = lifeExp,
               color = continent, shape = continent)) + 
    geom_point() +
    scale_x_log10() +
    scale_color_discrete("Continente") + 
    scale_shape_discrete("Continente") + 
    labs(title = "Rela??o entre Renda per Capta e Expectativa de Vida - 2007",
         x = "Renda per Capita (escala log 10)",
         y = "Expectativa de Vida") +
    theme_ipsum(plot_title_size = 12,
                axis_title_size = 10)

  #Definindo o preenchimento, o tamanho do ponto e a espessura para os formatos que possuem contornos.
  
  gapminder %>%
    filter(year == max(year)) %>%
    ggplot(aes(x = gdpPercap, y = lifeExp,
               color = continent, shape = continent)) +
    geom_point(fill = "black", size = 2, stroke = 1) +
    scale_x_log10() +
    scale_color_discrete("Continente") +
    scale_shape_manual("Continente", values = c(20, 21, 22, 23, 24)) +
    labs(title = "Rela??o entre Renda per Capita e Expectativa de Vida - 2007",
         x = "Renda per Capita (escala log 10)",
         y = "Expectativa de Vida")
    
  #GRAFICO DE BOLHAS
  #Extensao natural do grafico de pontos
  #Observar possiveis relacoes entre as tres variaveis
    #duas para indicarem as posiceos (x) e (y) e outra para indicar o tamanho do ponto (size)
  
  gapminder %>%
    filter(year == max(year)) %>%
    ggplot(aes(x = gdpPercap, y = lifeExp,
               size = pop)) +
    geom_point() +
    scale_size_continuous("Popula??o (milh?es)",
                          labels = function(x) round(x/1e6)) +
    scale_x_log10() +
    labs(title = "Rela??o entre Renda per Capita e Expectativa de Vida - 2007",
         x = "Renda per Capita",
         y = "Expectativa de Vida") +
    theme_ipsum(plot_title_size = 15,
                 axis_title_size = 10)
  
  
  #GRAFICO DE BARRAS
  #Geralmente utilizados para comparacoes entre categorias (Variaveis qualitativas)
  #No ggplot2 podemos utilizar dois objetos gemoetricos distintos
  
  geom_bar(mapping = NULL, data = NULL, stat = "count", position = "stack", ...,
           width = NULL, binwidth = NULL, na.rm = FALSE, show.legend = NA,
           inherit.aes = TRUE)
  
  geom_col(mapping = NULL, data = NULL, position = "stack", ...,
           width = NULL, na.rm = FALSE, show.legend = NA, inherit.aes = TRUE)
  #Obs.: O argumento stat de geom_bar, e count por definicao, faz uma contagem dos elementos do eixo x.
  
  #Parametros esteticos (aes):
    #x
    #y (apenas com stat=identity)
    #alpha
    #colour
    #fill
    #linetype
    #size
  
  #O objeto geometrico stat de geom_col sera usado no eixo y
  ggplot(diamonds, aes(x = cut)) +
    geom_bar() +
    theme_ipsum(plot_title_size = 12,
                axis_title_size = 20)
  
  #Para que o y seja mapeado para uma variavel do data.frame, e necessario definir stat = identity
  gapminder %>%
    filter(year == max(year),
           continent == "Americas") %>%
    ggplot(aes(x = country, y = lifeExp)) +
    geom_bar(stat = "Identity", fill = "dodgerblue") +
    labs(title = "Expectativa de vida por pa?s",
         subtitle = "2007",
         x = "Pa?s",
         y = "Expectativa de Vida") +
    theme(axis.text.x = element_text(angle = 90, hjust = 1))
  
  #Usando o geom_col()
  gapminder %>%
    filter(year == max(year),
           continent == "Americas") %>%
    ggplot(aes(x = country, y = lifeExp)) +
    geom_col(fill = "dodgerblue") +
    labs(title = "Expectativa de vida por pa?s",
         subtitle = "2007",
         x = "Pa?s",
         y = "Anos") +
    theme(axis.text.x = element_text(angle = 90, hjust = 1))
  
  #Ordenar as barrar em ordem crescente ou descrescente com a funcao reorder
  gapminder %>%
    filter(year == max(year),
           continent == "Americas") %>%
    ggplot(aes(x = reorder(country, -lifeExp), y = lifeExp)) +
    geom_col(fill = "dodgerblue") +
    labs(title = "Expectativa de Vida por pa?s",
         subtitle = "2007",
         x = "Pa?s",
         y = "Anos") +
    theme(axis.text.x = element_text(angle = 90, hjust = 1))
  
  #Grafico de comparacao: O grafico empilha as barras por continente. Argumento position = stack
  gapminder %>%
    filter(year %in% c(1957, 2007)) %>% 
    mutate(year = factor(year)) %>% #converte o ano para factor - sera categoria no grafico
    group_by(continent, year) %>%
    summarise(lifeExp = mean(lifeExp)) %>%
    ggplot(aes(x = continent, y = lifeExp, fill =year)) +
    geom_col() +
    theme_ipsum(plot_title_size = 15,
                axis_title_size = 10)

  #Barras lado a lado, utiliza-se dodge no argumento position
  gapminder %>%
    filter(year %in% c(1957, 2007)) %>% 
    mutate(year = factor(year)) %>% #converte o ano para factor - sera categoria no grafico
    group_by(continent, year) %>%
    summarise(lifeExp = mean(lifeExp)) %>%
    ggplot(aes(x = continent, y = lifeExp, fill = year)) +
    geom_col(position = "dodge") +
    theme_ipsum(plot_title_size = 15,
                axis_title_size = 10) 
  #Ordenando
  gapminder %>%
    filter(year %in% c(1957, 2007)) %>% 
    mutate(year = factor(year)) %>% #converte o ano para factor - sera categoria no grafico
    group_by(continent, year) %>%
    summarise(lifeExp = mean(lifeExp)) %>%
    ggplot(aes(x = reorder(continent, -lifeExp), y = lifeExp, fill = year)) +
    geom_col(position = "dodge") +
    theme_ipsum(plot_title_size = 15,
                axis_title_size = 10) 
  
  #Representando as barras horizontalmente, utiliza-se a funcao coord_flip()
  gapminder %>%
    filter(year %in% c(1957, 2007)) %>%
    mutate(year = factor(year)) %>%
    group_by(continent, year) %>%
    summarise(lifeExp = mean(lifeExp)) %>%
    ggplot(aes(x = continent, y = lifeExp, fill = year)) +
    geom_col(position = "dodge") +
    coord_flip() +
    labs(title = "Expectativa de Vida por continente",
         x = "Continentes",
         y = "Anos") +
    theme_ipsum(plot_title_size = 12,
                axis_title_size = 10)
  
  #Ordenando
  gapminder %>%
    filter(year %in% c(1957, 2007)) %>%
    mutate(year = factor(year)) %>%
    group_by(continent, year) %>%
    summarise(lifeExp = mean(lifeExp)) %>%
    ggplot(aes(x = reorder(continent, lifeExp), y = lifeExp, fill = year)) +
    geom_col(position = "dodge") +
    coord_flip() +
    labs(title = "Expectativa de Vida por continente",
         x = "Continentes",
         y = "Anos") +
    theme_ipsum(plot_title_size = 12,
                axis_title_size = 10)
  
  #GRAFICO DE LINHAS
  #Apresentar a evolucao de uma variavel quantitativa em um intervalo de tempo
  
  geom_line(mapping = NULL, data = NULL, stat = "identity", position = "identity",
            na.rm = FALSE, show.legend = NA, inherit.aes = TRUE, ...)
  
  #Parametros esteticos (aes):
    #x
    #y
    #alpha
    #colour
    #linetype
    #size
  
  gapminder %>%
    group_by(continent, year) %>%
    summarise(lifeExp = mean(lifeExp)) %>%
    ggplot(aes(x = year, y = lifeExp, color = continent)) +
    geom_line() +
    labs(title = "Evolu??o da expectativa de vida por continete",
         x = "Ano",
         y = "Anos de vida",
         color = "Continente") +
    theme_ipsum(plot_title_size = 12,
                axis_title_size = 10)
  
  #Adicionando camada de pontos
  gapminder %>%
    group_by(continent, year) %>%
    summarise(lifeExp = mean(lifeExp)) %>%
    ggplot(aes(x = year, y = lifeExp, color = continent)) +
    geom_line() +
    geom_point(aes(shape = continent)) +
    labs(title = "Evolu??o da expectativa de vida por continente",
         x = "Ano",
         y = "Anos de vida",
         color = "Continente",
         shape = "Continente") +
    theme_ipsum(plot_title_size = 12,
                axis_title_size = 10)

  
  #HISTOGRAMA E freqpoly
  geom_freqpoly(mapping = NULL, data = NULL, stat = "bin",
                position = "identity", ..., na.rm = FALSE, show.legend = NA,
                inherit.aes = TRUE)
  geom_histogram(mapping = NULL, data = NULL, stat = "bin",
                 position = "stack", ..., binwidth = NULL, bins = NULL, na.rm = FALSE,
                 show.legend = NA, inherit.aes = TRUE)
  
  #Histrograma representa a distribuicao de dados de uma variavel quantitativa em intervalos continuos
  #Intervalos = bins: Para cada bin sera apresentada a quantidade de valores que estao naquele intervalo
  #Diferencas entre "geom_histogram" e "geom_freqpoly":
  #geom_histogram: utiliza barras para construir os poligonos e utiliza os mesmos elementos esteticos do geom_bar()
  #geom_freqpoly: utiliza linhas para construir os poligonos e utiliza os mesmos elementos esteticos do geom_line()
  
  #geom_histogram:
  gapminder %>%
    filter(year == 2007) %>%
    ggplot(aes(x = lifeExp)) +
    geom_histogram(binwidth = 5, fill = 'dodgerblue', color = 'black') +
    labs(title = "Distribui??o da expectativa de vida",
         x = "Anos",
         y = "Contagem") +
    theme_ipsum(plot_title_size = 12,
                axis_title_size = 10)
  
  #geom_freqpoly:
  gapminder %>%
    filter(year == 2007) %>%
    ggplot(aes(x = lifeExp)) +
    geom_freqpoly(binwidth = 5) +
    labs(title = "Distribui??o da expectativa de vida",
         x = "Anos",
         y = "Contagem") +
    theme_ipsum(plot_title_size = 12,
                axis_title_size = 10)
  
  #Transformando em proporcao
  gapminder %>%
    filter(year == 2007) %>%
    ggplot(aes(x = lifeExp)) +
    geom_histogram(aes(y = ..count../sum(..count..)), binwidth = 5, fill = 'dodgerblue', color = 'black') +
    labs(title = "Distribui??o da expectativa de vida",
         x = "Anos",
         y = "Propor??o") +
      scale_y_continuous(labels = scales::percent_format()) +
      theme_ipsum(plot_title_size = 12,
                  axis_title_size = 10)
    #Obs.: O ggplot2, internamente, cirou a variavel ..count.. assim podemos utiliza-la para criar as proporceos  
  
  
  #BOXPLOTS, jitterplots e violinplots
  #E uma representacao comum para apresentar-se a distribuicao de uma variavel a partir de seus quantis
  #Tambem verifica-se a distribuicao de variavel para um conjunto de valores de uma segunda variavel
  #Ex.: qual e a distribuicao de expectativa de vida por ano?
  
  ggplot(gapminder, aes(x = factor(year), y = lifeExp)) +
    geom_boxplot(fill = "dodgerblue") +
    labs(y = "Anos de vida",
         x = "Ano",
         title = "Distribui??o da expectativa de vida por ano") +
    theme_ipsum(plot_title_size = 12,
                axis_title_size = 10)

  #geom_violin(): Distribuicao geral dos valores, o violinplot basea-se na densidade de probabilidade de uma variavel continua
  #Possivel verificar-se em quais intervalos existe uma maior chance de ocorr?ncia
  
  ggplot(gapminder, aes(x = factor(year), y = lifeExp)) +
    geom_violin(fill = "dodgerblue") +
    labs(y = "Anos de vida",
         x = "Ano",
         title = "Distribui??o de expectativa de vida por ano") +
    theme_ipsum(plot_title_size = 12,
                axis_title_size = 10)
  
  #jitterplot: utilizado para evitar-se o problema do overplotting em um grafico.
  
  ggplot(gapminder, aes(x = factor(year), y = lifeExp))+
    geom_point() +
    labs(y = "Anos de vida",
         x = "Anos",
         title = "Distribui??o da expectativa de vida por ano") +
    theme_ipsum(plot_title_size = 12,
                axis_title_size = 10)
    #Obs.: Pelo grafico nao sabemos se a marcacao de um ponto representa uma unica observacao ou varias
  
  #Para observar a real distribuicao, e necessario adicionar-se um pouco de ruido, a fim de que os pontos se afastem um pouco
  ggplot(gapminder, aes(x = factor(year), y = lifeExp)) +
    geom_jitter()+
    labs(y = "Anos de vida",
         x = "Ano",
         title = "Distribui??o da expectativa de vida por ano") +
    theme_ipsum(plot_title_size = 12,
                axis_title_size = 10)
  
  #ANOTACOES:
  
  #Podemos utilizar a funcao "annotate" para criarmos anotacoes no ggplot2
  
  gapminder %>%
    filter(year == 1992, lifeExp == min(lifeExp))

  ggplot(gapminder, aes(x = factor(year), y = lifeExp)) +
    geom_boxplot(fill = "dodgerblue") +
    annotate("text", x = "1992", y = 27, label = "Ruanda") + 
    labs(y = "Anos de vida",
         x = "Ano",
         title = "Distribuicao da expectativa de vida por ano") +
    theme_ipsum(plot_title_size = 12,
                axis_title_size = 10)
  
  #Tambem podemos adicionar segmentos e retangulos com o annotate()
  ggplot(gapminder, aes(x = factor(year), y = lifeExp)) +
    annotate("text", x = "1992", y = 27, label = "Ruanda") +
    annotate("rect", xmin = "1982", ymin = 20,
             xmax = "2002", ymax = 95, alpha = 0.2) +
    geom_boxplot(fill = "dodgerblue") +
    labs(y = "Anos de vida",
         x = "Ano",
         title = "Distribui??o da expectativa de vida por ano") + 
    theme_ipsum(plot_title_size = 12,
                axis_title_size = 10)
  
  #CLEVELAND DOT PLOT
  #E uma visualizacao que pode substituir os graficos de barras
  #Menos poluido com os pontos - foco no que e importante
  
  gapminder %>%
    filter(year == 2007,
           continent == "Americas") %>%
    ggplot(aes(x = lifeExp, y = reorder(country, lifeExp))) +
    geom_point(size = 3, color = "dodgerblue") +
    labs(title = "Expectativa de vida por pa?s - 2007",
         y = "Pa?s",
         x = "Anos") +
    theme_ipsum(plot_title_size = 12,
                axis_title_size = 10) +
    theme(panel.grid.major.y = element_line(linetype = "dashed"))
  
  #Tambem pode apresentar mais de um ponto para cada valor da variavel categorica
  gapminder %>%
    filter(year %in% c(1987, 2007),
           continent == "Americas") %>%
    ggplot(aes(x = lifeExp, y = country, color = factor(year))) +
    geom_point(aes(color = factor(year))) + 
    labs(title = "Expectativa de vida por pa?s - 1987 e 2007",
         y = "Pa?s",
         x = "Anos",
         color = "Ano") +
    theme_ipsum(plot_title_size = 12,
                axis_title_size = 20) +
    theme(panel.grid.major.y = element_line(linetype = "dashed"))
  
  #Podemos adicionar uma linha conectando os dois pontos entre 1987 e 2007 em "connected dot plot"
  #Criar uma linha por pais, usaremos o elemento estetico group para obter o resultado
  gapminder %>%
    filter(year %in% c(1987, 2007),
           continent == "Americas") %>%
    ggplot(aes(x = lifeExp, y = country)) +
    geom_line(aes(group = country)) +
    geom_point(aes(color = factor(year))) +
    labs(title = "Expectativa de vida por pa?s - 1987 e 2007",
         y = "Pa?s",
         x = "Anos",
         color = "Ano") +
    theme_ipsum(plot_title_size = 12,
                axis_title_size = 20) +
    theme(panel.grid.major.y = element_line(linetype = "dashed"))
  
  #Ordenando
  gapminder %>%
    filter(year %in% c(1987, 2007),
           continent == "Americas") %>%
    ggplot(aes(x = lifeExp, y = reorder(country, lifeExp, max))) +
    geom_line(aes(group = country)) +
    geom_point(aes(color = factor(year))) +
    labs(title = "Expectativa de vida por pa?s - 1987 e 2007",
         y = "Pa?s",
         x = "Anos",
         color = "Ano") +
    theme_ipsum(plot_title_size = 12,
                axis_title_size = 20) +
    theme(panel.grid.major.y = element_line(linetype = "dashed"))
    
  
  #TEXTOS / ROTULOS
  geom_label(mapping = NULL, data = NULL, stat = "identity", position = "identity",
             ..., parse = FALSE, nudge_x = 0, nudge_y = 0,
             label.padding = unit(0.25, "lines"), label.r = unit(0.15, "lines"),
             label.size = 0.25, na.rm = FALSE, show.legend = NA, inherit.aes = TRUE)
  geom_text(mapping = NULL, data = NULL, stat = "identity", position = "identity",
            ..., parse = FALSE, nudge_x = 0, nudge_y = 0, check_overlap = FALSE,
            na.rm = FALSE, show.legend = NA, inherit.aes = TRUE)
  
  #Parametros esteticos (aes):
    #label
    #x
    #y
    #alpha
    #angle
    #colour
    #family
    #fontface
    #hjust
    #lineheight
    #size
    #vjust
  
  # geom_text() e geom_label() para adiconar textos ou rotulos
  
  gapminder %>%
    filter(year == 2007,
           continent == "Americas") %>%
    ggplot(aes(x = lifeExp, y = reorder(country, lifeExp))) +
    geom_segment(x = 0, aes(xend = lifeExp, yend = country),
                 color = "grey50") +
    geom_point(size = 3, color = "dodgerblue") +
    geom_text(aes(label = round(lifeExp))) +
    labs(title = "Expectativa de vida por pa?s - 2007",
         y = "Pa?s",
         x = "Anos") +
    theme_ipsum(plot_title_size = 12,
                axis_title_size = 10)

  #Obs.: Para alterar a posicao, podemos usar os argumentos hjust, vjust, nudge_x e nudge_y
  #geom_text()
  gapminder %>%
    filter(year == 2007,
           continent == "Americas") %>%
    ggplot(aes(x = lifeExp, y = reorder(country, lifeExp))) +
    #geom_segment(x = 0, aes(xend = lifeExp, yend = country),
                 #color = "grey50") +
    geom_point(size = 3, color = "dodgerblue") +
    geom_text(aes(label = round(lifeExp)), nudge_x = 1) +
    labs(title = "Expectativa de vida por pa?s - 2007",
         y = "Pa?s",
         x = "Anos") +
    theme_ipsum(plot_title_size = 12,
                axis_title_size = 10) +
    theme(panel.grid.major.y = element_line(linetype = "dashed"))
  
  #geom_label()
  gapminder %>%
    filter(year == 2007,
           continent == "Americas") %>%
    ggplot(aes(x = lifeExp, y = reorder(country, lifeExp))) +
    #geom_segment(x = 0, aes(xend = lifeExp, yend = country),
    #color = "grey50") +
    geom_point(size = 3, color = "dodgerblue") +
    geom_label(aes(label = round(lifeExp)), nudge_x = 1, size = 3) +
    labs(title = "Expectativa de vida por pa?s - 2007",
         y = "Pa?s",
         x = "Anos") +
    theme_ipsum(plot_title_size = 12,
                axis_title_size = 10) +
    theme(panel.grid.major.y = element_line(linetype = "dashed"))
    
  #PLOTANDO FUNCAO
  
  reta <- function(a, b, x){
    a + b * x
  }
  data <- data.frame(x = seq(0, 10, by = 0.1))
  
  ggplot(data, aes(x = x)) +
    stat_function(fun = reta, args = list(a = 1, b = 2)) +
    stat_function(fun = reta, args = list(a = 1, b = 3), col = 'red')

  sigmoid <- function(a = 1,z){
    1/(1 + exp(-a*z))
  }
  data <- data.frame(x = -6:6)
  
  ggplot(data, aes(x = x)) +
    stat_function(fun = sigmoid, args = list(a = 1)) +
    stat_function(fun = sigmoid, args = list(a = 0.5), color = "blue") +
    stat_function(fun = sigmoid, args = list(a = 2), color = "red")
  
  logit <- function(a, z){
    log(sigmoid(a, z)/(1 - sigmoid(a, z)))
  }
  data <- data.frame(x = -6:6)
  
  ggplot(data, aes(x = x)) +
    stat_function(fun = logit, args = list(a = 1), aes(color = "a = 1")) +
    stat_function(fun = logit, args = list(a = 0.5), aes(color = "a = 0.5")) +
    stat_function(fun = logit, args = list(a = 2), aes(color = "a = 2"))
  
  #MAPAS (140)
  library(tidyverse)
  library(readr)
  #world_map <- read_delim('D:/2.CURSOS/1.CURSO DE R/Ciencia de dados com R/world_map.csv', delim = ";",
  #                        locale = locale(encoding = "ISO-8859-1",
  #                                        decimal_mark = ","))
  world_map <- read_delim('C:/Users/acampos/Documents/CURSO DE R/Ciencia de dados com R/world_map.csv', delim = ";",
                          locale = locale(encoding = "ISO-8859-1",
                                          decimal_mark = ","))  
  head(world_map)  
  
  #Utilizaremos os objeto (geom_polygon) para mapear os eixos x e y 
  
  world_map <- world_map %>%
  filter(id != "Antarctica")

  #exp.2015 <- read_delim('D:/2.CURSOS/1.CURSO DE R/Ciencia de dados com R/EXP_2015_PAIS.csv', delim = ";",
  #                       locale = locale(encoding = "ISO-8859-1"),
  #                       col_types = 'ccd')
  exp.2015 <- read_delim('C:/Users/acampos/Documents/CURSO DE R/Ciencia de dados com R/EXP_2015_PAIS.csv', delim = ";",
                         locale = locale(encoding = "ISO-8859-1"),
                         col_types = 'ccd')
  head(exp.2015)

  world_map <- left_join(world_map, exp.2015, by = 'NO_PAIS_POR') %>%
    mutate(class = cut(VL_FOB, breaks = c(0, 1e6, 10e6, 100e6, 1e9, 10e9, Inf)))
  
  ggplot(world_map, aes(x = long, y = lat, group = group)) +
    geom_polygon(aes(fill = class), col = 'black', size = 0.1) +
    scale_fill_brewer(palette = "Blues", breaks = levels(world_map$class),
                      labels = c("(0, 1Mi]", "(1 Mi,10Mi]", "(10 Mi,100Mi]",
                                 "(100 Mi,1Bi]", "(1 Bi,10Bi]", "> 10Bi"),
                      na.value = 'grey70') +
    labs(title = "Exporta??es Brasileiras - 2015",
         subtitle = 'Valor FOB') +
    coord_quickmap() + 
    theme(axis.text.x = element_blank(),
          axis.text.y = element_blank(),
          axis.title.x = element_blank(),
          axis.title.y = element_blank())
  
  #Pacotes para leitura de shapefile:
        # rgdal
        # maptools
        # rgeos
        # broom
  
  #Funcao para listar camadas de um shapefile: 
        # orgListLayers() 
  
  #Funcao para ler o arquivo shapfile:
        # readOGR()
  
  #Funcao para conversao de formato para o ggplot2 gerar a visualizacao e tambem transformar objetos de outras classes para data.frames:
        # tidy()
  install.packages('rgdal')
  install.packages('maptools')
  install.packages('rgeos')
  library(rgdal)
  library(maptools)
  library(rgeos)
  library(broom)
  
  ogrListLayers('C:/Users/acampos/Documents/CURSO DE R/Ciencia de dados com R/mapas/mg_municipios/31MUE250GC_SIR.shp')  
  
  mg_mapa <- readOGR('C:/Users/acampos/Documents/CURSO DE R/Ciencia de dados com R/mapas/mg_municipios/31MUE250GC_SIR.shp', layer = '31MUE250GC_SIR')
  
  mg_mapa_data <- data.frame(mg_mapa)

  head(mg_mapa_data)

  #mg_mapa <- fortify(mg_mapa, region = "CD_GEOCMU")
  mg_mapa <- tidy(mg_mapa, region = "CD_GEOCMU")
  
  #Adicionando nome aos municipios
  mg_mapa <- left_join(mg_mapa, mg_mapa_data, by = c("id" = "CD_GEOCMU"))
  
  #gerando o mapa
  ggplot(mg_mapa, aes(x = long, y = lat, group = group)) +
    geom_polygon(color = 'black', fill = 'white', size = 0.1) +
    coord_quickmap()
  
  #adicionando dados ao mapa
  REM_RAIS_MG_2015 <- read_delim('C:/Users/acampos/Documents/CURSO DE R/Ciencia de dados com R/REM_RAIS_MG_2015.csv',
                                 delim = ";",
                                 col_types = 'cd',
                                 skip = 1,
                                 col_names = c("Mun.Trab", "mediana"),
                                 locale = locale(encoding = 'ISO-8859-1'))

  REM_RAIS_MG_2015 <- REM_RAIS_MG_2015 %>%
    mutate(mediana = ifelse(mediana > 1500, 1500, mediana))
  head(REM_RAIS_MG_2015)
  
  mg_mapa <- mg_mapa %>%
    mutate(Mun.Trab = substr(id, 1, 6))

  mg_mapa <- left_join(mg_mapa, REM_RAIS_MG_2015, by = "Mun.Trab")  
  
  #criando a visualizacao
  cores.viridis <- viridis::viridis(n = 20)

  #atualizado
  
