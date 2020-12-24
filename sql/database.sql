CREATE TABLE account ( username VARCHAR(50) PRIMARY KEY, password TEXT, fullname VARCHAR(50), phone VARCHAR(11), birthday DATE, age INT );
CREATE TABLE category ( id INT PRIMARY KEY, name VARCHAR(20), description VARCHAR(50) );
CREATE TABLE subcategory ( id INT PRIMARY KEY, name VARCHAR(20), description VARCHAR(50), category_id INT, FOREIGN KEY (category_id) REFERENCES category (id) );
CREATE TABLE product ( id INT PRIMARY KEY, name VARCHAR(50), description TEXT, price REAL, image TEXT, brand VARCHAR(20), country VARCHAR(20) );
CREATE TABLE product_subcategory ( subcategory_id INT, product_id INT, FOREIGN KEY (product_id) REFERENCES product (id), FOREIGN KEY (subcategory_id) REFERENCES subcategory (id) );

INSERT INTO category VALUES ('1', 'category', '');
INSERT INTO category VALUES ('2', 'sex', '');
INSERT INTO category VALUES ('3', 'age', '');

INSERT INTO subcategory VALUES (1, 'action', '', 1);
INSERT INTO subcategory VALUES (2, 'puzzle', '', 1);
INSERT INTO subcategory VALUES (3, 'outdoor', '', 1);
INSERT INTO subcategory VALUES (4, 'vehicle', '', 1);
INSERT INTO subcategory VALUES (5, 'boy', '', 2);
INSERT INTO subcategory VALUES (6, 'girl', '', 2);
INSERT INTO subcategory VALUES (7, 'unisex', '', 2);
INSERT INTO subcategory VALUES (8, '0-year', '', 3);
INSERT INTO subcategory VALUES (9, '1-year', '', 3);
INSERT INTO subcategory VALUES (10, '3-year', '', 3);
INSERT INTO subcategory VALUES (11, '6-year', '', 3);

INSERT INTO product VALUES (1,
                            '16 Inch Moto X Bike',
                            'The Moto X 16" bike is the ideal choice for any young rider who wants that offroad scrambler look.
                             Each spoked wheel houses an inner tube and an offroad tyre, so adventures travelling to school or playing with friends is done in comfort,
                             plus Front & Rear brakes give confidence and excellent stopping power when whizzing around.
                             You will have complete peace of mind when it comes rider wellbeing,
                             as this model conforms to the ISO safety standards and is packed with safety features;
                             which include a fully enclosed chainguard (to stop little fingers getting to the chain),
                             Removable stabilisers, Front & Rear high visibility wheels reflectors plus a handlebar mounted bell.
                             The enclosed fairing and cool racing number are mounted to the robust Steel frame and adjustable handlebars.
                             This gives a perfect ride height for anyone who is 4- 6 years with a recommended inside leg 45- 55cm.
                             Helmet and protection set all sold separately.',
                            300000,
                            'https://image.smythstoys.com/original/desktop/181800.jpg',
                            '',
                            'China');


INSERT INTO product_subcategory VALUES (4, 1);
INSERT INTO product_subcategory VALUES (5, 1);
INSERT INTO product_subcategory VALUES (10, 1);
INSERT INTO product VALUES (2,
                            'PlayStation 4 500GB Black Console',
                            'The PlayStation 4 500GB Console features a sleeker, 
                             lighter design packed with all the power and features of PS4.
                             High Dynamic Range
                             Experience stunning detail and luminous colours on PS4 with HDR technology. 
                             The contrast between colours is enhanced to bring in-game graphics closer to the world seen by the human eye.
                             Share, 
                             Connect & Play
                             The intuitive PS4 interface brings you faster ways to share screenshots and video clips, 
                             watch live streams and discover innovative ways to play.
                             Remote Play
                             Stream and play PS4 games on any compatible device connected to your broadband. 
                             Switch between your phone, tablet, TV and even PC.
                             Share Play
                             Invite any friend who owns a PlayStation 4 console to watch you play, 
                             take over the controls or jump into a local multiplayer game – even if they do not have a copy of the game themselves.
                             The PlayStation 4 500GB Console in Black comes with a DUALSHOCK 4 Wireless Controller, mono headset, HDMI cable, USB and power cables. 
                             Join online multiplayer matches, compete in tournaments and more with PlayStation Plus (sold separately).',
                            210000,
                            'https://image.smythstoys.com/original/desktop/155379.jpg',
                            'China');


INSERT INTO product_subcategory VALUES (4, 2);
INSERT INTO product_subcategory VALUES (5, 2);
INSERT INTO product_subcategory VALUES (11, 2);

INSERT INTO product VALUES (3,
                            'Barbie Fresh n Fun Food Truck Playset',
                            'Beep, beep! Make way for the Barbie Fresh Fun Food Truck and a world of cooking fun. 
                             If you love making delicious food, then you can run a food truck! Serve up salads, burgers and tacos, 
                             and help your Barbie doll ring them up at the register.
                             The Barbie Fresh Fun Food Truck features a stove and griddle, a smoothie station, 
                             serving bar and storage cupboards for all your food prep essentials. 
                             Over 30 storytelling accessories are included to spark your childs imagination. 
                             Some even have a clip-on feature that lets Barbie dolls really hold them.
                             Play out Barbie food truck stories with a free-standing menu board, pots, utensils, serving trays, plates, a fryer for French fries, 
                             smoothie blender, food items, condiments and seating for your customers.',
                            260000,
                            'https://image.smythstoys.com/original/desktop/189321.jpg',
                            'China');


INSERT INTO product_subcategory VALUES (4, 3);
INSERT INTO product_subcategory VALUES (6, 3);
INSERT INTO product_subcategory VALUES (10, 3);
