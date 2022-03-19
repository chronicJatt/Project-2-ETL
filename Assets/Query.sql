-- Statements to query db
SELECT * FROM cpi_data
SELECT * FROM crude_oil

-- Join tables in order to make comparison
SELECT cd.report_month, cd.cpi, cd.percent_change_cpi, co.price, co.percent_change
	FROM cpi_data as cd
	LEFT JOIN crude_oil as co
		ON cd.report_month = co.report_month