CREATE TABLE [tab-item] (
    cod_item INTEGER PRIMARY KEY IDENTITY(1, 1) NOT NULL,
    des_item VARCHAR (100)
);
CREATE TABLE [tab-production-order] (
    cod_production_order INTEGER PRIMARY KEY IDENTITY(1, 1) NOT NULL,
    dte_production DATE,
    des_production_order VARCHAR (250),
    ind_status CHAR (1)
);
CREATE TABLE [tab-production-record] (
    cod_production_record INTEGER PRIMARY KEY IDENTITY(1, 1) NOT NULL,
    cod_production_order INTEGER REFERENCES [tab-production-order] (cod_production_order) NOT NULL,
    cod_item INTEGER REFERENCES [tab-item] (cod_item) NOT NULL,
    qtd_production_record FLOAT
);
CREATE TABLE [tab-stock-record] (
    cod_stock_record INTEGER PRIMARY KEY IDENTITY(1, 1) NOT NULL,
    dte_stock_record_created DATE NOT NULL DEFAULT GETDATE(),
    cod_production_order INTEGER REFERENCES [tab-production-order] (cod_production_order) NOT NULL,
    cod_item INTEGER REFERENCES [tab-item] (cod_item) NOT NULL,
    qtd_stock_record FLOAT
);
CREATE TABLE [tab-stock] (
    cod_stock INTEGER PRIMARY KEY IDENTITY(1, 1) NOT NULL,
    cod_item INTEGER REFERENCES [tab-item] (cod_item) NOT NULL,
    qtd_stock FLOAT
);