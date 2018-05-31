options(java.parameters =c("server","-Xmx2048m"))

library("RNetLogo")

nl.path <-"C:/Program Files/NetLogo 6.0.2/app"
nlheadless1 <- "nlheadless1"
NLStart(nl.path,gui = F,nl.obj =nlheadless1,nl.jarname = "netlogo-6.0.2.jar")
model.path <- "/Newmodel1.nlogo" ##change file's name
absolute.model.path <- paste(nl.path,model.path,sep="")

NLLoadModel(absolute.model.path,nl.obj =nlheadless1)

NLCommand("set manmean 48",nl.obj =nlheadless1)
NLCommand("set womanmean 50",nl.obj =nlheadless1)
mmean<- NLReport("manmean",nl.obj =nlheadless1)
wmean<- NLReport("womanmean",nl.obj =nlheadless1)

NLCommand("setup",nl.obj =nlheadless1)             
NLDoCommand(30001,"go",nl.obj =nlheadless1)

NLQuit()

