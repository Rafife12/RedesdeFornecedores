# 📊 Rede de Fornecedores - Power BI

Este projeto tem como objetivo apresentar uma análise interativa e visual da Rede de Fornecedores da LM Soluções de Mobilidade, utilizando o Microsoft Power BI.

---

## 🔎 Visão Geral

Dashboard inicial com informações consolidadas de fornecedores ativos, classificações, grupos econômicos, e filtros interativos por nome, CNPJ, ramo de atividade, estado, entre outros.

![Visão Geral](https://github.com/user-attachments/assets/21dc691a-2ec5-455c-bc7f-fc53e1e92771)

---

## 📍 Ocorrências

Visualize o total de ocorrências por motivo, distribuição geográfica dos fornecedores e evolução mensal das ocorrências por tipo.

![Ocorrências](https://github.com/user-attachments/assets/f6912366-7b34-4801-8c30-b3f6000c9854)

---

## 📅 Agendamentos

Dashboard com total de agendamentos, fornecedores envolvidos, tipos de manutenção (corretiva, preventiva e sinistro), e análises por mês e cidade.

![Agendamentos](https://github.com/user-attachments/assets/050376c4-c100-43cb-bf46-3cab6789dc05)

---

## 🏠 Página Inicial

Tela de navegação do relatório com botões direcionando para as principais seções: Visão Geral, Ocorrências e Agendamentos.

![Home](https://github.com/user-attachments/assets/44bd2d89-9afa-4703-88f4-c9f05f139452)

---

## 🧩 Modelo de Dados

Relacionamentos entre as tabelas utilizadas no projeto, como `FORNECEDORES`, `AGEN_OCORR`, `PL_FLUXO_OS`, `PI_OCORRENCIA_AREA`, entre outras.

![Modelo de Dados](https://github.com/user-attachments/assets/fe6ff49d-b6dc-4827-9169-e6d56c78e9ee)

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


