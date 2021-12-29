## age
class(dds$Birthday)
head(dds$Birthday)
tail(dds$Birthday)
### they are Excel dates
dds$dob <- convert_to_date(dds$Birthday)
min(dds$dob)
max(dds$dob)

### createdt is when they took survey?
class(dds$createdt)
head(dds$createdt)
dds$surveyDate <- convert_to_date(dds$createdt)
min(dds$surveyDate)
max(dds$surveyDate)

dds$age <- dds$surveyDate - dds$dob
dds$ageY <- round(as.numeric(dds$age/365.25), digits=2)
summary(as.numeric(dds$ageY))
### 18.9 is max
dds[as.numeric(dds$ageY) > 18, c("Dog.ID", "dob", "surveyDate", "ageY")]

### sex
class(dds$Sex)
table(dds$Sex, useNA="ifany")
dds$sexF <- as.factor(dds$Sex)

class(dds$Breed)
breedT <- table(dds$Breed, useNA="ifany")
dds$breedF <- factor(dds$Breed)
### hunting/herding ?
### list breeds
write.csv(rownames(breedT), file="breeds.csv")
dds$breedGroup[dds$breedF == "Airedale Terrier "] <- "Terrier"
dds$breedGroup[dds$breedF == "Akita "] <- "Working"
dds$breedGroup[dds$breedF == "Alaskan Malamute"] <- "Working"
dds$breedGroup[dds$breedF == "American Coonhound"] <- "Hound"
dds$breedGroup[dds$breedF == "American Indian Dog"] <- NA
dds$breedGroup[dds$breedF == "American Pit Bull Terrier"] <- "Terrier"
dds$breedGroup[dds$breedF == "American Water Spaniel "] <- "Sporting"
dds$breedGroup[dds$breedF == "Australian Cattle Dog"] <- "Herding"
dds$breedGroup[dds$breedF == "Australian Kelpie "] <- "Herding"
dds$breedGroup[dds$breedF == "Australian Koolie"] <- "Herding"
dds$breedGroup[dds$breedF == "Australian Shepherd"] <- "Herding"
dds$breedGroup[dds$breedF == "Australian Shepherd (Miniature)"] <- "Herding"
dds$breedGroup[dds$breedF == "Beagle"] <- "Hound"
dds$breedGroup[dds$breedF == "Belgian Groenendael"] <- "Herding"
dds$breedGroup[dds$breedF == "Belgian Malinois "] <- "Herding"
dds$breedGroup[dds$breedF == "Belgian Sheepdog "] <- "Herding"
dds$breedGroup[dds$breedF == "Belgian Tervuren "] <- "Herding"
dds$breedGroup[dds$breedF == "Berger Blanc Suisse (Swiss Shepherd Dog)"] <- "Herding"
dds$breedGroup[dds$breedF == "Bernese Mountain Dog "] <- "Working"
dds$breedGroup[dds$breedF == "Black and Tan Coonhound "] <- "Hound"
dds$breedGroup[dds$breedF == "Bloodhound"] <- "Hound"
dds$breedGroup[dds$breedF == "Blue Tick Coonhound"] <- "Hound"
dds$breedGroup[dds$breedF == "Border Collie"] <- "Herding"
dds$breedGroup[dds$breedF == "Border Terrier "] <- "Terrier"
dds$breedGroup[dds$breedF == "Bouvier des Flandres "] <- "Herding"
dds$breedGroup[dds$breedF == "Boxer"] <- "Working"
dds$breedGroup[dds$breedF == "Boykin Spaniel"] <- "Sporting"
dds$breedGroup[dds$breedF == "Briard"] <- "Herding"
dds$breedGroup[dds$breedF == "Brittany"] <- "Sporting"
dds$breedGroup[dds$breedF == "Bull Terrier "] <- "Terrier"
dds$breedGroup[dds$breedF == "Cardigan Welsh Corgi "] <- "Herding"
dds$breedGroup[dds$breedF == "Carolina Dog"] <-NA
dds$breedGroup[dds$breedF == "Catahoula Leopard Dog"] <- NA
dds$breedGroup[dds$breedF == "Cavalier King Charles Spaniel"] <- "Toy"
dds$breedGroup[dds$breedF == "Chesapeake Bay Retriever "] <- "Sporting"
dds$breedGroup[dds$breedF == "Clumber Spaniel"] <- "Sporting"
dds$breedGroup[dds$breedF == "Cocker Spaniel (American)"] <- "Sporting"
dds$breedGroup[dds$breedF == "Cocker Spaniel (English)"] <- "Sporting"
dds$breedGroup[dds$breedF == "Collie"] <- "Herding"
dds$breedGroup[dds$breedF == "Cross-breed"] <- NA
dds$breedGroup[dds$breedF == "Dachshund"] <- "Hound"
dds$breedGroup[dds$breedF == "Dachshund (Miniature)"] <- "Hound"
dds$breedGroup[dds$breedF == "Dalmatian"] <- "Non-Sporting"
dds$breedGroup[dds$breedF == "Doberman Pinscher"] <- "Working"
dds$breedGroup[dds$breedF == "Dutch Shepherd"] <- "Herding"
dds$breedGroup[dds$breedF == "English Shepherd"] <- "Herding"
dds$breedGroup[dds$breedF == "English Springer Spaniel"] <- "Sporting"
dds$breedGroup[dds$breedF == "Eurasier"] <- NA
dds$breedGroup[dds$breedF == "Field Spaniel "] <- "Sporting"
dds$breedGroup[dds$breedF == "Flat-Coated Retriever "] <- "Sporting"
dds$breedGroup[dds$breedF == "Fox Terrier (Smooth)"] <- "Terrier"
dds$breedGroup[dds$breedF == "German Pinscher "] <- "Working"
dds$breedGroup[dds$breedF == "German Shepherd"] <- "Herding"
dds$breedGroup[dds$breedF == "German Shorthaired Pointer"] <- "Sporting"
dds$breedGroup[dds$breedF == "German Wirehaired Pointer "] <- "Sporting"
dds$breedGroup[dds$breedF == "Golden Retriever"] <- "Sporting"
dds$breedGroup[dds$breedF == "Gordon Setter"] <- "Sporting"
dds$breedGroup[dds$breedF == "Hovawart"] <- NA
dds$breedGroup[dds$breedF == "Ibizan Hound "] <- "Hound"
dds$breedGroup[dds$breedF == "Icelandic Sheepdog"] <- "Herding"
dds$breedGroup[dds$breedF == "Irish Setter "] <- "Sporting"
dds$breedGroup[dds$breedF == "Jack Russell Terrier"] <- "Terrier"
dds$breedGroup[dds$breedF == "Keeshond"] <- "Non-Sporting"
dds$breedGroup[dds$breedF == "Kooikerhondje"] <- "Sporting"
dds$breedGroup[dds$breedF == "Labrador Retriever"] <- "Sporting"
dds$breedGroup[dds$breedF == "Lakeland Terrier "] <- "Terrier"
dds$breedGroup[dds$breedF == "Leonberger"] <- "Working"
dds$breedGroup[dds$breedF == "McNab Shepherd"] <- "Herding"
dds$breedGroup[dds$breedF == "Miniature American Shepherd"] <- "Herding"
dds$breedGroup[dds$breedF == "Mixed-breed"] <- NA
dds$breedGroup[dds$breedF == "Newfoundland"] <- "Working"
dds$breedGroup[dds$breedF == "Nova Scotia Duck Tolling Retriever "] <- "Sporting"
dds$breedGroup[dds$breedF == "Parson Russell Terrier "] <- "Terrier"
dds$breedGroup[dds$breedF == "Pembroke Welsh Corgi "] <- "Herding"
dds$breedGroup[dds$breedF == "Perro de Presa Canario"] <- NA
dds$breedGroup[dds$breedF == "Plott"] <- "Hound"
dds$breedGroup[dds$breedF == "Pointer "] <- "Sporting"
dds$breedGroup[dds$breedF == "Poodle (Standard)"] <- "Non-Sporting"
dds$breedGroup[dds$breedF == "Rat Terrier"] <- "Terrier"
dds$breedGroup[dds$breedF == "Rottweiler"] <- "Working"
dds$breedGroup[dds$breedF == "Schipperke "] <- "Non-Sporting"
dds$breedGroup[dds$breedF == "Schnauzer (Giant)"] <- "Working"
dds$breedGroup[dds$breedF == "Shetland Sheepdog"] <- "Herding"
dds$breedGroup[dds$breedF == "Shiba Inu"] <- "Non-Sporting"

dds$breedGroup[dds$breedF == "Shih Tzu"] <- "Toy"
dds$breedGroup[dds$breedF == "Shiloh Shepherd"] <- "Herding"
dds$breedGroup[dds$breedF == "Stabyhoun"] <- NA
dds$breedGroup[dds$breedF == "Staffordshire Bull Terrier "] <- "Terrier"
dds$breedGroup[dds$breedF == "Vizsla"] <- "Sporting"
dds$breedGroup[dds$breedF == "Weimaraner"] <- "Sporting"
dds$breedGroup[dds$breedF == "White German Shepherd Dog"] <- "Herding"
dds$breedGroup[dds$breedF == "White Swiss Shepherd Dog"] <- "Herding"
dds$breedGroup[dds$breedF == "Wirehaired Pointing Griffon "] <- "Sporting"
table(dds$breedGroup, useNA="ifany")
dds$breedGroupF <- factor(dds$breedGroup)



table(dds$breeddescription, useNA="ifany")
### these are varied free text


### neutered
### variable from xlsx is "Neutered?" and the question mark causes problems with R. Rename

dds$neutered <- dds[ ,c("Neutered?")]
dds$neuteredF <- factor(dds$neutered)

### country
table(dds$Country)
dds$countryF <- factor(dds$Country)

### working status
table(dds$workingstatus, useNA="ifany")
dds$workingStatusF <- factor(dds$workingstatus,
                             levels=c("training", "working", "retired"))
