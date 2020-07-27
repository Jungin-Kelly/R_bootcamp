#######명함만들기##########
print("###########################")
print("데이터사이언스와 R")
print("        권정인        ")
print("###########################")
cat("#############################")
cat("데이터사이언스와 R")
cat("        권정인        ")
c?t("###########################")
#############################
#     데이터사이언스와 R    #
#           권정인          #
#############################
x<-3
y<-5
x+y

#다음과 같은 스크립트 파일을 만들어보자. 
# C는 concat의 의미로 이어 붙인다는 뜻으로 생???하면 된다. 
# 즉 두개 이상을 써야 한다면 모두 c를 이용한 함수를 써야한다. 
speed<-c(4,7,8,9,10,11,12,13,13,14)
dist<-c(2,4,16,10,18,17,24,34,26,26)
summary(speed)
mean(dist)
sd(speed)
sd(dist)
cor(speed,dist)
plot(speed, dist)

install.packages("caret",dep?ndncies =c("Depends","Suggests"))
install.packages("UsingR")                  
install.packages("UsingR")  

summary(speed)
mean(dist)
sd(speed)
sd(dist)
cor(speed,dist)
plot(speed, dist)

install.packages("caret",dependncies =c("Depends","Suggests"))
inst?ll.packages("UsingR")                  
install.packages("UsingR")  
install.packages("tidyverse")

# 기본 R문법
x<-c(0.25,1,2.25,2)
y<-c(1L,2L,3L)
z<-c("orange", "strawberry", 'grape')
f<-c(True, False, True, False)

.libPaths()
.libPaths("C:/myRprroject/?ibrary")
.libPaths()
.libPaths("C:/myRprroject/Library")

install.packages("caret",dependncies =c("Depends","Suggests"))
install.packages("UsingR")                  
install.packages("UsingR")  
install.packages("tidyverse")

.libPaths("C:/myRprroject/Libr?ry")

install.packages("tidyverse")

install.packages("caret",dependncies =c("Depends","Suggests"))
install.packages("UsingR")                  
install.packages("UsingR")  
install.packages("tidyverse")

seq(from= pi, to pi, length =7)
seq(3)
seq(-5)

x<-?seq(from =0 , to =2, by=0.25)
print(x)

x[1]
x[2]

length(x)

x<-seq(from=0, to=2*pi, by=0.01)
y<-sin(x)
plot(x,y)
y<-sin(x)

#rep이용해 벡터 만들기
rep(1:3, 5)
rep(2:3, times=2)
rep(2:3, each=2, times=2)
rep(c("large","small"), times=c(2,3))

# 벡터 구성???소에 이름 붙이기
c(Seoul=9930, Busan = 3497, Incheon=2944)
v<- c(Seoul=9930, Busan = 3497, Incheon=2944)
class(v)
typeof(v)
Husband<-c(186,180,160,186,163,172,170,174,191,182,178,181,168,162,188,168,183,188,166,180,176,185,176,185,169,182,162,169,176,180,1?7,170,186)
Wife<-c(175,168,154,166,162,152,179,163,172,172,170,170,147,165,162,154,166,167,174,173,164,163,163,171,161,167,160,165,167,175,157,172,181)


# summary, mean, sd, cor, plot 
summary(Wife)
mean(Wife)
sd(Wife)
summary(Husband)
mean(Husband)
sd(Hu?band)
cor(Husband,Wife)
plot(Husband,Wife)

pop<-c(9930,3497,2944)
pop
names(pop)<-c("Seoul",'Busan','Inchon')
dp<-data.frame(pop)
class(dp)
typeof(dp)

paste("모든","사람에게는", "창의적", "사고능력이","필요하다")
print(" 모든 사람에게는 창의적 사고능력이?필요하다.")
paste("모든","사람에게는", "창의적", "사고능력이","필요하다", sep ="-")
paste("모든","사람에게는", "창의적", "사고능력이","필요하다", sep =" ")
paste('원주율은',pi,'이다')
paste('원주율은',pi,'이다', sep = '-')
paste('science',1:3, sep = '')
pa?te(c("science","math"),1:3, sep="-")
paste0(letters, collapse = "&&&")

a<-c(1:26)
a
paste0(a, a:z, sep"-")
paste0(a, a:z)

x<-c("New York, NY", "Ann Arbor, MI", "Chicago, IL")
x
x[1]
nchar(x[1])
substr(x,start=nchar(x)-1, stop=nchar(x))
substr(x,start=1, ?top=nchar(x)-4)
       
substr("data science", 1,4)
x<- c("데이터사이언스학과,"문화컨텐츠학과","스포츠과학과')

bubu<-data.frame(Husband,Wife)
bubu

view(bubu)
View(bubu)

summary(bubu)
head(bubu)
bubu[1]

col_split
l<-strsplit(col_split,split="=")
l

txt ?- c("The", "licenses", "for", "most", "software", "are",
  "designed", "to", "take", "away", "your", "freedom",
  "to", "share", "and", "change", "it.",
  "", "By", "contrast,", "the", "GNU", "General", "Public", "License",
  "is", "intended", "to", "guara?tee", "your", "freedom", "to",
  "share", "and", "change", "free", "software", "--",
  "to", "make", "sure", "the", "software", "is",
  "free", "for", "all", "its", "users")       
( i <- grep("[gu]", txt) ) # g 또는 u 포함되어 있는 애 인덱스 번호 반출

st?pifnot( txt[i] == grep("[gu]", txt, value = TRUE) )


df1<-data.frame(x=c(2,4,6), y=c("a","b","c"))

df1
str(df1)

df2<-data.frame(x=c(2,4,6), y=c("a","b","c"),stringsAsFactors=FALSE)

df2
str(df2)

colnames(df2)
names(df2)
rownames(df2)

df2[1]
df2[[1]]
x?-c(1.9,0.8,1.1,0.1,-0.1,4.4,4.6,1.6,5.5,3.4)
y<-c(0.7,-1.0,-0.2,-1.2,-0.1,3.4,0.0,0.8,3.7,2.0)
      z<-1:10
      xy_1<-data.frame(x,y)
      rbind(xy_1, data.frame(x=5.4, y=9.1)) #그냥 붙이라는거지 원본 데이터를 바꾼게 아님 
xy_1
      rbind(xy_1, rep(1:?, times=2))
      

