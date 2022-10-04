create database rock_albuns;
use rock_albuns;

create table band(
band_id int auto_increment primary key,
band_name varchar(45),
gender varchar(20),
year char(4),
country varchar(20)
);

insert into band (band_name, gender, year, country) values
('Pink Floyd', 'Progressive Rock', '1965', 'England'),
('Pearl Jam', 'Grunge', '1990', 'USA'),
('Red Hot Chili Peppers', 'Alternative Rock', '1983', 'USA'),
('Led Zeppelin', 'Hard Rock', '1968', 'England'),
('U2', 'Alternative Rock', '1976', 'Ireland'),
('Angra', 'Power Metal', '1991', 'Brazil'),
('The Police', 'New Wave', '1977', 'England'),
('Green Day', 'Punk Rock', '1987', 'USA'),
('Rush', 'Progressive Rock', '1968', 'Canada'),
('The Who', 'Progressive Rock', '1964', 'England'),
('The Doors', 'Blues Rock', '1965', 'USA'),
('Alice in Chains', 'Grunge', '1987', 'USA'),
('Legião Urbana', 'Alternative Rock', '1982', 'Brazil'),
('O Terço', 'Progressive Rock', '1968', 'Brazil');

create table album(
album_id int auto_increment primary key,
band_id int,
album_title varchar(45),
release_year char(4),
number_of_songs tinyint,
foreign key (band_id) references band(band_id)
);

insert into album (band_id, album_title, release_year, number_of_songs) values
(1, 'The Piper at the Gates of Dawn', '1967', 11),
(1, 'Atom Heart Mother', '1970', 5),
(1, 'Meddle', '1971', 6),
(1, 'Obscured by Clouds', '1972', 10),
(1, 'The Dark Side of The Moon', '1973', 10),
(1, 'Wish You Were Here', '1975', 5),
(1, 'Animals', '1977', 5),
(1, 'The Wall', '1979', 26),
(2, 'Ten', '1991', 11),
(2, 'Vs.', '1993', 12),
(2, 'Vitalogy', '1994', 14),
(2, 'No Code', '1996', 13),
(2, 'Binaural', '2000', 13),
(2, 'Yield', '1998', 14),
(2, 'Pearl Jam', '2006', 13),
(3, "Mother's Milk", '1989', 13),
(3, 'Blood Sugar Sex Magik', '1991', 17),
(3, 'One Hot Minute', '1995', 13),
(3, 'Californication', '1999', 15),
(3, 'By The Way', '2002', 16),
(3, 'Stadium Arcadium', '2006', 28),
(3, "I'm With You", '2011', 14),
(3, 'The Getaway', '2016', 13),
(3, 'Unlimited Love', '2022', 17),
(4, 'Led Zeppelin', '1968', 9),
(4, 'Led Zeppelin II', '1969', 9),
(4, 'Led Zeppelin III', '1970', 10),
(4, 'Led Zeppelin IV', '1971', 8),
(4, 'Houses of the Holy', '1973', 8),
(4, 'Physical Graffiti', '1975', 15),
(4, 'Presence', '1976', 7),
(4, 'In Through the Out Door', '1979', 7),
(5, 'The Joshua Tree', '1987', 11), 
(5, 'All That You Cant Leave Behind', '2000', 11),
(6, 'Angels Cry', '1993', 10),
(6, 'Holy Land', '1996', 10),
(6, 'Rebirth', '2001', 10),
(6, 'Temple of Shadows', '2004', 13),
(7, 'Synchronicity', '1983', 11),
(7, 'Zenyatta Mondatta', '1980', 11),
(8, 'Dookie', '1994', 14),
(8, 'American Idiot', '2004', 13),
(9, 'Moving Pictures', '1981', 7),
(10, 'Tommy', '1969',  24),
(10, "Who's Next", '1971', 9),
(11, 'L.A Woman', '1971', 10),
(11, 'The Doors', '1967', 11),
(11, 'Morrison Hotel', '1970', 11),
(12, 'Dirt', '1992', 13),
(12, 'Alice in Chains', '1995', 12),
(13, 'Legião Urbana', '1985', 11),
(13, 'V', '1991', 10),
(14, 'Criaturas da Noite', '1975', 8);


create table song(
song_id int auto_increment primary key,
album_id int,
band_id int,
song_name varchar(100),
duration float,
hit boolean default false,
foreign key (album_id) references album(album_id),
foreign key (band_id) references band(band_id)
);

insert into song (album_id, band_id, song_name, duration, hit) values
(1, 1, 'Astronomy Domine', 4 + (12/60), 0),
(1, 1, 'Lucifer Sam', 3 + (7/60), 0),
(1, 1, 'Matilda Mother', 3 + (3/60), 0),
(1, 1, 'Flaming', 2 + (46/60), 0),
(1, 1, 'Pow R. Toc H.', 4 + (26/60), 0),
(1, 1, 'Take Up Thy Stethoscope and Walk', 3 + (5/60), 0),
(1, 1, 'Interstellar Overdrive', 9 + (41/60), 0),
(1, 1, 'The Gnome', 2 + (13/60), 0),
(1, 1, 'Chapter 24', 3 + (42/60), 0),
(1, 1, 'The Scarecrow', 2 + (11/60), 0),
(1, 1, 'Bike', 3 + (21/60), 0),
(2, 1, 'Atom Heart Mother', 23 + (44/60), 0),
(2, 1, 'If', 4 + (31/60), 0),
(2, 1, "Summer '68", 5 + (29/60), 0),
(2, 1, 'Fat Old Sun', 5 + (22/60), 0),
(2, 1, "Alan's Psychedelic Breakfast", 13, 0),
(3, 1, 'One of The Days', 5 + (57/50), 0),
(3, 1, 'A Pillow of Winds', 5 + (10/60), 0),
(3, 1, 'Fearless', 6 + (8/60), 0),
(3, 1, 'San Tropez', 3 + (43/60), 0),
(3, 1, 'Seamus', 2 + (15/60), 0),
(3, 1, 'Echoes', 23 + (29/60), 1),
(4, 1, 'Obscured by Clouds', 3 + (3/60), 0),
(4, 1, "When You're In", 2 + (30/60), 0),
(4, 1, 'Burning Bridges', 3 + (29/60), 0),
(4, 1, "The Gold's in the...", 3 + (7/60), 0),
(4, 1, "Wot's... Uh the Deal", 5 + (8/60), 0),
(4, 1, 'Mudmen', 4 + (20/60), 0),
(4, 1, "Childhood's End", 4 + (31/60), 0),
(4, 1, 'Free Four', 4 + (15/60), 0),
(4, 1, 'Stay', 4 + (5/60), 0),
(4, 1, 'Absolutely Curtains', 5 + (52/60), 0),
(5, 1, 'Speak to Me', 1 + (30/60), 0),
(5, 1, 'Breathe', 2 + (43/60), 1),
(5, 1, 'On the Run', 3 + (36/60), 0),
(5, 1, 'Time', 7 + (1/60), 1),
(5, 1, 'The Great Gig in the Sky', 4 + (36/60), 1),
(5, 1, 'Money', 6 + (22/60), 1),
(5, 1, 'Us and Them', 7 + (46/60), 1),
(5, 1, 'Any Color you Like', 3 + (25/60), 0),
(5, 1, 'Brain Damage', 3 + (48/60), 1),
(5, 1, 'Eclipse', 2 + (3/60), 0),
(6, 1, 'Shine on You Crazy Diamond Pt.I-V', 13 + (38/60), 1),
(6, 1, 'Welcome to the Machine', 7 + (30/60), 1),
(6, 1, 'Have a Cigar', 5 + (24/60), 1),
(6, 1, 'Wish You Were Here', 5 + (17/60), 1),
(6, 1, 'Shine on You Crazy Diamond Pt.VI-IX', 12 + (29/60), 1),
(7, 1, 'Pigs on the Wing Pt.I', 1 + (25/60), 0),
(7, 1, 'Dogs', 17 + (3/60), 0),
(7, 1, 'Pigs (Three Differente Ones)', 11 + (25/60), 0),
(7, 1, 'Sheep', 10 + (25/60), 0),
(7, 1, 'Pigs on the Wing Pt.II', 1 + (23/60), 0),
(8, 1, 'In the Flesh?', 3 + (19/60), 0),
(8, 1, 'The Thin Ice', 2 + (27/60), 0),
(8, 1, 'Another Brick in the Wall Pt.I', 3 + (21/60), 0),
(8, 1, 'The Happiest Days of Out Lives', 1 + (46/60), 0),
(8, 1, 'Another Brick on the Wall Pt.II', 3 + (21/60), 1),
(8, 1, 'Mother', 5 + (36/60), 1),
(8, 1, 'Goodbye Blue Sky', 2 + (45/60), 0),
(8, 1, 'Empty Spaces', 2 + (10/60), 0),
(8, 1, 'Young Lust', 3 + (25/60), 0),
(8, 1, 'One of My Turns', 3 + (35/60), 0),
(8, 1, "Don't Leave Me Now", 4 + (16/60), 0),
(8, 1, 'Another Brick in the Wall Pt.III', 1 + (14/60), 0),
(8, 1, 'Goodbye Cruel World', 1 + (13/60), 0),
(8, 1, 'Hey You', 4 + (40/60), 1),
(8, 1, 'Is There Anybody Out There?', 2 + (44/60), 0),
(8, 1, 'Nobody Home', 3 + (26/60), 0),
(8, 1, 'Vera', 1 + (35/60), 0),
(8, 1, 'Bring the Boys Back Home', 1 + (21/60), 0),
(8, 1, 'Comfortably Numb', 6 + (24/60), 1),
(8, 1, 'The Show Must Go On', 1 + (36/60), 0),
(8, 1, 'In the Flesh', 4 + (13/60), 0),
(8, 1, 'Run Like Hell', 4 + (19/60), 1),
(8, 1, 'Waiting for the Worms', 4 + (4/60), 0),
(8, 1, 'Stop', 0 + (30/60), 0),
(8, 1, 'The Trial', 5 + (13/60), 0),
(8, 1, 'Outside the Wall', 1 + (41/60), 0),
(9, 2, 'Once', 3 + (51/60), 0),
(9, 2, 'Even Flow', 4 + (53/60), 1),
(9, 2, 'Alive', 5 + (41/60), 1),
(9, 2, 'Why Go', 3 + (20/60), 0),
(9, 2, 'Black', 5 + (43/60), 1),
(9, 2, 'Jeremy', 5 + (18/60), 1),
(9, 2, 'Oceans', 2 + (42/60), 0),
(9, 2, 'Porch', 3 + (30/60), 0),
(9, 2, 'Garden', 4 + (59/60), 0),
(9, 2, 'Deep', 4 + (18/60), 0),
(9, 2, 'Release', 9  + (05/60), 0),
(10, 2, 'Go', 3 + (12/60), 0),
(10, 2, 'Animal', 2 + (49/60), 0),
(10, 2, 'Daughter', 3 + (55/60), 1),
(10, 2, 'Glorified G', 3 + (26/60), 0),
(10, 2, 'Dissident', 3 + (35/60), 0),
(10, 2, 'W.M.A', 5 + (59/60), 0),
(10, 2, 'Blood', 2 + (50/60), 0),
(10, 2, 'Rearviewmirror', 4 + (44/60), 0),
(10, 2, 'Rats', 4 + (15/60), 0),
(10, 2, 'Elderly Woman Behind the Counter in a Small Town', 3 + (15/60), 0),
(10, 2, 'Leash', 3 + (9/60), 0),
(10, 2, 'Indifference', 5 + (2/60), 0),
(11, 2, 'Last Exit', 2 + (54/60), 0),
(11, 2, 'Spin the Black Circle', 2 + (48/60), 0),
(11, 2, 'Not for You', 5 + (52/60), 0),
(11, 2, 'Tremor Christ', 4 + (12/60), 0),
(11, 2, 'Nothingman', 4 + (32/60), 1),
(11, 2, 'Whipping', 2 + (35/60), 0),
(11, 2, 'Pry, To', 1 + (3/60), 0),
(11, 2, 'Corduroy', 4 + (37/60), 0),
(11, 2, 'Bugs', 2 + (45/60), 0),
(11, 2, "Satan's Bed", 3 + (31/60), 0),
(11, 2, 'Better Man', 4 + (28/60), 1),
(11, 2, 'Aye Davanita', 2 + (58/60), 0),
(11, 2, 'Immortality', 5 + (28/60), 0),
(11, 2, "Hey Foxynophandlemama, That's Me", 7 + (44/60), 0),
(12, 2, 'Sometimes', 2 + (40/60), 0),
(12, 2, 'Hail, Hail', 3 + (41/60), 0),
(12, 2, 'Who You Are', 3 + (50/60), 0),
(12, 2, 'In My Tree', 3 + (59/60), 0),
(12, 2, 'Smile', 3 + (52/60), 0),
(12, 2, 'Off He Goes', 6 + (2/60), 0),
(12, 2, 'Habit', 3 + (35/60), 0),
(12, 2, 'Red Mosquito', 4 + (3/60), 0),
(12, 2, 'Lukin', 1 + (2/60), 0),
(12, 2, 'Present Tense', 5 + (46/60), 0),
(12, 2, 'Mankind', 3 + (28/60), 0),
(12, 2, "I'm Open", 2 + (57/60), 0),
(12, 2, 'Around the Bend', 4 + (35/60), 0),
(13, 2, 'Brain of J.', 2 + (59/60), 0),
(13, 2, 'Faithfull', 4 + (18/60), 0),
(13, 2, 'No Way', 4 + (19/60), 0),
(13, 2, 'Given to Fly', 4 + (1/60), 1),
(13, 2, 'Wishlist', 3 + (26/60), 0),
(13, 2, 'Pilate', 3 + (0/60), 0),
(13, 2, 'Do the Evolution', 3 + (54/60), 1),
(13, 2, 'The Color Red', 1 + (6/60), 0),
(13, 2, 'MFC',  2 + (27/60), 0),
(13, 2, 'Low Light', 3 + (46/60), 0),
(13, 2, 'In Hiding', 5 + (0/60), 0),
(13, 2, 'Push Me, Pull Me', 2 + (28/60), 0),
(13, 2, 'All Those Yesterdays', 7 + (47/60), 0),
(14, 2, 'Breakerfall', 2 + (19/60), 0),
(14, 2, "God's Dice", 2 + (26/60), 0),
(14, 2, 'Evacuation', 2 + (56/60), 0),
(14, 2, 'Ligh Years', 5 + (6/60), 0),
(14, 2, 'Nothing as It Seems', 5 + (22/60), 0),
(14, 2, 'Thin Air', 3 + (32/60), 0),
(14, 2, 'Insignificance', 4 + (28/60), 0),
(14, 2, 'Of the Girl', 5 + (7/60), 0),
(14, 2, 'Grievence', 3 + (14/60), 0),
(14, 2, 'Rival', 3 + (38/60), 0),
(14, 2, 'Sleight of Hand', 4 + (47/60), 0),
(14, 2, 'Soon Forget', 1 + (46/60), 0),
(14, 2, 'Parting Ways', 7 + (17/60), 0),
(15, 2, 'Life Wasted', 3 + (54/60), 0),
(15, 2, 'World Wide Suicide', 3 + (29/60), 0),
(15, 2, 'Comatose', 2 + (19/60), 0),
(15, 2, 'Severed Hand', 4 + (30/60), 0),
(15, 2, 'Marker in the Sand', 4 + (23/60), 0),
(15, 2, 'Parachutes', 3 + (36/60), 0),
(15, 2, 'Unemployable', 3 + (4/60), 0),
(15, 2, 'Big Wave', 2 + (2/58), 0),
(15, 2, 'Gone', 4 + (9/60), 0),
(15, 2, 'Wasted Reprise', 0 + (53/60), 0),
(15, 2, 'Army Reserve', 3 + (45/60), 0),
(15, 2, 'Come Back', 5 + (29/60), 0),
(15, 2, 'Inside Job', 7 + (8/60), 0),
(16, 3, 'Good Time Boys', 5 + (2/60), 0),
(16, 3, 'Higher Ground', 3 + (23/60), 1),
(16, 3, 'Subway to Venus', 4 + (25/60), 0),
(16, 3, 'Magic Johnson', 2 + (57/60), 0),
(16, 3, 'Nobody Weird Like Me', 3 + (50/60), 0),
(16, 3, 'Knock Me Down', 3 + (45/60), 0),
(16, 3, 'Taste the Pain', 4 + (32/60), 0),
(16, 3, 'Stone Cold Bush', 3 + (6/60), 0),
(16, 3, 'Fire', 2 + (3/60), 0),
(16, 3, 'Pretty Little Ditty', 2 + (37/60), 0),
(16, 3, 'Punk Rock Classic', 2 + (5/60), 0),
(16, 3, 'Sexy Mexican Maid', 3 + (23/60), 0),
(16, 3, 'Johnny, Kick a Hole in the Sky', 5 + (21/60), 0),
(17, 3, 'The Power of Equality', 4 + (3/60), 0),
(17, 3, 'If You Have to Ask', 3 + (37/60), 0),
(17, 3, 'Breaking the Girl', 4 + (55/60), 0),
(17, 3, 'Funky Monks', 5 + (23/60), 0),
(17, 3, 'Suck My Kiss', 3 + (37/60), 0),
(17, 3, 'I Could Have Lied', 4 + (4/60), 0),
(17, 3, 'Mellowship Slinky in B Major', 4 + (0/60), 0),
(17, 3, 'The Righteous and the Wicked', 4 + (8/60), 0),
(17, 3, 'Give It Away', 4 + (43/60), 1),
(17, 3, 'Blood Sugar Sex Magik', 4 + (32/60), 0),
(17, 3, 'Under the Bridge', 4 + (24/60), 1),
(17, 3, 'Naked in the Rain', 4 + (26/60), 0),
(17, 3, 'Apache Rose Peacock', 4 + (43/60), 0),
(17, 3, 'The Greeting Song', 3 + (14/60), 0),
(17, 3, 'My Lovely Man', 4 + (39/60), 0),
(17, 3, 'Sir Psycho Sexy', 8 + (17/60), 0),
(17, 3, "They're Red Hot", 1 + (11/60), 0),
(18, 3, 'Warped', 5 + (4/60), 0),
(18, 3, 'Aeroplane', 4 + (45/60), 1),
(18, 3, 'Deep Kick', 6 + (33/60), 0),
(18, 3, 'My Friends', 4 + (2/60), 0),
(18, 3, 'Coffee Shop', 3 + (8/60), 0),
(18, 3, 'Pea', 2 + (6/60), 0),
(18, 3, 'One Big Mob', 6 + (2/60), 0),
(18, 3, 'Walkabout', 5 + (7/60), 0),
(18, 3, 'Tearjerker', 4 + (19/60), 0),
(18, 3, 'One Hot Minute', 6 + (23/60), 0),
(18, 3, 'Falling Into Grace', 3 + (48/60), 0),
(18, 3, 'Shallow Be Thy Game', 4 + (33/60), 0),
(18, 3, 'Transcending', 5 + (46/60), 0),
(19, 3, 'Around the World', 3 + (58/60), 0),
(19, 3, 'Parallel Universe', 4 + (30/60), 0),
(19, 3, 'Scar Tissue', 3 + (35/60), 1),
(19, 3, 'Otherside', 4 + (15/60), 1),
(19, 3, 'Get on Top', 3 + (18/60), 0),
(19, 3, 'Californication', 5 + (21/60), 1),
(19, 3, 'Easily', 3 + (51/60), 0),
(19, 3, 'Porcelain', 2 + (43/60), 0),
(19, 3, 'Emit Remmus', 4 + (0/60), 0),
(19, 3, 'I Like Dirt', 2 + (37/60), 0),
(19, 3, 'This Velvet Glove', 3 + (45/60), 0),
(19, 3, 'Savior', 4 + (52/60), 0),
(19, 3, 'Purple Stain', 4 + (13/60), 0),
(19, 3, 'Right on Time', 2 + (8/60), 0),
(19, 3, 'Road Trippin', 3 + (25/60), 0),
(20, 3, 'By the Way', 3 + (37/60), 0),
(20, 3, 'Universally Speaking', 4 + (19/60), 0),
(20, 3, 'This Is the Place', 4 + (17/60), 0),
(20, 3, 'Dosed', 5 + (12/60), 0),
(20, 3, "Don't Forget Me", 4 + (37/60), 0),
(20, 3, 'The Zephyr Song', 3 + (52/60), 1),
(20, 3, "Can't Stop", 4 + (29/60), 1),
(20, 3, 'I Could Die For You', 3 + (13/60), 0),
(20, 3, 'Midnight', 4 + (55/60), 0),
(20, 3, 'Throw Away Your Television', 3 + (44/60), 0),
(20, 3, 'Cabron', 3 + (38/60), 0),
(20, 3, 'Tear', 5 + (17/60), 0),
(20, 3, 'On Mercury', 3 + (28/60), 0),
(20, 3, 'Minor Thing', 3 + (37/60), 0),
(20, 3, 'Warm Tape', 4 + (16/60), 0),
(20, 3, 'Venice Queen', 6 + (7/60), 0),
(21, 3, 'Dani California', 4 + (42/60), 1),
(21, 3, 'Snow (Hey Oh)', 5 + (35/60), 1),
(21, 3, 'Charlie', 4 + (37/60), 0),
(21, 3, 'Stadium Arcadium', 5 + (15/60), 0),
(21, 3, 'Hump de Bump', 3 + (33/60), 0),
(21, 3, "She's Only 18", 3 + (25/60), 0),
(21, 3, 'Slow Cheetah', 5 + (19/60), 0),
(21, 3, 'Torture Me', 3 + (44/60), 0),
(21, 3, 'Strip My Mind', 4 + (19/60), 0),
(21, 3, 'Especially in Michigan', 4 + (0/60), 0),
(21, 3, 'Warlocks', 3 + (24/60), 0),
(21, 3, "C'mon Girl", 3 + (48/60), 0),
(21, 3, 'Wet Sand', 5 + (9/60), 0),
(21, 3, 'Hey', 5 + (39/60), 0),
(21, 3, 'Desecration Smile', 5 + (2/60), 0),
(21, 3, 'Tell Me Baby', 4 + (7/60), 0),
(21, 3, 'Hard to Concentrate', 4 + (2/60), 0),
(21, 3, '21st Century', 4 + (22/60), 0),
(21, 3, 'She Looks to Me', 4 + (6/60), 0),
(21, 3, 'Readymade', 4 + (30/60), 0),
(21, 3, 'If', 2 + (52/60), 0),
(21, 3, 'Make You Feel Better', 3 + (51/60), 0),
(21, 3, 'Animal Bar', 5 + (25/60), 0),
(21, 3, 'So Much I', 3 + (44/60), 0),
(21, 3, 'Storm in a Teacup', 3 + (45/60), 0),
(21, 3, 'We Believe', 3 + (36/60), 0),
(21, 3, 'Turn It Again', 6 + (6/60), 0),
(21, 3, 'Death of a Martian', 4 + (24/60), 0),
(22, 3, 'Monarchy of Roses', 4 + (12/60), 0),
(22, 3, 'Factory of Faith', 4 + (20/60), 0),
(22, 3, "Brendan's Death Song", 5 + (38/60), 0),
(22, 3, 'Ethiopia', 3 + (50/60), 0),
(22, 3, 'Annie Wants a Baby', 3 + (40/60), 0),
(22, 3, 'Look Around', 3 + (28/60), 0),
(22, 3, 'The Adventures of Rain Dance Maggie', 4 + (43/60), 1),
(22, 3, 'Did I Let You Know', 4 + (21/60), 0),
(22, 3, 'Goodbye Hooray', 3 + (52/60), 0),
(22, 3, 'Happiness Loves Company', 3 + (34/60), 0),
(22, 3, 'Police Station', 5 + (35/60), 0),
(22, 3, 'Even You Brutus?', 4 + (1/60), 0),
(22, 3, 'Meet Me at the Corner', 4 + (21/60), 0),
(22, 3, 'Dance, Dance, Dance', 3 + (45/60), 0),
(23, 3, 'The Getaway', 4 + (10/60), 0),
(23, 3, 'Dark Necessities', 5 + (2/60), 1),
(23, 3, 'We Turn Red', 3 + (20/60), 0),
(23, 3, 'The Longest Wave', 3 + (32/60), 0),
(23, 3, 'Goodbye Angels', 4 + (28/60), 0),
(23, 3, 'Sick Love', 3 + (41/60), 0),
(23, 3, 'Go Robot', 4 + (24/60), 0),
(23, 3, 'Feasting on the Flowers', 3 + (23/60), 0),
(23, 3, 'Detroit', 3 + (46/60), 0),
(23, 3, 'This Ticonderoga', 3 + (34/60), 0),
(23, 3, 'Encore', 4 + (14/60), 0),
(23, 3, 'The Hunter', 4 + (0/60), 0),
(23, 3, 'Dreams Of a Samurai', 6 + (9/60), 0),
(24, 3, 'Black Summer', 3 + (52/60), 1),
(24, 3, 'Here Ever After', 3 + (50/60), 0),
(24, 3, 'Aquatic Mouth Dance', 4 + (20/60), 0),
(24, 3, 'Not the One', 4 + (26/60), 0),
(24, 3, 'Poster Child', 5 + (16/60), 0),
(24, 3, 'The Great Apes', 5 + (3/60), 0),
(24, 3, "It's Only Natural", 5 + (34/60), 0),
(24, 3, "She's a Lover", 3 + (41/60), 0),
(24, 3, 'These Are the Ways', 3 + (56/60), 0),
(24, 3, "Whatchu Thinkin'", 3 + (40/60), 0),
(24, 3, 'Bastards of Light', 3 + (38/60), 0),
(24, 3, 'White Braids & Pillow Chair', 3 + (40/60), 0),
(24, 3, 'One Way Traffic', 4 + (10/60), 0),
(24, 3, 'Veronica', 4 + (28/60), 0),
(24, 3, "Let 'Em Cry", 4 + (23/60), 0),
(24, 3, 'The Heavy Wing', 5 + (31/60), 0),
(24, 3, 'Tangelo', 3 + (38/60), 0),
(25, 4, 'Good Times Bad Times', 2 + (46/60), 1),
(25, 4, "Babe I'm Gonna Leave You", 6 + (41/60), 1),
(25, 4, 'You Shook Me', 6 + (28/60), 0),
(25, 4, 'Dazed and Confused', 6 + (26/60), 1),
(25, 4, 'Your Time Is Gonna Come', 4 + (14/60), 0),
(25, 4, 'Black Mountain Side', 2 + (5/60), 0),
(25, 4, 'Communication Breakdown', 2 + (27/60), 0),
(25, 4, "I Can't Quit You Baby", 4 + (42/60), 0),
(25, 4, 'How Many More Times', 8 + (28/60), 0),
(26, 4, 'Whole Lotta Love', 5 + (34/60), 1),
(26, 4, 'What Is and What Should Never Be', 4 + (47/60), 0),
(26, 4, 'The Lemon Song', 6 + (20/60), 0),
(26, 4, 'Thank You', 4 + (47/60), 0),
(26, 4, 'Heartbreaker', 4 + (15/60), 0),
(26, 4, "Living Loving Maid (She's Just a Woman)", 2 + (40/60), 0),
(26, 4, 'Ramble On', 4 + (35/60), 1),
(26, 4, 'Moby Dick', 4 + (25/60), 0),
(26, 4, 'Bring It On Home', 4 + (19/60), 1),
(27, 4, 'Immigrant Song', 2 + (26/60), 1),
(27, 4, 'Friends', 3 + (55/60), 0),
(27, 4, 'Celebration Day', 3 + (29/60), 0),
(27, 4, "Since I've Been Loving You", 7 + (25/60), 1),
(27, 4, 'Out on the Tiles', 4 + (4/60), 0),
(27, 4, 'Gallows Pole', 4 + (58/60), 0),
(27, 4, 'Tangerine', 3 + (12/60), 0),
(27, 4, "That's the Way", 5 + (38/60), 0),
(27, 4, 'Bron-Y-Aur Stomp', 4 + (20/60), 0),
(27, 4, 'Hats Off to (Roy) Harper', 3 + (41/60), 0),
(28, 4, 'Black Dog', 5 + (32/60), 1),
(28, 4, 'Rock and Roll', 7 + (39/60), 0),
(28, 4, 'The Battle of Evermore', 4 + (50/60), 1),
(28, 4, 'Stairway to Heaven', 3 + (17/60), 0),
(28, 4, 'Misty Mountain Hop', 3 + (43/60), 0),
(28, 4, 'Four Sticks', 4 + (23/60), 0),
(28, 4, 'Going to California', 7 + (0/60), 0),
(28, 4, 'When the Levee Breaks', 4 + (31/60), 1),
(29, 4, 'The Song Remains the Same', 4 + (57/60), 1),
(29, 4, 'The Rain Song', 3 + (40/60), 1),
(29, 4, 'Over the Hills and Far Away', 5 + (52/60), 0),
(29, 4, 'The Crunge', 8 + (2/60), 1),
(29, 4, 'Dancing Days', 4 + (38/60), 0),
(29, 4, "D'yer Mak'er", 4 + (45/60), 0),
(29, 4, 'No Quarter', 3 + (31/60), 1),
(29, 4, 'The Ocean', 7 + (8/60), 0),
(30, 4, 'Custard Pie', 4 + (13/60), 0),
(30, 4, 'The Rover', 5 + (36/60), 0),
(30, 4, 'In My Time of Dying', 11 + (4/60), 1),
(30, 4, 'Houses of the Holy', 4 + (1/60), 0),
(30, 4, 'Trampled Under Foot', 5 + (35/60), 0),
(30, 4, 'Kashmir', 8 + (31/60), 1),
(30, 4, 'In the Light', 8 + (44/60), 0),
(30, 4, 'Bron-Yr-Aur', 2 + (6/60), 0),
(30, 4, 'Down by the Seaside', 5 + (14/60), 0),
(30, 4, 'Ten Years Gone', 6 + (31/60), 1),
(30, 4, 'Night Flight', 3 + (36/60), 0),
(30, 4, 'The Wanton Song', 4 + (6/60), 0),
(30, 4, 'Boogie with Stu', 3 + (51/60), 0),
(30, 4, 'Black Country Woman', 4 + (24/60), 0),
(30, 4, 'Sick Again', 4 + (43/60), 0),
(31, 4, 'Achilles Last Stand', 10 + (23/60), 0),
(31, 4, 'For Your Life', 6 + (21/60), 0),
(31, 4, 'Royal Orleans', 2 + (59/60), 0),
(31, 4, "Nobody's Fault But Mine", 6 + (28/60), 0),
(31, 4, 'Candy Store Rock', 4 + (7/60), 0),
(31, 4, 'Hots On for Nowhere', 4 + (43/60), 0),
(31, 4, 'Tea for One', 9 + (27/60), 0),
(32, 4, 'In the Evening', 6 + (48/60), 0),
(32, 4, 'South Bound Saurez', 4 + (11/60), 0),
(32, 4, 'Fool in the Rain', 6 + (8/60), 0),
(32, 4, 'Hot Dog', 3 + (15/60), 0),
(32, 4, 'Carouselambra', 10 + (28/60), 0),
(32, 4, 'All My Love', 5 + (51/60), 1),
(32, 4, "I'm Gonna Crawl", 5 + (28/60), 0),
(33, 5, 'Where the Streets Have No Name', 5 + (38/60), 1),
(33, 5, "I Still Haven't Found What I'm Looking For", 4 + (38/60), 1),
(33, 5, 'With or Without You', 4 + (56/60), 1),
(33, 5, 'Bullet the Blue Sky', 4 + (32/60), 0),
(33, 5, 'Running to Stand Still', 4 + (18/60), 0),
(33, 5, 'Red Hill Mining Town', 4 + (54/60), 0),
(33, 5, "In God's Country", 2 + (57/60), 0),
(33, 5, 'Trip Through Your Wires', 3 + (33/60), 0),
(33, 5, 'One Tree Hill', 5 + (23/60), 0),
(33, 5, 'Exit', 4 + (13/60), 0),
(33, 5, 'Mothers of the Disappeared', 5 + (12/60), 0),
(34, 5, 'Beautiful Day', 4 + (6/60), 1),
(34, 5, "Stuck in a Moment You Can't Get Out Of", 4 + (32/60), 1),
(34, 5, 'Elevation', 3 + (45/60), 1),
(34, 5, 'Walk On', 4 + (55/60), 0),
(34, 5, 'Kite', 4 + (23/60), 1),
(34, 5, 'In a Little While', 3 + (39/60), 1),
(34, 5, 'Wild Honey', 3 + (47/60), 0),
(34, 5, 'Peace on Earth', 4 + (46/60), 0),
(34, 5, 'When I Look at the World', 4 + (15/60), 0),
(34, 5, 'New York', 5 + (28/60), 0),
(34, 5, 'Grace', 5 + (31/60), 0),
(35, 6, 'Unfinished Allegro', 1 + (15/60), 0),
(35, 6, 'Carry On', 5 + (3/60), 1),
(35, 6, 'Time', 5 + (54/60), 1),
(35, 6, 'Angels Cry', 6 + (49/60), 0),
(35, 6, 'Stand Away', 4 + (55/60), 0),
(35, 6, 'Never Understand', 7 + (48/60), 0),
(35, 6, 'Wuthering Heights', 4 + (38/60), 1),
(35, 6, 'Streets of Tomorrow', 5 + (3/60), 0),
(35, 6, 'Evil Warning', 6 + (41/60), 0),
(35, 6, 'Lasting Child', 7 + (35/60), 0),
(36, 6, 'Crossing', 1 + (56/60), 0),
(36, 6, 'Nothing to Say', 6 + (22/60), 1),
(36, 6, 'Silence and Distance', 5 + (35/60), 0),
(36, 6, 'Carolina IV', 10 + (36/60), 0),
(36, 6, 'Holy Land', 6 + (26/60), 0),
(36, 6, 'The Shaman', 5 + (24/60), 0),
(36, 6, 'Make Believe', 5 + (53/60), 1),
(36, 6, 'Z.I.T.O.', 6 + (4/60), 0),
(36, 6, 'Deep Blue', 5 + (49/60), 0),
(36, 6, 'Lullaby for Lucifer', 2 + (40/60), 0),
(37, 6, 'In Excelsis', 1 + (3/60), 0),
(37, 6, 'Nova Era', 4 + (52/60), 1),
(37, 6, 'Millennium Sun', 5 + (11/60), 1),
(37, 6, 'Acid Rain', 6 + (8/60), 0),
(37, 6, 'Heroes of Sand', 4 + (39/60), 1),
(37, 6, 'Unholy Wars', 8 + (14/60), 0),
(37, 6, 'Rebirth', 5 + (18/60), 1),
(37, 6, 'Judgement Day', 5 + (40/60), 0),
(37, 6, 'Running Alone', 7 + (14/60), 0),
(37, 6, 'Visions Prelude', 4 + (32/60), 0),
(38, 6, 'Deus Le Volt!', 0 + (52/60), 0),
(38, 6, 'Spread Your Fire', 4 + (25/60), 1),
(38, 6, 'Angels and Demons', 4 + (10/60), 0),
(38, 6, 'Waiting Silence', 4 + (55/60), 0),
(38, 6, 'Wishing Well', 3 + (59/60), 1),
(38, 6, 'The Temple of Hate', 5 + (13/60), 1),
(38, 6, 'The Shadow Hunter', 8 + (4/60), 1),
(38, 6, 'No Pain for the Dead', 5 + (5/60), 0),
(38, 6, 'Winds of Destination', 6 + (56/60), 0),
(38, 6, 'Sprouts of Time', 5 + (9/60), 0),
(38, 6, 'Morning Star', 7 + (39/60), 0),
(38, 6, 'Late Redemption', 4 + (55/60), 1),
(38, 6, 'Gate XIII', 5 + (3/60), 0),
(39, 7, 'Synchronicity I', 3 + (26/60), 0),
(39, 7, 'Walking In Your Footsteps', 3 + (36/60), 0),
(39, 7, 'O My God', 4 + (2/60), 0),
(39, 7, 'Mother', 3 + (5/60), 0),
(39, 7, 'Miss Gradenko', 2 + (0/60), 0),
(39, 7, 'Synchronicity II', 5 + (2/60), 1),
(39, 7, 'Every Breath You Take', 4 + (14/60), 1),
(39, 7, 'King Of Pain', 4 + (58/60), 1),
(39, 7, 'Wrapped Around Your Finger', 5 + (16/60), 1),
(39, 7, 'Tea In The Sahara', 4 + (11/60), 0),
(39, 7, 'Murder By Numbers', 4 + (34/60), 0),
(40, 7, "Don't Stand So Close to Me", 4 + (4/60), 1),
(40, 7, 'Driven To Tears', 3 + (20/60), 0),
(40, 7, "When The World Is Running Down, You Make The Best Of What's Still Around", 3 + (38/60), 0),
(40, 7, 'Canary In A Coalmine', 2 + (26/60), 0),
(40, 7, 'Voices Inside My Head', 3 + (53/60), 0),
(40, 7, 'Bombs Away', 3 + (9/60), 0),
(40, 7, 'De Do Do Do, De Da Da Da', 4 + (9/60), 1),
(40, 7, 'Behind My Camel', 2 + (54/60), 0),
(40, 7, 'Man In A Suitcase', 2 + (19/60), 0),
(40, 7, 'Shadows In The Rain', 5 + (2/60), 0),
(40, 7, 'The Other Way Of Stopping', 3 + (22/60), 0),
(41, 8, 'Burnout', 2 + (7/60), 0),
(41, 8, 'Having a Blast', 2 + (44/60), 0),
(41, 8, 'Chump', 2 + (54/60), 0),
(41, 8, 'Longview', 3 + (59/60), 1),
(41, 8, 'Welcome to Paradise', 3 + (44/60), 1),
(41, 8, 'Pulling Teeth', 2 + (30/60), 0),
(41, 8, 'Basket Case', 3 + (3/60), 1),
(41, 8, 'She', 2 + (14/60), 0),
(41, 8, 'Sassafras Roots', 2 + (37/60), 0),
(41, 8, 'When I Come Around', 2 + (58/60), 1),
(41, 8, 'Coming Clean', 1 + (34/60), 0),
(41, 8, 'Emenius Sleepus', 1 + (43/60), 0),
(41, 8, 'In the End', 1 + (46/60), 0),
(41, 8, 'F.O.D./All By Myself', 5 + (46/60), 0),
(42, 8, 'American Idiot', 2 + (54/60), 1),
(42, 8, 'Jesus of Suburbia', 9 + (8/60), 1),
(42, 8, 'Holiday', 3 + (52/60), 1),
(42, 8, 'Boulevard of Broken Dreams', 4 + (20/60), 1),
(42, 8, 'Are We the Waiting', 2 + (42/60), 0),
(42, 8, 'St. Jimmy', 2 + (56/60), 0),
(42, 8, 'Give Me Novacaine', 3 + (25/60), 0),
(42, 8, "She's a Rebel", 2 + (0/60), 0),
(42, 8, 'Extraordinary Girl', 3 + (33/60), 0),
(42, 8, 'Letterbomb', 4 + (5/60), 0),
(42, 8, 'Wake Me Up When September Ends', 4 + (45/60), 1),
(42, 8, 'Homecoming', 9 + (18/60), 0),
(42, 8, 'Whatsername', 4 + (14/60), 0),
(43, 9, 'Tom Sawyer', 4 + (34/60), 1),
(43, 9, 'Red Barchetta', 6 + (10/60), 0),
(43, 9, 'YYZ', 4 + (26/60), 1),
(43, 9, 'Limelight', 4 + (20/60), 1),
(43, 9, 'The Camera Eye', 10 + (58/60), 0),
(43, 9, 'Witch Hunt', 4 + (46/60), 0),
(43, 9, 'Vital Signs', 4 + (46/60), 0),
(44, 10, 'Overture', 5 + (21/60), 0),
(44, 10, "It's A Boy", 0 + (38/60), 0),
(44, 10, '1921', 2 + (49/60), 0),
(44, 10, 'Amazing Journey', 3 + (24/60), 0),
(44, 10, 'Sparks', 3 + (46/60), 0),
(44, 10, 'Eyesight To The Blind (The Hawker)', 2 + (13/60), 0),
(44, 10, 'Christmas', 4 + (34/60), 0),
(44, 10, 'Cousin Kevin', 4 + (7/60), 0),
(44, 10, 'The Acid Queen', 3 + (3/60), 0),
(44, 10, 'Underture', 10 + (9/60), 0),
(44, 10, "Do You Think It's Alright?", 0 + (24/60), 0),
(44, 10, 'Fiddle About', 1 + (29/60), 0),
(44, 10, 'Pinball Wizard', 3 + (1/60), 1),
(44, 10, "There's A Doctor", 0 + (23/60), 0),
(44, 10, 'Go To The Mirror!', 3 + (49/60), 0),
(44, 10, 'Tommy Can You Hear Me?', 1 + (36/60), 0),
(44, 10, 'Smash The Mirror', 1 + (35/60), 0),
(44, 10, 'Sensation', 2 + (27/60), 0),
(44, 10, 'Miracle Cure', 0 + (12/60), 0),
(44, 10, 'Sally Simpson', 4 + (12/60), 0),
(44, 10, "I'm Free", 2 + (40/60), 0),
(44, 10, 'Welcome', 4 + (34/60), 0),
(44, 10, "Tommy's Holiday Camp", 0 + (57/60), 0),
(44, 10, "We're Not Gonna Take It", 7 + (8/60), 0),
(45, 10, "Baba O'Riley", 5 + (8/60), 1),
(45, 10, 'Bargain', 5 + (34/60), 0),
(45, 10, "Love Ain't For Keeping", 2 + (10/60), 0),
(45, 10, 'My Wife', 3 + (41/60), 0),
(45, 10, 'The Song Is Over', 6 + (14/60), 0),
(45, 10, 'Getting In Tune', 4 + (50/60), 0),
(45, 10, 'Going Mobile', 3 + (43/60), 0),
(45, 10, 'Behind Blue Eyes', 3 + (42/60), 1),
(45, 10, "Won't Get Fooled Again", 8 + (33/60), 1),
(46, 11, 'The Changeling', 4 + (21/60), 0),
(46, 11, 'Love Her Madly', 3 + (20/60), 1),
(46, 11, 'Been Down So Long', 4 + (41/60), 0),
(46, 11, 'Cars Hiss by My Window', 4 + (12/60), 0),
(46, 11, 'L.A. Woman', 7 + (49/60), 1),
(46, 11, "L'America", 4 + (37/60), 0),
(46, 11, 'Hyacinth House', 3 + (11/60), 0),
(46, 11, 'Crawling King Snake', 5 + (0/60), 0),
(46, 11, 'The WASP (Texas Radio and the Big Beat)', 4 + (16/60), 0),
(46, 11, 'Riders on the Storm', 7 + (9/60), 1),
(47, 11, 'Break On Through (To the Other Side)', 2 + (29/60), 1),
(47, 11, 'Soul Kitchen', 3 + (35/60), 0),
(47, 11, 'The Crystal Ship', 2 + (34/60), 0),
(47, 11, 'Twentieth Century Fox', 2 + (33/60), 0),
(47, 11, 'Alabama Song (Whisky Bar)', 3 + (20/60), 0),
(47, 11, 'Light My Fire', 7 + (6/60), 1),
(47, 11, 'Back Door Man', 3 + (34/60), 0),
(47, 11, 'I Looked at You', 2 + (22/60), 0),
(47, 11, 'End of the Night', 2 + (52/60), 0),
(47, 11, 'Take It as It Comes', 2 + (23/60), 0),
(47, 11, 'The End', 11 + (41/60), 1),
(48, 11, 'Roadhouse Blues', 4 + (4/60), 1),
(48, 11, 'Waiting for the Sun', 4 + (0/60), 1),
(48, 11, 'You Make Me Real', 2 + (53/60), 0),
(48, 11, 'Peace Frog', 2 + (50/60), 0),
(48, 11, 'Blue Sunday', 2 + (12/60), 0),
(48, 11, 'Ship of Fools', 3 + (8/60), 0),
(48, 11, 'Land Ho!', 4 + (10/60), 1),
(48, 11, 'The Spy', 4 + (17/60), 1),
(48, 11, 'Queen of the Highway', 2 + (47/60), 0),
(48, 11, 'Indian Summer', 2 + (35/60), 0),
(48, 11, "Maggie M'Gill", 4 + (24/60), 0),
(49, 12, 'Them Bones', 2 + (30/60), 1),
(49, 12, 'Dam That River', 3 + (9/60), 0),
(49, 12, 'Rain When I Die', 6 + (3/60), 1),
(49, 12, 'Down in a Hole', 5 + (39/60), 1),
(49, 12, 'Sickman', 5 + (31/60), 0),
(49, 12, 'Rooster', 6 + (16/60), 1),
(49, 12, 'Junkhead', 5 + (11/60), 0),
(49, 12, 'Dirt', 5 + (18/60), 0),
(49, 12, 'God Smack', 3 + (52/60), 0),
(49, 12, 'Iron Gland', 0 + (43/60), 0),
(49, 12, 'Hate to Feel', 5 + (16/60), 0),
(49, 12, 'Angry Chair', 4 + (49/60), 1),
(49, 12, 'Would?', 3 + (26/60), 1),
(50, 12, 'Grind', 4 + (45/60), 0),
(50, 12, 'Brush Away', 3 + (22/60), 0),
(50, 12, 'Sludge Factory', 7 + (12/60), 0),
(50, 12, 'Heaven Beside You', 5 + (27/60), 1),
(50, 12, 'Head Creeps', 6 + (28/60), 0),
(50, 12, 'Again', 4 + (5/60), 0),
(50, 12, 'Shame in You', 5 + (35/60), 0),
(50, 12, 'God Am', 4 + (8/60), 0),
(50, 12, 'So Close', 2 + (45/60), 0),
(50, 12, "Nothin' Song", 5 + (40/60), 0),
(50, 12, 'Frogs', 8 + (18/60), 0),
(50, 12, 'Over Now', 7 + (3/60), 1),
(51, 13, 'Será', 2 + (30/60), 1),
(51, 13, 'A Dança', 4 + (1/60), 0),
(51, 13, 'Petróleo do Futuro', 3 + (2/60), 0),
(51, 13, 'Ainda É Cedo', 3 + (57/60), 1),
(51, 13, 'Perdidos no Espaço', 2 + (57/60), 0),
(51, 13, 'Geração Coca-Cola', 2 + (22/60), 1),
(51, 13, 'O Reggae', 3 + (33/60), 0),
(51, 13, 'Baader-Meinhof Blues', 3 + (27/60), 0),
(51, 13, 'Soldados', 4 + (50/60), 1),
(51, 13, 'Teorema', 3 + (6/60), 0),
(51, 13, 'Por Enquanto', 3 + (16/60), 0),
(52,14, 'Hey Amigo', 3 + (33/60), 0),
(52,14, 'Queimada', 3 + (5/60), 0),
(52,14, 'Plano de Fundo', 3 + (44/60), 0),
(52,14, 'Ponto Final', 4 + (38/60), 0),
(52,14, 'Volte na Próxima Semana', 3 + (1/60), 0),
(52,14, 'Criaturas da Noite', 3 + (42/60), 0),
(52,14, 'Jogo das Pedras', 3 + (28/60), 0),
(52,14, '1974', 12 + (24/60), 0);
