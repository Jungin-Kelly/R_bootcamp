#na.omit(df) -> 결측치 제거
#sum(is.na(열)) -> NAN 값 보기 
> x<- c(7,8,9,10)
> y<- c(1,2,3,4)
> x+y
[1]  8 10 12 14
> x-y
[1] 6 6 6 6
# 계산시키면 같은 위치에 있는 벡터끼리 계산됨.

#벡터 순환법칙
> c(1,2,3,4,5,6) + c(1,2,3)
[1] 2 4 6 5 7 9
# 길이가 안맞???면 순환되어 계산됨.

#NA이가 있으면 mean, max 다 못구함

# 벡터비교 -> 대응되는 원소끼리 함.
> x<-c(3,8,2)
> y<-c(5,4,2)
> x>y
[1] FALSE  TRUE FALSE

> x<- 1:5      # x = 1,2,3,4,5 일때
> x %in% c(2,4) # x 안에 2 or 4 가 있는가 
[1] FALSE  TRUE FALSE  TRUE?FALSE
x >= 4
[1] FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE  TRUE
[10] FALSE
> sum(x>=4)
[1] 3   # x>=4면 FFFTT라 00011

x
[1]  1.9  0.8  1.1  0.1 -0.1  4.4  4.6  1.6  5.5  3.4
> order(x)   # 오름차순으로 index 번호알려줌
[1]  5  4  2  3  8  1 10  6  ?  9

# x 벡터에 17 16 20 24 22 15 21 18 넣기
x <- c(17 16 20 24 22 15 21 18)

# x 벡터의 길이
length(x)

# x의 맨 마지막 값 출력
x[length(x)]

# y에 10.4,5.6,3.1,6.4,9.6,7.8,12.1 넣기
y <- c(10.4,5.6,3.1,6.4,9.6,7.8,12.1)

# 벡터 y 데이터 개수 
length(y)

? 벡터 y에 입력된 데이터 중 마지막에서 두 번째 값
y[length(y)-2]
[1] 9.6

# 데이터 파일 불러오기
df <-read.table('데이터명.txt', header=TRUE, sep=",")

# 특정 데이터 떼내기
변수 <- subset(df, 조건 df$컬럼=='00')

# sd_data를 dataset의 이름 별로 구분하기
sd_?ata_i <- subset(sd_data, sd_data$dataset =='i')
sd_data_j <- subset(sd_data, sd_data$dataset =='j')
sd_data_k <- subset(sd_data, sd_data$dataset =='k')
sd_data_l <- subset(sd_data, sd_data$dataset =='l')
sd_data_m <- subset(sd_data, sd_data$dataset =='m')
?
# dataset별로 구분된 sd_data 계산 값 새 변수에 저장하기
resultA<-c(mean(sd_data_a$x),sd(sd_data_a$x),mean(sd_data_a$y),sd(sd_data_a$y))
resultB<-c(mean(sd_data_b$x),sd(sd_data_b$x),mean(sd_data_b$y),sd(sd_data_b$y))
resultC<-c(mean(sd_data_c$x),sd(sd_data?c$x),mean(sd_data_c$y),sd(sd_data_c$y))
resultD<-c(mean(sd_data_d$x),sd(sd_data_d$x),mean(sd_data_d$y),sd(sd_data_d$y))
resultE<-c(mean(sd_data_e$x),sd(sd_data_e$x),mean(sd_data_e$y),sd(sd_data_e$y))
resultF<-c(mean(sd_data_f$x),sd(sd_data_f$x),mean(sd_dat?_f$y),sd(sd_data_f$y))
resultG<-c(mean(sd_data_g$x),sd(sd_data_g$x),mean(sd_data_g$y),sd(sd_data_g$y))
resultH<-c(mean(sd_data_h$x),sd(sd_data_h$x),mean(sd_data_h$y),sd(sd_data_h$y))
resultI<-c(mean(sd_data_i$x),sd(sd_data_i$x),mean(sd_data_i$y),sd(sd_data?i$y))
resultJ<-c(mean(sd_data_j$x),sd(sd_data_j$x),mean(sd_data_j$y),sd(sd_data_j$y))
resultK<-c(mean(sd_data_k$x),sd(sd_data_k$x),mean(sd_data_k$y),sd(sd_data_k$y))
resultL<-c(mean(sd_data_l$x),sd(sd_data_l$x),mean(sd_data_l$y),sd(sd_data_l$y))
resultM<-c?mean(sd_data_m$x),sd(sd_data_m$x),mean(sd_data_m$y),sd(sd_data_m$y))

# 각 변수들을 행렬로 결합하기
result <- cbind(resultA,resultB, resultC,resultD,resultE,resultF, resultG, resultH, resultI,resultJ,resultK,resultL,resultM)

#factor -> label(범주)를 지정???주는 함수
gender<-c("Male", "Female", "Female")
gender_f<-factor(gender)
gender_f
[1] Male   Female Female
Levels: Female Male
#Levels는 요인으로 변환 후 알파벳 순으로 Levels를 결정

> x<-c(1,3,2,2,1,4)
> factor(x)   #얘를 같은 애끼리 묶어서 보여줌
[1] 1 3?2 2 1 4
Levels: 1 2 3 4

# factor(변수, labels=c("범주1","범주2","범주3","범주4"....))
> factor(x,labels=c("A","B","C","D"))  # 같은 애끼리 묶어진 애를 지정한 범주명으로 표시
[1] A C B B A D
Levels: A B C D

income<-c("Low","Medium","High","Medium")
# orde? = True 하면 순서형 factor로 인식
> factor(income, order=TRUE)
[1] Low    Medium High   Medium  # but 설정x -> 알파벳 순으로 배열됨. 
# order=TRUE, levels=c("Low","Medium","High" => 이걸 통해 오름차순으로 순서를 메길수 있
factor(income, order=TRUE, levels=?("Low","Medium","High")) 

# 데이터 불러올때 stringsAsFactors = FALSE 로하면 문자형인 애들 범주화x
data <- read.csv("csv_data.csv", sep=",", stringsAsFactors = FALSE)
> class(data$gender)    #  stringsAsFactors = FALSE 
[1] "character"         #이렇게 하면?class 와 typeof 다 character나옴
> typeof(data$gender)
[1] "character"

# 데이터 불러올때 stringsAsFactors = TRUE (아무것도 안씀 b/c 기본 디폴트가 TRUE임)
data2 <- read.csv("csv_data.csv", sep=",")
> typeof(data2$gender)     # stringsAsFactors = TRUE 
[1] ?integer"              # 이렇게 하면 문자형은 범주화 돼서
> class(data2$gender)      # integer 와factor 취급됨.
[1] "factor

# table(df or df$컬럼선택 ) -> 테이블로 표시해줌.

# 연속형 데이터 범주나누기
> x <- c(80,88,90,93,95,94,100,78,65)
> x_1 <- (x>=0) ? (x>=80) + (x>=90)    #x의 범위를 3부분으로 나눔
> x_1
[1] 2 2 3 3 3 3 3 1 1                  # 1,2,3으로 나눠져서 표시됨.
> cat.x <- factor(x_1,labels=c("A","B","C"))  # 각 1,2,3에 새로운 범주명 A,B,C줌
> cat.x                   
[1] B B C C C C C A A
Lev?ls: A B C

# cut(): 연속형 변수 -> 범주형 만들 때 (사용법이 복잡 => 쓸 때 찾아볼 것 )

# 행렬만들기
# 행렬명 <-matrix(데이터, nrow= 행수, ncol= 열수) / 조건 안주면 열기준
> x <- matrix(1:12, nrow=3)
> x
[,1] [,2] [,3] [,4]
[1,]    1    4    7   10
[2,]    ?    5    8   11
[3,]    3    6    9   12

# cbind()-> 열 단위로 묶어서 행렬 생성
# rbind() -> 행 단위로 묶어서 행렬 생성
> x1 <- 1:3
> x2 <- 4:6
> (A <- cbind(x1,x2))
x1 x2
[1,]  1  4
[2,]  2  5
[3,]  3  6
> (B <- rbind(x1,x2))
[,1] [,2] [,3]
x1    1    2 ?  3
x2    4    5    6




# dim(데이터 명) <- c(행의 개수, 열의 개수)
> x<- 1:12
> dim(x) <-c(3,4)
> x
     [,1] [,2] [,3] [,4]
[1,]    1    4    7   10
[2,]    2    5    8   11
[3,]    3    6    9   12




