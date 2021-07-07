--- Unidades vendidas de cada producto ---
SELECT id_dtienda, nombre, SUM(unidades) AS unidades, anio, mes, semana, dia FROM "Hechos_Ventas"
INNER JOIN "Dimension_Producto" USING (id_dproducto)
INNER JOIN "Dimension_Tiempo_Ventas" USING (id_dtiempo)
GROUP BY id_dtienda, nombre, anio, mes, semana, dia
ORDER BY id_dtienda, nombre ASC;

--- Monto total de ventas por producto ---
SELECT id_dtienda, nombre, SUM(unidades * precio) AS monto, anio, mes, semana, dia FROM "Hechos_Ventas"
INNER JOIN "Dimension_Producto" USING (id_dproducto)
INNER JOIN "Dimension_Tiempo_Ventas" USING (id_dtiempo)
GROUP BY id_dtienda, nombre, anio, mes, semana, dia
ORDER BY id_dtienda, nombre ASC;

--- Monto total de ventas ---
SELECT id_dtienda, SUM(unidades * precio) AS monto FROM "Hechos_Ventas"
INNER JOIN "Dimension_Producto" USING (id_dproducto)
GROUP BY id_dtienda
ORDER BY id_dtienda;

--- Categoria mas rentable ---
SELECT id_dtienda, "Dimension_Categoria".nombre, SUM(unidades * precio) AS monto FROM "Hechos_Ventas"
INNER JOIN "Dimension_Producto" USING (id_dproducto)
INNER JOIN "Dimension_Producto_Categoria" USING (id_producto)
INNER JOIN "Dimension_Categoria" USING (id_categoria)
INNER JOIN "Dimension_Tiempo_Ventas" USING (id_dtiempo)
GROUP BY id_dtienda, "Dimension_Categoria".nombre
ORDER BY id_dtienda, monto DESC;

--- Marca más Rentable ---
SELECT id_dtienda, "Dimension_Marca".nombre, SUM(unidades * precio) AS monto FROM "Hechos_Ventas"
INNER JOIN "Dimension_Producto" USING (id_dproducto)
INNER JOIN "Dimension_Marca" USING (id_dmarca)
GROUP BY id_dtienda, "Dimension_Marca".nombre
ORDER BY id_dtienda, monto DESC;