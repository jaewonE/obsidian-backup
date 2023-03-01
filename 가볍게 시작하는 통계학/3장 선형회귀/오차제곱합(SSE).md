Explained sum of squares으로 오차제곱합이라고 부르고 약어로 SSE로 표현한다.
$$SSE=\displaystyle\sum^n_{i=1}(\hat{y_i}-\bar{y})^2$$
<br>
아래와 같이 n개의 데이터를 m개의 그룹으로 나누었다고 할 때 오차제곱합을 아래와 같이 표현될 수도 있다.
![[분산분석-분산의구성.png]]
$$\sum_{i=1}^m \sum_{j=1}^{n_i}\left(y_{i, j}-\bar{y_i}\right)^2$$


또한 [[집단내 제곱합(SSW)]]에서 [[집단내 회귀제곱합(SSRW)]]를 빼서 구할 수도 있다.
$$SSE=SSW-SSRW$$


> 문서에 따라 SSE와 SSR를 혼용하여 사용한다. 맥락을 통해 해당 문서가 오차제곱합을 SSE로 표현하였는지 SSR로 표현하였는지 확인해야 한다. 