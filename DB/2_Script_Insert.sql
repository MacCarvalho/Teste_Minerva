-- tab-item
INSERT INTO [tab-item] (des_item)
SELECT TOP 10 CONCAT(
        'Item ',
        ROW_NUMBER() OVER (
            ORDER BY NEWID()
        )
    )
FROM sys.objects;
-- tab-production-order
INSERT INTO [tab-production-order] (dte_production, des_production_order, ind_status)
SELECT dte_production,
    des_production_order,
    ind_status
FROM (
        SELECT TOP 5 GETDATE() AS dte_production,
            CONCAT(
                'OP ',
                ROW_NUMBER() OVER (
                    ORDER BY NEWID()
                )
            ) AS des_production_order,
            'P' AS ind_status
        FROM sys.objects
    ) AS P
UNION ALL
SELECT dte_production,
    des_production_order,
    ind_status
FROM (
        SELECT TOP 5 GETDATE() AS dte_production,
            CONCAT(
                'OP ',
                ROW_NUMBER() OVER (
                    ORDER BY NEWID()
                )
            ) AS des_production_order,
            'S' AS ind_status
        FROM sys.objects
    ) AS S
UNION ALL
SELECT dte_production,
    des_production_order,
    ind_status
FROM (
        SELECT TOP 5 GETDATE() AS dte_production,
            CONCAT(
                'OP ',
                ROW_NUMBER() OVER (
                    ORDER BY NEWID()
                )
            ) AS des_production_order,
            'C' AS ind_status
        FROM sys.objects
    ) AS C;
-- tab-production-record
INSERT INTO [tab-production-record] (
        cod_production_order,
        cod_item,
        qtd_production_record
    )
SELECT TOP 20 po.cod_production_order,
    ti.cod_item,
    ABS(CHECKSUM(NEWID())) % 100 + 1
FROM [tab-production-order] po
    CROSS JOIN [tab-item] ti
ORDER BY NEWID();