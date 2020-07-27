# aes -> 시각적인 요소라는 뜻

# 그래프 함수 앞에 들어가는 중복될 내용을 변수에 저장해서 사용가능
# case1
p<- ggplot(data=mtcars, aes(factor(cyl))) # cyl은 컬럼명
p + geom_bar()
# cyl은 컬럼명 / bar 차트는 x축이 범주형이어야함.
p+geom_bar(aes(fill=cyl), co?our="black")
p+geom_bar(aes(fill=cyl), colour="red")
p+geom_bar(aes(fill=cyl), colour="blue")+
  coord_flip()
# 이렇게 하면 색이 잘 나옴

# case2
p1<- ggplot(data=mtcars, aes((cyl)))
p1 + geom_bar()


p1+geom_bar(aes(fill=cyl), colour="black")
p1+geom_bar(?es(fill=cyl), colour="red")
p1+geom_bar(aes(fill=cyl), colour="blue")+
  coord_flip()
# case2의 경우 색이 안나옴 (b/c  bar차트는 범주형이라 factor 취급해야함.)

# geom_abline -> 회귀분석의 추세선 그릴 수 있음. 

# series를 dataframe 만들기
huron <- data.fr?me(year=1875:1972, level=as.vector(LakeHuron))
# 1875~1972년의 데이터를 시리즈인 LakeHuron을 벡터로 하여 df로 저장

# huron으로 그래프 그리기
ggplot(data=huron,aes(x=year))+geom_area(aes(y=level))
p<-ggplot(huron, aes(x=year))
p
p+geom_ribbon(aes(ymin=leve?-2, ymax=level+2),colour="blue")

# box plot그리기
> p <- ggplot(mtcars, aes(factor(cyl), mpg))
> p+geom_boxplot()

# ggplot2movies 패키지 설치
install.packages("ggplot2movies")
library(ggplot2movies)

# 히스토그램 그리기 (binwidth -> 각 막대의 폭)
p<- ggp?ot(data=movies, aes(x=rating))
p<-p+geom_histogram(binwidth = 0.3,aes(y=..density..,fill=..count..),colour="black")
p
# density 함수 추가 
p<-p+geom_density(colour="red")
p
p+scale_fill_gradient(low="white",high="#496ff5")

# geom_contour 사용하기 (지형모???)
library(reshape2)
volca <- melt(volcano)
names(volca) <- c("x","y",'z')
p <- ggplot(volca,aes(x,y,z =z))

#  plot에 text 표시하기  -> 이렇게는 잘 안. 지저분함.
p <- ggplot(mtcars,aes(x=wt, y = mpg, label=rownames(mtcars)))
p+geom_point()+
  geom_text(aes?x=wt+0.05, colour=factor(cyl)), size=3, hjust=1) 
#   geom_text(aes(x=wt+얼마나 띄울지, colour=factor(색구분의 기준이 될 변수 )), size=크기, hjust=0이면 왼쪽 1이면 오른쪽) 
# ~ 기준으로 y~x

# windows() -> 얠 하면 윈도우창이 열림

# 위도우 창 열고 그래프 ???리기
airquality$Wind_d <- cut_number(airquality$Wind, n=4)
windows()
ggplot(data= airquality)+
  geom_point(mapping=aes(x=Solar.R,y=Ozone))+
   facet_wrap(~Wind_d)

# +로 그래프 합쳐서 그릴 수 있음
ggplot(data= mpg, mapping=aes(x=displ, y= hwy))+
 geom_poi?t(mapping=aes(color=drv),size=2)+
 geom_smooth(data=filter(mpg,drv=="4"), se=FALSE, color="red")

# se = TRUE하면 신뢰구간도 표시됨
ggplot(data= mpg, mapping=aes(x=displ, y= hwy))+
  geom_point(mapping=aes(color=drv),size=2)+
  geom_smooth(data=filter(mpg,?rv=="4"), se=TRUE, color="red")

#  geom_bar()하든, stat_count()를 하든 동일한 막대그래프 나옴.
ggplot(data=mpg, mapping=aes(x=trans))+
  geom_bar()
ggplot(data=mpg, mapping=aes(x=trans))+
  stat_count()

# stat함수에 prop(비율)을 넣어서 계산해줘
ggplot(da?a=mpg)+
  geom_bar(mapping=aes(x=trans, y= stat(prop))) # 이 경우 본인에 대한 본인의 비율이 나와서 다 1임

# 이 경우 전체 합을 1로 하여 그 기준으로 비율을 구해줌 
ggplot(data=mpg)+
  geom_bar(mapping=aes(x=trans,y=stat(prop), group=1)) # 여기서는 trans의 ???체합

# jitter주면 한 곳에 모여서 찍힌 점이 흩어져 보임.
ggplot(data=mpg, mapping=aes(x=cty, y=hwy))+
  geom_point(position="jitter")

#연속형 변수의 도수분포표 
CarSize<-cut(MASS::Cars93$EngineSize,  
             breaks=c(0, 1.6, 2.0, Inf),
             ?abels=c("Small","Mid","Large"))

ggplot(data.frame(CarSize), aes(x=CarSize)) +
  geom_bar(fill="tomato") + labs(x="")

install.packages('plotrix')
library(plotrix)

# 쌓아올린 막대그래프
install.packages('vcd')
library(vcd)
ggplot(Arthritis, aes(x=Treatmen?, fill=Improved)) +
  geom_bar()
my_table<-with(Arthritis, table(Treatment, Improved))     
ggplot(as.data.frame(my_table), aes(x=Treatment, y=Freq, fill=Improved))+ 
  geom_col()    
ggplot(as.data.frame(my_table), aes(x=Treatment, y=Freq, fill=Improved))? 
  geom_bar(stat="identity")    
Arthritis

