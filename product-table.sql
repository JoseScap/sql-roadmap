CREATE TABLE products (
    product_id INTEGER PRIMARY KEY AUTOINCREMENT,
    product_name TEXT NOT NULL,
    description TEXT,
    price REAL NOT NULL,
    quantity INTEGER NOT NULL DEFAULT 0,
    color TEXT,
    material TEXT,
    manufacturer TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_sold_at TIMESTAMP,
    UNIQUE(product_name) -- Para asegurar que no haya productos duplicados con el mismo nombre
);

-- Insertando 10 productos con valores más realistas
INSERT INTO products (product_name, description, price, quantity, color, material, manufacturer, created_at, updated_at)
VALUES 
    ('Smartphone Samsung Galaxy S20', 'Teléfono inteligente con cámara de alta resolución y pantalla AMOLED de 6.2 pulgadas.', 899.99, 50, 'Gris', 'Vidrio y metal', 'Samsung', DATETIME('now'), DATETIME('now')),
    ('Laptop HP Pavilion 15', 'Laptop con procesador Intel Core i5, 8GB de RAM y SSD de 512GB.', 799.99, 30, 'Plata', 'Plástico y metal', 'HP', DATETIME('now'), DATETIME('now')),
    ('Televisor Sony Bravia 4K 55"', 'Televisor inteligente con resolución 4K, HDR y sistema operativo Android TV.', 1299.99, 20, 'Negro', 'Plástico y metal', 'Sony', DATETIME('now'), DATETIME('now')),
    ('Cámara Canon EOS Rebel T7', 'Cámara réflex digital con sensor CMOS de 24.1MP y grabación de video Full HD.', 599.99, 40, 'Negro', 'Plástico y metal', 'Canon', DATETIME('now'), DATETIME('now')),
    ('Auriculares inalámbricos Apple AirPods Pro', 'Auriculares con cancelación activa de ruido y resistencia al agua.', 249.99, 60, 'Blanco', 'Plástico', 'Apple', DATETIME('now'), DATETIME('now')),
    ('Tableta Samsung Galaxy Tab S7+', 'Tableta Android con pantalla Super AMOLED de 12.4 pulgadas y soporte para S Pen.', 849.99, 25, 'Negro', 'Metal y vidrio', 'Samsung', DATETIME('now'), DATETIME('now')),
    ('Refrigerador LG French Door', 'Refrigerador con capacidad de 26 pies cúbicos, dispensador de agua y hielo.', 1799.99, 15, 'Acero inoxidable', 'Metal y plástico', 'LG', DATETIME('now'), DATETIME('now')),
    ('Impresora HP OfficeJet Pro 9025', 'Impresora multifuncional con impresión a doble cara y conectividad Wi-Fi.', 299.99, 35, 'Blanco', 'Plástico', 'HP', DATETIME('now'), DATETIME('now')),
    ('Consola de videojuegos Sony PlayStation 5', 'Consola de última generación con capacidad de reproducción de juegos en 4K y tecnología de trazado de rayos.', 499.99, 10, 'Blanco y negro', 'Plástico', 'Sony', DATETIME('now'), DATETIME('now')),
    ('Aspiradora Dyson V11 Absolute', 'Aspiradora inalámbrica con motor de succión potente y filtro avanzado para alérgenos.', 599.99, 20, 'Plata', 'Plástico', 'Dyson', DATETIME('now'), DATETIME('now'));

-- Insertando 5 productos de limpieza
INSERT INTO products (product_name, description, price, quantity, color, material, manufacturer, created_at, updated_at)
VALUES 
    ('Detergente líquido Tide', 'Detergente líquido para lavandería con tecnología de limpieza avanzada.', 9.99, 50, 'Azul', 'Plástico', 'Tide', DATETIME('now'), DATETIME('now')),
    ('Desinfectante Lysol', 'Desinfectante multiusos que mata el 99.9% de los gérmenes y virus.', 5.49, 40, 'Verde', 'Plástico', 'Lysol', DATETIME('now'), DATETIME('now')),
    ('Escoba y recogedor Rubbermaid', 'Conjunto de escoba y recogedor duradero y fácil de usar para la limpieza diaria.', 14.99, 30, 'Gris y negro', 'Plástico y metal', 'Rubbermaid', DATETIME('now'), DATETIME('now')),
    ('Limpiavidrios Windex', 'Limpiador de ventanas y superficies de vidrio que deja un brillo impecable.', 3.99, 60, 'Azul', 'Plástico', 'Windex', DATETIME('now'), DATETIME('now')),
    ('Paños de microfibra AmazonBasics', 'Paquete de 24 paños de microfibra ultra suaves y absorbentes para la limpieza del hogar.', 12.99, 50, 'Multicolor', 'Microfibra', 'AmazonBasics', DATETIME('now'), DATETIME('now'));

-- Insertando 10 productos de cocina
INSERT INTO products (product_name, description, price, quantity, color, material, manufacturer, created_at, updated_at)
VALUES 
    ('Olla a presión Instant Pot', 'Olla multifuncional programable con capacidades de cocción a presión, lenta, arrocera, vaporera y más.', 79.99, 20, 'Acero inoxidable', 'Metal', 'Instant Brands', DATETIME('now'), DATETIME('now')),
    ('Juego de cuchillos de cocina Zwilling', 'Set de cuchillos de cocina de alta calidad con hojas de acero inoxidable y mangos ergonómicos.', 149.99, 15, 'Negro', 'Acero inoxidable y plástico', 'Zwilling', DATETIME('now'), DATETIME('now')),
    ('Máquina de café espresso Breville', 'Máquina de café espresso semiautomática con vaporizador de leche integrado y control de temperatura.', 599.99, 10, 'Acero inoxidable', 'Metal', 'Breville', DATETIME('now'), DATETIME('now')),
    ('Báscula digital OXO Good Grips', 'Báscula de cocina digital precisa con pantalla LCD y capacidad de hasta 11 libras.', 24.99, 30, 'Blanco', 'Plástico y metal', 'OXO', DATETIME('now'), DATETIME('now')),
    ('Licuadora Vitamix', 'Licuadora de alta potencia con cuchillas de acero inoxidable y programas preestablecidos para mezclas perfectas.', 449.99, 25, 'Negro', 'Plástico y metal', 'Vitamix', DATETIME('now'), DATETIME('now')),
    ('Juego de utensilios de cocina de silicona', 'Set de utensilios de cocina duraderos y antiadherentes hechos de silicona de grado alimenticio.', 29.99, 40, 'Multicolor', 'Silicona', 'KitchenAid', DATETIME('now'), DATETIME('now')),
    ('Molde para hornear antiadherente Wilton', 'Molde para hornear de alta calidad con recubrimiento antiadherente para resultados de horneado perfectos.', 12.99, 50, 'Gris', 'Metal', 'Wilton', DATETIME('now'), DATETIME('now')),
    ('Batidora de mano KitchenAid', 'Batidora de mano potente con múltiples velocidades y accesorios intercambiables para mezclar, batir y triturar.', 49.99, 20, 'Rojo', 'Plástico y metal', 'KitchenAid', DATETIME('now'), DATETIME('now')),
    ('Termómetro digital ThermoPro', 'Termómetro de cocina digital con sonda de acero inoxidable y pantalla LCD para una lectura precisa de la temperatura.', 19.99, 35, 'Plata', 'Plástico y metal', 'ThermoPro', DATETIME('now'), DATETIME('now')),
    ('Tabla de cortar de bambú Extra Grande', 'Tabla de cortar duradera y resistente hecha de bambú natural, ideal para cortar carne, verduras y más.', 21.99, 45, 'Marrón', 'Bambú', 'HOMWE', DATETIME('now'), DATETIME('now'));

-- Insertando 10 productos de alimentación (excluyendo frutas y verduras)
INSERT INTO products (product_name, description, price, quantity, color, material, manufacturer, created_at, updated_at)
VALUES 
    ('Arroz blanco de grano largo', 'Arroz de grano largo ideal para acompañar platos principales y guarniciones.', 5.99, 50, NULL, NULL, 'Varios', DATETIME('now'), DATETIME('now')),
    ('Pasta italiana espagueti', 'Espaguetis de pasta italiana clásica, perfectos para preparar platos de pasta tradicionales.', 2.49, 80, NULL, NULL, 'Varios', DATETIME('now'), DATETIME('now')),
    ('Aceite de oliva virgen extra', 'Aceite de oliva de alta calidad prensado en frío, ideal para cocinar y aderezar.', 9.99, 30, NULL, NULL, 'Varios', DATETIME('now'), DATETIME('now')),
    ('Café tostado en grano', 'Café de origen seleccionado y tostado oscuro, perfecto para preparar café expreso y otras bebidas.', 12.99, 40, NULL, NULL, 'Varios', DATETIME('now'), DATETIME('now')),
    ('Cereal de desayuno Corn Flakes', 'Cereal de maíz tostado crujiente, bajo en azúcar y alto en fibra, ideal para un desayuno saludable.', 3.99, 60, NULL, NULL, 'Varios', DATETIME('now'), DATETIME('now')),
    ('Barra de chocolate negro 70% cacao', 'Tableta de chocolate negro con un 70% de cacao, perfecta para los amantes del chocolate oscuro.', 4.49, 70, NULL, NULL, 'Varios', DATETIME('now'), DATETIME('now')),
    ('Galletas de avena y pasas', 'Galletas horneadas con avena y pasas jugosas, ideales para un tentempié nutritivo.', 3.29, 50, NULL, NULL, 'Varios', DATETIME('now'), DATETIME('now')),
    ('Sopa instantánea de pollo con fideos', 'Sopa instantánea de pollo con fideos finos, lista para servir en minutos.', 1.99, 100, NULL, NULL, 'Varios', DATETIME('now'), DATETIME('now')),
    ('Barrita energética de almendras y chocolate', 'Barrita energética hecha con almendras tostadas y chocolate negro, perfecta para un impulso rápido de energía.', 1.49, 120, NULL, NULL, 'Varios', DATETIME('now'), DATETIME('now')),
    ('Leche de almendras sin azúcar', 'Leche de almendras sin azúcar añadido, rica en calcio y baja en calorías, ideal para dietas veganas y vegetarianas.', 3.99, 40, NULL, NULL, 'Varios', DATETIME('now'), DATETIME('now'));

-- Insertando 10 productos de frutas y verduras
INSERT INTO products (product_name, description, price, quantity, color, material, manufacturer, created_at, updated_at)
VALUES 
    ('Manzanas Granny Smith', 'Manzanas verdes Granny Smith, crujientes y refrescantes.', 2.99, 50, 'Verde', NULL, 'Varios', DATETIME('now'), DATETIME('now')),
    ('Plátanos', 'Plátanos maduros y dulces, perfectos para meriendas y batidos.', 1.49, 60, 'Amarillo', NULL, 'Varios', DATETIME('now'), DATETIME('now')),
    ('Zanahorias', 'Zanahorias frescas y crujientes, ideales para ensaladas y platos cocidos.', 0.99, 80, 'Naranja', NULL, 'Varios', DATETIME('now'), DATETIME('now')),
    ('Espinacas frescas', 'Espinacas frescas y tiernas, llenas de nutrientes y perfectas para ensaladas y salteados.', 1.79, 40, 'Verde', NULL, 'Varios', DATETIME('now'), DATETIME('now')),
    ('Fresas', 'Fresas rojas y jugosas, dulces y llenas de sabor.', 3.49, 30, 'Rojo', NULL, 'Varios', DATETIME('now'), DATETIME('now')),
    ('Pepinos', 'Pepinos frescos y crujientes, excelentes para ensaladas y refrigerios.', 0.89, 70, 'Verde', NULL, 'Varios', DATETIME('now'), DATETIME('now')),
    ('Tomates', 'Tomates maduros y jugosos, perfectos para ensaladas, salsas y sándwiches.', 1.29, 50, 'Rojo', NULL, 'Varios', DATETIME('now'), DATETIME('now')),
    ('Pimientos rojos', 'Pimientos rojos dulces y crujientes, ideales para asar, saltear y rellenar.', 1.99, 40, 'Rojo', NULL, 'Varios', DATETIME('now'), DATETIME('now')),
    ('Uvas rojas sin semillas', 'Uvas rojas sin semillas, jugosas y deliciosas.', 4.99, 20, 'Rojo', NULL, 'Varios', DATETIME('now'), DATETIME('now')),
    ('Brócoli', 'Brócoli fresco y nutritivo, excelente para cocinar al vapor, saltear y hornear.', 1.69, 60, 'Verde', NULL, 'Varios', DATETIME('now'), DATETIME('now'));
