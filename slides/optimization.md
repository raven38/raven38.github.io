# 自己紹介

created by raven(SL)


---


## みなさんSLって知っていますか？

---

## SL(Statistical Learning)

統計的学習

---

## 最適化

---

## みなさんおなじみの最適化

```
gcc -O2 hoge.cpp -o hoge.out
gcc -Ofast hoge.cpp -o hoge.out
```

---

# 一般的な最適化オプション

```
-O0
-O1
-O2
-O3
-Ofast
-march, -mtune 
```

---

# -fdce
サンプルコード
```
#include <stdio.h>
int main()
{
  int a, b;
  scanf("%d%d", &a, &b);
  return ((a+b)+3)*(3+(b+a));
}
```

---

アセンブリ抜粋

```
subq	$16, %rsp
leaq	-8(%rbp), %rdx
leaq	-4(%rbp), %rax
movq	%rax, %rsi
leaq	lC0(%rip), %rdi
movl	$0, %eax
call	_scanf
movl	-4(%rbp), %edx
movl	-8(%rbp), %eax
addl	%edx, %eax
leal	3(%rax), %edx
movl	-8(%rbp), %ecx
movl	-4(%rbp), %eax
addl	%ecx, %eax
addl	$3, %eax
imull	%edx, %eax
```

---

最適化後

```
leaq	8(%rsp), %rdx
leaq	12(%rsp), %rsi
leaq	lC0(%rip), %rdi
movl	$0, %eax
call	_scanf
movl	8(%rsp), %eax
addl	12(%rsp), %eax
addl	$3, %eax
imull	%eax, %eax
```

---

# 

---

コンパイラや最適化, 高速なコンピュータ, コンピュータアーキテクチャに興味があるかたはぜひSLへ

---

# ご清聴感謝
