-- Table: imgreporting.LoginInfoRaw

--DROP TABLE imgreporting."LoginInfoRaw";

CREATE TABLE imgreporting."LoginInfoRaw"
(
    "Id" text COLLATE pg_catalog."default" NOT NULL,
    status character varying(100) COLLATE pg_catalog."default" NOT NULL,
    useremail character varying(255) COLLATE pg_catalog."default" NOT NULL,
    datetime text COLLATE pg_catalog."default" NOT NULL
)

TABLESPACE pg_default;

ALTER TABLE imgreporting."LoginInfoRaw"
    OWNER to operator;