GRANT CONNECT ON DATABASE app1 TO app1user;
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO app1user;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO app1user;