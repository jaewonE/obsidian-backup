#잔차
##### 잔차제곱합
잔차제곱합(residual sum of squares)이란 [[잔차]]의 제곱들의 합이다.

i번째 잔차($e_i$)는 $e_i = y_i - \hat{y_i}$이고 잔차제곱합(RSS)은 아래와 같이 정의한다.
$$RSS=\displaystyle\sum_{i=1}^n(y_i - \hat{y}_i)^2=e_1^2 + e_2^2 + ... + e^2_n$$

##### 단순선형회귀에서의 잔차제곱합
단순선형회귀에서의 잔차제곱합은 아래와 같이 풀어 작성될 수 있다. 
$$RSS=\displaystyle\sum_{i=1}^n(y_i - \hat{y}_i)^2=\displaystyle\sum^n_{i=1}\left(y_n-\hat{\beta}_0-\hat{\beta}_1 x_i\right)^2$$
##### 다중선형회귀에서의 잔차제곱합
다중선형회귀의 경우 여러개의 x값이 존재할 수 있기에 잔차제곱합은 아래와 같이 풀어 작성될 수도 있다.
$$RSS = \displaystyle\sum_{i=1}^n(y_i - \hat{y}_i)^2=\displaystyle\sum_{i=1}^n(y_i - \hat{\beta_0} - \hat{\beta_1}x_{i1} - \hat{\beta_2}x_{i2} - ... -\hat{\beta_p}x_{ip})^2$$

##### 상위문서
[[최소제곱법]]