평균제곱오차(MSE: mean squared error), 평균오차제곱합이라고도 부르며 [[오차제곱합(SSE)]]을 표준화한 개념이다.

 $M S E=\frac{1}{n} \sum_{i=1}^n\left(y_i-\hat{f}\left(x_i\right)\right)^2$
 
MSE: 실제값과의 오차 제곱의 평균 (여기서, $\hat{f}(x_i)$는 i번째 관측치에 대한 예측값이다.)


기대 검정 MSE는 아주 큰 수의 훈련자료들을 사용하여 $f$를 반복적으로 추정하고 각각을 $x_0$에서 검정했을 경우 얻어지는 검정 MSE의 평균을 의미한다. 

전체 기대 검정 MSE는 모든 $x_0$에 대하여 평균하여 계산함으로  $E\left(y_0-\hat{f}\left(x_0\right)\right)^2$으로 정의되며 아래와 같이 구할 수 있다.$E\left(y_0-\hat{f}\left(x_0\right)\right)^2=\operatorname{Var}\left(\hat{f}\left(x_0\right)\right)+\left[\operatorname{Bias}\left(\hat{f}\left(x_0\right)\right)\right]^2+\operatorname{Var}(\epsilon)$
$Bias$는 제곱 편향, $Var$은 분산이다.

기대 검정 MSE는 아래와 같다.

$Ave(y_0-\hat{f}(x_0))^2$ 