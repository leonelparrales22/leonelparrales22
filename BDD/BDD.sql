
CREATE TABLE USUARIOS (
                cedula_usuario VARCHAR(10) NOT NULL,
                contrasenia VARCHAR(25) NOT NULL,
                rol VARCHAR(6) NOT NULL,
                PRIMARY KEY (cedula_usuario)
);


CREATE TABLE CLIENTES (
                cedula_cliente VARCHAR(10) NOT NULL,
                nombre_cliente VARCHAR(30) NOT NULL,
                apellido_cliente VARCHAR(30) NOT NULL,
                direccion_cliente VARCHAR(100) NOT NULL,
                PRIMARY KEY (cedula_cliente)
);


CREATE TABLE VENTAS (
                codigo_venta VARCHAR(36) NOT NULL,
                cedula_cliente VARCHAR(10) NOT NULL,
                cedula_usuario VARCHAR(10) NOT NULL,
                fecha DATETIME NOT NULL,
                PRIMARY KEY (codigo_venta)
);


CREATE TABLE FACTURAS (
                codigo_venta VARCHAR(36) NOT NULL,
                subtotal DECIMAL(5,2) NOT NULL,
                descuento DECIMAL(5,2) NOT NULL,
                iva DECIMAL(5,2) NOT NULL,
                total DECIMAL(5,2) NOT NULL,
                PRIMARY KEY (codigo_venta)
);


CREATE TABLE CELULARES (
                id_celular VARCHAR(36) NOT NULL,
                nombre_celular VARCHAR(150) NOT NULL,
                marca_celular VARCHAR(50),
                stock_celular INT NOT NULL,
                precio_celular DECIMAL(5,2) NOT NULL,
                PRIMARY KEY (id_celular)
);


CREATE TABLE DETALLE_VENTA (
                codigo_venta VARCHAR(36) NOT NULL,
                id_celular VARCHAR(36) NOT NULL,
                cantidad INT NOT NULL
);


ALTER TABLE VENTAS ADD CONSTRAINT usuarios_ventas_fk
FOREIGN KEY (cedula_usuario)
REFERENCES USUARIOS (cedula_usuario)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE VENTAS ADD CONSTRAINT cliente_ventas_fk
FOREIGN KEY (cedula_cliente)
REFERENCES CLIENTES (cedula_cliente)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE FACTURAS ADD CONSTRAINT ventas_factura_fk
FOREIGN KEY (codigo_venta)
REFERENCES VENTAS (codigo_venta)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE DETALLE_VENTA ADD CONSTRAINT ventas_detalle_venta_fk
FOREIGN KEY (codigo_venta)
REFERENCES VENTAS (codigo_venta)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE DETALLE_VENTA ADD CONSTRAINT celulares_detalle_venta_fk
FOREIGN KEY (id_celular)
REFERENCES CELULARES (id_celular)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

-- CELULARES APPLE
INSERT INTO celulares VALUES("9eee0e45-cdff-4d2d-baae-b64592af0c81","iPhone 6S 32GB","APPLE",12,227);
INSERT INTO celulares VALUES("7b79a50f-bbb5-4d56-a7dd-ac7f4eb59d26","iPhone 6S 64GB","APPLE",5,277);
INSERT INTO celulares VALUES("b99cc16d-a2ce-4bc4-a9c5-d727479ba5b9","iPhone 6S 128GB","APPLE",8,297);
INSERT INTO celulares VALUES("c3a32237-d969-4dbc-a875-0ae6ae544e35","iPhone 7 32GB","APPLE",4,317);
INSERT INTO celulares VALUES("380f7194-029f-4e79-bad3-788cf25491be","iPhone 7 128GB","APPLE",2,367);
INSERT INTO celulares VALUES("dfefa9cd-79e2-4cf0-a9bf-3edfabab87b5","iPhone 7 Plus 32GB","APPLE",5,447);
INSERT INTO celulares VALUES("8a811cda-c695-4d48-b293-6cd68e306e50","iPhone 7 Plus 128GB","APPLE",8,497);
INSERT INTO celulares VALUES("34737c5d-de37-448f-b120-c5c1b613d83c","iPhone 7 Plus 256GB","APPLE",3,527);
INSERT INTO celulares VALUES("5fabef97-5624-46c9-ac1b-4921660fda68","iPhone 8 64GB","APPLE",5,447);
INSERT INTO celulares VALUES("6514f137-ab23-4e15-8ca9-0c0ee7c6d880","iPhone 8 256GB","APPLE",4,497);
INSERT INTO celulares VALUES("2c985fd8-64db-42ee-8e9c-4adcb002e3ef","iPhone 8 Plus 64GB","APPLE",10,577);
INSERT INTO celulares VALUES("5b2a3d39-fc57-4a67-bf15-a8f9d10aa335","iPhone 8 Plus 128GB","APPLE",5,617);
INSERT INTO celulares VALUES("7fe0f0de-10b7-4d80-8163-07a61b0512fa","iPhone 8 Plus 256GB","APPLE",7,647);

-- CELULARES SAMSUNG
INSERT INTO celulares VALUES("30b15f34-f40a-41b3-862c-4c0050e1784c","A01 16GB","SAMSUNG",15,139);
INSERT INTO celulares VALUES("8b1dce9b-637f-431a-b746-dc3083b0edfb","A10s 32GB","SAMSUNG",4,159);
INSERT INTO celulares VALUES("cae0fa0c-c2af-45fd-8788-1ef81b4a5bc0","A11 32GB","SAMSUNG",7,175);
INSERT INTO celulares VALUES("0b3c378d-d6d0-4dbf-bd10-b3eccf2976e2","A20s 32GB","SAMSUNG",5,185);
INSERT INTO celulares VALUES("f0d481fc-43a1-4ab6-8a53-fd2d8ec0cda9","A21s 32GB","SAMSUNG",2,210);
INSERT INTO celulares VALUES("38f2e34b-a727-4c9d-b4f5-6c6c28ea5cdb","A30s 64GB","SAMSUNG",8,240);
INSERT INTO celulares VALUES("b07a4af2-edff-4009-9685-80e3bf230cef","A31 64GB","SAMSUNG",12,280);
INSERT INTO celulares VALUES("165d9a74-b990-4bd5-881c-d4021309a9ce","A51 128GB","SAMSUNG",13,330);
INSERT INTO celulares VALUES("bf60132e-15c8-4f89-a6e0-1ab7bf1dce87","A71 128GB","SAMSUNG",4,435);
INSERT INTO celulares VALUES("6e1998fa-3d84-4738-ac94-134c8ecfbed2","S20 plus","SAMSUNG",2,1010);
INSERT INTO celulares VALUES("9ec97fce-7041-4293-a054-612424ed2705","NOTE 10 LITE","SAMSUNG",2,639.49);
INSERT INTO celulares VALUES("40839f41-624c-42f8-bfa0-f4f51509a115","START DUOS","SAMSUNG",7,60);

-- USUARIOS
INSERT INTO usuarios VALUES("0923159099","12345","ADMIN");
INSERT INTO usuarios VALUES("1725670390","12345","CAJERO");
INSERT INTO usuarios VALUES("0909766677","12345","CAJERO");
INSERT INTO usuarios VALUES("1711111111","12345","CAJERO");

-- CLIENTES LEONEL
INSERT INTO clientes VALUES("1745621895","LUIS","COLOMA","LA CONCEPCIÓN");
INSERT INTO clientes VALUES("1745963128","PEDRO","GONZÁLEZ","CENTRO HISTÓRICO");
INSERT INTO clientes VALUES("1778452169","PABLO","LAVERDE","LA TOLA");
INSERT INTO clientes VALUES("1747851239","DANIEL","RODRÍGUEZ","EL DORADO");
INSERT INTO clientes VALUES("1725647891","SERGIO","FERNÁNDEZ","SAN ROQUE");
INSERT INTO clientes VALUES("1747851236","MARCOS","LÓPEZ","LA RONDA");
INSERT INTO clientes VALUES("1747851237","MANUEL","DÍAZ","LA GUARAGUA");
INSERT INTO clientes VALUES("1714578952","MARIO","MARTÍNEZ","LA CONCEPCION");
INSERT INTO clientes VALUES("1714523789","JORGE","PÉREZ","SAN MARCOS");
INSERT INTO clientes VALUES("1712478516","NICOLÁS","SÁNCHEZ","LA CONCEPCION");
INSERT INTO clientes VALUES("1714521451","IVÁN","GARCÍA","EL TEJAR");
INSERT INTO clientes VALUES("1748965718","CARLOS","ROMERO","TOCTIUCO");
INSERT INTO clientes VALUES("1732564897","JAVIER","SOSA","LA CONCEPCIÓN");
INSERT INTO clientes VALUES("1725478194","LUCAS","TORRES","MIRAFLORES");
INSERT INTO clientes VALUES("1778456321","MIGUEL","ÁLVAREZ","SAN JUAN");
INSERT INTO clientes VALUES("1748965217","LEONEL","RUIZ","SAN DIEGO");
INSERT INTO clientes VALUES("1723478693","DIEGO","RAMÍREZ","LA CONCEPCION");
INSERT INTO clientes VALUES("1714786495","AXEL","FLORES","EL PANECILLO");
INSERT INTO clientes VALUES("1723481567","PAMELA","BENÍTEZ","MONJAS");
INSERT INTO clientes VALUES("1791378465","JESSICA","ACOSTA","LA FLORESTA");
INSERT INTO clientes VALUES("1723479561","LUISA","MEDINA","LA CONCEPCION");
INSERT INTO clientes VALUES("1726978651","WENDY","ÁVALOS","LA MARISCAL");
INSERT INTO clientes VALUES("1776539846","ALISSON","PINTADO","LAS CASAS");
INSERT INTO clientes VALUES("1786452319","ERICKA","HERRERA","EL BATÁN");
INSERT INTO clientes VALUES("1789457826","JENIFFER","SUÁREZ","LAS CASAS");
INSERT INTO clientes VALUES("1712584796","CAROLINA","AGUIRRE","BELLAVISTA");
INSERT INTO clientes VALUES("1747856412","KARLA","ROJAS","IÑAQUITO");
INSERT INTO clientes VALUES("1747851269","KARINA","MOLINA","QUITO TENNIS");
INSERT INTO clientes VALUES("1747815623","GABRIELA","CASTRO","LA FLORIDA");
INSERT INTO clientes VALUES("1745123896","JESSICA","ORTIZ","ATUCUCHO");
INSERT INTO clientes VALUES("1756123589","SOFÍA","SILVA","SAN CARLOS");
INSERT INTO clientes VALUES("1778542369","LUCÍA","DOMÍNGUEZ","COTOCOLLAO");
INSERT INTO clientes VALUES("1752136895","MARÍA","CARRIZO","MENA DE HIERRO");
INSERT INTO clientes VALUES("1712489563","PAULA","PERALTA","LA BOTA");
INSERT INTO clientes VALUES("1778932658","DANIELA","CASTILLO","PONCEANO");
INSERT INTO clientes VALUES("1714523688","PAULINA","LEDESMA","EL CONDADO");
INSERT INTO clientes VALUES("1715789456","VALERIA","QUIROGA","KENNEDY");
INSERT INTO clientes VALUES("1778945782","CLAUDIA","VEGA","RUMIÑAHUI");
INSERT INTO clientes VALUES("1767894523","ROMINA","MUÑOZ","EL INCA");
INSERT INTO clientes VALUES("1778945826","SARA","MORALES","CARCELÉN");
INSERT INTO clientes VALUES("1725789562","LAURA","MORENO","SAN BARTOLO");
INSERT INTO clientes VALUES("1778512369","CAROLINA","PERALTA","LA CONCEPCIÓN");
INSERT INTO clientes VALUES("1714528964","PATRICIA","CASTILLO","LA MAGDALENA");
INSERT INTO clientes VALUES("1736489567","IRENE","OJEDA","LA MENA 2");
INSERT INTO clientes VALUES("1725617894","ROMINA","PONCE","VILLAFLORA");
INSERT INTO clientes VALUES("1789632598","EMMA","VILLALBA","QUITUMBE");
INSERT INTO clientes VALUES("1778569432","JESÚS","RIVERO","CHILIBULO");
INSERT INTO clientes VALUES("4789156235","ROXANA","MIRANDA","EL CALZADO");
INSERT INTO clientes VALUES("1714785212","STEVEN","FARIAS","CHIMBACALLE");
INSERT INTO clientes VALUES("1714578953","WILSON","PAZ","LA CONCEPCIÓN");

-- VENTAS LEONEL
INSERT INTO ventas VALUES("af0c02bd-4b9b-4a0a-97f7-cf241df5b1a8","1745621895","0909766677","2020-01-01 03:14:07");
INSERT INTO ventas VALUES("8b6d0a58-e2ec-465a-9149-41039cd5231a","1745963128","0909766677","2020-01-05 03:14:07");
INSERT INTO ventas VALUES("14238ad2-4943-4879-8f5a-6ab8a901f677","1747851239","0909766677","2020-01-12 03:14:07");
INSERT INTO ventas VALUES("7ce55154-24d4-4fa5-b769-32e60bb26eab","1778452169","0909766677","2020-01-10 03:14:07");
INSERT INTO ventas VALUES("f51d2596-ce50-4134-b2d9-6f10e72595b0","1725647891","0909766677","2020-01-17 03:14:07");
INSERT INTO ventas VALUES("0bbfaf8c-2a5c-4c4e-82ad-acfe443e3fe1","1747851236","0909766677","2020-01-19 03:14:07");
INSERT INTO ventas VALUES("a7b4cab4-1466-4b34-aa9a-c0956add0c83","1747851237","0909766677","2020-02-03 03:14:07");
INSERT INTO ventas VALUES("88c1794d-5d7d-41fc-bc15-5618b6a67d12","1714578952","0909766677","2020-02-08 03:14:07");
INSERT INTO ventas VALUES("db30a25c-904f-45dd-9fcd-ef318bdf3817","1714523789","0909766677","2020-02-10 03:14:07");
INSERT INTO ventas VALUES("4bc29bac-18fb-4ebf-a9c6-bc52b49fb30e","1712478516","0909766677","2020-02-11 03:14:07");
INSERT INTO ventas VALUES("04593116-639c-4738-be22-90a3e01d710a","1714521451","0909766677","2020-02-12 03:14:07");
INSERT INTO ventas VALUES("5c0cc081-f8c5-4c7d-a486-2408da1cd453","1748965718","0909766677","2020-02-20 03:14:07");
INSERT INTO ventas VALUES("a24e0473-4ca1-4d14-8b8b-4a988ff5de97","1732564897","0909766677","2020-03-05 03:14:07");
INSERT INTO ventas VALUES("c4a4afef-7438-4f56-a2a9-84b447f707eb","1725478194","0909766677","2020-03-07 03:14:07");
INSERT INTO ventas VALUES("e03227a2-b5af-4f91-ad57-cefbf2726a25","1778456321","0909766677","2020-03-12 03:14:07");
INSERT INTO ventas VALUES("27cee57d-872a-46a3-a2d5-5cd5701514c5","1748965217","0909766677","2020-03-19 03:14:07");
INSERT INTO ventas VALUES("cde1fab9-e3fa-4f33-810d-eaa2c5091425","1723478693","0909766677","2020-03-22 03:14:07");
INSERT INTO ventas VALUES("38238060-776b-48c2-90b3-e5c5b97d6615","1714786495","0909766677","2020-03-23 03:14:07");
INSERT INTO ventas VALUES("e5a64594-6ffd-4b35-b8cd-cf0f19c32f16","1723481567","0909766677","2020-03-24 03:14:07");
INSERT INTO ventas VALUES("0ff4e625-7a68-4666-b727-4ed7a6de8b95","1791378465","0909766677","2020-03-25 03:14:07");
INSERT INTO ventas VALUES("c3a05547-45f6-4f19-80d3-aeb93e34dada","1723479561","0909766677","2020-03-26 03:14:07");
INSERT INTO ventas VALUES("c86a2f3b-148d-46ee-ab00-3fbfd2cc114c","1726978651","0909766677","2020-04-03 03:14:07");
INSERT INTO ventas VALUES("b3e50513-0ab4-4d92-84c2-e6367e986009","1776539846","0909766677","2020-04-08 03:14:07");
INSERT INTO ventas VALUES("459422d0-3cec-4daa-8ac1-6c664c4fd83a","1786452319","0909766677","2020-04-09 03:14:07");
INSERT INTO ventas VALUES("0e00d651-009a-47b0-8497-a73feaf3ed70","1789457826","0909766677","2020-04-10 03:14:07");
INSERT INTO ventas VALUES("24d9b39e-b1d8-4c80-9dba-8c20be4c0caf","1712584796","0909766677","2020-04-11 03:14:07");
INSERT INTO ventas VALUES("9f78b9d7-7e83-4093-b42f-10602e610004","1747856412","0909766677","2020-04-12 03:14:07");
INSERT INTO ventas VALUES("59b35045-fcfe-44d5-977a-d2b6d57614e8","1747851269","0909766677","2020-04-13 03:14:07");
INSERT INTO ventas VALUES("9c80c181-9af5-4baa-9783-426fe2f25725","1747815623","0909766677","2020-04-14 03:14:07");
INSERT INTO ventas VALUES("693df574-dded-4582-bdfe-5c7876904812","1745123896","0909766677","2020-04-15 03:14:07");
INSERT INTO ventas VALUES("d4cd8566-7458-4644-88b3-2caed2f319a3","1756123589","0909766677","2020-05-07 03:14:07");
INSERT INTO ventas VALUES("3c1be8a7-c66e-4415-b0bd-8a55790ff0a3","1778542369","0909766677","2020-05-09 03:14:07");
INSERT INTO ventas VALUES("af63fb01-2571-46ff-a97f-8b1b968b6dd8","1752136895","0909766677","2020-05-10 03:14:07");
INSERT INTO ventas VALUES("e4b0f3aa-27c5-4d63-822f-c414178d5992","1712489563","0909766677","2020-05-11 03:14:07");
INSERT INTO ventas VALUES("e8429bd4-13d6-494b-87b3-0bfa2e240e2a","1778932658","0909766677","2020-05-12 03:14:07");
INSERT INTO ventas VALUES("c568a678-8dee-4066-ab8e-7ffac9379dc1","1714523688","0909766677","2020-05-13 03:14:07");
INSERT INTO ventas VALUES("4e9b96ff-d0d5-4a80-9fc7-b1046a4b7b21","1715789456","0909766677","2020-05-15 03:14:07");
INSERT INTO ventas VALUES("92e9c7da-44d3-4118-808e-119485f08ca1","1778945782","0909766677","2020-05-18 03:14:07");
INSERT INTO ventas VALUES("18e0b74a-64cb-4e87-b1a6-c3cbcda76c8d","1767894523","0909766677","2020-05-20 03:14:07");
INSERT INTO ventas VALUES("786073b4-724c-4ac6-a247-caa5fed52959","1778945826","0909766677","2020-05-22 03:14:07");
INSERT INTO ventas VALUES("f886cfe9-c975-4449-8651-f720860649e1","1725789562","0909766677","2020-05-25 03:14:07");
INSERT INTO ventas VALUES("9706088a-ef3e-4e03-ba96-29ce0d3facbe","1778512369","0909766677","2020-05-26 03:14:07");
INSERT INTO ventas VALUES("0bcbf8b9-8708-46fb-aa09-0374a7122428","1714528964","0909766677","2020-05-27 03:14:07");
INSERT INTO ventas VALUES("6fee2e15-8110-48e5-8dde-8d4c757c6ea9","1736489567","0909766677","2020-06-04 03:14:07");
INSERT INTO ventas VALUES("5791f35b-593b-4f0b-85c4-bfeebdef2ae5","1725617894","0909766677","2020-06-06 03:14:07");
INSERT INTO ventas VALUES("412f76d2-7c4e-4032-93ef-60e6ccfcaefd","1789632598","0909766677","2020-06-07 03:14:07");
INSERT INTO ventas VALUES("b82aa796-456f-463a-af89-d03c90df07c6","1778569432","0909766677","2020-06-09 03:14:07");
INSERT INTO ventas VALUES("39f276e9-8f30-4c29-a80e-a0616a61401c","4789156235","0909766677","2020-06-10 03:14:07");
INSERT INTO ventas VALUES("e1901433-8985-4f92-8c9b-0d31c8eeda31","1714785212","0909766677","2020-06-11 03:14:07");
INSERT INTO ventas VALUES("a4c2d0fe-773a-4ab8-b164-7c6cbe0fc1cf","1714578953","0909766677","2020-06-12 03:14:07");

-- DETALLE DE LAS VENTAS LEONEL
INSERT INTO detalle_venta VALUES("af0c02bd-4b9b-4a0a-97f7-cf241df5b1a8","40839f41-624c-42f8-bfa0-f4f51509a115",1);
INSERT INTO detalle_venta VALUES("8b6d0a58-e2ec-465a-9149-41039cd5231a","9eee0e45-cdff-4d2d-baae-b64592af0c81",1);
INSERT INTO detalle_venta VALUES("14238ad2-4943-4879-8f5a-6ab8a901f677","34737c5d-de37-448f-b120-c5c1b613d83c",1);
INSERT INTO detalle_venta VALUES("7ce55154-24d4-4fa5-b769-32e60bb26eab","380f7194-029f-4e79-bad3-788cf25491be",1);
INSERT INTO detalle_venta VALUES("f51d2596-ce50-4134-b2d9-6f10e72595b0","30b15f34-f40a-41b3-862c-4c0050e1784c",1);
INSERT INTO detalle_venta VALUES("0bbfaf8c-2a5c-4c4e-82ad-acfe443e3fe1","8b1dce9b-637f-431a-b746-dc3083b0edfb",1);
INSERT INTO detalle_venta VALUES("a7b4cab4-1466-4b34-aa9a-c0956add0c83","f0d481fc-43a1-4ab6-8a53-fd2d8ec0cda9",1);
INSERT INTO detalle_venta VALUES("88c1794d-5d7d-41fc-bc15-5618b6a67d12","38f2e34b-a727-4c9d-b4f5-6c6c28ea5cdb",1);
INSERT INTO detalle_venta VALUES("db30a25c-904f-45dd-9fcd-ef318bdf3817","c3a32237-d969-4dbc-a875-0ae6ae544e35",1);
INSERT INTO detalle_venta VALUES("4bc29bac-18fb-4ebf-a9c6-bc52b49fb30e","8b1dce9b-637f-431a-b746-dc3083b0edfb",1);
INSERT INTO detalle_venta VALUES("04593116-639c-4738-be22-90a3e01d710a","dfefa9cd-79e2-4cf0-a9bf-3edfabab87b5",1);
INSERT INTO detalle_venta VALUES("5c0cc081-f8c5-4c7d-a486-2408da1cd453","8a811cda-c695-4d48-b293-6cd68e306e50",1);
INSERT INTO detalle_venta VALUES("a24e0473-4ca1-4d14-8b8b-4a988ff5de97","38f2e34b-a727-4c9d-b4f5-6c6c28ea5cdb",1);
INSERT INTO detalle_venta VALUES("c4a4afef-7438-4f56-a2a9-84b447f707eb","30b15f34-f40a-41b3-862c-4c0050e1784c",1);
INSERT INTO detalle_venta VALUES("e03227a2-b5af-4f91-ad57-cefbf2726a25","9eee0e45-cdff-4d2d-baae-b64592af0c81",1);
INSERT INTO detalle_venta VALUES("27cee57d-872a-46a3-a2d5-5cd5701514c5","f0d481fc-43a1-4ab6-8a53-fd2d8ec0cda9",1);
INSERT INTO detalle_venta VALUES("cde1fab9-e3fa-4f33-810d-eaa2c5091425","0b3c378d-d6d0-4dbf-bd10-b3eccf2976e2",1);
INSERT INTO detalle_venta VALUES("38238060-776b-48c2-90b3-e5c5b97d6615","30b15f34-f40a-41b3-862c-4c0050e1784c",1);
INSERT INTO detalle_venta VALUES("e5a64594-6ffd-4b35-b8cd-cf0f19c32f16","dfefa9cd-79e2-4cf0-a9bf-3edfabab87b5",1);
INSERT INTO detalle_venta VALUES("0ff4e625-7a68-4666-b727-4ed7a6de8b95","0b3c378d-d6d0-4dbf-bd10-b3eccf2976e2",1);
INSERT INTO detalle_venta VALUES("c3a05547-45f6-4f19-80d3-aeb93e34dada","34737c5d-de37-448f-b120-c5c1b613d83c",1);
INSERT INTO detalle_venta VALUES("c86a2f3b-148d-46ee-ab00-3fbfd2cc114c","9eee0e45-cdff-4d2d-baae-b64592af0c81",1);
INSERT INTO detalle_venta VALUES("b3e50513-0ab4-4d92-84c2-e6367e986009","0b3c378d-d6d0-4dbf-bd10-b3eccf2976e2",1);
INSERT INTO detalle_venta VALUES("459422d0-3cec-4daa-8ac1-6c664c4fd83a","30b15f34-f40a-41b3-862c-4c0050e1784c",1);
INSERT INTO detalle_venta VALUES("0e00d651-009a-47b0-8497-a73feaf3ed70","9eee0e45-cdff-4d2d-baae-b64592af0c81",1);
INSERT INTO detalle_venta VALUES("24d9b39e-b1d8-4c80-9dba-8c20be4c0caf","c3a32237-d969-4dbc-a875-0ae6ae544e35",1);
INSERT INTO detalle_venta VALUES("9f78b9d7-7e83-4093-b42f-10602e610004","0b3c378d-d6d0-4dbf-bd10-b3eccf2976e2",1);
INSERT INTO detalle_venta VALUES("59b35045-fcfe-44d5-977a-d2b6d57614e8","2c985fd8-64db-42ee-8e9c-4adcb002e3ef",1);
INSERT INTO detalle_venta VALUES("9c80c181-9af5-4baa-9783-426fe2f25725","b99cc16d-a2ce-4bc4-a9c5-d727479ba5b9",1);
INSERT INTO detalle_venta VALUES("693df574-dded-4582-bdfe-5c7876904812","0b3c378d-d6d0-4dbf-bd10-b3eccf2976e2",1);
INSERT INTO detalle_venta VALUES("d4cd8566-7458-4644-88b3-2caed2f319a3","6514f137-ab23-4e15-8ca9-0c0ee7c6d880",1);
INSERT INTO detalle_venta VALUES("3c1be8a7-c66e-4415-b0bd-8a55790ff0a3","2c985fd8-64db-42ee-8e9c-4adcb002e3ef",1);
INSERT INTO detalle_venta VALUES("af63fb01-2571-46ff-a97f-8b1b968b6dd8","38f2e34b-a727-4c9d-b4f5-6c6c28ea5cdb",1);
INSERT INTO detalle_venta VALUES("e4b0f3aa-27c5-4d63-822f-c414178d5992","7b79a50f-bbb5-4d56-a7dd-ac7f4eb59d26",1);
INSERT INTO detalle_venta VALUES("e8429bd4-13d6-494b-87b3-0bfa2e240e2a","cae0fa0c-c2af-45fd-8788-1ef81b4a5bc0",1);
INSERT INTO detalle_venta VALUES("c568a678-8dee-4066-ab8e-7ffac9379dc1","9eee0e45-cdff-4d2d-baae-b64592af0c81",1);
INSERT INTO detalle_venta VALUES("4e9b96ff-d0d5-4a80-9fc7-b1046a4b7b21","b99cc16d-a2ce-4bc4-a9c5-d727479ba5b9",1);
INSERT INTO detalle_venta VALUES("92e9c7da-44d3-4118-808e-119485f08ca1","cae0fa0c-c2af-45fd-8788-1ef81b4a5bc0",1);
INSERT INTO detalle_venta VALUES("18e0b74a-64cb-4e87-b1a6-c3cbcda76c8d","8b1dce9b-637f-431a-b746-dc3083b0edfb",1);
INSERT INTO detalle_venta VALUES("786073b4-724c-4ac6-a247-caa5fed52959","c3a32237-d969-4dbc-a875-0ae6ae544e35",1);
INSERT INTO detalle_venta VALUES("f886cfe9-c975-4449-8651-f720860649e1","6514f137-ab23-4e15-8ca9-0c0ee7c6d880",1);
INSERT INTO detalle_venta VALUES("9706088a-ef3e-4e03-ba96-29ce0d3facbe","8b1dce9b-637f-431a-b746-dc3083b0edfb",1);
INSERT INTO detalle_venta VALUES("0bcbf8b9-8708-46fb-aa09-0374a7122428","5b2a3d39-fc57-4a67-bf15-a8f9d10aa335",1);
INSERT INTO detalle_venta VALUES("6fee2e15-8110-48e5-8dde-8d4c757c6ea9","34737c5d-de37-448f-b120-c5c1b613d83c",1);
INSERT INTO detalle_venta VALUES("5791f35b-593b-4f0b-85c4-bfeebdef2ae5","7b79a50f-bbb5-4d56-a7dd-ac7f4eb59d26",1);
INSERT INTO detalle_venta VALUES("412f76d2-7c4e-4032-93ef-60e6ccfcaefd","9eee0e45-cdff-4d2d-baae-b64592af0c81",1);
INSERT INTO detalle_venta VALUES("b82aa796-456f-463a-af89-d03c90df07c6","7fe0f0de-10b7-4d80-8163-07a61b0512fa",1);
INSERT INTO detalle_venta VALUES("39f276e9-8f30-4c29-a80e-a0616a61401c","5fabef97-5624-46c9-ac1b-4921660fda68",1);
INSERT INTO detalle_venta VALUES("e1901433-8985-4f92-8c9b-0d31c8eeda31","7b79a50f-bbb5-4d56-a7dd-ac7f4eb59d26",1);
INSERT INTO detalle_venta VALUES("a4c2d0fe-773a-4ab8-b164-7c6cbe0fc1cf","9eee0e45-cdff-4d2d-baae-b64592af0c81",1);

-- FACTURAS LEONEL
-- SELECT codigo_vesnta, celulares.precio_celular FROM detalle_venta, celulares WHERE detalle_venta.id_celular = celulares.id_celular
INSERT INTO facturas VALUES("cde1fab9-e3fa-4f33-810d-eaa2c5091425",162.80,0,22.20,185);
INSERT INTO facturas VALUES("0ff4e625-7a68-4666-b727-4ed7a6de8b95",162.80,0,22.20,185);
INSERT INTO facturas VALUES("b3e50513-0ab4-4d92-84c2-e6367e986009",162.80,0,22.20,185);
INSERT INTO facturas VALUES("9f78b9d7-7e83-4093-b42f-10602e610004",162.80,0,22.20,185);
INSERT INTO facturas VALUES("693df574-dded-4582-bdfe-5c7876904812",162.80,0,22.20,185);
INSERT INTO facturas VALUES("59b35045-fcfe-44d5-977a-d2b6d57614e8",507.76,0,69.24,577);
INSERT INTO facturas VALUES("3c1be8a7-c66e-4415-b0bd-8a55790ff0a3",507.76,0,69.24,577);
INSERT INTO facturas VALUES("f51d2596-ce50-4134-b2d9-6f10e72595b0",122.32,0,16.68,139);
INSERT INTO facturas VALUES("c4a4afef-7438-4f56-a2a9-84b447f707eb",122.32,0,16.68,139);
INSERT INTO facturas VALUES("38238060-776b-48c2-90b3-e5c5b97d6615",122.32,0,16.68,139);
INSERT INTO facturas VALUES("459422d0-3cec-4daa-8ac1-6c664c4fd83a",122.32,0,16.68,139);
INSERT INTO facturas VALUES("14238ad2-4943-4879-8f5a-6ab8a901f677",463.76,0,63.24,527);
INSERT INTO facturas VALUES("c3a05547-45f6-4f19-80d3-aeb93e34dada",463.76,0,63.24,527);
INSERT INTO facturas VALUES("6fee2e15-8110-48e5-8dde-8d4c757c6ea9",463.76,0,63.24,527);
INSERT INTO facturas VALUES("7ce55154-24d4-4fa5-b769-32e60bb26eab",322.96,0,44.04,367);
INSERT INTO facturas VALUES("88c1794d-5d7d-41fc-bc15-5618b6a67d12",211.20,0,28.80,240);
INSERT INTO facturas VALUES("a24e0473-4ca1-4d14-8b8b-4a988ff5de97",211.20,0,28.80,240);
INSERT INTO facturas VALUES("af63fb01-2571-46ff-a97f-8b1b968b6dd8",211.20,0,28.80,240);
INSERT INTO facturas VALUES("af0c02bd-4b9b-4a0a-97f7-cf241df5b1a8",52.80,0,7.20,60);
INSERT INTO facturas VALUES("0bcbf8b9-8708-46fb-aa09-0374a7122428",542.96,0,74.04,617);
INSERT INTO facturas VALUES("39f276e9-8f30-4c29-a80e-a0616a61401c",393.36,0,53.64,447);
INSERT INTO facturas VALUES("d4cd8566-7458-4644-88b3-2caed2f319a3",437.36,0,59.64,497);
INSERT INTO facturas VALUES("f886cfe9-c975-4449-8651-f720860649e1",437.36,0,59.64,497);
INSERT INTO facturas VALUES("e4b0f3aa-27c5-4d63-822f-c414178d5992",243.76,0,33.24,277);
INSERT INTO facturas VALUES("5791f35b-593b-4f0b-85c4-bfeebdef2ae5",243.76,0,33.24,277);
INSERT INTO facturas VALUES("e1901433-8985-4f92-8c9b-0d31c8eeda31",243.76,0,33.24,277);
INSERT INTO facturas VALUES("b82aa796-456f-463a-af89-d03c90df07c6",569.36,0,77.64,647);
INSERT INTO facturas VALUES("5c0cc081-f8c5-4c7d-a486-2408da1cd453",437.36,0,59.64,497);
INSERT INTO facturas VALUES("0bbfaf8c-2a5c-4c4e-82ad-acfe443e3fe1",139.92,0,19.08,159);
INSERT INTO facturas VALUES("4bc29bac-18fb-4ebf-a9c6-bc52b49fb30e",139.92,0,19.08,159);
INSERT INTO facturas VALUES("18e0b74a-64cb-4e87-b1a6-c3cbcda76c8d",139.92,0,19.08,159);
INSERT INTO facturas VALUES("9706088a-ef3e-4e03-ba96-29ce0d3facbe",139.92,0,19.08,159);
INSERT INTO facturas VALUES("8b6d0a58-e2ec-465a-9149-41039cd5231a",199.76,0,27.24,227);
INSERT INTO facturas VALUES("e03227a2-b5af-4f91-ad57-cefbf2726a25",199.76,0,27.24,227);
INSERT INTO facturas VALUES("c86a2f3b-148d-46ee-ab00-3fbfd2cc114c",199.76,0,27.24,227);
INSERT INTO facturas VALUES("0e00d651-009a-47b0-8497-a73feaf3ed70",199.76,0,27.24,227);
INSERT INTO facturas VALUES("c568a678-8dee-4066-ab8e-7ffac9379dc1",199.76,0,27.24,227);
INSERT INTO facturas VALUES("412f76d2-7c4e-4032-93ef-60e6ccfcaefd",199.76,0,27.24,227);
INSERT INTO facturas VALUES("a4c2d0fe-773a-4ab8-b164-7c6cbe0fc1cf",199.76,0,27.24,227);
INSERT INTO facturas VALUES("9c80c181-9af5-4baa-9783-426fe2f25725",261.36,0,35.64,297);
INSERT INTO facturas VALUES("4e9b96ff-d0d5-4a80-9fc7-b1046a4b7b21",261.36,0,35.64,297);
INSERT INTO facturas VALUES("db30a25c-904f-45dd-9fcd-ef318bdf3817",278.96,0,38.04,317);
INSERT INTO facturas VALUES("24d9b39e-b1d8-4c80-9dba-8c20be4c0caf",278.96,0,38.04,317);
INSERT INTO facturas VALUES("786073b4-724c-4ac6-a247-caa5fed52959",278.96,0,38.04,317);
INSERT INTO facturas VALUES("e8429bd4-13d6-494b-87b3-0bfa2e240e2a",154.00,0,21.00,175);
INSERT INTO facturas VALUES("92e9c7da-44d3-4118-808e-119485f08ca1",154.00,0,21.00,175);
INSERT INTO facturas VALUES("04593116-639c-4738-be22-90a3e01d710a",393.36,0,53.64,447);
INSERT INTO facturas VALUES("e5a64594-6ffd-4b35-b8cd-cf0f19c32f16",393.36,0,53.64,447);
INSERT INTO facturas VALUES("a7b4cab4-1466-4b34-aa9a-c0956add0c83",184.80,0,25.20,210);
INSERT INTO facturas VALUES("27cee57d-872a-46a3-a2d5-5cd5701514c5",184.80,0,25.20,210);

-- CLIENTES DIEGO
INSERT INTO clientes VALUES("1723457890", "ARMANDO", "PAREDES", "LA LIBERTAD");
INSERT INTO clientes VALUES("1789743610","MARGARITA","ZAMBRANO","LA JOTA");
INSERT INTO clientes VALUES("1796312574","MARIO","SUIN","LA FORESTAL");
INSERT INTO clientes VALUES("1724851237","MARCO","MAILA","QUITUMBE");
INSERT INTO clientes VALUES("1778254176","CAROLINE","JUMBO","LA MAGDALENA");
INSERT INTO clientes VALUES("1789457870","MARCO", "MAILA", "LA ARGELIA");
INSERT INTO clientes VALUES("1785123479","WILIAN","TAPIA","LA MARIN");
INSERT INTO clientes VALUES("0145278964","JONATHAN","FERNÁNDEZ","CENTRO HISTÓRICO");
INSERT INTO clientes VALUES("1728941232","ALEXANDER","QUIROZ","LA CONCEPCION");
INSERT INTO clientes VALUES("1789745139","ALEJANDRO","MARQUÉZ","EL JARDÍN");
INSERT INTO clientes VALUES("1756453423", "LIZETH", "PACHECO", "LA VILLAFLORA");
INSERT INTO clientes VALUES("1752147892","DIEGO","BAHAMONDE","LA CONCEPCION");
INSERT INTO clientes VALUES("1785471236","ESTEBAN","GONZALEZ","LA CONCEPCION");
INSERT INTO clientes VALUES("0531247896","ARNALDO","ORTIZ","LA JOTA");
INSERT INTO clientes VALUES("0702569874","FERNANDO","HERNÁNDEZ","EL PINTADO");
INSERT INTO clientes VALUES("1987453311","ANDRÉS","QUIÑONES","LA FLORESTA");
INSERT INTO clientes VALUES("0300052478","DAVID","LÓPEZ","CHIRIYACU");
INSERT INTO clientes VALUES("1741253698","DIANA","ORDOÑEZ","LA RONDA");
INSERT INTO clientes VALUES("1125789632","GABRIELA","RODRIGUEZ","LA MENA 2");
INSERT INTO clientes VALUES("0247896541","SORAYA","VARGAS","EL FLORÓN");
INSERT INTO clientes VALUES("0398745126","VANESSA","ROCHA","AMAGUAÑA");
INSERT INTO clientes VALUES("1369412587","ANDRADE","ROJAS","FAJARDO");
INSERT INTO clientes VALUES("0698741234","KARINA","PILICITA","SAN PEDRO DE TABOADA");
INSERT INTO clientes VALUES("1787412525","BRYAN","IMBAQUINGO","SANGOLQUÍ");
INSERT INTO clientes VALUES("1352217899","BYRON","ALARCÓN","SOLANDA");
INSERT INTO clientes VALUES("1421789651","ALEX","AGUIRRE","LA MASCOTA");
INSERT INTO clientes VALUES("1789256981","ANDRÉS","SIMBAÑA","LA FERROVIARIA");
INSERT INTO clientes VALUES("0678964125","GLENDA","ZAPATA","CARCELÉN");
INSERT INTO clientes VALUES("1752036970","ANDRÉS","ARIAS","CONOCOTO");
INSERT INTO clientes VALUES("1780524178","KEVIN","AGUILAR","LA MASCOTA");
INSERT INTO clientes VALUES("1369874125","ARTURO","VELASCO","CARCELÉN");
INSERT INTO clientes VALUES("1763587412","NICOLE","NUÑEZ","PINTAG");
INSERT INTO clientes VALUES("1378412039","MARÍA","LARCO","ALOASÍ");
INSERT INTO clientes VALUES("0369874555","JEFFERSON","QUISHPE","SAN ROQUE");
INSERT INTO clientes VALUES("1745789612","LUIS","ZALDUMBIDE","SAN BARTOLO");
INSERT INTO clientes VALUES("1785789658","KEVIN","MUZO","CONOCOTO");
INSERT INTO clientes VALUES("1736987452","LUIS","QUINGA","LA VILLAFLORA");
INSERT INTO clientes VALUES("1357894123","ANDREA","SILVA","CONOCOTO");
INSERT INTO clientes VALUES("1796857411","BRYAN","MORA","LA MENA 2");
INSERT INTO clientes VALUES("1712896742","SANTIAGO","SORIA","PINTAG");
INSERT INTO clientes VALUES("1398745620","CRISTOPHER","MARTINEZ","LA RONDA");
INSERT INTO clientes VALUES("1778625787","SEBASTIAN","PADILLA","LA RECOLECTA");
INSERT INTO clientes VALUES("1725879641","DAYSI","MALDONADO","EL CONDADO");
INSERT INTO clientes VALUES("1768741555","LEONIDAS","RECALDE","SOLANDA");
INSERT INTO clientes VALUES("1796348713","FERNANDO","QUIROGA","LA VICENTINA");
INSERT INTO clientes VALUES("1389741580","NICOLE","PILLAJO","LA LIBERTAD");
INSERT INTO clientes VALUES("1789741211","KEVIN","RAMIREZ","MIRAFLORES");
INSERT INTO clientes VALUES("1398741200","STEVEN","MORALES","EL EJIDO");
INSERT INTO clientes VALUES("1789658971","SAMUEL","BASANTES","MONJAS");
INSERT INTO clientes VALUES("1756431800","ISMAEL", "GUAYASAMIN", "AMAGUAÑA");


