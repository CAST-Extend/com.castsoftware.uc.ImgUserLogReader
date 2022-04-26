-- Table: imgreporting.AuditLogRawLogin

--DROP TABLE imgreporting."AuditLogRawLogin";

CREATE TABLE imgreporting."AuditLogRawLogin"
(
    ip character varying(100) COLLATE pg_catalog."default",
    status character varying(100) COLLATE pg_catalog."default" NOT NULL,
    loginstatus character varying(100) COLLATE pg_catalog."default" NOT NULL,
    useremail character varying(255) COLLATE pg_catalog."default" NOT NULL,
    datetime text COLLATE pg_catalog."default" NOT NULL
)

TABLESPACE pg_default;

ALTER TABLE imgreporting."AuditLogRawLogin"
    OWNER to operator;