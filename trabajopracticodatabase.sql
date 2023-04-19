CREATE DATABASE rubro;
use rubro;
CREATE TABLE if not exists rubro  (
  id_rubro INT PRIMARY KEY auto_increment,
  tipo_rubro VARCHAR(255)
);

CREATE TABLE if not exists sub_rubro (
  sr_id_sub_rubro INT PRIMARY KEY auto_increment,
  sr_nombre_subrubro VARCHAR(255) not null,
  sr_id_rubro INT,
  FOREIGN KEY (sr_id_rubro) REFERENCES rubro(id_rubro)
);
CREATE TABLE if not exists producto (
  pr_id_producto INT PRIMARY KEY auto_increment,
  pr_nombre_producto VARCHAR(255),
  pr_id_sub_rubro INT,
  FOREIGN KEY (pr_id_sub_rubro) REFERENCES sub_rubro(sr_id_sub_rubro)

);
INSERT INTO producto (pr_nombre_producto) VALUES ("Remera");

INSERT INTO rubro (tipo_rubro) VALUES ("Textil");

INSERT INTO sub_rubro (sr_nombre_subrubro) VALUES ("Hogar");

UPDATE producto SET pr_nombre_producto="pantalon" where pr_id_producto='1';

UPDATE rubro SET tipo_rubro="calzado" where id_rubro='1';

UPDATE sub_rubro SET sr_nombre_subrubro="montana" where sr_id_sub_rubro='1';

SELECT * FROM producto;

SELECT * FROM rubro;

SELECT * FROM sub_rubro;

SELECT pr_nombre_producto FROM producto;

SELECT tipo_rubro FROM rubro;

DELETE FROM producto WHERE pr_id_producto = "1";

DELETE FROM rubro WHERE id_rubro = "1";

DELETE FROM sub_rubro WHERE sr_id_sub_rubro = "1";
