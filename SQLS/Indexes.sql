SELECT * FROM "Dimension_Producto";

-- CREACION DE INDEX PRIMARIO SOBRE EL NOMBRE DE LA MARCA
CREATE INDEX marca_nombre ON "Dimension_Marca" (nombre);
CLUSTER "Dimension_Marca" USING marca_nombre;
CLUSTER "Dimension_Marca";

-- CREACION DE INDEX SECUNDARIO SOBRE EL ID DE LA MARCA
CREATE INDEX marca_id ON "Dimension_Marca" (id_marca);
SELECT * FROM "Dimension_Marca" WHERE nombre ='Ciclopirox';


-- CREACION DE INDEX SOBRE EL NOMBRE DE LA PRODUCTO
CREATE INDEX producto_nombre ON "Dimension_Producto" (nombre);
CLUSTER "Dimension_Producto" USING producto_nombre;
CLUSTER "Dimension_Producto"

SELECT * FROM "Dimension_Producto" WHERE nombre ='Zucchini - Green';

-- CREACION DE INDEX SECUNDARIO SOBRE EL ID DEL PRODUCTO
CREATE INDEX producto_id ON "Dimension_Producto" (id_producto);
SELECT * FROM "Dimension_Producto" WHERE id_producto =100;


-- CREACION DE INDEX SOBRE EL NOMBRE DE LA CATEGORIA
CREATE INDEX categoria_nombre ON "Dimension_Categoria" (nombre);
CLUSTER "Dimension_Categoria" USING categoria_nombre;
CLUSTER "Dimension_Categoria"

SELECT * FROM "Dimension_Categoria" WHERE nombre ='Verbenaceae';

-- CREACION DE INDEX SECUNDARIO SOBRE EL ID DEL categoria
CREATE INDEX categoria_id ON "Dimension_Categoria" (id_categoria);
SELECT * FROM "Dimension_Categoria" WHERE id_categoria =28;


-- CREACION DE INDEX SOBRE EL NOMBRE DE LA TIENDA
CREATE INDEX tienda_nombre ON "Dimension_Tienda" (nombre);
CLUSTER "Dimension_Tienda" USING tienda_nombre;
CLUSTER "Dimension_Tienda"

SELECT * FROM "Dimension_Tienda" WHERE nombre ='El Hatillo';

-- CREACION DE INDEX SECUNDARIO SOBRE EL ID DEL TIENDA
CREATE INDEX tienda_id ON "Dimension_Tienda" (id_tienda);
SELECT * FROM "Dimension_Tienda" WHERE id_tienda =2;



