
CREATE TABLE IF NOT EXISTS zones (
  id serial PRIMARY KEY,
  albion_id VARCHAR ( 25 ) UNIQUE NOT NULL,
  zone_name VARCHAR ( 100 ) NOT NULL,
  tier VARCHAR ( 10 ) NOT NULL,
  zone_type VARCHAR ( 100 ),
  color VARCHAR ( 10 ) NOT NULL
);

CREATE INDEX idx_zone_name_color ON zones (zone_name, color);

CREATE TABLE IF NOT EXISTS royal_connections (
	zone_one INT NOT NULL,
	zone_two INT NOT NULL,
	conn_type VARCHAR(10) NOT NULL DEFAULT 'normal',
	PRIMARY KEY (zone_one, zone_two)
);

INSERT INTO zones (albion_id, zone_name, tier, zone_type, color) VALUES
	('4300', 'Arthur''s Rest', 'I', 'PLAYERCITY_BLACK_NOFURNITURE', 'city'),
	('2009', 'Astolat', 'VI', 'OPENPVP_RED', 'red');
