INSERT INTO `jobs` (name, label) VALUES
  ('offpolice','Uit-dienst'),
  ('offambulance','Uit-dienst'),
  ('offmechanic','Uit-dienst'),
  ('offfirefighter','Uit-dienst')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  ("offpolice",0,"aspirant","Aspirant",0,"{}","{}"),
  ("offpolice",	1,"surveillant","Surveillant",0,"{}","{}"),
  ("offpolice",	2,"agent","Agent",0,"{}","{}"),
  ("offpolice",	3,"hoofdagent","Hoofd-Agent",0,"{}","{}"),
  ("offpolice",	4,"brigadier","Brigadier",0,"{}","{}"),
  ("offpolice",	5,"inspecteur","Inspecteur",0,"{}","{}"),
  ("offpolice",	6,"hoofdinspecteur","Hoofd-Inspecteur",0,"{}","{}"),
  ("offpolice",	7,"boss","Commissaris",0,"{}","{}"),
  ("offpolice",	8,"boss","Hoofd-Commissaris",0,"{}","{}"),
  ("offpolice",	9,"boss","Eerste Hoofd-Commissaris",0,"{}","{}"),
  -- Politie
  ("offambulance",0,"stagair","Stagair",0,"{}","{}"),
  ("offambulance",1,"chauffeur","Chauffeur",0,"{}","{}"),
  ("offambulance",2,"verpleegkundige","Verpleegkundige",0,"{}","{}"),
  ("offambulance",3,"mmt","MMT",0,"{}","{}"),
  ("offambulance",4,"ovdg","OVDG",0,"{}","{}"),
  ("offambulance",5,"boss","Assisten Hoofd-Geneeskunde",0,"{}","{}"),
  ("offambulance",6,"boss","Hoofd-Geneeskunde",0,"{}","{}"),
  -- Ambulance
  ("offmechanic",0,"monteur","Monteur",0,"{}","{}"),
  ("offmechanic",1,"hoofdmonteur","Hoofd-Monteur",0,"{}","{}"),
  ("offmechanic",2,"teamleider","Teamleider",0,"{}","{}"),
  ("offmechanic",3,"boss","Directeur",0,"{}","{}"),
  ("offmechanic",4,"boss","Hoofd Directeur",0,"{}","{}"),
  -- ANWB
  ("offfirefighter",0,"brandwacht","Brandwacht",0,"{}","{}"),
  ("offfirefighter",1,"brandwacht1eklas","Brandwacht 1e klas",0,"{}","{}"),
  ("offfirefighter",2,"hoofdbrandwacht","Hoofdbrandwacht",0,"{}","{}"),
  ("offfirefighter",3,"brandmeester","Brandmeester",0,"{}","{}"),
  ("offfirefighter",4,"boss","Hoofdcommandeur",0,"{}","{}")
  -- Brandweer
;