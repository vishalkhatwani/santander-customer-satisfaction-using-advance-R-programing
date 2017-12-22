san_train <- read.csv("E:/Data Analytics Internship/santander challenge/train.csv")
str(san_train)
str(san_train$TARGET)

library(arules)
colnames(san_train)
i=0
c <- as.list(colnames(san_train ))
class(c)
for (i in c){ 
  san_train[,i] <- as.factor(san_train[,i])
}
j=0
to_rem <- (c(1:100)) 
to_rem[10]
y <- 0
for(j in c(1:371)){
   if(length(levels(san_train[,j]))==1) {
     to_rem[y] <- j 
     y <- y+1
   }    
}
remo_vect <- to_rem[1:33]
k_0
a <- c(1:13)
class(a)
class(remo_vect)
for (k in remo_vect){
  san_train_new <-  san_train[,-(remo_vect)]
}
san_train_new <- san_train_new[,ind_var2_0]
str(san_train_new)
require(data.table)
require(Matrix)
require(xgboost)

train <- data.table(san_train_new,keep.rownames = F)
head(train)
str(train)
train$ind_var2_0 <- NULL
length(w)
table(is.na(train))
train$TARGET <- as.factor(train$TARGET)
sparse.train <- sparse.model.matrix(train$TARGET~.-1,data = train)
head(sparse.train)

output_target <- as.vector(train$TARGET)

model1 <- xgboost(data = sparse.train, label = output_target, max.depth=25,
               eta=1, nthread=2, nround = 15, objective="binary:logistic" )

test <- read.csv("E:/Data Analytics Internship/santander challenge/test.csv")
rm(tit)

i=0
t <- as.list(colnames(test ))
class(c)
for (i in t){ 
  test[,i] <- as.factor(test[,i])
}
str(test)
View(test)
u=0
to_rem <- (c(1:100)) 
to_rem[10]
y <- 0
for(u in c(1:370)){
  if(length(levels(test[,u]))==1) {
    to_rem[y] <- u
    y <- y+1
  }    
}
remo_vect <- to_rem[1:44]

for (k in remo_vect){
  test_1 <-  test[,-(remo_vect)]
}
san_train_new <- san_train_new[,ind_var2_0]
str(san_train_new)

sparse.train <- sparse.model.matrix(~.-1,data = train)
head(sparse.train)


y_pred <- predict(model1,sparse.train)
summary(y_pred)
prediction <- ifelse(y_pred>0.3,1,0)
before <- table(prediction)
after <- table(output_target)
before[2]/sum(before)*100
after[2]/sum(after)*100

Output <- cbind(test$ID,prediction)

Output <- as.data.frame(Output)
table(Output)
str(Output)
table(Output$prediction)

write.csv(Output,file = "E:/Data Analytics Internship/santander challenge/submission.csv")


output <- read.csv("E:/Data Analytics Internship/santander challenge/submission.csv")
predicted <- output$prediction
id <- test$ID
submission <- as.data.frame(id)
head(submission)
submission$predicted_Satisfaction <- as.data.frame(predicted[1:75818])
tab <- table(submission$predicted_Satisfaction)
tab[2]
satisfaction_percent <- (tab[1]/sum(tab))*100
