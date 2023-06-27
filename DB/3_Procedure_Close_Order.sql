CREATE PROCEDURE Closed_Order @OrderID INT AS BEGIN IF NOT EXISTS (
    SELECT 1
    FROM [tab-production-order]
    WHERE cod_production_order = @OrderID
        AND ind_status = 'C'
) BEGIN -- Atualizar o status da ordem para 'C'
UPDATE [tab-production-order]
SET ind_status = 'C'
WHERE cod_production_order = @OrderID;
-- Inserir registros na tabela de movimentação de estoque
INSERT INTO [tab-stock-record] (
        dte_stock_record_created,
        cod_production_order,
        cod_item,
        qtd_stock_record
    )
SELECT GETDATE(),
    @OrderID,
    cod_item,
    qtd_production_record
FROM [tab-production-record]
WHERE cod_production_order = @OrderID;
-- Mensagem de sucesso
PRINT 'Ordem de produção fechada com sucesso.';
END;
;
END;