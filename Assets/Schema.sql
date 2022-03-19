CREATE TABLE cpi_data (
    date DATE   NOT NULL,
    report_month VARCHAR   NOT NULL,
    CPI REAL   NOT NULL,
    Percent_Change_CPI REAL   NOT NULL,
    CONSTRAINT pk_cpi_data PRIMARY KEY (
        report_month
     )
);

CREATE TABLE crude_oil (
    date DATE   NOT NULL,
    report_month VARCHAR   NOT NULL,
    price REAL   NOT NULL,
    percent_change REAL   NOT NULL
);

ALTER TABLE crude_oil ADD CONSTRAINT fk_crude_oil_report_month FOREIGN KEY(report_month)
REFERENCES cpi_data (report_month);