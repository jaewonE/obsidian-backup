로지스틱 회귀(Logistic Regression)는 반응변수 Y를 직접 모델링하지 않고 Y가 특정 범주에 속하는 확률을 모델링 한다. 이에 주어진 **설명변수 X에 대해 반응변수 Y의 조건부분포(conditional distribution)를 직접적으로 모델링**한다 라고도 부른다. 

### 선형회귀모델의 한계
![[선형회귀의 한계]]


### 로지스틱 회귀
위와 같은 [[선형회귀의 한계]]를 극복하고자 탄생한 것이 로지스틱 회귀 모델이다. 

선형회귀모델의 가장 큰 문제이자 한계점은 **"결과값(반응변수)의 값이 $0<Y<1$의 범위를 만족하지 않는다"** 는 것이다. 이 문제를 해결하기 위해 모든 X 값에 대해 0과 1 사이의 값을 제공하는 [[시그모이드 함수]], 그 중에서도 [[로지스틱함수]]를 이용하여 회귀 모델을 작성하였는데 이것이 바로 **로지스틱 회귀**이다.

![[로지스틱함수|no-h]]


### 로지스틱 회귀계수의 추정
위의 로짓변환 과정을 통해 로지스틱 함수를 $log(Odds)=\beta_0 + \beta_1X$와 같이 간단한 선형 함수로 재구성하였다. 이에 [[최대 우도 추정법(MLE)]]을 이용하여 관측값을 통해 모수의 추정치를 도출 할 수 있다. 이 과정을 로지스틱 회귀계수의 추정이라고 부른다. 

### 로지스틱 회귀계수 추정의 해석
로지스틱 회귀계수의 추정 과정을 통해 다음과 같은 결과를 얻었다고 가정하자. 
> 사용된 로지스틱 회귀함수의 형태는 $p(y=1|x) = {\frac {e^{\beta \centerdot X_{i}}}{1+e^{\beta \centerdot X_{i}}}}$와 같다.

|           | 계수     | 표준오차 | z-통계량 | p-값    |
| --------- | -------- | -------- | -------- | ------- |
| $\hat{\beta_0}$ | -10.6513 | 0.3612   | -29.5    | <0.0001 |
| $\hat{\beta_1}$ | 0.0055   | 0.0002   | 24.9     | <0.0001        |
<로지스틱 회귀모델의 추정된 계수>

* 한 유닛(단위) 증가하면 로그로 표현한 $\hat{\beta_1}$(로그 승산)의 확률은 0.0055 유닛 증가한다. 
	>위 로지스틱 함수를 로짓 변환을 통해 선형적으로 변환하였을 때 $log(Odds)=\beta_0 + \beta_1X$ 로 표현할 수 있기 때문이다.
* $\hat{\beta_1}$의 z-통계량의 값이 24.9로 크다. 이는 귀무가설을 기각할 수 없다는 증거가 된다. 
	> 귀무가설 $H_0$: $\beta_1$의 값은 0이다 : X와 Y는 상관관계가 없다.
	> 대립가설 $H_1$: $\beta_1$의 값은 0이 아니다 : X와 Y는 상관관계가 있다.
* $\hat{\beta_1}$의 p-값이 작음으로 귀무가설을 기각할 수 없다. 


### 로지스틱 회귀모델을 이용한 예측
추정된 계수가 있다면 예측을 수행하는 것은 간단하다. 
위의 **로지스틱 회귀계수 추정의 해석** 단락에서 사용하였던 표를 예시로 하여 추정된 로지스틱 회귀모델을 이용한 예측 확률은 아래와 같이 계산될 수 있다.(X가 1000이라고 가정)
$$\hat{p}(X)=\frac{e^{\hat{\beta}_0+\hat{\beta}_1 X}}{1+e^{\hat{\beta}_0+\hat{\beta}_1 X}}=\frac{e^{-10.6513+0.0055 \times 1,000}}{1+e^{-10.6513+0.0055 \times 1,000}}=0.00576$$
X가 1000일 때 추정된 확률값은 0.00576 약 0.5% 확률을 가짐을 확인 할 수 있다. 만약 위 식에서 X가 2000일 경우에 확률은 약 56.6%가 됨을 알 수 있다.


### 다중 로지스틱 회귀
![[다중 로지스틱 회귀]]