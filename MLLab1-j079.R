#Q1,2.
a<-read.csv("C:/Users/voraa/Downloads/depression.csv")
a
a$Hospt
# depression has 4 categorical ariables ,i.e, Hospt, Treat,Outcome,Gender
# it has 3 quantitative variables , ie., Time, Age, AcuteT

#Q3.
b<-read.csv("C:/Users/voraa/Downloads/friends.csv")
b
t=table(b$Friends)
prop=prop.table(t)
prop
percent=prop*100
pie(t)
pf<-round(percent,1)
pf
lbl<-paste(c("No difference ","Opposite sex ","Same sex "),pf,"%",sep='')
lbl
pie(t,label=lbl)
#Thus, we can say that the distribution s unequal. 36.2 percent students believe it is easier to make friends with opp gender, 13.7 percent believe the opposite and a 50.2 percent believe it makes no difference

#Q4.
c<-read.csv("C:/Users/voraa/Downloads/actor_age.csv")
c
plot(c$Age)
hist(c$Age,breaks=8,xlab="age of the best actors ,oscar winners", main = '')
#maximum number of oscar winners lie around the age of 35-40. the graph is skewed right, stating that most actors win oscars at a youngr age. center is around 40 and there is one outlier at age 75

#Q5,6.
summary(c$X)
mean(c$Age)
summary(c$Age)
#it has total 44 observations. mean of ages is 44.97. 5 no. summary - min:29,1st qu:38,median:43.5, 3rd qu:50.25, max:76
IQR(c$Age)
#half of the actors won oscar before age 43.5
#range covered by ages 47
#range covered by midddle 50% is 12.5

#Q7,8.
d<-read.csv("C:/Users/voraa/Downloads/ratings.csv")
d
sapply(d,sd)
#SDsof three rating distributions- class1:1.57, class2:4, class3:2.63
t1<-table(d$Class.I,d$Class.II,d$Class.III)
t1
hist(d$Class.II)
hist(d$Class.I)
hist(d$Class.III)
#Hence we can say that class two hardly has any value near the mean, which is 5, so average distance is large in class 1, values are near the mean so the average distance is less ad in class 3 lies between class 1 and 2
