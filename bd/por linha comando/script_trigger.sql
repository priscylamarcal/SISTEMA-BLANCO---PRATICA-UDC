SET TERM ^ ;



CREATE OR ALTER TRIGGER PAISES_BI FOR PAISES
ACTIVE BEFORE INSERT POSITION 0
AS
BEGIN
    if (NEW.CODPAIS = 0) THEN
        new.CODPAIS = GEN_ID(GEN_PAISES, 1);
END
^
SET TERM ; ^

SET TERM ^ ;



CREATE OR ALTER TRIGGER DEPARTAMENTOS_BI FOR DEPARTAMENTOS
ACTIVE BEFORE INSERT POSITION 0
AS
begin
    if (NEW.coddepartamento = 0) THEN
        new.coddepartamento = GEN_ID(gen_departamentos, 1);
end
^
SET TERM ; ^

SET TERM ^ ;



CREATE OR ALTER TRIGGER CORES_BI FOR CORES
ACTIVE BEFORE INSERT POSITION 0
AS
begin
    if (NEW.CODCOR = 0) THEN
        new.CODCOR = GEN_ID(gen_cores, 1);
end
^
SET TERM ; ^

SET TERM ^ ;



CREATE OR ALTER TRIGGER COLECOES_BI FOR COLECOES
ACTIVE BEFORE INSERT POSITION 0
AS
begin
    if (NEW.CODCOLECAO = 0) THEN
        new.CODCOLECAO = GEN_ID(gen_colecoes, 1);
end
^
SET TERM ; ^

SET TERM ^ ;



CREATE OR ALTER TRIGGER GRUPOS_ROUPAS_BI FOR GRUPOS_ROUPAS
ACTIVE BEFORE INSERT POSITION 0
AS
begin
    if (NEW.codgrupo = 0) THEN
        new.codgrupo = GEN_ID(gen_grupos_roupas, 1);
end
^
SET TERM ; ^

SET TERM ^ ;



CREATE OR ALTER TRIGGER MARCAS_BI FOR MARCAS
ACTIVE BEFORE INSERT POSITION 0
AS
begin
    if (NEW.codmarca = 0) THEN
        new.codmarca = GEN_ID(gen_marcas, 1);
end
^
SET TERM ; ^

SET TERM ^ ;



CREATE OR ALTER TRIGGER SIGLA_TAMANHOS_BI FOR SIGLA_TAMANHOS
ACTIVE BEFORE INSERT POSITION 0
AS
begin
    if (NEW.codsigla = 0) THEN
        new.codsigla = GEN_ID(gen_sigla_tamanhos, 1);
end
^
SET TERM ; ^

SET TERM ^ ;



CREATE OR ALTER TRIGGER FORMAS_PAGAMENTOS_BI FOR FORMAS_PAGAMENTOS
ACTIVE BEFORE INSERT POSITION 0
AS
begin
    if (NEW.codforma = 0) THEN
        new.codforma = GEN_ID(gen_formas_pagamentos, 1);
end
^
SET TERM ; ^

SET TERM ^ ;



CREATE OR ALTER TRIGGER TIPOS_CONTATOS_BI FOR TIPOS_CONTATOS
ACTIVE BEFORE INSERT POSITION 0
AS
begin
    if (NEW.codtipo = 0) THEN
        new.codtipo = GEN_ID(gen_tipos_contatos, 1);
end
^
SET TERM ; ^

SET TERM ^ ;



CREATE OR ALTER TRIGGER ESTADOS_BI FOR ESTADOS
ACTIVE BEFORE INSERT POSITION 0
AS
begin
    if (NEW.codestado = 0) THEN
        new.codestado = GEN_ID(gen_estados, 1);
end
^
SET TERM ; ^

SET TERM ^ ;



CREATE OR ALTER TRIGGER CIDADES_BI FOR CIDADES
ACTIVE BEFORE INSERT POSITION 0
AS
begin
    if (NEW.codcidade = 0) THEN
        new.codcidade = GEN_ID(gen_cidades, 1);
end
^
SET TERM ; ^

SET TERM ^ ;



CREATE OR ALTER TRIGGER CARGOS_BI FOR CARGOS
ACTIVE BEFORE INSERT POSITION 0
AS
begin
    if (NEW.codcargo = 0) THEN
        new.codcargo = GEN_ID(gen_cargos, 1);
end
^
SET TERM ; ^

SET TERM ^ ;



CREATE OR ALTER TRIGGER CONDICOES_PAGAMENTOS_BI FOR CONDICOES_PAGAMENTOS
ACTIVE BEFORE INSERT POSITION 0
AS
begin
    if (NEW.codcondicao = 0) THEN
        new.codcondicao = GEN_ID(gen_condicoes_pagamentos, 1);
end
^
SET TERM ; ^

SET TERM ^ ;



CREATE OR ALTER TRIGGER FORNECEDORES_BI FOR FORNECEDORES
ACTIVE BEFORE INSERT POSITION 0
AS
begin
    if (NEW.codforn = 0) THEN
        new.codforn = GEN_ID(gen_fornecedores, 1);
end
^
SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER TRIGGER FUNCIONARIOS_BI FOR FUNCIONARIOS
ACTIVE BEFORE INSERT POSITION 0
AS
begin
    if (NEW.codfunc = 0) THEN
        new.codfunc = GEN_ID(gen_funcionarios, 1);
end
^
SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER TRIGGER CLIENTES_BI FOR CLIENTES
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.codcliente = 0) then
     new.codcliente = gen_id( gen_clientes, 1 );
end
^
SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER TRIGGER ROUPAS_BI FOR ROUPAS
ACTIVE BEFORE INSERT POSITION 0
AS
begin
    if (NEW.cod_roupa = 0) THEN
        new.cod_roupa = GEN_ID(gen_roupas, 1);
end
^
SET TERM ; ^
