-- Inicializacao dos esquemas para o padrao Database-per-Service
CREATE SCHEMA IF NOT EXISTS reservation_schema;
CREATE SCHEMA IF NOT EXISTS orders_schema;
CREATE SCHEMA IF NOT EXISTS payments_schema;

GRANT ALL ON SCHEMA reservation_schema TO ingressos_user;
GRANT ALL ON SCHEMA orders_schema TO ingressos_user;
GRANT ALL ON SCHEMA payments_schema TO ingressos_user;
