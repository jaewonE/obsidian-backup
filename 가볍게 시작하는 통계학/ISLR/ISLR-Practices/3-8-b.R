#Auto 데이터셋으로부터 최소제곱회귀선을 구해 scatter plot을 그리고 그래프 이름을 설정
plot(mpg~horsepower,main= "Scatter plot of mpg & horsepower", data=Auto)

#회귀선을 추가
abline(lm(mpg~horsepower, data=Auto), lwd =3, col ="red")
