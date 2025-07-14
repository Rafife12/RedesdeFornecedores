#!/bin/bash

# === CONFIGURAÇÕES ===
SERVIDOR="SEU_SERVIDOR_SQL"
BANCO="etools_lm"
USUARIO="SEU_USUARIO"
SENHA="SUA_SENHA"
ARQUIVO_SQL="sql/consulta_detalhada_fornecedores.sql"
ARQUIVO_SAIDA="resultado_fornecedores.csv"

# === EXECUTANDO CONSULTA SQL ===
echo "Executando consulta no banco de dados $BANCO..."

sqlcmd -S "$SERVIDOR" -d "$BANCO" -U "$USUARIO" -P "$SENHA" -i "$ARQUIVO_SQL" -s ";" -W -o "$ARQUIVO_SAIDA"

if [ $? -eq 0 ]; then
    echo "Consulta executada com sucesso. Resultado salvo em: $ARQUIVO_SAIDA"
else
    echo "Erro ao executar a consulta."
fi
