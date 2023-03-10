최대 우도 추정법(Maximum Likelihood Estimation, 약자로 MLE)은 [[우도 함수(Likelihood function)]]를 최대화하는 파라미터 값을 추정한다.

### 가정
최대가 되는 우도 추정하기 위해서는 한 가지의 가정이 필요하다. 
우리가 관찰한 관측치가 서로 _i.i.d(independent identically distributed)_ 하다는 것으로 관측치는 같은 분포에서 각 시행마다 독립적으로 발생하였다는 의미이다.

이 가정을 통해 우도를 각 관측치(들이 독립적이라고 가정했기)에 우도들의 곱으로 나타낼 수 있다.
$$L(\theta \mid X = x_1, x_2, ..., x_n) = L(\theta \mid X = x_1) * L(\theta \mid X = x_2) *...* L(\theta \mid X = x_n)$$

### 계산
우도가 최대로 되는 값을 찾는 것은 간단하다. 위 가정하에 우도를 $\theta$(모수)에 대해 편미분하였을 때 그 값이 0이 되는  $\theta$(모수)가 가장 적합한 모수가 되는 것이다.

단, 주의사항이 있다. 모수가 최소화 되는 지점 또한 편미분한 값이 0이다. 따라서 우도 함수가  $\theta$(모수)에 대해 concave(볼록함수)인지 확인하여 최소화 되는 지점이 아닌 최대화 되는 지점임을 확인해야 한다. 수학적으로 2차 미분 시 모든 범위에 대해 미분함수가 0이하의 값을 가지는지 확인함을 통해 이를 확인 할 수 있다. 
$$\hat{\theta} = argmax_{\theta}\,L(\,\theta;X\,) =\frac{\partial}{\partial \theta}L(\theta|x) = \prod_{i=1}^{n}\frac{\partial}{\partial\theta} P(x_i|\theta)$$
* 단, 2차 미분 시 모든 범위에 대해 미분함수가 0이하의 값을 가지는지 확인해야 한다.
<br>

각 우도의 곱이 최대가 되는 값을 구하는 것이기에 양 변에 로그를 취하여 [[로그 우도]]의 합이 최대가 되는 값을 구하는 것으로 변경하여도 된다. 로그 우도의 합으로 나타내면 곱이 아닌 합으로서 표현되어 계산은 더 간단해진다.

$$\hat{\theta} = argmax_{\theta}\,L(\,\theta;X\,) = \frac{\partial}{\partial \theta}\log P(x|\theta) = \sum_{i=1}^{n}\frac{\partial}{\partial\theta}\log P(x_i|\theta) = 0$$
* 단, 2차 미분 시 모든 범위에 대해 미분함수가 0이하의 값을 가지는지 확인해야 한다.