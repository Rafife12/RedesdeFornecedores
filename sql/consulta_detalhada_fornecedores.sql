
-- Script T-SQL para SQL Server
-- Sistema: etools_lm
-- Autor: Rafael Souza da Silva

SELECT
    tf.A008_cd_fornecedor,
    tf.A008_cod_sist_externo,
    tf.A008_nome_fornecedor,
    ra.A278_dsc_ramo_atividade,
    reverse(stuff(reverse((
        SELECT T461.A461_nome_marca + ' ;' AS 'data()'
        FROM etools_lm.dbo.T468_FORNECEDOR_MARCA T468 WITH (NOLOCK)
        INNER JOIN etools_lm.dbo.T461_MARCA T461 WITH (NOLOCK)
            ON T468.A461_cd_marca = T461.A461_cd_marca 
            AND tf.A008_cd_fornecedor = T468.A008_cd_fornecedor 
            AND T468.A468_ind_desativado = 0
        FOR XML PATH('')
    )), 1, 2, '')) AS MARCAS,
    reverse(stuff(reverse((
        SELECT T875.A875_nome_classificacao_frota + ' ;' AS 'data()'
        FROM etools_lm.dbo.T877_FORNECEDOR_CLASSIFICACAO_FROTA T887 WITH (NOLOCK)
        INNER JOIN etools_lm.dbo.T875_CLASSIFICACAO_FROTA T875 WITH (NOLOCK)
            ON T887.A875_cd_classificacao_frota = T875.A875_cd_classificacao_frota 
            AND T887.A008_cd_fornecedor = tf.A008_cd_fornecedor 
            AND T887.A877_ind_desativado = 0
        FOR XML PATH('')
    )), 1, 2, '')) AS CLASSIFICACAO_FROTA,
    reverse(stuff(reverse((
        SELECT T049.A049_dsc_tipo_servico + ' ;' AS 'data()'
        FROM etools_lm.dbo.T050_FORNECEDOR_TIPO_SERVICO T050 WITH (NOLOCK)
        INNER JOIN etools_lm.dbo.T049_TIPO_SERVICO T049 WITH (NOLOCK)
            ON T050.A049_cd_tipo_servico = T049.A049_cd_tipo_servico 
            AND T050.A050_ind_desativado = 0
        WHERE T050.A008_cd_fornecedor = tf.A008_cd_fornecedor
        FOR XML PATH('')
    )), 1, 2, '')) AS TIPOS_SERVICOS,
    tf.A008_razao_social,
    tf.A008_CPF,
    tf.A008_CNPJ,
    tf.A008_email,
    tf.A008_longitude AS LONGITUDE,
    tf.A008_latitude AS LATITUDE,
    tf.A008_endereco,
    tf.A008_numero,
    tf.A008_complemento,
    tf.A008_bairro,
    tf.A008_CEP,
    tf.A047_cd_cidade,
    tf.A008_cod_sist_externo,
    tf.a008_ind_inativo,
    tf.A008_status,
    CIDA.A047_nm_cidade,
    EST.A046_nm_estado,
    EST.A046_regiao,
    EST.A046_sigla,
    (SELECT TOP 1 CONVERT(VARCHAR, A233_dta_inclusao, 103) + ' ' + CONVERT(VARCHAR, A233_dta_inclusao, 108) 
     FROM etools_lm.dbo.T233_OCO_FORNECEDOR WITH (NOLOCK) 
     WHERE A008_cd_fornecedor = tf.A008_cd_fornecedor 
     ORDER BY A233_dta_inclusao DESC) AS DATA_MARCACAO_ULTIMO_AGENDAMENTO,
    CONVERT(VARCHAR, tf.A008_dt_ult_alt, 103) + ' ' + CONVERT(VARCHAR, tf.A008_dt_ult_alt, 108) AS DATA_ULTIMA_ATUALIZACAO,
    CASE WHEN tf.A008_ind_acordo_comercial = '1' THEN 'Sim' ELSE 'Não' END AS PA,
    CASE WHEN tf.A008_status = '1' THEN 'Ativo' ELSE 'Bloqueado' END AS SITUACAO,
    CONVERT(VARCHAR, tf.A008_dt_inc, 103) + ' ' + CONVERT(VARCHAR, tf.A008_dt_inc, 108) AS DATA_CADASTRO,
    CASE WHEN ISNULL(tf.A008_ind_leva_traz, 0) = 1 THEN 'SIM' ELSE 'NAO' END AS LEVA_E_TRAZ,
    CASE WHEN ISNULL(tf.A008_ind_acordo_pa_funilaria, 0) = 1 THEN 'SIM' ELSE 'NAO' END AS PA_FUNILARIA
FROM etools_lm.dbo.T008_FORNECEDOR tf WITH (NOLOCK)
LEFT JOIN etools_lm.dbo.T047_CIDADE CIDA WITH (NOLOCK)
    ON tf.A047_cd_cidade = CIDA.A047_cd_cidade
LEFT JOIN etools_lm.dbo.T046_ESTADO EST WITH (NOLOCK)
    ON CIDA.A046_sigla = EST.A046_sigla
LEFT JOIN etools_lm.dbo.T278_RAMO_ATIVIDADE RA WITH (NOLOCK)
    ON tf.A278_cod_ramo_atividade = ra.A278_cod_ramo_atividade;
