#ISLR 패키지를 불러온다
library(ISLR)

#Auto 데이터셋을 불러온다
data(Auto)

#lm()함수를 사용해서 mpg(연비)와 horsepower(마력) 사이의 선형회귀 모델을 만들고, data 매개변수를 사용하여 Auto 데이터셋을 지정하여, 모델을 mpg_power에 저장한다.
mpg_power <- lm(mpg~horsepower, data=Auto)

#summary()함수를 사용하여 mpg_power 모델에 대한 요약 통계를 출력한다.
summary(mpg_power)

#Q-Q plot를 그리기 위해 residuals() 함수를 사용해 모델에서 잔차를 추출한다.
residuals <- residuals(mpg_power)

# Q-Q plot 그리기
qqnorm(residuals)
qqline(residuals)

#모델의 SEE를 출력한다.
summary(mpg_power)$sigma

#mpg의 평균을 계산한다. na.rm=T옵션은 결측값을 제외하는 옵션이다.
mean(Auto$mpg, na.rm=T)

#평균mpg값에 대한 백분률 오차로 변환(RSE/mean)
4.906/mean(Auto$mpg, na.rm=T) * 100.0

#horsepower가 98일 경우 모델의 mpg값의 예측구간과 95%신뢰구간
predict(mpg_power, data.frame(horsepower=c(98)), interval='prediction')
predict(mpg_power, data.frame(horsepower=c(98)), interval='confidence')