# IGTI 2021.3 MBA Engenharia de dados
## BootCamp Engenheiro de Dados Cloud
## Módulo 1 Fundamentos em Arquitetura de Dados e Soluções em Nuvem
## Desafio 
## Anderson L E Santo  
***
[![Test on PR](https://github.com/andersonesanto/igti-2021-3-ALES-engenheiro-dados-cloud-mod1-desafio/actions/workflows/test.yaml/badge.svg)](https://github.com/andersonesanto/igti-2021-3-ALES-engenheiro-dados-cloud-mod1-desafio/actions/workflows/test.yaml)
***
### Objetivos
Exercitar os seguintes conceitos trabalhados no Módulo:
- Arquiteturas de Dados em Nuvem;
- Implementação de Data Lake em solução Cloud de Storage;
- Implementação de Processamento de Big Data;
- Esteiras de Deploy, utilizando o Github;
- IaC com Terraform  
### Atividades  
Os alunos deverão desempenhar as seguintes atividades:
1. Realizar a ingestão dos dados do Censo Escolar 2020 no AWS S3 ou outro storage de nuvem de sua escolha. Dados disponíveis em: https://www.gov.br/inep/pt-br/acesso-a-informacao/dados-abertos/microdados/censo-escolar. O método de ingestão é livre. Os dados devem ser ingeridos na zona raw ou zona crua ou zona bronze do seu Data Lake.  
2. Utilizar alguma tecnologia de Big Data para transformar os dados no formato parquet e escrevê-los na zona staging ou zona silver do seu Data Lake.  
3. Fazer a integração com alguma engine de Data Lake. No caso da AWS, você deve:  
    - Configurar um Crawler para a pasta onde os arquivos na staging estão depositados;
    - Validar a disponibilização no Athena.
4. Caso deseje utilizar o Google, disponibilize os dados para consulta usand/sso o Big Query. Caso utilize outra nuvem, a escolha da engine de Data Lake é livre.
5. Use a ferramenta de Big Data ou a engine de Data Lake (ou o BigQuery, se escolher trabalhar com Google Cloud) para investigar os dados e responder às perguntas do desafio.
6. Quando o desenho da arquitetura estiver pronto, crie um repositório no Github (ou Gitlab, ou Bitbucket, ou outro de sua escolha) e coloque o código IaC para a implantação da infraestrutura. Nenhum recurso deve ser implantado manualmente./s