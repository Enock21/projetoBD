-- Enock Bezerra Ferreira de Souza; 118210512
-- Vitor Mota Leite Diniz; 118210379
-- Caio César Nóbrega Borges; 118110050
-- João Victor Teodulo Wanderley; 118110068
-- João Pedro Silva de Melo; 118210796


--Questão 1:

SELECT CAP.DESCRICAO, CAP.NOTA
FROM ORDEM_DE_COMPRA OC, PRODUTO P, COMPRA_AVALIA_PRODUTO CAP
WHERE CAP.CODIGO_PRODUTO = P.CODIGO AND P.PRECO < OC.VALOR_FRETE AND CAP.CODIGO_COMPRA = OC.CODIGO;


--Questão 2:

SELECT CLI.EMAIL, CLI.NOME
FROM CLIENTE CLI, HISTORICO H, PRODUTO P
WHERE   CLI.CODIGO = H.CODIGO_CLIENTE AND
        P.NOME = 'Cabo HDMI' AND
        H.TEMPO_PAGINA > 3
INTERSECT
SELECT CLI.EMAIL, CLI.NOME
FROM CLIENTE CLI
WHERE NOT EXISTS (  SELECT *
                    FROM PRODUTO P, CARRINHO CAR, CARRINHO_TEM_PRODUTO CTP
                    WHERE   CLI.CODIGO = CAR.CODIGO_CLIENTE AND
                            CAR.CODIGO = CTP.CODIGO_CARRINHO AND
                            CTP.CODIGO_PRODUTO = P.CODIGO AND
                            P.NOME = 'Cabo HDMI');


--Questao 3

SELECT C.NOME 
FROM COMPRA_POSSUI_PRODUTO CPP, PRODUTO P, ORDEM_DE_COMPRA ODC, CLIENTE C 
WHERE ODC.CODIGO_CLIENTE = C.CODIGO
    AND ODC.CODIGO = CPP.CODIGO_COMPRA
    AND CPP.CODIGO_PRODUTO = P.CODIGO
    AND CPP.QUANTIDADE > 4
    AND P.NOME = 'Churrasqueira Elétrica com Controle Remoto';


--Questão 4:

SELECT F.NOME
FROM FORNECEDOR F
WHERE (SELECT AVG(P.PRECO)
        FROM FORNECEDOR_FORNECE_PRODUTO FP, PRODUTO P
        WHERE   FP.CODIGO_PRODUTO = P.CODIGO AND
                FP.CODIGO_FORNECEDOR = F.CODIGO) >= 241.00;


--questao 5

SELECT P.NOME
FROM ENDERECO E, CENTRO_DE_DISTRIBUICAO CDD, PROD_ESTOCADO_CENT_DIST PECD, PRODUTO P 
WHERE P.CODIGO = PECD.CODIGO_PRODUTO
    AND PECD.CODIGO_CENTRO_DISTRIBUICAO = CDD.CODIGO
    AND CDD.CODIGO_ENDERECO = E.CODIGO
    AND PECD.QUANTIDADE > 100
    AND E.ESTADO = 'São Paulo';

--questao 6

SELECT P.NOME, PECD.QUANTIDADE, CDD.NOME 
FROM CENTRO_DE_DISTRIBUICAO CDD, PROD_ESTOCADO_CENT_DIST PECD, PRODUTO P 
WHERE P.CODIGO = PECD.CODIGO_PRODUTO
    AND PECD.CODIGO_CENTRO_DISTRIBUICAO = CDD.CODIGO;
    --ainda precisa ordenar a tabela de quantidades, de forma que os centros de dostribuicao com maior quantia do produto aparecam primeiro (ordem decrescente);

--questao 7

SELECT E.CIDADE
FROM ENDERECO E, CENTRO_DE_DISTRIBUICAO CDD, PROD_ESTOCADO_CENT_DIST PECD, CATEGORIA C, PRODUTO P 
WHERE P.CODIGO_CATEGORIA = C.CODIGO
    AND P.CODIGO = PECD.CODIGO_PRODUTO
    AND PECD.CODIGO_CENTRO_DISTRIBUICAO = CDD.CODIGO
    AND CDD.CODIGO_ENDERECO = E.CODIGO
    AND C.NOME = 'limpeza'
    AND PECD.QUANTIDADE > 0;


--Questão 8:

SELECT P.*
FROM PRODUTO P
WHERE NOT EXISTS (  SELECT *
                    FROM HISTORICO H, CLIENTE C, ENDERECO E
                    WHERE H.CODIGO_PRODUTO = P.CODIGO AND
                            H.CODIGO_CLIENTE = C.CODIGO AND
                            C.CODIGO_ENDERECO = E.CODIGO AND
                            E.ESTADO = 'SP' AND
                            H.FINALIZOU = 'SIM');


--questao 9

SELECT NF.*
FROM NOTA_FISCAL NF
WHERE  NF.VALOR_TOTAL = (   SELECT max(NF.VALOR_TOTAL)
                            FROM CLIENTE C, ENDERECO E, ORDEM_DE_COMPRA OC, NOTA_FISCAL NF
                            WHERE OC.CODIGO_NOTA_FISCAL = NF.CODIGO AND
                                OC.CODIGO_CLIENTE = C.CODIGO AND
                                C.CODIGO_ENDERECO = E.CODIGO AND
                                E.ESTADO = 'PB' AND
                                E.CIDADE = 'Campina Grande' AND
                                C.DATA_NASCIMENTO >= TO_DATE('1990/01/01', 'yyyy/mm/dd') AND
                                C.DATA_NASCIMENTO < TO_DATE('2000/01/01', 'yyyy/mm/dd'));

--questao 10

SELECT T.NOME
FROM PRODUTO P, COMPRA_POSSUI_PRODUTO CPP, TRANSPORTADORA T, ORDEM_DE_COMPRA ODC 
WHERE T.CODIGO = ODC.CODIGO_TRANSPORTADORA
    AND ODC.CODIGO = CPP.CODIGO_COMPRA
    AND CPP.CODIGO_PRODUTO = P.CODIGO
    AND P.NOME  = 'Fogão 7 Bocas';

    --lista o nome das transportadoras que ja realizaram entregas do produto com nome Fogao 7 Bocas
    -- a questao pede as transportadoras que nunca realizaram essa entrega.

--Questao 11

SELECT F.NOME
 FROM CATEGORIA C, PRODUTO P, FORNECEDOR_FORNECE_PRODUTO FFP, FORNECEDOR F 
 WHERE F.CODIGO = FFP.CODIGO_FORNECEDOR
    AND FFP.CODIGO_PRODUTO = P.CODIGO
    AND P.CODIGO_CATEGORIA = C.CODIGO
    AND C.NOME != 'Verduras'
INTERSECT
SELECT F.NOME  
 FROM CATEGORIA C, PRODUTO P, FORNECEDOR_FORNECE_PRODUTO FFP, FORNECEDOR F 
 WHERE F.CODIGO = FFP.CODIGO_FORNECEDOR
    AND FFP.CODIGO_PRODUTO = P.CODIGO
    AND P.CODIGO_CATEGORIA = C.CODIGO
    AND C.NOME != 'Temperos';

--QUESTAO 13 --

CREATE VIEW novaVisao AS
    SELECT o.codigo, status, p.codigo as codigo_produto, p.nome as nome_produto, cli.nome as nome_cliente, cli.codigo as codigo_cliente
    FROM ORDEM_DE_COMPRA o , PRODUTO p, CLIENTE cli
    WHERE o.codigo = p.codigo;

--QUESTAO 14 --

create or replace TRIGGER atualizaP BEFORE INSERT OR UPDATE OF status on ORDEM_DE_COMPRA
FOR EACH ROW
WHEN(new.status = 'FINALIZADA')
DECLARE
    codigoDoClienteQuePediu ORDEM_DE_COMPRA.codigo_cliente%type := :OLD.codigo_cliente;
BEGIN
    IF :OLD.status != :NEW.status
        THEN
         UPDATE Cliente
         SET pontos = pontos + 100
         WHERE codigo = codigoDoClienteQuePediu;
    END IF;
END;

---------------------------------INSERÇÃO DE DADOS PARA TESTE---------------------------------


/*
--DADOS PARA TESTAR A QUESTAO 1:--

--Conjunto 1 com preco maior que o frete:--
INSERT INTO Categoria Values(1, 'alimentos');

INSERT INTO Produto Values(1, 'miojo', 1.00, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'um miojo', 'causa cancer', TO_DATE('2022/05/03', 'yyyy/mm/dd'), 1);

INSERT INTO Endereco Values(1, 'A', 'A', 'A', 'A', 'A', 'A');

INSERT INTO Cliente Values(1, 'Armando', 'da Silva', 'armando@gmail', TO_DATE('1987/05/03', 'yyyy/mm/dd'), 0, 'Masculino', TO_DATE('2012/05/03', 'yyyy/mm/dd'), null, 1);

INSERT INTO Nota_Fiscal Values(1, '1', '1', 'inscricao estadual A', 'chave A', 1.00);

INSERT INTO Transportadora Values(1, 'Transportadora A', 'Email TA', 'Tel A', 'Site A', 1);

INSERT INTO Ordem_de_Compra Values(1, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'AGUARDANDO PAGAMENTO', 00.00, 00.00, 1, 1, 1, 1);

INSERT INTO Compra_Avalia_Produto Values(1, 1, 7, 'descricao avaliacao');


--Conjunto 2 com preco menor do que o frete (esperado):--

INSERT INTO Produto Values(2, 'feijao', 2.00, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'desc', 'esp', TO_DATE('2022/05/03', 'yyyy/mm/dd'), 1);

INSERT INTO Endereco Values(2, 'B', 'B', 'B', 'B', 'B', 'B');

INSERT INTO Cliente Values(2, 'Carlos', 'da Silva', 'armando@gmail', TO_DATE('1987/05/03', 'yyyy/mm/dd'), 0, 'Masculino', TO_DATE('2012/05/03', 'yyyy/mm/dd'), null, 1);

INSERT INTO Nota_Fiscal Values(2, '1', '1', 'inscricao estadual A', 'chave A', 2.00);

INSERT INTO Transportadora Values(2, 'Transportadora B', 'Email TA', 'Tel A', 'Site A', 1);

INSERT INTO Ordem_de_Compra Values(2, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'AGUARDANDO PAGAMENTO', 00.00, 20.00, 1, 1, 2, 1);

INSERT INTO Compra_Avalia_Produto Values(2, 2, 8, 'descricao avaliacao B');
*/


/*
--DADOS PARA TESTAR A QUESTAO 2:--

--Conjunto 1 com cliente olhando 'Cabo HDMI' por mais de 3 minutos e nao o adicionando ao carrinho (esperado):--
INSERT INTO Categoria Values(1, 'eletronicos');

INSERT INTO Produto Values(1, 'Cabo HDMI', 20.00, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'cabo HDMI descricao', 'cabo HDMI espeficicacao', TO_DATE('2022/05/03', 'yyyy/mm/dd'), 1);

INSERT INTO Endereco Values(1, 'A', 'A', 'A', 'A', 'A', 'A');

INSERT INTO Cliente Values(1, 'Armando', 'da Silva', 'armando@gmail', TO_DATE('1987/05/03', 'yyyy/mm/dd'), 0, 'Masculino', TO_DATE('2012/05/03', 'yyyy/mm/dd'), null, 1);

INSERT INTO HISTORICO VALUES (1, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 4, 'NAO', 1, 1);

INSERT INTO CARRINHO VALUES (1, NULL, 1);


--Conjunto 2 com cliente não olhando 'Cabo HDMI' por mais de 3 minutos e o adicionando ao carrinho:--

INSERT INTO Endereco Values(2, 'B', 'B', 'B', 'B', 'B', 'B');

INSERT INTO Cliente Values(2, 'Carlos', 'Bezerra', 'carlos@gmail', TO_DATE('1987/05/03', 'yyyy/mm/dd'), 0, 'Masculino', TO_DATE('2012/05/03', 'yyyy/mm/dd'), null, 2);

INSERT INTO HISTORICO VALUES (2, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 2, 'NAO', 1, 2);

INSERT INTO CARRINHO VALUES (2, NULL, 2);

INSERT INTO CARRINHO_TEM_PRODUTO VALUES(1, 2, 1);


--Conjunto 3 com cliente olhando 'Cabo HDMI' por mais de 3 minutos e o adicionando ao carrinho:--

INSERT INTO Endereco Values(3, 'C', 'C', 'C', 'C', 'C', 'C');

INSERT INTO Cliente Values(3, 'Roberta', 'da Conceição', 'roberta@gmail', TO_DATE('1987/05/03', 'yyyy/mm/dd'), 0, 'Feminino', TO_DATE('2012/05/03', 'yyyy/mm/dd'), null, 3);

INSERT INTO HISTORICO VALUES (3, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 4, 'NAO', 1, 3);

INSERT INTO CARRINHO VALUES (3, NULL, 3);

INSERT INTO CARRINHO_TEM_PRODUTO VALUES(1, 3, 1);
*/


/*
--DADOS PARA TESTAR A QUESTÃO 4:

--Conjunto 1: fornecedor com preco medio acima de 241 (273.3) (esperado)
INSERT INTO Categoria Values(1, 'eletronicos');

INSERT INTO Produto Values(1, 'Celular nokia', 300.00, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'celular descricao', 'celular espeficicacao', TO_DATE('2022/05/03', 'yyyy/mm/dd'), 1);

INSERT INTO Produto Values(2, 'Celular sansung', 250.00, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'celular descricao', 'celular espeficicacao', TO_DATE('2022/05/03', 'yyyy/mm/dd'), 1);

INSERT INTO Produto Values(3, 'Celular motorola', 270.00, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'celular descricao', 'celular espeficicacao', TO_DATE('2022/05/03', 'yyyy/mm/dd'), 1);

INSERT INTO Endereco Values(1, 'A', 'A', 'A', 'A', 'A', 'A');

INSERT INTO FORNECEDOR VALUES(1, 'Jubilau', 'jubilau.com', 'jubilau@gmail', '4002-8922', 1);

INSERT INTO FORNECEDOR_FORNECE_PRODUTO VALUES(1, 1);

INSERT INTO FORNECEDOR_FORNECE_PRODUTO VALUES(2, 1);

INSERT INTO FORNECEDOR_FORNECE_PRODUTO VALUES(3, 1);


--Conjunto 2: fornecedor com preco medio igual a 241 (241) (esperado)
INSERT INTO Produto Values(4, 'Celular nokia 2', 241.00, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'celular descricao', 'celular espeficicacao', TO_DATE('2022/05/03', 'yyyy/mm/dd'), 1);

INSERT INTO Produto Values(5, 'Celular sansung 2', 241.00, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'celular descricao', 'celular espeficicacao', TO_DATE('2022/05/03', 'yyyy/mm/dd'), 1);

INSERT INTO Produto Values(6, 'Celular motorola 2', 241.00, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'celular descricao', 'celular espeficicacao', TO_DATE('2022/05/03', 'yyyy/mm/dd'), 1);

INSERT INTO Endereco Values(2, 'A', 'A', 'A', 'A', 'A', 'A');

INSERT INTO FORNECEDOR VALUES(2, 'Creuza', 'creuza.com', 'creuza@gmail', '4002-8923', 2);

INSERT INTO FORNECEDOR_FORNECE_PRODUTO VALUES(4, 2);

INSERT INTO FORNECEDOR_FORNECE_PRODUTO VALUES(5, 2);

INSERT INTO FORNECEDOR_FORNECE_PRODUTO VALUES(6, 2);


--Conjunto 3: fornecedor com preco medio abaixo de 241 (197)
INSERT INTO Produto Values(7, 'Celular nokia 3', 200.00, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'celular descricao', 'celular espeficicacao', TO_DATE('2022/05/03', 'yyyy/mm/dd'), 1);

INSERT INTO Produto Values(8, 'Celular sansung 3', 150.00, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'celular descricao', 'celular espeficicacao', TO_DATE('2022/05/03', 'yyyy/mm/dd'), 1);

INSERT INTO Produto Values(9, 'Celular motorola 3', 241.00, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'celular descricao', 'celular espeficicacao', TO_DATE('2022/05/03', 'yyyy/mm/dd'), 1);

INSERT INTO Endereco Values(3, 'A', 'A', 'A', 'A', 'A', 'A');

INSERT INTO FORNECEDOR VALUES(3, 'Etevaldo', 'et.com', 'et@gmail', '4002-8924', 3);

INSERT INTO FORNECEDOR_FORNECE_PRODUTO VALUES(7, 3);

INSERT INTO FORNECEDOR_FORNECE_PRODUTO VALUES(8, 3);

INSERT INTO FORNECEDOR_FORNECE_PRODUTO VALUES(9, 3);
*/


/*
--DADOS PARA TESTAR A QUESTAO 8:--

--Conjunto 1 com produto 'Cabo HDMI' que nunca foi comprado por cliente de São Paulo (esperado):--
INSERT INTO Categoria Values(1, 'eletronicos');

INSERT INTO Produto Values(1, 'Cabo HDMI', 20.00, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'cabo HDMI descricao', 'cabo HDMI espeficicacao', TO_DATE('2022/05/03', 'yyyy/mm/dd'), 1);

INSERT INTO Endereco Values(1, 'A', 'A', 'A', 'A', 'DF', 'A');

INSERT INTO Cliente Values(1, 'Armando', 'da Silva', 'armando@gmail', TO_DATE('1987/05/03', 'yyyy/mm/dd'), 0, 'Masculino', TO_DATE('2012/05/03', 'yyyy/mm/dd'), null, 1);

INSERT INTO HISTORICO VALUES (1, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 4, 'SIM', 1, 1);


--Conjunto 2 com produto 'Celular Motorola' comprado por cliente de Pernambuco:--
INSERT INTO Produto Values(2, 'Celular Motorola', 600.00, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'celular descricao', 'celular espeficicacao', TO_DATE('2022/05/03', 'yyyy/mm/dd'), 1);

INSERT INTO Endereco Values(2, 'B', 'B', 'B', 'B', 'PE', 'B');

INSERT INTO Cliente Values(2, 'Carlos', 'Bezerra', 'carlos@gmail', TO_DATE('1987/05/03', 'yyyy/mm/dd'), 0, 'Masculino', TO_DATE('2012/05/03', 'yyyy/mm/dd'), null, 2);

INSERT INTO HISTORICO VALUES (2, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 2, 'SIM', 2, 2);


--Conjunto 3 com produto 'Celular Motorola' comprado por cliente de São Paulo:--
INSERT INTO Endereco Values(3, 'C', 'C', 'C', 'C', 'SP', 'C');

INSERT INTO Cliente Values(3, 'Marisa', 'Ferreira', 'marisa@gmail', TO_DATE('1987/05/03', 'yyyy/mm/dd'), 0, 'Feminino', TO_DATE('2012/05/03', 'yyyy/mm/dd'), null, 3);

INSERT INTO HISTORICO VALUES (3, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 2, 'SIM', 2, 3);


--Conjunto 4 com produto 'Celular Sansung' com compra não finalizada por cliente de São Paulo (esperado):--
INSERT INTO Produto Values(3, 'Celular Sansung', 600.00, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'celular descricao', 'celular espeficicacao', TO_DATE('2022/05/03', 'yyyy/mm/dd'), 1);

INSERT INTO Cliente Values(4, 'Lara', 'da Silva', 'lara@gmail', TO_DATE('1987/05/03', 'yyyy/mm/dd'), 0, 'Feminino', TO_DATE('2012/05/03', 'yyyy/mm/dd'), null, 3);

INSERT INTO HISTORICO VALUES (4, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 2, 'NAO', 3, 3);
*/


/*
--DADOS PARA TESTAR A QUESTAO 9:--

--Conjunto 1 com cliente com terceira compra mais cara de todas, porém com a compra mais cara entre os que nasceram na decada de 90 e que moram em CG (esperado):--
INSERT INTO Categoria Values(1, 'eletronicos');

INSERT INTO Produto Values(1, 'Cabo HDMI', 20.00, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'cabo HDMI descricao', 'cabo HDMI espeficicacao', TO_DATE('2022/05/03', 'yyyy/mm/dd'), 1);

INSERT INTO Endereco Values(1, 'A', 'A', 'A', 'Campina Grande', 'PB', 'A');

INSERT INTO Cliente Values(1, 'Armando', 'da Silva', 'armando@gmail', TO_DATE('1997/05/03', 'yyyy/mm/dd'), 0, 'Masculino', TO_DATE('2012/05/03', 'yyyy/mm/dd'), null, 1);

INSERT INTO NOTA_FISCAL VALUES(1, '11111', '11111', 'INSC ESTADUAL', 'CHAVE ACESSO', 30.00);

INSERT INTO TRANSPORTADORA VALUES(1, 'TRANS A', 'EMAIL', 'TEL', 'SITE', 1);

INSERT INTO ORDEM_DE_COMPRA VALUES(1, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'FINALIZADA', 00.00, 10.00, 1, 1, 1, 1);

INSERT INTO COMPRA_POSSUI_PRODUTO VALUES(1, 1, 1, 30.00);


--Conjunto 2 com cliente com menor compra de todas, da decada de 90 e morador de CG:--
INSERT INTO Produto Values(2, 'Pendrive', 15.00, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'Pendrive descricao', 'Pendrive espeficicacao', TO_DATE('2022/05/03', 'yyyy/mm/dd'), 1);

INSERT INTO Endereco Values(2, 'B', 'B', 'B', 'Campina Grande', 'PB', 'B');

INSERT INTO Cliente Values(2, 'Carlos', 'Bezerra', 'carlos@gmail', TO_DATE('1994/05/03', 'yyyy/mm/dd'), 0, 'Masculino', TO_DATE('2012/05/03', 'yyyy/mm/dd'), null, 2);

INSERT INTO NOTA_FISCAL VALUES(2, '11111', '11111', 'INSC ESTADUAL', 'CHAVE ACESSO', 20.00);

INSERT INTO TRANSPORTADORA VALUES(2, 'TRANS A', 'EMAIL', 'TEL', 'SITE', 2);

INSERT INTO ORDEM_DE_COMPRA VALUES(2, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'FINALIZADA', 00.00, 5.00, 2, 2, 2, 2);

INSERT INTO COMPRA_POSSUI_PRODUTO VALUES(2, 2, 1, 20.00);


--Conjunto 3 com cliente com segunda maior compra, que nao é da década de 90 e que mora em CG:--
INSERT INTO Produto Values(3, 'Gabinete', 150.00, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'Gabinete descricao', 'Gabinete espeficicacao', TO_DATE('2022/05/03', 'yyyy/mm/dd'), 1);

INSERT INTO Endereco Values(3, 'C', 'C', 'C', 'Campina Grande', 'PB', 'C');

INSERT INTO Cliente Values(3, 'Marisa', 'Ferreira', 'marisa@gmail', TO_DATE('1987/05/03', 'yyyy/mm/dd'), 0, 'Feminino', TO_DATE('2012/05/03', 'yyyy/mm/dd'), null, 3);

INSERT INTO NOTA_FISCAL VALUES(3, '11111', '11111', 'INSC ESTADUAL', 'CHAVE ACESSO', 170.00);

INSERT INTO TRANSPORTADORA VALUES(3, 'TRANS A', 'EMAIL', 'TEL', 'SITE', 3);

INSERT INTO ORDEM_DE_COMPRA VALUES(3, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'FINALIZADA', 00.00, 20.00, 3, 3, 3, 3);

INSERT INTO COMPRA_POSSUI_PRODUTO VALUES(3, 3, 1, 170.00);


--Conjunto 4 com cliente com maior compra de todas, que é da década de 90 e que não mora em CG:--
INSERT INTO Produto Values(4, 'Celular Sansung', 600.00, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'celular descricao', 'celular espeficicacao', TO_DATE('2022/05/03', 'yyyy/mm/dd'), 1);

INSERT INTO Endereco Values(4, 'C', 'C', 'C', 'Rio de Janeiro', 'RJ', 'C');

INSERT INTO Cliente Values(4, 'Lara', 'da Silva', 'lara@gmail', TO_DATE('1990/05/03', 'yyyy/mm/dd'), 0, 'Feminino', TO_DATE('2012/05/03', 'yyyy/mm/dd'), null, 4);

INSERT INTO NOTA_FISCAL VALUES(4, '11111', '11111', 'INSC ESTADUAL', 'CHAVE ACESSO', 620.00);

INSERT INTO TRANSPORTADORA VALUES(4, 'TRANS A', 'EMAIL', 'TEL', 'SITE', 4);

INSERT INTO ORDEM_DE_COMPRA VALUES(4, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'FINALIZADA', 00.00, 20.00, 4, 4, 4, 4);

INSERT INTO COMPRA_POSSUI_PRODUTO VALUES(4, 4, 1, 620.00);


--DADOS PARA TESTAR A QUESTAO 14:--

--Conjunto 1 com preco maior que o frete:--
INSERT INTO Categoria Values(1, 'alimentos');

INSERT INTO Produto Values(1, 'miojo', 1.00, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'um miojo', 'causa cancer', TO_DATE('2022/05/03', 'yyyy/mm/dd'), 1);

INSERT INTO Endereco Values(1, 'A', 'A', 'A', 'A', 'A', 'A');

INSERT INTO Cliente Values(1, 'Armando', 'da Silva', 'armando@gmail', TO_DATE('1987/05/03', 'yyyy/mm/dd'), 0, 'Masculino', TO_DATE('2012/05/03', 'yyyy/mm/dd'), null, 1);

INSERT INTO Nota_Fiscal Values(1, '1', '1', 'inscricao estadual A', 'chave A', 1.00);

INSERT INTO Transportadora Values(1, 'Transportadora A', 'Email TA', 'Tel A', 'Site A', 1);

INSERT INTO Ordem_de_Compra Values(1, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'AGUARDANDO PAGAMENTO', 00.00, 00.00, 1, 1, 1, 1);

INSERT INTO Ordem_de_Compra Values(3, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'FINALIZADA', 00.00, 00.00, 1, 1, 3, 1);

INSERT INTO Ordem_de_Compra Values(4, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'AGUARDANDO PAGAMENTO', 00.00, 00.00, 1, 1, 4, 1);

INSERT INTO Compra_Avalia_Produto Values(1, 1, 7, 'descricao avaliacao');


--Conjunto 2 com preco menor do que o frete (esperado):--

INSERT INTO Produto Values(2, 'feijao', 2.00, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'desc', 'esp', TO_DATE('2022/05/03', 'yyyy/mm/dd'), 1);

INSERT INTO Endereco Values(2, 'B', 'B', 'B', 'B', 'B', 'B');

INSERT INTO Cliente Values(2, 'Carlos', 'da Silva', 'armando@gmail', TO_DATE('1987/05/03', 'yyyy/mm/dd'), 0, 'Masculino', TO_DATE('2012/05/03', 'yyyy/mm/dd'), null, 1);

INSERT INTO Nota_Fiscal Values(2, '1', '1', 'inscricao estadual A', 'chave A', 2.00);

INSERT INTO Transportadora Values(2, 'Transportadora B', 'Email TA', 'Tel A', 'Site A', 1);

INSERT INTO Ordem_de_Compra Values(2, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'AGUARDANDO PAGAMENTO', 00.00, 20.00, 1, 1, 2, 1);

INSERT INTO Compra_Avalia_Produto Values(2, 2, 8, 'descricao avaliacao B');

--Conjunto 3(testes extras) usando o mínimo de informação para testar apenas o essencial da questão 4(a atualização de pontos em sí):--

INSERT INTO Cliente Values(41, 'PATCHES', 'da Silva', 'DASDASDASDSADFG@gmail', TO_DATE('1987/05/03', 'yyyy/mm/dd'), 0, 'Masculino', TO_DATE('2012/05/03', 'yyyy/mm/dd'), null, 1);

INSERT INTO Ordem_de_Compra Values(41, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'FINALIZADA', 00.00, 20.00, 1, 41, 2, 1);

INSERT INTO Compra_Avalia_Produto Values(41, 2, 8, 'descricao avaliacao B');

--Conjunto 4(testes extras) usando o mínimo de informação para testar apenas o essencial da questão 4(a atualização de pontos em sí):--

INSERT INTO Cliente Values(42, 'LAUTREC', 'da Silva', 'DASDASDASDSADFG@gmail', TO_DATE('1987/05/03', 'yyyy/mm/dd'), 0, 'Masculino', TO_DATE('2012/05/03', 'yyyy/mm/dd'), null, 1);

INSERT INTO Ordem_de_Compra Values(42, TO_DATE('2021/05/03', 'yyyy/mm/dd'), 'AGUARDANDO PAGAMENTO', 00.00, 20.00, 1, 42, 2, 1);

INSERT INTO Compra_Avalia_Produto Values(42, 2, 8, 'descricao avaliacao B');

COMMIT;

*/