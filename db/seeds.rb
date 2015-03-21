#Tags
Tag.create!( name:  "Culture hors-sol")
Tag.create!( name:  "Culture en pleine terre")
Tag.create!( name:  "Culture sur buttes")
Tag.create!( name:  "Culture sur les toits")
Tag.create!( name:  "Jardin naturel")
Tag.create!( name:  "Permaculture")
Tag.create!( name:  "Jardin créatif")
Tag.create!( name:  "Jardin associatif")
Tag.create!( name:  "Jardin d'agrément")
Tag.create!( name:  "Jardin potager")
Tag.create!( name:  "Jardin expérimental")
Tag.create!( name:  "Jardin d'insertion")

#SubTypology
au = SubTypology.create!( name:  "Ressource pour l'AU")
jardins = SubTypology.create!( name:  "Jardins")
autre_au = SubTypology.create!( name:  "Autre Projets d'AU")

#Typology
Typology.create!( name:  "Outils", subtypology_id: au.id)
Typology.create!( name:  "Eau", subtypology_id: au.id)
Typology.create!( name:  "Compost", subtypology_id: au.id)
Typology.create!( name:  "Semences", subtypology_id: au.id)
Typology.create!( name:  "Matériel", subtypology_id: au.id)
Typology.create!( name:  "Structures ressources", subtypology_id: au.id)

Typology.create!( name:  "Jardins de production", subtypology_id: jardins.id)
Typology.create!( name:  "Jardin pédagogique", subtypology_id: jardins.id)
Typology.create!( name:  "Prêt de jardin", subtypology_id: jardins.id)
Typology.create!( name:  "Jardin collectif", subtypology_id: jardins.id)
Typology.create!( name:  "Jardin de la biodiversité", subtypology_id: jardins.id)
Typology.create!( name:  "Verger", subtypology_id: jardins.id)

Typology.create!( name:  "Poulailler", subtypology_id: autre_au.id)
Typology.create!( name:  "Aquaponie", subtypology_id: autre_au.id)
Typology.create!( name:  "Abeilles", subtypology_id: autre_au.id)
Typology.create!( name:  "Algues", subtypology_id: autre_au.id)
Typology.create!( name:  "Ferme urbaine", subtypology_id: autre_au.id)
