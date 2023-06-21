# O Enigma SQL🕵️‍♀️🔍


## 📝 Descrição

Este projeto é como um jogo de detetive, mas em vez de procurar pistas em um tabuleiro, você está procurando pistas em um banco de dados! O jogo se chama "Aventura na Floresta Encantada", e é um mistério de assassinato que você precisa resolver. Para ganhar, você precisa descobrir quem é o culpado e provar isso com o ID único do suspeito.

## 🎯 Objetivo

O objetivo final é como um jogo de adivinhação. Você precisa descobrir quem é o culpado e provar isso com o ID único do suspeito. É como um jogo de detetive, mas em vez de procurar pistas em um tabuleiro, você está procurando pistas em um banco de dados!

## 💻 Tecnologias

Nós usamos algumas ferramentas diferentes para criar este jogo. Usamos MySQL para o banco de dados, que é onde todas as informações do jogo são armazenadas. Usamos C# para o back-end, que é a parte do jogo que você não vê, mas que faz tudo funcionar. E usamos HTML/CSS para o front-end, que é a parte do jogo que você vê e com a qual interage.

## 🕹️ Como o Jogo Funciona

O jogo é organizado em quatro partes diferentes que trabalham juntas:


   1. **Apresentação**: Esta é a parte do jogo que você vê. É onde você insere suas perguntas e vê as respostas.
   2. **Serviço**: Esta é a parte do jogo que pega as perguntas que você fez e as prepara para serem enviadas ao banco de dados.
   3. **DAL (Data Access Layer)**: Esta é a parte do jogo que realmente envia suas perguntas para o banco de dados.
   4. **Banco de Dados**: Esta é a parte do jogo que contém todas as informações. Quando recebe suas perguntas, procura as respostas e as envia de volta para você.


Quando você faz uma pergunta, ela passa por todas essas partes na seguinte ordem: Apresentação -> Serviço -> DAL -> Banco de dados. Depois que o banco de dados encontra a resposta, ele a envia de volta para você na ordem inversa: Banco de dados -> DAL -> Serviço -> Apresentação.

## Como Rodar o Projeto

1. **Banco de dados**: Baixe e instale o SGBD `MySQL` no computador seguindo o link abaixo

    ```
    https://dev.mysql.com/downloads/installer/
    ```
    
    - Ao finalizar a instalação, certifique que as configurações do SGBD sejam assim: Server=localhost, Database=sql_mystery, Uid=root; Pwd=1234;
    - Após finalizar a configuração, entre na pasta MySQL Scripts e monte o banco de dados rodando o script `SQL-MYSTERY-DDL` para montar o banco de dados;
    - Em seguida rode o `CREATE-USER` para criar o usuário que será usado na conexão, com suas devidas restrições;
    - Em seguida rode o `TRIGGERS` para criar os gatilhos, objetos que, quando um comando é rodado, podem impedi-lo, fazer algo antes ou depois dele ser executado, etc.
    - Em seguida rode o `SQL-MYSTERY-DML` para inserir os dados no banco de dados.
   
2. **Framework.NET**: Utilize o `Visual Studio` para baixar as extensões necessarias

    ```
    https://visualstudio.microsoft.com/pt-br/downloads/
    ```

3. **Clone o repositório**: Para clonar o repositório, você precisa ter o `git` instalado em seu computador. Abra o terminal e execute o seguinte comando


    ```
    git clone https://github.com/duducaa/SQL-MYSTERY.git
    ```
    
4. **String de conexão com o banco**: Conecte o MySQL com no Visual Studio. Nos arquivos UserCmdInsert.cs e UserCmdSelect.cs é possível encontrar a string de conexão com o banco. Ela terá esse formato:
   
  
   ```
   Server=myServerAddress;Database=myDataBase;Uid=myUsername;Pwd=myPassword;
   ```

5. **Rodar o Back-end**: Para rodar o back-end, você pode fazer de dois jeitos
   - Visual Studio:
      - Vá na pasta SQL_MYSTERY e clique no arquivo .sln e o Visual Studio será aberto.
      - No Visual Studio, vá no gerenciador de soluções
      - Clique com o botão direito no projeto MyProject.BLL.Service e depois em "definir como projeto de inicialização"
      - Inicie a depuração clicando na seta verde preenchida na parte de cima do VS
   - Pelo terminal:
      - Clique com o botão direito na pasta SQL_MYSTERY e em abrir no terminal
      - rode os seguintes comandos NESSA ORDEM:
         - dotnet restore: baixa as dependências necessárias para o projeto
         - dotnet build: compila o projeto e suas dependências
         - dotnet run --project .\MyProject.BLL.Service\MyProject.BLL.Service.csproj: roda o projeto de fato 

6. **Rodar o Front-end**: Rodar o front end para começar a jogar.
   - Vá até a pasta `FRONT-END` localizada no repositório e clicke duas vezes no arquivo `index` para rodar o projeto. 


# ESTRUTURAS DE ARMAZENAMENTO

         - SGBD: MySQL
         - Justificativa: foi escolhido o MySQL pela facilidade de integração com outras tecnologias, como Python e C#, pelo custo, por se tratar de um código aberto e grátis, por fim pelo suporte que há, tendo diversas comunidades para ajudar.
         - Nome da Instância/Conexão: SQL_MYSTERY.
         - Nome do banco de dados: SQL_MYSTERY.
         - Detalhamento da estrutura de armazenamento: (justificar as configurações) - Projeção para 5 anos:
           - Qual(is) Tablespaces / Filegroups que serão utilizados e a relação com os objetos do banco: será utilizado a tablespace users para as tabelas usuário, pontuação e história, e a padrão para as outras tabelas;
           - Configuração do tamanho das extensões e bloco de disco: por se tratar de um banco relativamente pequeno, não precisar de muito desempenho e ser read-only em todas as tabelas exceto tb_solução, será utilizado o tamanho padrão das extensões e bloco de disco;
           - Configuração do Percentual de Preenchimento do Bloco de Disco: por se tratar de um banco relativamente pequeno, não precisar de muito desempenho e ser read-only em todas as tabelas exceto tb_solução, será utilizado o percentual padrão.

# ESTRATÉGIA DE BACKUP

            - Backup completo regular - A cada duas semanas:
              - Por ele ser autocontido, ou seja, contém todas as informações necessárias para restaurar o sistema ou um conjunto de dados.
            - Backup Diferencial - A cada quatro dias:
              - Pois ele copia todos os dados que foram alterados desde o último backup completo. Isso significa que só precisa do último backup completo e do último backup diferencial para restaurar o banco de dados.


Nosso objetivo com este projeto é tornar o aprendizado de SQL divertido e emocionante. Esperamos que você goste de jogar este jogo tanto quanto gostamos de criá-lo! 🎉🎈


## Observação:bangbang:
O projeto ainda está em desenvolvimento, ou seja, o roteiro de investigação ainda está incompleto. Mas no momento já é possivel validar as Query do projeto.
