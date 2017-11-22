rm(list = ls())
#x <- sample(1000)
#devtools::use_data(x, mtcars)

# Datasets: Mouse, CoffeeTemp, Beer, MaramaBeans, Fiber, Zrouxii, OliveOilAdult, WineGCMS

mouse <- gdata::read.xls('~/Dropbox/Backup/MyDocumentsOnC/Course and teaching/Foedevaredataanalyse/Data/Dennis_Mouse_Whey/Mouse_diet_intervention.xlsx')

coffeetemppanel <- gdata::read.xls('~/Dropbox/Backup/MyDocumentsOnC/Course and teaching/Foedevaredataanalyse/Data/Coffee Morten and Ida/Temperature/Results Panel.xlsx')

coffeetempconsumer <- gdata::read.xls('~/Dropbox/Backup/MyDocumentsOnC/Course and teaching/Foedevaredataanalyse/Data/Coffee Morten and Ida/Temperature/Results Consumer Test.xlsx')

beer <- gdata::read.xls('~/Dropbox/Backup/MyDocumentsOnC/Course and teaching/Foedevaredataanalyse/Data/Tobias Beer/Beer GCMS.xlsx')

wine <- gdata::read.xls('~/Dropbox/Backup/MyDocumentsOnC/Course and teaching/Foedevaredataanalyse/Data/Wine GC-MS/Wine.xlsx')

fiber <- gdata::read.xls('~/Dropbox/Backup/MyDocumentsOnC/Course and teaching/Foedevaredataanalyse/Data/Fiber Mette Skau/FiberData.xlsx')

zrouxii <- readxl::read_excel('~/Dropbox/Backup/MyDocumentsOnC/Course and teaching/Foedevaredataanalyse/Data/Zygosaccharomyces rouxii/Z rouxii Acetic acid.xlsx')

load('~/Dropbox/Backup/MyDocumentsOnC/Course and teaching/Foedevaredataanalyse/Data/Olivenolieadulturation/OliveOilAdult.RData')
y <- data.frame(y)
colnames(y) <- c('oliveoil', 'thistleoil' , 'transfat')
oliveoil <- cbind(Oliveoil,y)

maramaox <- gdata::read.xls('~/Dropbox/Backup/MyDocumentsOnC/Course and teaching/Foedevaredataanalyse/Data/Marama_MetteHolse/Marama Oil storage exp/MaramaBeanOilOx.xlsx')

teachers_weight1n1 <- read.csv('~/Dropbox/Backup/MyDocumentsOnC/Course and teaching/Foedevaredataanalyse/Data/Mortens_vaegt/Weight_1og1.csv')
teachers_weight1n1$studentID <- 1:59
colnames(teachers_weight1n1)[9] <- 'weight'
teachers_weight1n1 <- teachers_weight1n1[,c('studentID','weight')]

teachers_weight2n2 <- read.csv('~/Dropbox/Backup/MyDocumentsOnC/Course and teaching/Foedevaredataanalyse/Data/Mortens_vaegt/Weight_2og2.csv')
teachers_weight2n2$studentID <- 1:45
colnames(teachers_weight2n2)[9] <- 'weight'
teachers_weight2n2 <- teachers_weight2on2[,c('studentID','weight')]

devtools::use_data(mouse,coffeetemppanel, coffeetempconsumer,beer,wine,fiber,zrouxii,oliveoil,maramaox,teachers_weight1n1,teachers_weight2n2,overwrite = TRUE)
