import pandas as pd

# Dados simulados – fornecedores
dados_fornecedores = {
    'CNPJ': [
        '12.345.678/0001-90',  # CNPJ
        '123.456.789-00',      # CPF
        '98.765.432/0001-00',  # CNPJ
        '987.654.321-99'       # CPF
    ]
}

fornecedores_df = pd.DataFrame(dados_fornecedores)

# Função para limpar o CNPJ/CPF
def limpar_cnpj(cnpj):
    return cnpj.replace('.', '').replace('/', '').replace('-', '').replace(' ', '')

# Criar nova coluna com CNPJ limpo e classificar como CPF ou CNPJ
fornecedores_df['CNPJ_Limpo'] = fornecedores_df['CNPJ'].apply(limpar_cnpj)
fornecedores_df['TipoPessoa'] = fornecedores_df['CNPJ_Limpo'].apply(lambda x: 'CPF' if len(x) == 11 else 'CNPJ')

# Contar total de fornecedores por tipo
total_cnpj = fornecedores_df[fornecedores_df['TipoPessoa'] == 'CNPJ']['CNPJ'].nunique()
total_cpf = fornecedores_df[fornecedores_df['TipoPessoa'] == 'CPF']['CNPJ'].nunique()

# Dados simulados – ordens de serviço com funilaria
dados_fluxo = {
    'CNPJ': [
        '12.345.678/0001-90',
        '123.456.789-00',
        '12.345.678/0001-90',
        '987.654.321-99'
    ],
    'PA_FUNILARIA': [
        'Sim',
        'Não',
        'Sim',
        'Sim'
    ]
}

fluxo_os_df = pd.DataFrame(dados_fluxo)

# Contar fornecedores únicos com serviço de funilaria
fornecedores_com_funilaria = fluxo_os_df[fluxo_os_df['PA_FUNILARIA'] == 'Sim']['CNPJ'].nunique()

# Exibir resultados
print("📊 Resultados:")
print(f"Total de fornecedores com CNPJ: {total_cnpj}")
print(f"Total de fornecedores com CPF: {total_cpf}")
print(f"Fornecedores que prestam serviço de funilaria: {fornecedores_com_funilaria}")
