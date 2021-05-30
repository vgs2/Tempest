# Intruções de uso:  
Assim como no desafio, este repositório está dividido em duas partes, uma que lida com banco de dados (que é subdividida em mais duas partes, uma para a modelagem relacional e outra para a modelagem dimensional) e uma outra parte que lida com o cálculo de entropia.  

## Requisitos  
1 - Jupyter Notebook  
2 - Bibliotecas do python: pandas e numpy
2 - Docker  
3 - Docker-compose  

## Para inicializar o banco de dados, criar as tabelas, as povoar e fazer as consultas:
1 - Com o terminal vá para a pasta sql e execute o seguinte comando: sudo docker-compose up  
2 - Com o banco de dados inicializado é só se conectar ao terminal do banco utilizando o comando: sudo docker exec -it postgres-tempest  psql -U postgres  
3 - Agora basta rodar os scripts encontrados em dimensional_queries.sql e em relational_queries.sql para fazer as consultas dos bancos dimensionais e relacionais, respectivamente.
  
  
  
## Para rodar a parte de cálculo de entropia:
É só abrir o arquivo data_science/notebook.ipynb e executar as células na ordem apresentada!    
  
Obrigado!