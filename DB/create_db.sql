-- Supprimer la table si elle existe
DROP TABLE IF EXISTS "ocoffee";

-- Créer la table avec la nouvelle colonne "detailed_description"
CREATE TABLE IF NOT EXISTS "ocoffee" (
  "id" SERIAL PRIMARY KEY,
  "name" TEXT,
  "description" TEXT,
  "detailed_description" TEXT, -- Nouvelle colonne ajoutée
  "reference" INTEGER UNIQUE NOT NULL,
  "origin" TEXT,
  "kg_price" NUMERIC(10, 2),
  "variety" TEXT,
  "available" BOOLEAN
);

-- Insérer les données avec les descriptions détaillées
INSERT INTO "ocoffee" ("name", "description", "detailed_description", "reference", "origin", "kg_price", "variety", "available") VALUES
('Espresso', 'Café fort et concentré préparé en faisant passer de l''eau chaude à travers du café finement moulu.',
 'L''Espresso est originaire d''Italie, où il est devenu un symbole de la culture du café. Son goût fort est obtenu grâce à une pression élevée d''eau chaude à travers du café finement moulu. Ce procédé est rapide, et l''espresso est souvent consommé seul ou utilisé comme base pour d''autres boissons comme le cappuccino ou le latte.', 
 100955890, 'Italie', 20.99, 'Corsé', TRUE),

('Columbian', 'Café moyennement corsé avec une acidité vive et une saveur riche.',
 'Le Colombian Arabica est cultivé dans les montagnes fertiles de Colombie. La récolte des grains, faite à la main, préserve leur vive acidité et leur riche saveur. Il s''agit d''une tradition centenaire qui respecte les méthodes artisanales de production de café.', 
 100955894, 'Colombie', 18.75, 'Acide', TRUE),

('Ethiopian Yirgacheffe', 'Réputé pour son arôme floral, son acidité vive et ses notes de saveur citronnée.',
 'Le café Ethiopian Yirgacheffe provient de la région de Yirgacheffe en Éthiopie, le berceau du café. Réputé pour ses saveurs florales et ses notes d''agrumes, ce café est cultivé à des altitudes élevées, ce qui lui confère une qualité exceptionnelle.', 
 105589090, 'Éthiopie', 22.50, 'Fruité', TRUE),

('Brazilian Santos', 'Café doux et lisse avec un profil de saveur de noisette.',
 'Le Brazilian Santos est cultivé dans les régions chaudes et ensoleillées du Brésil. Ce café est apprécié pour sa douceur et ses notes de noisette, rendant chaque tasse agréable et légère.', 
 134009550, 'Brésil', 17.80, 'Doux', TRUE),

('Guatemalan Antigua', 'Café corsé avec des nuances chocolatées et une pointe d''épice.',
 'Le Guatemalan Antigua est produit dans les régions volcaniques d''Antigua. Ce café est célèbre pour ses saveurs chocolatées profondes, avec une touche d''épice, grâce aux sols riches et aux conditions climatiques idéales.', 
 256505890, 'Guatemala', 21.25, 'Corsé', TRUE),

('Kenyan AA', 'Café complexe connu pour son acidité rappelant le vin et ses saveurs fruitées.',
 'Le Kenyan AA est cultivé à haute altitude sur les sols fertiles du Kenya. Il est apprécié pour son acidité vive, semblable à celle du vin, et ses notes fruitées éclatantes. La récolte minutieuse garantit une qualité constante.', 
 295432730, 'Kenya', 23.70, 'Acide', TRUE),

('Sumatra Mandheling', 'Café profond et terreux avec un corps lourd et une faible acidité.',
 'Le Sumatra Mandheling est cultivé sur l''île de Sumatra, en Indonésie. Ce café est connu pour son corps lourd et ses saveurs terreuses distinctes, avec une acidité modérée qui met en valeur sa profondeur.', 
 302932754, 'Indonésie', 19.95, 'Corsé', TRUE),

('Costa Rican Tarrazu', 'Café vif et net avec une finition propre et une acidité vive.',
 'Le Costa Rican Tarrazu provient de la région de Tarrazu au Costa Rica, où les conditions de culture sont idéales pour produire un café vif et propre. Ses notes vives et son acidité marquée en font un favori parmi les amateurs de café.' , 
 327302954, 'Costa Rica', 24.50, 'Acide', TRUE),

('Vietnamese Robusta', 'Café audacieux et fort avec une saveur robuste distinctive.',
 'Le Vietnamese Robusta est cultivé principalement dans les régions montagneuses du Vietnam. Son goût audacieux et puissant est apprécié des amateurs de café fort et il est souvent utilisé dans les cafés glacés traditionnels vietnamiens.' , 
 549549090, 'Vietnam', 16.75, 'Épicé', TRUE),

('Tanzanian Peaberry', 'Acidité vive avec un profil de saveur rappelant le vin et un corps moyen.',
 'Le Tanzanian Peaberry est un café rare où les grains se développent en une seule graine au lieu de deux. Cela donne au café un profil plus concentré, avec des notes vives et fruitées qui rappellent le vin.' , 
 582954954, 'Tanzanie', 26.80, 'Fruité', TRUE),

('Jamaican Blue Mountain', 'Reconnu pour sa saveur douce, son acidité vive et son absence d''amertume.',
 'Le Jamaican Blue Mountain est l''un des cafés les plus rares et les plus chers au monde. Cultivé sur les pentes des Blue Mountains en Jamaïque, ce café est connu pour sa douceur et son absence d''amertume, avec une acidité vive.' , 
 589100954, 'Jamaïque', 39.25, 'Doux', TRUE),

('Rwandan Bourbon', 'Café avec des notes florales prononcées, une acidité vive et un corps moyen.',
 'Le Rwandan Bourbon est cultivé sur les collines rwandaises, où l''altitude et les conditions climatiques parfaites donnent naissance à des grains avec des notes florales prononcées et une acidité vive.' , 
 650753915, 'Rwanda', 21.90, 'Fruité', TRUE),

('Panamanian Geisha', 'Café rare aux arômes floraux complexes, une acidité brillante et un profil de saveur distinctif.',
 'Le Panamanian Geisha est un café rare et prisé, apprécié pour ses arômes floraux complexes et son acidité brillante. Cultivé à haute altitude, il est reconnu pour sa qualité exceptionnelle.' , 
 795501340, 'Panama', 42.00, 'Fruité', TRUE),

('Peruvian Arabica', 'Café équilibré avec des notes de chocolat, une acidité modérée et un corps velouté.',
 'Le Peruvian Arabica provient des hautes terres du Pérou, où les agriculteurs utilisent des méthodes de culture respectueuses de l''environnement pour produire un café équilibré, avec des notes de chocolat et une acidité modérée.' , 
 954589100, 'Pérou', 19.40, 'Chocolaté', FALSE),

('Hawaiian Kona', 'Café rare au goût riche, une acidité douce et des nuances subtiles.',
 'Le Hawaiian Kona est cultivé sur les pentes ensoleillées de la Grande Île d''Hawaï. Ce café est reconnu pour sa rareté et son goût riche, avec une acidité douce et des nuances subtiles qui rappellent la douceur tropicale.' , 
 958090105, 'Hawaï', 55.75, 'Doux', FALSE),

('Nicaraguan Maragogipe', 'Café avec des notes de fruits, une acidité vive et un corps plein.',
 'Le Nicaraguan Maragogipe est un café rare, produit dans les montagnes du Nicaragua. Ses grains plus gros que la normale lui confèrent une acidité vive et des notes fruitées, avec un corps plein et riche.' , 
 691550753, 'Nicaragua', 28.60, 'Fruité', FALSE);
