
dir.create("AI_Omics_Internship_2025")

dir.create("raw_data")
dir.create("clean_data")
dir.create("scripts")
dir.create("results")
dir.create("plots")

patient_info <- read.csv("raw_data/patient_info.csv")

str(patient_info)
summary(patient_info)
View(patient_info)


patient_info$age <- as.numeric(patient_info$age)
patient_info$smoker <- as.character(patient_info$smoker)

patient_info$smoking_b <- ifelse(patient_info$smoker == "Yes", 1, 0)

write.csv(patient_info, "clean_data/patient_info_clean.csv", row.names = FALSE)
