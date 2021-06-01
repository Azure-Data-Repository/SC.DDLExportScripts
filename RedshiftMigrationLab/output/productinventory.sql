--DROP TABLE adventureworks2012_production.productinventory;
CREATE TABLE IF NOT EXISTS adventureworks2012_production.productinventory
(
	productid INTEGER NOT NULL  ENCODE az64
	,locationid SMALLINT NOT NULL  ENCODE az64
	,shelf VARCHAR(30) NOT NULL  ENCODE zstd
	,bin SMALLINT NOT NULL  ENCODE az64
	,quantity SMALLINT NOT NULL DEFAULT 0 ENCODE az64
	,rowguid VARCHAR(36) NOT NULL  ENCODE zstd
	,modifieddate TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT ('now'::text)::timestamp without time zone ENCODE az64
	,PRIMARY KEY (productid, locationid)
)
DISTSTYLE KEY
 DISTKEY (productid)
;
