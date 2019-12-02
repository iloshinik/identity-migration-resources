ALTER TABLE IDN_OAUTH_CONSUMER_APPS
    ADD ID_TOKEN_EXPIRE_TIME BIGINT DEFAULT 3600;

CREATE TABLE IF NOT EXISTS IDN_AUTH_TEMP_SESSION_STORE
(
    SESSION_ID     VARCHAR(100) NOT NULL,
    SESSION_TYPE   VARCHAR(100) NOT NULL,
    OPERATION      VARCHAR(10)  NOT NULL,
    SESSION_OBJECT BLOB,
    TIME_CREATED   BIGINT,
    TENANT_ID      INTEGER DEFAULT -1,
    EXPIRY_TIME    BIGINT,
    PRIMARY KEY (SESSION_ID, SESSION_TYPE, TIME_CREATED, OPERATION)
) ENGINE NDB;

ALTER TABLE IDN_AUTH_SESSION_STORE
    ADD EXPIRY_TIME BIGINT;

CREATE INDEX IDX_AT_TI_UD ON IDN_OAUTH2_ACCESS_TOKEN (AUTHZ_USER, TENANT_ID, TOKEN_STATE, USER_DOMAIN);

CREATE INDEX IDX_AUTHORIZATION_CODE_AU_TI ON IDN_OAUTH2_AUTHORIZATION_CODE (AUTHZ_USER, TENANT_ID, USER_DOMAIN, STATE);

CREATE INDEX IDX_IDN_SCIM_GROUP_TI_RN ON IDN_SCIM_GROUP (TENANT_ID, ROLE_NAME);

CREATE INDEX IDX_IDN_AUTH_SESSION_TIME ON IDN_AUTH_SESSION_STORE (TIME_CREATED);

CREATE INDEX IDX_IDN_AUTH_TMP_SESSION_TIME ON IDN_AUTH_TEMP_SESSION_STORE (TIME_CREATED);