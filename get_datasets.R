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

devtools::use_data(mouse,coffeetemppanel, coffeetempconsumer,beer,wine,fiber,zrouxii,oliveoil,maramaox,overwrite = TRUE)
