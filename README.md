# 마크다운 기본 문법
> 기본적으로 옵시디언은 대부분의 기본 마크다운 문법을 지원한다.

## 1. Title
* 글머리: 1~6까지만 지원
```
# This is a H1
## This is a H2
### This is a H3
#### This is a H4
##### This is a H5
###### This is a H6
```
# This is a H1
## This is a H2
### This is a H3
#### This is a H4
##### This is a H5
###### This is a H6
####### This is a H7(지원하지 않음)


## 2. Headers

* 큰제목: 문서 제목
    ```
    This is an H1
    =============
    ```

This is an H1
==================
<br>
* 작은제목: 문서 부제목

    ```
    This is an H2
    -------------
    ```

This is an H2
--------------------
<br>

## 3. BlockQuote
이메일에서 사용하는 ```>``` 블럭인용문자를 이용한다.

```
> This is a blockqute.
```

> This is a blockqute.

이 안에서는 다른 마크다운 요소를 포함할 수 있다.
> ### This is a H3
> * List
>	```
>	code
>	```

## 4. 목록
### 순서있는 목록(번호)
순서있는 목록은 숫자와 점을 사용한다.
```
1. 첫번째
2. 두번째
3. 세번째
```
1. 첫번째
2. 두번째
3. 세번째

**현재까지는 어떤 번호를 입력해도 순서는 내림차순으로 정의된다.**
```
1. 첫번째
3. 세번째
2. 두번째
```
1. 첫번째
3. 세번째
2. 두번째

딱히 개선될 것 같지는 않다. 존 그루버가 신경안쓰고 있다고...

### 순서없는 목록(글머리 기호: `*`, `+`, `-` 지원)
```
* 빨강
  * 녹색
    * 파랑

+ 빨강
  + 녹색
    + 파랑

- 빨강
  - 녹색
    - 파랑
```
* 빨강
  * 녹색
    * 파랑

+ 빨강
  + 녹색
    + 파랑

- 빨강
  - 녹색
    - 파랑

혼합해서 사용하는 것도 가능하다(내가 선호하는 방식)

```
* 1단계
  - 2단계
    + 3단계
      + 4단계
```

* 1단계
  - 2단계
    + 3단계
      + 4단계

## 5. 코드
4개의 공백 또는 하나의 탭으로 들여쓰기를 만나면 변환되기 시작하여 들여쓰지 않은 행을 만날때까지 변환이 계속된다.

### 5.1. 코드 블럭(Block)
```
This is a normal paragraph:

    This is a code block.
    
end code block.
```

실제로 적용해보면,

적용예:

*****
This is a normal paragraph:

    This is a code block.

end code block.
*****

> 한줄 띄어쓰지(Enter) 않으면 인식이 제대로 안되는 문제가 발생한다(코드 블럭은 **블럭**이기에 줄내림해주어야 한다.)

```
This is a normal paragraph:
	This is a code block.
end code block.
```

적용예:

*****
This is a normal paragraph:
    This is a code block.
end code block.
*****

### 5.2. 코드 (HTML)
코드블럭은 다음과 같이 2가지 방식을 사용할 수 있습니다:

* `<pre><code>{code}</code></pre>` 이용방식

```
<pre>
<code>
public class BootSpringBootApplication {
  public static void main(String[] args) {
    System.out.println("Hello, Honeymon");
  }

}
</code>
</pre>
```

<pre>
<code>
public class BootSpringBootApplication {
  public static void main(String[] args) {
    System.out.println("Hello, Honeymon");
  }
}
</code>
</pre>

* 코드블럭코드("\```") 을 이용하는 방법

<pre>
<code>
```
public class BootSpringBootApplication {
  public static void main(String[] args) {
    System.out.println("Hello, Honeymon");
  }
}
```
</code>
</pre>

```
public class BootSpringBootApplication {
  public static void main(String[] args) {
    System.out.println("Hello, Honeymon");
  }
}
```

**깃헙**에서는 코드블럭코드("\```") 시작점에 사용하는 언어를 선언하여 [문법강조(Syntax highlighting)](https://docs.github.com/en/github/writing-on-github/creating-and-highlighting-code-blocks#syntax-highlighting)이 가능하다.

<pre>
<code>
```java
public class BootSpringBootApplication {
  public static void main(String[] args) {
    System.out.println("Hello, Honeymon");
  }
}
```
</code>
</pre>

```java
public class BootSpringBootApplication {
  public static void main(String[] args) {
    System.out.println("Hello, Honeymon");
  }
}
```


## 6. 수평선 ```<hr/>```
아래 줄은 모두 수평선을 만든다. 마크다운 문서를 미리보기로 출력할 때 *페이지 나누기* 용도로 많이 사용한다.

```
* * *

***

*****

- - -

---------------------------------------
```

* 적용예
* * *

***

*****

- - -

---------------------------------------

## 7. 링크
### 7.1 마크다운 링크 문법
* 참조링크
```
[link keyword][id]

[id]: URL "Optional Title here"

// code
Link: [Google][googlelink]

[googlelink]: https://google.com "Go google"
```

Link: [Google][googlelink]

[googlelink]: https://google.com "Go google"

* 외부링크
```
사용문법: [Title](link)
적용예: [Google](https://google.com, "google link")
```
Link: [Google](https://google.com, "google link")

* 자동연결
```
일반적인 URL 혹은 이메일주소인 경우 적절한 형식으로 링크를 형성한다.

* 외부링크: <http://example.com/>
* 이메일링크: <address@example.com>
```

* 외부링크: <http://example.com/>
* 이메일링크: <address@example.com>

### 7.2 옵시디언 링크 문법
옵시디언에서는 링크에 대한 확장적인 버전을 지원한다.
```
페이지 링크: [[PageName]]
페이지를 다른 이름으로 가져오기: [[PageName|alias page name]]
```

페이지 링크: [[F-value]]
페이지를 다른 이름으로 가져오기: [[F-value|F-값]]

> 옵시디언에서는 Ctrl(맥은 Commend) 키를 누른 채로 링크 위에 마우스를 Hover(올여두면)하면 작은 창으로 페이지 미리보기를 할 수 있다. (좌측 파일 리스트에서 파일에도 동일하게 작동한다.)

>  Ctrl(맥은 Commend) 키를 누른 채로 링크를 클릭하면 새로운 탭으로 페이지를 띄울 수 있다. (좌측 파일 리스트에서 파일에도 동일하게 작동한다.)


## 8. 강조
```
*single asterisks*
_single underscores_
**double asterisks**
__double underscores__
~~cancelline~~
```

* *single asterisks*
* _single underscores_
* **double asterisks**
* __double underscores__
* ~~cancelline~~


## 9. 이미지
### 9.1 마크다운 이미지 문법
```
![Alt text](/path/to/img.jpg)
![Alt text](/path/to/img.jpg "Optional title")
```
![석촌호수 러버덕](http://cfile6.uf.tistory.com/image/2426E646543C9B4532C7B0)
![석촌호수 러버덕](http://cfile6.uf.tistory.com/image/2426E646543C9B4532C7B0 "RubberDuck")

사이즈 조절 기능은 없기 때문에 ```<img width="" height=""></img>```를 이용한다.

예
```
<img src="/path/to/img.jpg" width="450px" height="300px" title="px(픽셀) 크기 설정" alt="RubberDuck"></img><br/>
<img src="/path/to/img.jpg" width="40%" height="30%" title="px(픽셀) 크기 설정" alt="RubberDuck"></img>
```

<img src="http://cfile6.uf.tistory.com/image/2426E646543C9B4532C7B0" width="450px" height="300px" title="px(픽셀) 크기 설정" alt="RubberDuck"/>
<img src="http://cfile6.uf.tistory.com/image/2426E646543C9B4532C7B0" width="40%" height="30%" title="%(비율) 크기 설정" alt="RubberDuck"/>

### 9.2 옵시디언 이미지 문법
```
로컬 이미지 파일 가져오기
![[Image file name]]

이미지 사이즈 지정(widthSize: int)
![[Image file name | widthSize ]]

```

로컬 이미지 파일 가져오기
![[f-value1.png]]

이미지 사이즈 지정(widthSize: int)
![[f-value1.png|500]]

## 10. 줄바꿈
3칸 이상 띄어쓰기(` `)를 하면 줄이 바뀐다.

```
줄 바꿈을 하기 위해서는 문장 마지막에서 3칸이상을 띄어쓰기해야 한다. 
이렇게(**이 방법은 옵시디언에서는 사용할 수 없다**)

옵시디언에서 줄 바꿈이 필요할 때는 br 꺽쇠기호를 입력한 뒤 엔터를 누르면 된다.
line1
<br>
line2
```
* 적용예
줄 바꿈을 하기 위해서는 문장 마지막에서 3칸이상을 띄어쓰기해야 한다. 
이렇게(**이 방법은 옵시디언에서는 사용할 수 없다**)

옵시디언에서 줄 바꿈이 필요할 때는 br 꺽쇠기호를 입력한 뒤 엔터를 누르면 된다.
line1
<br>
line2

***** 


페이지 임베디드: ![[PageName]]
페이지의 제목 블록 일부 가져오기: ![[PageName#titleEx]]