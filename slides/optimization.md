# RG講義 LT

created by raven(SL)
2019/04/18


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

```
$ gcc-8 -O3 -Q --help=optimize | wc -l
242
```

---

-fdce
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

-fif-conversion

```
#include <stdio.h>
int func(int n, int y)
{
  int x;
  if(5 < n){
    x = 8;
    y = y+1;
  }else{
    x = 9;
    y = y-1;
  }
  return x + y;
}
```

---

アセンブリ抜粋
```
__Z4funcii:
LFB1:
	pushq	%rbp
LCFI0:
	movq	%rsp, %rbp
LCFI1:
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	cmpl	$5, -20(%rbp)
	jle	L2
	movl	$8, -4(%rbp)
	addl	$1, -24(%rbp)
	jmp	L3
L2:
	movl	$9, -4(%rbp)
	subl	$1, -24(%rbp)
L3:
	movl	-4(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	popq	%rbp
LCFI2:
	ret
```

---


最適化後
```
__Z4funcii:
LFB1:
	cmpl	$5, %edi
	jle	L2
	addl	$1, %esi
	movl	$8, %eax
L3:
	addl	%esi, %eax
	ret
L2:
	subl	$1, %esi
	movl	$9, %eax
	jmp	L3
```

---

-ftree-loop-vectorize

```
using namespace std;
inline int mixed(int a, int b) {
  int c = (a & b) >> 4;
  int e = min(c, max(a - c, b ^ (a + c)));
  return (e << 5) | (a * a - b * b);
}

void vec_mixed(int* A, int* B, int n) {
  for (int i = 0; i < n; ++i) {
    A[i] = mixed(A[i], B[i]);
  }
}
```

---

最適化後
```
L4:
	vmovdqu	(%rdi,%rax), %xmm1
	vmovdqu	(%rsi,%rax), %xmm2
	vpand	%xmm1, %xmm2, %xmm0
	vpsrad	$4, %xmm0, %xmm3
	vpaddd	%xmm3, %xmm1, %xmm0
	vpsubd	%xmm3, %xmm1, %xmm4
	vpmulld	%xmm1, %xmm1, %xmm1
	vpxor	%xmm2, %xmm0, %xmm0
	vpmulld	%xmm2, %xmm2, %xmm2
	vpmaxsd	%xmm4, %xmm0, %xmm0
	vpminsd	%xmm3, %xmm0, %xmm0
	vpslld	$5, %xmm0, %xmm0
	vpsubd	%xmm2, %xmm1, %xmm1
	vpor	%xmm1, %xmm0, %xmm0
	vmovups	%xmm0, (%rdi,%rax)
	addq	$16, %rax
	cmpq	%rcx, %rax
	jne	L4
```


---

コンパイラや最適化, 高速なコンピュータ, コンピュータアーキテクチャに興味があるかたはぜひSLへ

---

# ご清聴感謝
