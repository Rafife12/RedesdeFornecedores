# 📊 Rede de Fornecedores - Power BI

Este projeto tem como objetivo apresentar uma análise interativa e visual da Rede de Fornecedores da LM Soluções de Mobilidade, utilizando o Microsoft Power BI.

---

## 🔎 Visão Geral

Dashboard inicial com informações consolidadas de fornecedores ativos, classificações, grupos econômicos, e filtros interativos por nome, CNPJ, ramo de atividade, estado, entre outros.

![Visão Geral](./visao_geral.png)

---

## 📍 Ocorrências

Visualize o total de ocorrências por motivo, distribuição geográfica dos fornecedores e evolução mensal das ocorrências por tipo.

![Ocorrências](./ocorrencias.png)

---

## 📅 Agendamentos

Dashboard com total de agendamentos, fornecedores envolvidos, tipos de manutenção (corretiva, preventiva e sinistro), e análises por mês e cidade.

![Agendamentos](./agendamentos.png)

---

## 🏠 Página Inicial

Tela de navegação do relatório com botões direcionando para as principais seções: Visão Geral, Ocorrências e Agendamentos.

![Home](./home.png)

---

## 🧩 Modelo de Dados

Relacionamentos entre as tabelas utilizadas no projeto, como `FORNECEDORES`, `AGEN_OCORR`, `PL_FLUXO_OS`, `PI_OCORRENCIA_AREA`, entre outras.

![Modelo de Dados](./modelo_dados.png)

---

## 📁 Estrutura dos Dados

As principais tabelas envolvidas são:

- `AGEN_OCORR`: Tabela de agendamentos e ocorrências.
- `FORNECEDORES`: Informações cadastrais dos fornecedores.
- `PL_FLUXO_OS`: Fluxo das ordens de serviço.
- `PI_OCORRENCIA_AREA`: Detalhes da ocorrência por área.
- `dCalendario`: Tabela calendário para análise temporal.
- `Consulta`: Tabela de referência de grupos econômicos e razão social.

---

## 🚀 Funcionalidades

- Filtros dinâmicos por múltiplos critérios (nome, estado, grupo econômico etc.)
- Análise de ocorrências por motivo e região
- Agendamentos por fornecedor, tipo e mês
- Classificação de fornecedores (Ouro, Prata, Bronze)
- Navegação intuitiva entre páginas

---

## 🛠️ Ferramentas Utilizadas

- [Power BI Desktop](https://powerbi.microsoft.com/)
- Modelagem relacional
- DAX para medidas e KPIs

---

## 📌 Observações

Este projeto é apenas uma amostra visual e analítica, ideal para gestores acompanharem o desempenho e qualidade da rede de fornecedores com foco em mobilidade corporativa.

---

## 👨‍💼 Desenvolvido por

**Rafael Souza Da Silva**  
[LinkedIn](https://www.linkedin.com/) *(https://www.linkedin.com/in/rafael-silva-a5a594268/)*
