library('glmnet')

x=read.table("glmnet_fit_inputs.txt",sep=",",col.names=c("x1","x2","x3","y"))
output<-as.matrix(data.frame(x$x1,x$x2,x$x3))
fit1<-glmnet(output, x$y, nlambda = 1, lambda = 20, alpha = 1)
print(coef(fit1))

cfs0<-coef(fit1)["(Intercept)",1]
cfs1<-coef(fit1)["x.x1",1]
cfs2<-coef(fit1)["x.x2",1]
cfs3<-coef(fit1)["x.x3",1]

cfs<-data.frame(cfs0,cfs1,cfs2,cfs3)
print(cfs)
write.table(cfs,"glmnet_fit_outputs.txt",sep=" ",row.names=FALSE,col.names=FALSE)
