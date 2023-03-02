##### 종류: type=
* Default: type="p", 점 그래프
* 종류
	*   "p": 점 (points) 그래프를 그립니다.
	-   "l": 선 (line) 그래프를 그립니다.
	-   "b": 점과 선을 함께 그립니다.
	-   "o": "b"와 동일하지만, 점을 선 위에 그립니다.
	-   "h": 수직선 (histogram)을 그립니다.
	-   "s": 계단 모양 (stepwise) 그래프를 그립니다.
	-   "S": "s"와 유사하지만, 끝점에서 수평선을 그립니다.
	-   "n": 그래프를 그리지 않습니다.
* 예시
```
# 예시 데이터 생성
x <- 1:10
y <- c(2, 5, 6, 8, 9, 12, 15, 17, 20, 22)

# 그래프 출력 옵션 조정 (한 화면을 2행 4열로 나누어 8개의 그래프 출력)
par(mfrow=c(2, 4))

# "p": 점 그래프
plot(x, y, type = "p", main = "Example plot with points")

# "l": 선 그래프
plot(x, y, type = "l", main = "Example plot with lines")

# "b": 점과 선 그래프
plot(x, y, type = "b", main = "Example plot with both")

# "o": 점과 선 그래프 (점 위에 선 그림)
plot(x, y, type = "o", main = "Example plot with overplotted")

# "h": 수직선 그래프
plot(x, type = "h", main = "Example plot with histogram")

# "s": 계단 모양 그래프
plot(x, y, type = "s", main = "Example plot with steps")

# "S": 계단 모양 그래프 (마지막 지점에서 수평선 그림)
plot(x, y, type = "S", main = "Example plot with final horizontal")

# "n": 그래프 그리지 않음
plot(x, y, type = "n", main = "Example plot with nothing")

```
![[Pasted image 20230303084138.png]]


##### 기호: pch=
* Default: pch=1, 속이 빈 원 모양
* 종류
![[Pasted image 20230303082444.jpg]]
* 예시
```
## specifying character directly
par(mfrow = c(1,3))
plot(MPG.highway ~ Weight, data = Cars93, pch = '$', main = "pch = '$' ")
plot(MPG.highway ~ Weight, data = Cars93, pch = '%', main = "pch = '%' ")
plot(MPG.highway ~ Weight, data = Cars93, pch = '*', main = "pch = '*' ")
```

![[Pasted image 20230303082448.png]]
* pch = '$', pch = '%' 처럼 '기호'를 직접 pch 다음에 입력해도 됨

##### 기호의 크기: cex=
* Default: cex=1, cex 다음에 입력하는 숫자는 디폴트 대비 상대적인 크기
* 예시
```
## symbol size : cex
par(mfrow = c(2, 3)) # plot display by 2 row and 3 column
plot(MPG.highway ~ Weight, data = Cars93, pch = 19, cex = 0.5, main = "cex = 0.5")
plot(MPG.highway ~ Weight, data = Cars93, pch = 19, cex = 1, main = "cex = 1 (default)")
plot(MPG.highway ~ Weight, data = Cars93, pch = 19, cex = 1.5, main = "cex = 1.5")
plot(MPG.highway ~ Weight, data = Cars93, pch = 19, cex = 2, main = "cex = 2")
plot(MPG.highway ~ Weight, data = Cars93, pch = 19, cex = 3, main = "cex = 3")
plot(MPG.highway ~ Weight, data = Cars93, pch = 19, cex = 4, main = "cex = 4")
```
![[Pasted image 20230303082900.png]]


##### 선 유형: lty=
* Default: lty=1, 실선(solid)
* 종류
![[Pasted image 20230303083148.png]]
* 예시
```
## line types : lty

# ordering by Weight
Cars93_order <- Cars93[order(Cars93$Weight),]

par(mfrow = c(2, 3)) # plot layout by 2 row and 3 column
plot(MPG.highway ~ Weight, data = Cars93_order, type = "l", lty = 1, main = "lty = 1")
plot(MPG.highway ~ Weight, data = Cars93_order, type = "l", lty = 2, main = "lty = 2")
plot(MPG.highway ~ Weight, data = Cars93_order, type = "l", lty = 3, main = "lty = 3")
plot(MPG.highway ~ Weight, data = Cars93_order, type = "l", lty = 4, main = "lty = 4")
plot(MPG.highway ~ Weight, data = Cars93_order, type = "l", lty = 5, main = "lty = 5")
plot(MPG.highway ~ Weight, data = Cars93_order, type = "l", lty = 6, main = "lty = 6")
```
![[Pasted image 20230303083309.png]]

##### 선 두께: lwd=
* Default: lwd=1, 이 숫자를 기준으로 선 두깨가 배수가 됨
* 예시
```
## line width : lwd

# ordering by Weight
Cars93_order <- Cars93[order(Cars93$Weight),]

par(mfrow = c(2, 3)) # plot display by 2 row and 3 column
plot(MPG.highway ~ Weight, data = Cars93_order, type = "l", lwd = 0.5, main = "lwd = 0.5")
plot(MPG.highway ~ Weight, data = Cars93_order, type = "l", lwd = 1, main = "lwd = 1 (default)")
plot(MPG.highway ~ Weight, data = Cars93_order, type = "l", lwd = 2, main = "lwd = 2")
plot(MPG.highway ~ Weight, data = Cars93_order, type = "l", lwd = 3, main = "lwd = 3")
plot(MPG.highway ~ Weight, data = Cars93_order, type = "l", lwd = 4, main = "lwd = 4")
plot(MPG.highway ~ Weight, data = Cars93_order, type = "l", lwd = 5, main = "lwd = 5")
```
![[Pasted image 20230303083651.png]]

##### 현재 그래프 모수 확인: par()