insert into Bibliothecaire values(1, 'Mitrovic','Tea'),(2, 'Zdravko', 'Kristina'),(3, 'Vucic', 'Andra');
insert into rayon values(1, 'en-bas'),(2, 'rez-de-chaussée'),(3, 'premier-etage'),(4, 'deuxieme-etage'),(5, 'en-haut');
insert into editeur values(1, 'BELFOND'),(2, 'LE LIVRE DE POCHE'),(3,'Vromant, Bruxelles - Paris');
insert into auteur values(1, 'PUPIN','Mihajlo'),(2, 'HOSSEINI', 'Khaled'),(3, 'DIOME', 'Fatou');
insert into genre_theme values(1, 'bande dessinée'),(2, 'science-fiction'),(3, 'policier'),(4, 'autobiographie'),(5, 'histoire');
insert into mot_cle values(1, 'guerre'),(2, 'pauvreté'),(3, 'immigration'),(4, 'serbe'),(5, 'femme'),(6, 'football');
insert into categorie_prof values(1, 'Enfant'),(2, 'Etudiant'),(3, 'Agriculteur exploitant'),(4, 'Artisan. commerçant. chef entreprise'),(5, 'Cadre et professions intellectuelles supérieures'),(6, 'Professions intermédiaires'),(7, 'Employe'),(8, 'Ouvrier'),(9, 'Retraités'),(10, 'Autres personnes sans activité professionnelle');
insert into livre values(111111, 'Du berger au savant',4),(222222, 'Mille soleils splendides', 5),(333333, 'Le Ventre de l Atlantique', 4);
INSERT INTO `gbibliotheque`.`exemplaire` (`code_catalogue`, `code_rayon`, `date_acquisition`, `code_etat`, `id_editeur`, `id_bibliothecaire`) VALUES ('111111', '2', '1928-12-12', '1', '3', '1');
INSERT INTO `gbibliotheque`.`exemplaire` (`code_catalogue`, `code_rayon`, `date_acquisition`, `code_etat`, `id_editeur`, `id_bibliothecaire`) VALUES ('111111', '3', '1928-12-12', '0', '3', '1');
INSERT INTO `gbibliotheque`.`exemplaire` (`code_catalogue`, `code_rayon`, `date_acquisition`, `code_etat`, `id_editeur`, `id_bibliothecaire`) VALUES ('222222', '1', '2018-10-12', '1', '1', '2');
INSERT INTO `gbibliotheque`.`exemplaire` (`code_catalogue`, `code_rayon`, `date_acquisition`, `code_etat`, `id_editeur`, `id_bibliothecaire`) VALUES ('333333', '5', '2019-10-10', '1', '2', '3');

INSERT INTO `gbibliotheque`.`livre_mot_cle` (`code_catalogue`, `id_mot_cle`) VALUES ('111111', '4');
INSERT INTO `gbibliotheque`.`livre_mot_cle` (`code_catalogue`, `id_mot_cle`) VALUES ('222222', '1');
INSERT INTO `gbibliotheque`.`livre_mot_cle` (`code_catalogue`, `id_mot_cle`) VALUES ('222222', '5');
INSERT INTO `gbibliotheque`.`livre_mot_cle` (`code_catalogue`, `id_mot_cle`) VALUES ('333333', '6');
INSERT INTO `gbibliotheque`.`livre_mot_cle` (`code_catalogue`, `id_mot_cle`) VALUES ('333333', '2');

INSERT INTO `gbibliotheque`.`ecrire` (`code_catalogue`, `id_auteur`) VALUES ('111111', '1');
INSERT INTO `gbibliotheque`.`ecrire` (`code_catalogue`, `id_auteur`) VALUES ('222222', '2');
INSERT INTO `gbibliotheque`.`ecrire` (`code_catalogue`, `id_auteur`) VALUES ('333333', '3');

INSERT INTO `gbibliotheque`.`abonne` (`matricule`, `nom_abonne`, `prenom_abonne`, `adresse`, `telephone`, `date_naissance`, `date_adhesion`, `inscript`, `id_categorie`) VALUES ('123456789101', 'Vucic', 'Aleksandar', '7 Rue Henri Barbusse, Aubervilliers', '06209861675', '1975-10-03', '2020-10-03', '1', '5');
INSERT INTO `gbibliotheque`.`abonne` (`matricule`, `nom_abonne`, `prenom_abonne`, `adresse`, `telephone`, `date_naissance`, `date_adhesion`, `inscript`, `id_categorie`) VALUES ('080698573756', 'Vucic', 'Aleksandra', '26 Rue es Amandier, 92013 Nanterre', '0624845525', '1985-06-08', '2019-01-05', '1', '2');
INSERT INTO `gbibliotheque`.`abonne` (`matricule`, `nom_abonne`, `prenom_abonne`, `adresse`, `date_naissance`, `date_adhesion`, `inscript`, `id_categorie`) VALUES ('555666777999', 'France', 'Auber', 'Opera Garnier', '1995-09-18', '2010-12-01', '1', '1');
INSERT INTO `gbibliotheque`.`abonne` (`matricule`, `nom_abonne`, `prenom_abonne`, `adresse`, `telephone`, `date_naissance`, `date_adhesion`, `inscript`, `id_categorie`) VALUES ('789654123000', 'Erreur', 'Test', '55 Rue de Vincennes, 93100 Montreuil', '000011111', '2000-01-01', '2001-01-01', '0', '1');

INSERT INTO `gbibliotheque`.`echeancier` (`code_catalogue`, `matricule`, `code_rayon`, `datePret`, `dateRetour`) VALUES ('111111', '123456789101', '2', '2020-01-01', '2020-02-01');
INSERT INTO `gbibliotheque`.`echeancier` (`code_catalogue`, `matricule`, `code_rayon`, `datePret`) VALUES ('111111', '080698573756', '3', '2020-02-01');
INSERT INTO `gbibliotheque`.`echeancier` (`code_catalogue`, `matricule`, `code_rayon`, `datePret`, `dateRetour`) VALUES ('222222', '080698573756', '1', '2019-12-1', '2019-12-7');
INSERT INTO `gbibliotheque`.`echeancier` (`code_catalogue`, `matricule`, `code_rayon`, `datePret`, `dateRetour`) VALUES ('333333', '789654123000', '5', '2000-01-01', '2000-12-1');
