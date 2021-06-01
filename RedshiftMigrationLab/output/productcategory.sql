--DROP TABLE adventureworks2012_production.productcategory;
CREATE TABLE IF NOT EXISTS adventureworks2012_production.productcategory
(
	productcategoryid INTEGER NOT NULL DEFAULT "identity"(144434, 0, '1,1'::text) ENCODE az64
	,name VARCHAR(150) NOT NULL  ENCODE zstd
	,rowguid VARCHAR(36) NOT NULL  ENCODE zstd
	,modifieddate TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT ('now'::text)::timestamp without time zone ENCODE az64
	,PRIMARY KEY (productcategoryid)
)
DISTSTYLE KEY
 DISTKEY (productcategoryid)
;
