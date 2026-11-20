rm -rf ./calculadora/db/*

mkdir -p ./calculadora/db

./mvnw -N -Dflyway.configFiles=./flyway/flyway-pro.conf flyway:migrate || true