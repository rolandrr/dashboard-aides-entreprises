sudo -u postgres psql -d dashboard -c "\copy (select siren, siret, trancheeffectifsetablissement, etablissementsiege,activiteprincipaleetablissement, etatadministratifetablissement, enseigne1etablissement, reg, dep, codecommuneetablissement, geo_adresse, geo_score, longitude, latitude from siret where etablissementsiege = 't') TO '/tmp/siren-siege.csv' DELIMITER ',' CSV HEADER;"
sudo mv /tmp/siren-siege.csv ../data/extracts/
