#######���Ը����##########
print("###########################")
print("�����ͻ��̾𽺿� R")
print("        ������        ")
print("###########################")
cat("#############################")
cat("�����ͻ��̾𽺿� R")
cat("        ������        ")
c?t("###########################")
#############################
#     �����ͻ��̾𽺿� R    #
#           ������          #
#############################
x<-3
y<-5
x+y

#������ ���� ��ũ��Ʈ ������ ������. 
# C�� concat�� �ǹ̷� �̾� ���δٴ� ������ ��???�ϸ� �ȴ�. 
# �� �ΰ� �̻��� ��� �Ѵٸ� ��� c�� �̿��� �Լ��� ����Ѵ�. 
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

# �⺻ R����
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

#rep�̿��� ���� �����
rep(1:3, 5)
rep(2:3, times=2)
rep(2:3, each=2, times=2)
rep(c("large","small"), times=c(2,3))

# ���� ����???�ҿ� �̸� ���̱�
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

paste("���","������Դ�", "â����", "����ɷ���","�ʿ��ϴ�")
print(" ��� ������Դ� â���� ����ɷ���?�ʿ��ϴ�.")
paste("���","������Դ�", "â����", "����ɷ���","�ʿ��ϴ�", sep ="-")
paste("���","������Դ�", "â����", "����ɷ���","�ʿ��ϴ�", sep =" ")
paste('��������',pi,'�̴�')
paste('��������',pi,'�̴�', sep = '-')
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
x<- c("�����ͻ��̾��а�,"��ȭ�������а�","���������а�')

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
( i <- grep("[gu]", txt) ) # g �Ǵ� u ���ԵǾ� �ִ� �� �ε��� ��ȣ ����

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
      rbind(xy_1, data.frame(x=5.4, y=9.1)) #�׳� ���̶�°��� ���� �����͸� �ٲ۰� �ƴ� 
xy_1
      rbind(xy_1, rep(1:?, times=2))
      
