SciViews::R

# Importation -----
t <- read("data/raw/Mobulids reproductive data_Bohol Sea_2017sep06.xlsx")
skimr::skim(t)

# Nom des variables ----
names(t) <- c("dr_code", "year", "months", "species", "dw", "sex", "age_class", "maturity", "maternity", "body_weight", "gonads_weight", "lfd")

# Corrections des NA -----
t[t == "NA"] <- NA
skimr::skim(t)

# Correction des variables ----
## months
unique(t$months)
table(t$months) # repartition équilibrée
t$months <- factor(t$months, levels = month.abb)

## species
unique(t$species)
table(t$species)
# On observe que Manta alfredi ne comprend qu'un seul individu. On pourrait l'éliminer.
t$species[t$species == "Manta alfredi"] <- "M.alf"
t$species <- as.factor(t$species)

## dw
t$dw <- as.numeric(t$dw)

## sex
unique(t$sex)
t$sex <- as.factor(t$sex)

## age_class
unique(t$age_class)
t$age_class <- as.factor(t$age_class)
summary(t$age_class)

## maturity
unique(t$maturity)

t$maturity <- as.logical(as.numeric(t$maturity))
unique(t$maturity)

## maternity
unique(t$maternity)
t$maternity <- as.logical(as.numeric(t$maternity))
unique(t$maternity)

## body_weight

t$body_weight <- as.numeric(t$body_weight)
summary(t$body_weight)

## gonads_weight

t$gonads_weight <- as.numeric(t$gonads_weight)
summary(t$gonads_weight)

## lfd

t$lfd <- as.numeric(t$lfd)
summary(t$lfd)

skimr::skim(t)


## table species, sex avec seulement les individus dont on connait la masse
t %>.%
  filter(., !is.na(body_weight)) %>.%
  table(.$species, .$sex)
## On observe que deux espèces sont utilisable en pratique M.thu M.jap. 
## M. thu est le plus intéressant avec plus de 150 observations dans les deux groupes.

t %>.%
  filter(., !is.na(body_weight) & !is.na(sex)) %>.%
  filter(., species == "M.thu") -> thu
## Modification des noms des variables du jeu de données.


# Labels des variables
## Il est possible d'ajouter des labels aux variables. 
## Utilisez le README proposé par dans le dossier data/raw. 
## La fonction est labelise().


# Sauvegarde des données 
write(thu, "data/growth.rds", type = "rds")
