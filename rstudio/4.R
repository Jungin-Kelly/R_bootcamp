# aes -> �ð����� ��Ҷ�� ��

# �׷��� �Լ� �տ� ���� �ߺ��� ������ ������ �����ؼ� ��밡��
# case1
p<- ggplot(data=mtcars, aes(factor(cyl))) # cyl�� �÷���
p + geom_bar()
# cyl�� �÷��� / bar ��Ʈ�� x���� �������̾����.
p+geom_bar(aes(fill=cyl), co?our="black")
p+geom_bar(aes(fill=cyl), colour="red")
p+geom_bar(aes(fill=cyl), colour="blue")+
  coord_flip()
# �̷��� �ϸ� ���� �� ����

# case2
p1<- ggplot(data=mtcars, aes((cyl)))
p1 + geom_bar()


p1+geom_bar(aes(fill=cyl), colour="black")
p1+geom_bar(?es(fill=cyl), colour="red")
p1+geom_bar(aes(fill=cyl), colour="blue")+
  coord_flip()
# case2�� ��� ���� �ȳ��� (b/c  bar��Ʈ�� �������̶� factor ����ؾ���.)

# geom_abline -> ȸ�ͺм��� �߼��� �׸� �� ����. 

# series�� dataframe �����
huron <- data.fr?me(year=1875:1972, level=as.vector(LakeHuron))
# 1875~1972���� �����͸� �ø����� LakeHuron�� ���ͷ� �Ͽ� df�� ����

# huron���� �׷��� �׸���
ggplot(data=huron,aes(x=year))+geom_area(aes(y=level))
p<-ggplot(huron, aes(x=year))
p
p+geom_ribbon(aes(ymin=leve?-2, ymax=level+2),colour="blue")

# box plot�׸���
> p <- ggplot(mtcars, aes(factor(cyl), mpg))
> p+geom_boxplot()

# ggplot2movies ��Ű�� ��ġ
install.packages("ggplot2movies")
library(ggplot2movies)

# ������׷� �׸��� (binwidth -> �� ������ ��)
p<- ggp?ot(data=movies, aes(x=rating))
p<-p+geom_histogram(binwidth = 0.3,aes(y=..density..,fill=..count..),colour="black")
p
# density �Լ� �߰� 
p<-p+geom_density(colour="red")
p
p+scale_fill_gradient(low="white",high="#496ff5")

# geom_contour ����ϱ� (������???)
library(reshape2)
volca <- melt(volcano)
names(volca) <- c("x","y",'z')
p <- ggplot(volca,aes(x,y,z =z))

#  plot�� text ǥ���ϱ�  -> �̷��Դ� �� ��. ��������.
p <- ggplot(mtcars,aes(x=wt, y = mpg, label=rownames(mtcars)))
p+geom_point()+
  geom_text(aes?x=wt+0.05, colour=factor(cyl)), size=3, hjust=1) 
#   geom_text(aes(x=wt+�󸶳� �����, colour=factor(�������� ������ �� ���� )), size=ũ��, hjust=0�̸� ���� 1�̸� ������) 
# ~ �������� y~x

# windows() -> �� �ϸ� ������â�� ����

# ������ â ���� �׷��� ???����
airquality$Wind_d <- cut_number(airquality$Wind, n=4)
windows()
ggplot(data= airquality)+
  geom_point(mapping=aes(x=Solar.R,y=Ozone))+
   facet_wrap(~Wind_d)

# +�� �׷��� ���ļ� �׸� �� ����
ggplot(data= mpg, mapping=aes(x=displ, y= hwy))+
 geom_poi?t(mapping=aes(color=drv),size=2)+
 geom_smooth(data=filter(mpg,drv=="4"), se=FALSE, color="red")

# se = TRUE�ϸ� �ŷڱ����� ǥ�õ�
ggplot(data= mpg, mapping=aes(x=displ, y= hwy))+
  geom_point(mapping=aes(color=drv),size=2)+
  geom_smooth(data=filter(mpg,?rv=="4"), se=TRUE, color="red")

#  geom_bar()�ϵ�, stat_count()�� �ϵ� ������ ����׷��� ����.
ggplot(data=mpg, mapping=aes(x=trans))+
  geom_bar()
ggplot(data=mpg, mapping=aes(x=trans))+
  stat_count()

# stat�Լ��� prop(����)�� �־ �������
ggplot(da?a=mpg)+
  geom_bar(mapping=aes(x=trans, y= stat(prop))) # �� ��� ���ο� ���� ������ ������ ���ͼ� �� 1��

# �� ��� ��ü ���� 1�� �Ͽ� �� �������� ������ ������ 
ggplot(data=mpg)+
  geom_bar(mapping=aes(x=trans,y=stat(prop), group=1)) # ���⼭�� trans�� ???ü��

# jitter�ָ� �� ���� �𿩼� ���� ���� ����� ����.
ggplot(data=mpg, mapping=aes(x=cty, y=hwy))+
  geom_point(position="jitter")

#������ ������ ��������ǥ 
CarSize<-cut(MASS::Cars93$EngineSize,  
             breaks=c(0, 1.6, 2.0, Inf),
             ?abels=c("Small","Mid","Large"))

ggplot(data.frame(CarSize), aes(x=CarSize)) +
  geom_bar(fill="tomato") + labs(x="")

install.packages('plotrix')
library(plotrix)

# �׾ƿø� ����׷���
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
