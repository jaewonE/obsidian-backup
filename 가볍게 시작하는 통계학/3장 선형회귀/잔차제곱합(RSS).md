#잔차
##### 잔차제곱합
잔차제곱합(residual sum of squares)이란 [[잔차]]의 제곱들의 합이다.

i번째 잔차($e_i$)는 $e_i = y_i - \hat{y_i}$이고 잔차제곱합(RSS)은 아래와 같이 정의한다.
$$RSS=\displaystyle\sum_{i=1}^n(y_i - \hat{y}_i)^2=e_1^2 + e_2^2 + ... + e^2_n$$
풀어 작성하여 아래와 같이 쓸 수 있다. 
$$\operatorname{RSS}=\left(y_1-\hat{\beta}_0-\hat{\beta}_1 x_1\right)^2+\left(y_2-\hat{\beta}_0-\hat{\beta}_1 x_2\right)^2+\ldots+\left(y_n-\hat{\beta}_0-\hat{\beta}_1 x_n\right)^2$$

다중선형회귀의 경우 여러개의 x값이 존재할 수 있기에 아래와 같이 작성될 수도 있다.
$$RSS=\displaystyle\sum_{i=1}^n(y_i - \hat{y}_i)^2 = \displaystyle\sum_{i=1}^n()$$

##### 상위문서
[[최소제곱법]]