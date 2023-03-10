AIC(Akaike information criterion)은 [[최대 우도 추정법(MLE)]]으로 구한 [[우도 함수(Likelihood function)]]와 파라미터 수에 기반하여 통계 모델의 상대적인 품질을 평가하는 기준이다. AIC는 [[우도 함수(Likelihood function)]]값이 클수록 모델이 잘 적합하다고 판단하지만, 그와 동시에 복잡도를 고려하여 불필요한 파라미터가 적은 모델을 선호한다. 

### 식
$$\mathrm {AIC} = - 2\ln \mathcal {L} + 2k $$
L: 최대 우도 함수, k: 모델의 파라메터
최대 우도 함수는 주어진 데이터가 관측될 확률을 나타내는 함수로, 이 값이 클수록 데이터에 잘 적합한다고 볼 수 있다. 
즉, -2/ln{L}은 모델의 적합도를 의미하며, 이 값은 작을수록 좋다.

단, 적합도만으로 모델을 평가할 수는 없다. 파라미터 수가 많은 모델일수록 적합도는 높아지나, 복잡하고 과적합(Overfitting) 될 가능성이 높으므로, AIC에서는 2k라는 패널티 항을 추가한다. k는 모델의 파라미터 수로, 이 값이 클수록 복잡한 모델이라고 할 수 있다. 
즉, 2k는 모델의 복잡도를 의미하며, 이 값은 작을수록 좋다. 

### 예시
제품강도는 온도의 1승에 비례해서 변화하는가?

```
# 제품강도와 온도(의２승，３승도)의 데이터

toughness = c(163, 156, 149, 179, 188, 199, 176, 169, 183, 151, 147, 132, 85, 77, 65);

temperature = c(rep(20,3), rep(30,3), rep(40,3), rep(50,3), rep(60,3)); 
t2 = temperature^2; 
t3 = temperature^3;

plot(temperature, toughness)

# 다항식에 의한 회귀분석（AIC는 작을수록 좋다.）

res1 = lm(toughness ~ temperature);  
AIC(res1)
# [1] 147.9837

res2 = lm(toughness ~ temperature + t2); 
AIC(res2); 
# [1] 112.0125

res3 = lm(toughness ~ temperature + t2 + t3); 
AIC(res3)
# [1] 113.47

# AIC의 값은 2차식 회귀 모델일 때 제일 작다. 즉, 제일 적합한 모델은 2차식 회귀 모델이다.
curve(res2$coeff[1] + res2$coeff[2] * x + res2$coeff[3] * x^2, 20, 60, add=T)
```
![[Pasted image 20230310123331.png]]
### 예시2, 최적 AIC 자동탐색
```
# 랜덤 데이터 생성

x = -10:10; 
x2 = x^2; 
x3=x^3; 
x4=x^4;

y = 1 + x + x^3 + 100 * rnorm(length(x))

# 다항식 회귀분석（step함수로 최소 AIC 자동탐색）

res = lm(y~x + x2 + x3 + x4);
best = step(res)
best$coeff

#  (Intercept)             x             x3
# -4.5769655      14.9824062      0.8183213

# 구한 모델 플로팅
plot(x, y)
curve(best$coeff[1] + best$coeff[2] * x + best$coeff[3] * x^3, -10, 10, add=T)
```
![[Pasted image 20230310123715.png]]