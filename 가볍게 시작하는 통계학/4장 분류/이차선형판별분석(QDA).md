[[선형판별분석(LDA)]]은 각 클래스의 관측치들이 클래스 특정 평균벡터와 K개 클래스 모두에 공통인 공분산행렬($\boldsymbol{\Sigma}$)을 가정한다. 하지만 많은 경우에서 K개 클래스는 공통인 공분산행렬을 가지지 않고 각 클래스가 자체 공분산행렬을 가지기에 모델 적합에 한계가 있다. 여기서 제안된 모델이 이차선형판별분석(QDA) 모델이다.

이차선형판별분석(QDA: Quadratic discriminant Analysis) 각 클래스가 자체 공분산행렬을 갖는다고 가정한 LDA이다. 

>QDA는 LDA에서 파생된 방법으로 LDA와 동일하게 가우스 분포를 따른다고 가정한 뒤, 파라미터들에 대한 추정치를 베이즈 정리에 대입하여 예측한다. 하지만 LDA와 달리 QDA는 각 클래스가 자체 공분산행렬을 갖는다고 가정하는 것이다. 즉, k번째 클래스의 관측치는 $X \sim N(\mu_k,\boldsymbol{\Sigma}_k)$ 형태라고 가정한다.

QDA의 판별함수는 LDA 판별함수의 공통된 공분산행렬 자리에 각각의 공분산행렬 값을 대입하여 아래와 같이 구성된다.
$$\begin{aligned} \delta_k(x) & =-\frac{1}{2}\left(x-\mu_k\right)^T \boldsymbol{\Sigma}_k^{-1}\left(x-\mu_k\right)-\frac{1}{2} \log \left|\boldsymbol{\Sigma}_k\right|+\log \pi_k \\ & =-\frac{1}{2} x^T \boldsymbol{\Sigma}_k^{-1} x+x^T \boldsymbol{\Sigma}_k^{-1} \mu_k-\frac{1}{2} \mu_k^T \boldsymbol{\Sigma}_k^{-1} \mu_k-\frac{1}{2} \log \left|\boldsymbol{\Sigma}_k\right|+\log \pi_k\end{aligned}$$
LDA와 동일하게 QDA 분류기는 아래 판별함수가 최대가 되는 클래스에 관측치 $X=x$ 를 할당한다.

>QDA 판별함수에서 x는 이차함수처럼 보이기에 **이차**선형판별분석 이라고 부른다.

### LDA vs QDA
그렇다면 QDA가 항상 LDA 보다 좋은 성능을 보이는가? 상황에 따라 적합한 모델이 다르다. 즉, **LDA와 QDA 결정경계가 얼마나 베이즈 결정경계와 유사한지**에 따라 더 좋은 성능을 내는 모델이 결정된다. 아래 이미지로 보자.
![[4.9.jpg]]
<왼쪽은 공통의 공분산행렬을 가지는 2-클래스 문제이고 오른쪽은 서로다른 공분산행렬을 가지는 2-클래스 문제이다. 보라색 파선은 베이즈 결정경계, 검은색 점선은 LDA 결정경계, 초록색 실선은 QDA 결정경계이다.>

왼쪽의 경우 LDA가 베이즈 결정경계에 가까워(LDA와 베이즈 모두 선형) LDA의 성능이 QDA보다 좋다.
하지만 오른쪽의 경우 QDA가 베이즈 결정경계에 가까워(QDA와 베이즈 모두 비선형) QDA의 성능이 LDA보다 좋다. 