---
--
--
-- Atualiza o estoque --
CREATE PROCEDURE UpdateStock AS BEGIN
DECLARE @CodItem INT;
DECLARE cursorStock CURSOR FOR
SELECT cod_item
FROM [tab-stock];
OPEN cursorStock;
FETCH NEXT
FROM cursorStock INTO @CodItem;
WHILE @@FETCH_STATUS = 0 BEGIN -- Calcular a soma dos valores na tabela [tab-stock]_record para o item atual
DECLARE @SumStock float;
SELECT @SumStock = SUM(qtd_stock_record)
FROM [tab-stock-record]
WHERE cod_item = @CodItem;
-- Atualizar a quantidade de estoque na tabela [tab-stock]
UPDATE [tab-stock]
SET qtd_stock = @SumStock
WHERE cod_item = @CodItem;
FETCH NEXT
FROM cursorStock INTO @CodItem;
END;
CLOSE cursorStock;
DEALLOCATE cursorStock;
-- Mensagem de sucesso
PRINT 'Atualização da quantidade de estoque concluída com sucesso.';
END;
--
--
-- Verifica se o estoque possue o item criado
--OBS: O certo era ter um trigger para isso
--
CREATE PROCEDURE Verifid_StockItem AS BEGIN -- Percorrer os itens da tabela tab_item
DECLARE @Cod_Item INT;
DECLARE cursorItem CURSOR FOR
SELECT cod_item
FROM [tab-item];
OPEN cursorItem;
FETCH NEXT
FROM cursorItem INTO @Cod_Item;
WHILE @@FETCH_STATUS = 0 BEGIN -- Verificar se o item já existe na tabela [tab-stock]
IF NOT EXISTS (
    SELECT 1
    FROM [tab-stock]
    WHERE cod_item = @Cod_Item
) BEGIN -- Inserir o novo item na tabela [tab-stock] com quantidade inicial zero
INSERT INTO [tab-stock] (cod_item, qtd_stock)
VALUES (@Cod_Item, 0);
-- Mensagem de criação de item na tabela [tab-stock]
PRINT 'Item criado na tabela estoque: cod_item = ' + CAST(@Cod_Item AS VARCHAR);
END;
FETCH NEXT
FROM cursorItem INTO @Cod_Item;
END;
CLOSE cursorItem;
DEALLOCATE cursorItem;
-- Mensagem de sucesso
PRINT 'Verificação e criação de itens na tabela estoque concluídas com sucesso.';
END;