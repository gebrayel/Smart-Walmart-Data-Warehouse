--- Unidades vendidas de cada producto ---
SELECT id_dtienda, nombre, SUM(unidades) AS unidades, anio, mes, semana, dia FROM "Hechos_Ventas"
INNER JOIN "Dimension_Producto" USING (id_dproducto)
INNER JOIN "Dimension_Tiempo_Ventas" USING (id_dtiempo)
GROUP BY id_dtienda, nombre, anio, mes, semana, dia
ORDER BY nombre ASC;

--- Monto total de ventas por producto ---
SELECT id_dtienda, nombre, SUM(unidades * precio) AS monto, anio, mes, semana, dia FROM "Hechos_Ventas"
INNER JOIN "Dimension_Producto" USING (id_dproducto)
INNER JOIN "Dimension_Tiempo_Ventas" USING (id_dtiempo)
GROUP BY id_dtienda, nombre, anio, mes, semana, dia
ORDER BY nombre ASC;

--- Monto total de ventas ---
SELECT id_dtienda, SUM(unidades * precio) AS monto, anio, mes, semana, dia FROM "Hechos_Ventas"
INNER JOIN "Dimension_Producto" USING (id_dproducto)
INNER JOIN "Dimension_Tiempo_Ventas" USING (id_dtiempo)
GROUP BY id_dtienda, anio, mes, semana, dia;