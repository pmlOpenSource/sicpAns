# Question
Exercise 1.5.

# Answer
## Codes
```scheme
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))
```
## Running
```
1 ]=> (test 0 (p))
```
运行以上命令后程序进入了死循环，cup的表现如图c01e05-pp-test-result.png 20--40 seconds 之间所示<img src="1005-pp-test-result.png" />

### normal-order evaluation(fully expand and then reduce)
(test 0 (p))

(if (= 0 0) 0 (p))

0

### applicative-order evaluation(evaluate the arguments and then apply)
(test 0 (p))

(test 0 (p))

(... ... (p))
