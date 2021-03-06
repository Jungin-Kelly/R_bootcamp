library(tidyverse)
library(gplots) #히트맵 그리려면 필요
library(ggplot2)
library(ggthemes)
library(plyr)
library(gcookbook)
library(vcd)
library(readxl)
library(corrplot) 
library(readxl)
# 서울 자치구 별 동물 판매업장 수 (petshop.xlsx파일 보내드릴 것)
jp?tshop<- read_xlsx("jpetshop.xlsx")
jpetshop
jpetshop <- as.data.frame(petshop)
library(ggplot2)
ggplot( data= jpetshop)+
  geom_bar(mapping=aes(x=gu, y=shop), fill="indianred", stat="identity")+
  theme(axis.text.x=element_text(angle=70, hjust=1))+
  scale?y_continuous(breaks=seq(0, 200, 20))+ ## x축의 눈금표시 간격을 설정
  xlab("서울 자치구")+
  ylab("동물 판매업장 수")+coord_flip() +ggtitle("2018 서울 자치구 별 동물 판매업장 수") 


######## 서울 자치구 년도별 유기 동물 수 #############
# 2014 
j2014 <- r?ad_xlsx("j2014.xlsx")
j2014
j2014 <- as.data.frame(j2014)
ggplot( data= j2014)+
  geom_bar(mapping=aes(x=gu, y=total),fill="indianred", stat="identity")+
  theme(axis.text.x=element_text(angle=70, hjust=1))+
  xlab("2014 서울 자치구")+
  ylab(" 유기 동물 ???계") +ggtitle("서울 자치구 2014 유기동물 합계")
# 2015 
j2015 <- read_xlsx("j2015.xlsx")
j2015
j2015 <- as.data.frame(j2015)
ggplot( data= j2015)+
  geom_bar(mapping=aes(x=gu, y=total),fill="indianred", stat="identity")+
  theme(axis.text.x=element_text(an?le=70, hjust=1))+
  xlab("2015 서울 자치구")+
  ylab(" 유기 동물 합계") +ggtitle("서울 자치구 2015 유기동물 합계")
# 2016 
j2016 <- read_xlsx("j2016.xlsx")
j2016
j2016 <- as.data.frame(j2016)
ggplot( data= j2016)+
  geom_bar(mapping=aes(x=gu, y=total),fill?"indianred", stat="identity")+
  theme(axis.text.x=element_text(angle=70, hjust=1))+
  xlab("2016 서울 자치구")+
  ylab("유기 동물 합계")+ggtitle("서울 자치구 2016 유기동물 합계")
# 2017 
j2017 <- read_xlsx("j2017.xlsx")
j2017
j2017 <- as.data.frame(j2017)?ggplot( data= j2017)+
  geom_bar(mapping=aes(x=gu, y=total),fill="indianred", stat="identity")+
  theme(axis.text.x=element_text(angle=70, hjust=1))+
  xlab("2017서울 자치구")+
  ylab("유기 동물 합계")+ggtitle("서울 자치구 2017 유기동물 합계")
# 2018 
j201? <- read_xlsx("j2018.xlsx")
j2018
j2018 <- as.data.frame(j2018)
ggplot( data= j2018)+
  geom_bar(mapping=aes(x=gu, y=total),fill="indianred", stat="identity")+
  theme(axis.text.x=element_text(angle=70, hjust=1))+
  xlab("2018서울 자치구")+
  ylab("유기 동??? 합계")+ ggtitle("서울 자치구 2018 유기동물 합계")

######### 서울 자치구 5개년 유기동물 합계 #########
jyeartotal <- read_xlsx("j2014-2018total.xlsx")
jyeartotal
jyeartotal <- as.data.frame(jyeartotal)
ggplot( data= jyeartotal)+
  geom_bar(mapping=aes(x=g?, y=total5),fill="indianred", stat="identity")+
  theme(axis.text.x=element_text(angle=70, hjust=1))+
  xlab("서울 자치구")+
  ylab("5개년 유기 동물 합계") + ggtitle("서울 자치구 5개년(2014-2018) 유기동물 합계")
cor(jyeartotal$pperh,jyeartotal$dog_sum)
cor?jyeartotal$pperh,jyeartotal$cat_sum)
cor(jyeartotal$pperh,jyeartotal$last)


##### 2018 평균 가구원수 유기동물 수#####
# 개와 고양이
jyeartotal <- read_xlsx("j2014-2018total.xlsx")
jyeartotal
jyeartotal <- as.data.frame(jyeartotal)
ggplot(data=jyeartotal, ?es(x=pperh, y=last)) + 
  geom_point(shape=1, size=2, colour="blue") + 
  geom_smooth(method = 'lm', se=TRUE, color='black')+
  theme(axis.text.x=element_text(angle=70, hjust=1))+
  xlab("2018 구별 인구 수/ 구별 가구 수")+
  ylab("구별 유기동물 수") + ggti?le("2018 평균 가구 구성원수에 따른 유기동물 수(개+고양이)")
#개
jyeartotal <- read_xlsx("j2014-2018total.xlsx")
jyeartotal
jyeartotal <- as.data.frame(jyeartotal)
ggplot(data=jyeartotal, aes(x=pperh, y=dog_sum)) + 
  geom_point(shape=1, size=2, colour="blu?") + 
  geom_smooth(method = 'lm', se=TRUE, color='black')+
  theme(axis.text.x=element_text(angle=70, hjust=1))+
  xlab("2018 구별 인구 수/ 구별 가구 수")+
  ylab("구별 유기견 수") + ggtitle("2018 평균 가구 구성원수에 따른 유기견 수")
#고양이
jyeartotal <? read_xlsx("j2014-2018total.xlsx")
jyeartotal
jyeartotal <- as.data.frame(jyeartotal)
ggplot(data=jyeartotal, aes(x=pperh, y=cat_sum)) + 
  geom_point(shape=1, size=2, colour="blue") + 
  ggtitle("1인가구 수와 유기고양이 수")+
  geom_smooth(method = 'lm', ?e=TRUE, color='black')+
  theme(axis.text.x=element_text(angle=70, hjust=1))+
  xlab("2018 구별 인구 수/ 구별 가구 수")+
  ylab("구별 유기 고양이 수") + ggtitle("2018 평균 가구 구성원수에 따른 유기고양이 수")




######## 년도별 유기 동물  추이 #########
#?개+고양이+기타 동물 합계 추이
# 추세 라인그래프 그리기
jyearadd <- read_xlsx("jyearadd.xlsx")
jyearadd
jyearadd <- as.data.frame(jyearadd)
p1 <- ggplot() + geom_line(aes(y = count, x = year, colour = animal), size=1.5,
                           data = jye?radd , stat="identity")+scale_x_continuous(breaks=seq(2008, 2018, 1))+scale_y_continuous(breaks=seq(0, 18000, 2000))+
  theme(axis.text.x=element_text(angle=360, hjust=1))+xlab("년")+
   ylab("유기 동물 합계") + ggtitle("2009~2018년 유기동물 합계 추이")
  ?p1

########## 특정구 (관악, 마포, 은평, 중랑, 용산 ) 추세######
# 개,고양이,기타
jcertain <- read_xlsx("jcertain.xlsx")
jcertain
jcertain <- as.data.frame(jcertain)
p2 <- ggplot() + geom_line(aes(y = dogncat, x = year, colour = gu), size=1,
              ?            data = jcertain , stat="identity")+scale_x_continuous(breaks=seq(2009, 2018, 1))+scale_y_continuous(breaks=seq(0, 2000, 100))+
  theme(axis.text.x=element_text(angle=70, hjust=1))+xlab("년")+
  ylab("유기 동물 합계") + ggtitle("특정구 (관악, 마???, 은평, 중랑, 용산 ) 전체 유기동물 합계 추이")

p2

# 개
jcertain <- read_xlsx("jcertain.xlsx")
jcertain
jcertain <- as.data.frame(jcertain)
p3 <- ggplot() + geom_line(aes(y = dog, x = year, colour = gu), size=1,
                           data = jcertain ? stat="identity")+scale_x_continuous(breaks=seq(2009, 2018, 1))+
  theme(axis.text.x=element_text(angle=70, hjust=1))+xlab("년")+
  ylab("유기 동물 합계") + ggtitle("특정구 (관악, 마포, 은평, 중랑, 용산 ) 유기견 합계 추이")

p3

# 고양이
jcertain <- read_x?sx("jcertain.xlsx")
jcertain
jcertain <- as.data.frame(jcertain)
p4 <- ggplot() + geom_line(aes(y =cat, x = year, colour = gu), size=1,
                           data = jcertain , stat="identity")+scale_x_continuous(breaks=seq(2009, 2018, 1))+
  theme(axi?.text.x=element_text(angle=70, hjust=1))+xlab("년")+
  ylab("유기 동물 합계") + ggtitle("특정구 (관악, 마포, 은평, 중랑, 용산 ) 유기고양이 합계 추이")

p4



###### 유기 동물 유형별 수 ######
######무지개 떡 그래프#######

jabandon <- read_xlsx("jabandon.x?sx")
jabandon
jabandon <- as.data.frame(jabandon)
ggplot(jabandon, aes(x=animal, y=count, fill=type)) + geom_bar(stat="identity")+
       theme(axis.text.x=element_text(hjust=1))+
       scale_y_continuous(breaks=seq(0, 8000, 1000))+
       xlab("동물 종류?)+ylab("유기 동물 합계")+ ggtitle("2018 유기동물 유형별 수")

# 전체 유기동물 유형#####
ggplot( data= jabandon)+
  geom_bar(mapping=aes(x=type, y=count),fill="orange", stat="identity")+
  theme(axis.text.x=element_text(angle=70, hjust=1))+
  xlab("2018 서??? 자치구")+
  ylab("유기 동물 합계")+ggtitle("2018 서울시 유형별 유기동물 ")


######산점도 추세선########
#유기동물 수 vs 펫샵수
total2 <- read_xlsx("total2.xlsx")
total2
total2 <- as.data.frame(total2)
ggplot(data=total2, aes(x=shop, y=population)) + 
  g?om_point(shape=1, size=3, colour="blue") +
  ggtitle("동물병원 수와 펫샵 수")+
  geom_smooth(method = 'lm')









