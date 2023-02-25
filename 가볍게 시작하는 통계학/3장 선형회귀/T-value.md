##### 정의
t-value는 두 표본집단의 표본평균 차이를 비교할 때 수반되는 표준 오차(표본 추출에 의해 발생되는 오차)의 정도를 계산한 값으로 **차이 / 불확실도**를 통해 계산된다. 

$$t = \cfrac{두 \,표본 \,그룹 \,평균 \,차이}{두 \,그룹간 \,평균 \,차이에 \,대한 \,불확실도} = \cfrac{\bar{X}_1 - \bar{X}_2}{s_{\bar{X}_1 - \bar{X}_2}} = \cfrac{\bar{X}_1 - \bar{X}_2}{\sqrt{\cfrac{s^2_1}{n_1} + \cfrac{s_2^2}{n_2}}}$$
##### 변형
t-value는 실험 상의 가정이나 세팅에 따라 여러가지 변형이 존재하는데 핵심은 pooled standard deviation (혹은 pooled variance) 즉, 두 집단의 표준편차가 같다고 가정하고 하나의 표준편차 값으로 두 집단의 표준 편차를 대체하겠다는 것이다. 

###### n이 같고 표준편차가 같은 경우 t-value
두 표본 집단의 n의 수가 같고 ($n = n_1 = n_2$) 표준편차가 같은 경우 t-value는 아래와 같이 작성될 수 있다.
$$t = \cfrac{\bar{X}_1 - \bar{X}_2}{\sqrt{\cfrac{s^2_p}{n} + \cfrac{s_p^2}{n}}} = \cfrac{\bar{X}_1 - \bar{X}_2}{s_p\sqrt{\cfrac{2}{n}}}\,\,\,\,\,\,\,\,\,where\,\,s_p=\cfrac{s_1^2 + s_2^2}{2}$$

###### n이 다르지만 표준편차가 같은 경우 t-value
두 표본집단의 n이 다르지만($n_1 \neq n_2$) 표준편차가 같은 경우 t-value는 아래와 같이 작성될 수 있다.
$$t = \cfrac{\bar{X}_1 - \bar{X}_2}{\sqrt{\cfrac{s^2_p}{n_1} + \cfrac{s_p^2}{n_2}}} = \cfrac{\bar{X}_1 - \bar{X}_2}{s_p\sqrt{\cfrac{1}{n_1} + \cfrac{1}{n_2}}}\,\,\,\,\,\,\,\,\,where\,\,s_p=\cfrac{(n_1-1)s_1^2 + (n_2-1)s_2^2}{n_1 + n_2 - 2}$$


##### 성질
