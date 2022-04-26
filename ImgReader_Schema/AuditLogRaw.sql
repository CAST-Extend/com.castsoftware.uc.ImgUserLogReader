-- Table: imgreporting.AuditLogRaw

--DROP TABLE imgreporting."AuditLogRaw";

CREATE TABLE imgreporting."AuditLogRaw"
(
    ip character varying(100) COLLATE pg_catalog."default",
    httpstatus character varying(100) COLLATE pg_catalog."default" NOT NULL,
    requesttype character varying(100) COLLATE pg_catalog."default" NOT NULL,
    appurl character varying(255) COLLATE pg_catalog."default" NOT NULL,
    useremail character varying(255) COLLATE pg_catalog."default" NOT NULL,
    userrole character varying(100) COLLATE pg_catalog."default",
    someid character varying(100) COLLATE pg_catalog."default",
    browser character varying(255) COLLATE pg_catalog."default",
    application character varying(255) COLLATE pg_catalog."default",
    datetime text COLLATE pg_catalog."default" NOT NULL
)

TABLESPACE pg_default;

ALTER TABLE imgreporting."AuditLogRaw"
    OWNER to operator;