library(tidyverse)
# mtcars�� ���� �ִ� ������ / tibble�� ������ ���� �ٲٱ�
mtcars_t <-as_tibble(mtcars)
# �����Ϳ� model�� �߰��ϱ�
mtcarss <- rownames_to_column(mtcars, var="Model_names")

#���������� ����
class(�����͸�)

# ����� ������ ���������� ��???��
as.data.frame(�����͸�)

# �����������ϱ� (train, test ������ ���� �� ����� �� o)
sample_n(�����͸�, size= �� ����)
sample_sample_frac(�����͸�, size= 0.�� ����)

# set.seed(1234)
�� �ϸ� �׻� ��� �̵� �����ϰ� ����

# top_n(�����͸�, n=����, wt=��???��)
# n�� ������ ���� ���� ������ n�� ����/ 
# n�� ����� ���� ū ������ n�� ����

# arrange(�����͸�, ��1 ���ı��� ����, ��2 ���ı���)
# ���������� ����Ʈ��, �������� desc()

# arrange(�����͸�, !is.na(�÷���))
# �̷��� �ϸ� na�̰� �ƴ� �ְ� �ƴϴ� (flase???��) �� na���� ������


