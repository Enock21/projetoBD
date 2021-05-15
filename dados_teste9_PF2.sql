CREATE VIEW novaVisao AS
    SELECT o.codigo, status, p.codigo as codigo_produto, p.nome as nome_produto, cli.nome as nome_cliente, cli.codigo as codigo_cliente
    FROM ORDEM_DE_COMPRA o , PRODUTO p, CLIENTE cli
    WHERE o.codigo = p.codigo

