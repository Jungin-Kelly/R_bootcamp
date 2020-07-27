library(tidyverse)
# mtcars는 원래 있는 데이터 / tibble로 데이터 형태 바꾸기
mtcars_t <-as_tibble(mtcars)
# 데이터에 model명 추가하기
mtcarss <- rownames_to_column(mtcars, var="Model_names")

#데이터형식 보기
class(데이터명)

# 행렬을 데이터 프레임으로 바???기
as.data.frame(데이터명)

# 데이터추출하기 (train, test 데이터 뽑을 때 사용할 수 o)
sample_n(데이터명, size= 행 개수)
sample_sample_frac(데이터명, size= 0.몇 비율)

# set.seed(1234)
얠 하면 항상 어디서 뽑든 동일하게 뽑힘

# top_n(데이터명, n=개수, wt=열???름)
# n이 음수면 가장 작은 값부터 n개 추출/ 
# n이 양수면 가장 큰 값부터 n개 추출

# arrange(데이터명, 제1 정렬기준 변수, 제2 정렬기준)
# 오름차순이 디폴트값, 내림차순 desc()

# arrange(데이터명, !is.na(컬럼명))
# 이렇게 하면 na이가 아닌 애가 아니다 (flase???선) 즉 na값이 먼저옴



