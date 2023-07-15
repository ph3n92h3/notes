# 附錄G“李群和李代數”習題解答

注 🐖：我開始使用 `mathtype` 進行公式的輸入，但是複製粘貼過來時，必須在公式前後加上 `...`，否則相關的引擎不能正確排版——這不得不説是一個很大的遺憾。

## 0.（補）證明定理 G-1-1。

注 🐖：這道題是我自己加的，書中只説它是練習而沒有説是習題，但是考慮到它的“非常重要性”（是不是像梁老爺子的語氣了:），這裏做一個簡單的證明。

### (a)

$$
\mu(eg)=\mu(e)\mu(g)=\mu(g),\ \mu(ge)=\mu(g)\mu(e)=\mu(g),\ \forall g\in G
$$
故 $\mu(e)=e'$

### (b)

$$
\mu(gg^{-1})=\mu(e)=e'=\mu(g)\mu(g^{-1}),\ \mu(g^{-1}g)=\mu(e)=e'=\mu(g^{-1})\mu(g),\ \forall g\in G
$$
故 $\mu(g^{-1})=\mu(g)^{-1}$

### (c)

$$
\mu(g_1g_2)=\mu(g_1g_2)=\mu(g_1)\mu(g_2)=\mu(g_2)\mu(g_1)
$$
故當 $G$ 是阿貝爾群時 $\mu[G]$ 是 $G'$ 的阿貝爾子群。

## 1. 驗證由式(G-1-1)定義的 $I_g:G\to G$ 確爲自同構映射。

### (A) 證明是同態，即證 $I_g(h_1h_2)=I_g(h_1)I_g(h_2)$

$$
I_g(h_1h_2)=g(h_1h_2)g^{-1}=(gh_1g^{-1})(gh_2g^{-2})=I_g(h_1)I_g(h_2)
$$

### (B) 證明一一性，即證 $h_1\neq h_2\Rightarrow I_g(h_1)\neq I_g(h)2)$，反證：

若 $I_g(h_1)=I_g(h_2)$，則：$gh_1g^{-1}=gh_2g^{-1}$，$g^{-1}(gh_1g^{-1})g=g^{-1}(gh_2g^{-1})g$，i.e. $h_1=h_2$，矛盾。

### (C) 證明到上性，即證 $\forall h'\in G$，$\exist h\in G$，s.t. $I_g(h)=h'$

令 $h=g^{-1}h'g$，則有 $I_g(h)=h'$。

故 $I_g$ 是同構，又 $I_g:G\to G$，故 $I_g$ 是自同構。

## ~2. 驗證由式(G-1-2)定義的乘法滿足群乘法的要求。

### (A) 

$$
[(g_1,g_1')(g_2,g_2')](g_3,g_3')=(g_1,g_1')[(g_2,g_2')(g_3,g_3')]=(g_1g_2g_3,g_1'g_2'g_3')
$$

### (B) $G\times G'$ 的恆等元為 $(e,e')$，它是恆等元，因爲：

$$
(e,e')(g,g')=(g,g')(e,e')=(g,g')
$$

### (C) $(g,g')$ 的逆元為 $(g^{-1},g'^{-1})$，它是逆元，因爲：

$$
(g^{-1},g'^{-1})(g,g')=(g,g')(g^{-1},g'^{-1})=(e,e')
$$

## 3. 驗證由 G.1 節定義 8 所定義的 $A(G)$ 是群。

### (A)

$$
[(\mu\nu)\sigma](g)=[\mu(\nu\sigma)](g)=\mu\{\nu[\sigma(g)]\},\ \forall g\in G,\ \mu,\nu,\sigma\in A(G)
$$

### (B) 恆等元 $e:\ e(g)=g,\ \forall g\in G$，它是恆等元，因爲：

$$
(e\mu)(g)=e[\mu(g)]=\mu(h),\ (\mu e)(g)=\mu[e(g)]=\mu(g),\ \forall g\in G,\ \mu\in A(G)
$$

### (C) $\mu$ 的逆元即其逆映射（縂存在，因爲同構映射一一到上），它是逆元，因爲：

$$
(\mu^{-1}\mu)(g)=(\mu\mu^{-1})(g)=e(g)=g,\ \forall g\in G,\ \mu\in A(G)
$$

## ~4. 試證定理 G-1-2，即 $A_I(G)$ 是群 $A(G)$ 的正規子群。

### (A) 證明是子群，即證 $A_I(G)$ 在 $A(G)$ 的群乘法（複合映射）下構成群。

#### (a)

$$
[(I_{g_1}I_{g_2})I_{g_3}](h)=[I_{g_1}(I_{g_2}I_{g_3})](h),\ \forall h,g_1,g_2,g_3\in G
$$

#### (b) 恆等元：$I_e$，它是恆等元，因爲：

$$\begin{aligned}
  (I_eI_g)(h)=I_e[I_g(h)]=e(ghg^{-1})e^{-1}=ghg^{-1}=I_g(h)\\
  (I_gI_e)(h)=I_g[I_e(h)]=g(ehe^{-1})g^{-1}=ghg^{-1}=I_g(h)
\end{aligned}
$$

#### (c) $I_g$ 的逆元：$I_{g^{-1}}$，它是逆元，因爲：

$$\begin{aligned}
  (I_g^{-1}I_g)(h)=I_{g^{-1}}[I_g(h)]=g^{-1}(ghg^{-1})(g^{-1})^{-1}=h\\
  (I_gI_{g^{-1}})(h)=I_{g}[I_{g^{-1}}(h)]=g(g^{-1}hg)g^{-1}=h
\end{aligned}
$$

### (B) 證明是正規子群，即證 $\mu I_g\mu^{-1}\in A_I(G),\ \forall g\in G,\mu\in A(G)$

$$\begin{aligned}
  & \forall g,h\in G,\mu\in A(G)\\
  \left( {\mu {I_g}{\mu ^{ - 1}}} \right)\left( h \right) =&\mu \left\{ {{I_g}\left[ {{\mu ^{ - 1}}\left( h \right)} \right]} \right\} = \mu \left[ {g{\mu ^{ - 1}}\left( h \right){g^{ - 1}}} \right] \\ 
  =&\mu \left( g \right)\mu \left[ {{\mu ^{ - 1}}\left( h \right)} \right]\mu \left( {{g^{ - 1}}} \right) = \mu \left( g \right)h\mu \left( {{g^{ - 1}}} \right) \\ 
  =& \mu \left( g \right)h\mu {\left( g \right)^{ - 1}} = {I_{\mu \left( g \right)}}\left( h \right) \\ 
\end{aligned} $$

i.e. $\mu I_g\mu^{-1}=I_{\mu(g)}\in A_I(G)$

## 5. 驗證由 G.1 節定義 9 所定義的 $H\otimes_SK$ 是群。

### (A)

$$\begin{aligned}
  \left[ {\left( {h,k} \right)\left( {h',k'} \right)} \right]\left( {h'',k''} \right) =& \left( {h{\mu _k}\left( {h'} \right),kk'} \right)\left( {h'',k''} \right) = \left( {h{\mu _k}\left( {h'} \right){\mu _{kk'}}\left( {h''} \right),kk'k''} \right) \\ 
  \left( {h,k} \right)\left[ {\left( {h',k'} \right)\left( {h'',k''} \right)} \right] =& \left( {h,k} \right)\left( {h'{\mu _{k'}}\left( {h''} \right),k'k''} \right) = \left( {h{\mu _k}\left( {h'{\mu _{k'}}\left( {h''} \right)} \right),kk'k''} \right) \\ 
\end{aligned} $$

而：

$$h{\mu _k}\left( {h'} \right){\mu _{kk'}}\left( {h''} \right) = h{\mu _k}\left( {h'} \right)\mu _{ {kk'}}\left( {h''} \right) = h{\mu _k}\left( {h'} \right)\mu _{k}{\mu _{k'}}\left( {h''} \right) = h{\mu _k}\left( {h'{\mu _{k'}}\left( {h''} \right)} \right)$$

i.e.  $\left[ {\left( {h,k} \right)\left( {h',k'} \right)} \right]\left( {h'',k''} \right)=\left( {h,k} \right)\left[ {\left( {h',k'} \right)\left( {h'',k''} \right)} \right]$ 

### 恆等元即  $\left( {{e_H},{e_K}} \right)$，它是恆等元，因爲：

$$\begin{aligned}
  \left( {{e_H},{e_K}} \right)\left( {h,k} \right) = &\left( {{e_H}{\mu _{{e_K}}}\left( h \right),{e_K}k} \right) = \left( {{\mu _{{e_K}}}\left( h \right),k} \right) = \left( {{e_{A\left( H \right)}}\left( h \right),k} \right) = \left( {h,k} \right) \\ 
  \left( {h,k} \right)\left( {{e_H},{e_K}} \right) = &\left( {h{\mu _k}\left( {{e_H}} \right),k{e_K}} \right) = \left( {h{e_H},k} \right) = \left( {h,k} \right) \\ 
\end{aligned} $$

### 設 $\left( {h,k} \right)$ 的逆元為 $\left( {\bar{h},\bar{k}} \right)$，則：
 
$$\begin{aligned}
  \left( {{e_H},{e_K}} \right) = \left( {\bar h,\bar k} \right)\left( {h,k} \right) =& \left( {\bar h,{\mu _{\bar k}}\left( h \right),\bar kk} \right) \\ 
   = \left( {h,k} \right)\left( {\bar h,\bar k} \right) =& \left( {h{\mu _k}\left( {\bar h} \right),k\bar k} \right) \\ 
\end{aligned} $$

i.e.

$$\left\{ \begin{aligned}
  {e_H} &= \bar h{\mu _{\bar k}}\left( h \right) = h{\mu _k}\left( h \right) \\
  {e_K} &= \bar kk = k\bar k \\ 
\end{aligned}  \right. \Rightarrow \left\{ \begin{aligned}
  \bar h &= {\mu _{\bar k}}{\left( h \right)^{ - 1}} = {\mu _{{k^{ - 1}}}}\left( {{h^{ - 1}}} \right) \\
  \bar k &= {k^{ - 1}} \\ 
\end{aligned}  \right.$$

即  $\left( {h,k} \right)$ 的逆元為 $\left( {{\mu _{{k^{ - 1}}}}\left( {{h^{ - 1}}} \right),{k^{ - 1}}} \right)$ 

## 6. 設 $L_g:G\to G$ 是由 $g\in G$ 生成的左平移，$L_g^{-1}$ 是 $L_g$ 的逆映射，試證 $L_{g^{-1}}=L_g^{-1},\forall g\in G$。

$$\begin{aligned}
  \forall g,h \in G,\left( {{L_{{g^{ - 1}}}}{L_g}} \right)\left( h \right) =& {g^{ - 1}}\left( {gh} \right) = h = {L_e}\left( h \right) \\ 
  \left( {{L_g}{L_{{g^{ - 1}}}}} \right)\left( h \right) =& g\left( {{g^{ - 1}}h} \right) = h = {L_e}\left( h \right) \\ 
\end{aligned} $$

故  ${L_{{g^{ - 1}}}}{L_g} = {L_g}{L_{{g^{ - 1}}}} = {L_e}$，i.e. ${L_{{g^{ - 1}}}}={L_g}$ 

## ~7. $\forall g\in G$ 定義右平移 $R_g:h\mapsto hg$，$\forall h\in G$，試證 $R_{gh}=R_{h}\circ R_{g}$

$$\begin{aligned}
  \forall i \in G,{R_{gh}}\left( i \right) &= igh \\
  \left( {{R_h} \circ {R_g}} \right)\left( i \right) &= {R_h}\left( {{R_g}\left( i \right)} \right) = {R_h}\left( {ig} \right) = igh \\ 
\end{aligned} $$

故 ${R_{gh}} = {R_h} \circ {R_g}$。

## ~8. 試證 $[\vec{v},\vec{u}]:=\vec{v}\times\vec{u}$，$\forall \vec{v},\vec{u}\in\mathbb{R}^3$ 滿足李括號的條件（見 G.3 節例 1）。

### (A) 雙綫性

$$\begin{aligned}
  \left[ {a\vec w + b\vec x,c\vec y + d\vec z} \right] =& \left( {a\vec w + b\vec x} \right) \times \left( {c\vec y + d\vec z} \right) \\ 
  =& ac\left( {\vec w \times \vec y} \right) + ad\left( {\vec w \times \vec z} \right) + bc\left( {\vec x \times \vec y} \right) + bd\left( {\vec x \times \vec z} \right) \\ 
  =& ac\left[ {\vec w,\vec y} \right] + ad\left[ {\vec w,\vec z} \right] + bc\left[ {\vec x,\vec y} \right] + bd\left[ {\vec x,\vec z} \right] \\ 
\end{aligned} $$

### (B) 反稱

$$\left[ {\vec v,\vec u} \right] = \vec v \times \vec u =  - \vec u \times \vec v =  - \left[ {\vec u,\vec v} \right]$$

### (C) Jacobi

$$\begin{aligned}
  \left[ {\vec x,\left[ {\vec y,\vec z} \right]} \right] + \left[ {\vec z,\left[ {\vec x,\vec y} \right]} \right] + \left[ {\vec y,\left[ {\vec z,\vec x} \right]} \right] = &\vec x \times \left( {\vec y \times \vec z} \right) + \vec z \times \left( {\vec x \times \vec y} \right) + \vec y \times \left( {\vec z \times \vec x} \right) \\ 
   = &\left( {\left( {\vec x \cdot \vec z} \right)\vec y - \left( {\vec x \cdot \vec y} \right)\vec z} \right) + \left( {\left( {\vec z \cdot \vec y} \right)\vec x - \left( {\vec z \cdot \vec x} \right)\vec y} \right) + \left( {\left( {\vec y \cdot \vec x} \right)\vec z - \left( {\vec y \cdot \vec z} \right)\vec x} \right) \\ 
   = &0 \\ 
\end{aligned} $$

## ~9. 試證 $[A,B]=AB-BA$ 滿足李括號的條件（見 G.3 節例 2）。

### (A) 雙綫性

$$\begin{aligned}
  \left[ {aA + bB,cC + dD} \right] =& \left( {aA + bB} \right)\left( {cC + dD} \right) - \left( {cC + dD} \right)\left( {aA + bB} \right) \\ 
   =& ac\left( {AC - CA} \right) + ad\left( {AD - DA} \right) + bc\left( {BC - CB} \right) + bd\left( {BD - DB} \right) \\ 
   =& ac\left[ {A,C} \right] + ad\left[ {A,D} \right] + bc\left[ {B,C} \right] + bd\left[ {B,D} \right] \\ 
\end{aligned} $$

### (B) 反稱

$$\left[ {A,B} \right] = AB - BA =  - \left( {BA - AB} \right) =  - \left[ {B,A} \right]$$

### (C) Jacobi

$$\begin{aligned}
  & \left[ {A,\left[ {B,C} \right]} \right] + \left[ {C,\left[ {A,B} \right]} \right] + \left[ {B,\left[ {C,A} \right]} \right] = \left[ {A,BC - CB} \right] + \left[ {C,AB - BA} \right] + \left[ {B,CA - AC} \right] \\ 
   = & \left( {A\left( {BC - CB} \right) - \left( {BC - CB} \right)A} \right) + \left( {C\left( {AB - BA} \right) - \left( {AB - BA} \right)C} \right) + \left( {B\left( {CA - AC} \right) - \left( {CA - AC} \right)B} \right) \\ 
   = & 0 \\ 
\end{aligned}$$

## ~10. 設 $\mathscr{G}$ 和 $\hat{\mathscr{G}}$ 依次是李群 $G$ 和 $\hat{G}$ 的李代數，$\rho_*:\mathscr{G}\to\hat{\mathscr{G}}$ 是同態映射 $\rho:G\to \hat G$ 在 $e\in G$ 誘導的推前映射，試證 $\rho(\exp A)=\exp(\rho_*A)\ \forall A\in\mathscr{G}$。提示：先用同態性證明 $\rho(\exp tA)$ 是單參子群。

### (A) 先證明 $\rho(\exp tA)$ 是單參子群，即證 $\rho\exp[(t+s)A]=[\rho\exp(tA)][\rho\exp(sA)]$

$\exp(tA),\ \forall A\in\mathscr{G}$ 是單參子群，故 $\exp[(t+s)A]=\exp(tA)\exp(sA)$。
由 $\rho$ 的同態性，$\rho\{\exp[(t+s)A]\}=\rho[\exp(tA)\exp(sA)]=\rho[\exp(tA)]\rho[\exp(sA)]$，故 $\rho(\exp tA)$ 是單參子群。

### (B)

$$\rho\exp(tA)|_{t=0}=\rho\exp(0)=\rho(e_G)=e_{\hat{G}}$$

$$\left.\frac{\mathrm{d}}{\mathrm{d}t}\right|_{t=0}\rho\exp(tA)=\rho_*\left.\frac{\mathrm{d}}{\mathrm{d}t}\right|_{t=0}\exp(tA)=\rho_*A\Rightarrow\rho\exp(tA)=\exp(t\rho_*A)$$


令 $t=1$，有 $\rho\exp(A)=\exp(\rho_*A)$。

## ~11. 試證式 (G-5-10) 可由式 (G-5-10') 推出。提示：把式 (G-5-10) 的 $v^a,\ u^a$ 之和作爲式 (G-5-10') 的 $v^a$。

注 🐖：這種操作似乎在 Griffith 的《量子力學概論》的一道習題中也用到了，對於證明某些向量的關係，算是比較常見的~

$\forall v^a,u^a\in V$，令 $w^a=v^a+u^a$，則:

$$\begin{gathered}
  {g_{ab}}\left( {{Z^a}_c{w^c}} \right)\left( {{Z^b}_d{w^d}} \right) = {g_{cd}}{w^c}{w^d} \\
  {g_{ab}}\left[ {{Z^a}_c\left( {{v^c} + {u^c}} \right)} \right]\left[ {{Z^b}_d\left( {{v^d} + {u^d}} \right)} \right] = {g_{cd}}\left( {{v^c} + {u^c}} \right)\left( {{v^d} + {u^d}} \right) \\ 
\end{gathered}$$


展開，將 ${g_{ab}}\left( {{Z^a}_c{v^c}} \right)\left( {{Z^b}_d{v^d}} \right) = {g_{cd}}{v^c}{v^d},{g_{ab}}\left( {{Z^a}_c{u^c}} \right)\left( {{Z^b}_d{u^d}} \right) = {g_{cd}}{u^c}{u^d}$ 代入，得：

$${g_{ab}}{Z^a}_c{Z^b}_d\left( {{v^c}{u^d} + {u^c}{v^d}} \right) = {g_{cd}}\left( {{v^c}{u^d} + {u^c}{v^d}} \right)$$

注意到：${g_{ab}}\left( {{v^a}{u^b} + {u^a}{v^b}} \right) = 2{g_{ab}}{v^{(a}}{u^{b)}} = 2{g_{\left( {ab} \right)}}{v^a}{u^b} = 2{g_{ab}}{v^a}{u^b}$，故上式可化爲：

$${g_{ab}}{Z^a}_c{Z^b}_d{v^c}{u^d} = {g_{cd}}{v^c}{v^d}$$


i.e. ${g_{ab}}\left( {{Z^a}_c{v^c}} \right)\left( {{Z^b}_d{u^d}} \right) = {g_{cd}}{v^c}{v^d}$。

## ~12. SO(2) 是阿貝爾群嗎？O(2) 是阿貝爾群嗎？

$$Z\left( \alpha  \right) = \left[ {\begin{array}{*{20}{c}}
  {\cos \alpha }&{ - \sin \alpha } \\ 
  {\sin \alpha }&{\cos \alpha } 
\end{array}} \right],Z'\left( \alpha  \right) = \left[ {\begin{array}{*{20}{c}}
  {\cos \alpha }&{\sin \alpha } \\ 
  {\sin \alpha }&{ - \cos \alpha } 
\end{array}} \right]$$


$Z\left( \alpha  \right)$ 是 SO(2) 的群元，而 $Z\left( \alpha  \right)$ 和 $Z'\left( \alpha  \right)$ 是 O(2) 的群元。發現有：

$$\begin{aligned}
  Z\left( \alpha  \right)Z\left( \beta  \right) = Z\left( \beta  \right)Z\left( \alpha  \right),&Z'\left( \alpha  \right)Z'\left( \beta  \right) \ne Z'\left( \beta  \right)Z'\left( \alpha  \right) \\
  Z\left( \alpha  \right)Z'\left( \beta  \right) \ne Z'\left( \beta  \right)Z\left( \alpha  \right),&Z'\left( \alpha  \right)Z\left( \beta  \right) \ne Z\left( \beta  \right)Z'\left( \alpha  \right) \\ 
\end{aligned} $$


故 SO(2) 是阿貝爾群，而 O(2) 非。

## ~13. 李群 $\mathrm{SL}(m)$[$\mathrm{GL}(m)$ 滿足 $\det T=+1$ 的子群]的李代數記作 $\mathscr{SL}(m)$，試證：

- (a) $\mathscr{SL}(m)=\{m\times m無跡實矩陣\}$
- (b) $\dim \mathrm{SL}(m)=m^2-1$

仿照定理 G-5-13 證出。

由引理 G-5-12：$\forall m\times m$ 矩陣 $A$，$\det[\mathrm{Exp}(tA)]=\mathrm{e}^{(\mathrm{tr}A)t}$。

### (a)

#### (A, $\Rightarrow$)

設 $A\in\mathscr{SL}(m)$，則 $\forall t \in\mathbb{R}$ 有 $\mathrm{Exp}(tA)\in\mathrm{SL}(m)$，故 $\mathrm{e}^{(\mathrm{tr}A)t}=\det[\mathrm{Exp}(tA)]=1,\ (\mathrm{tr}A)t=\mathrm{i}2k\pi,\ k\in\mathbb{Z}$，而 $t$ 任意，故 $\mathrm{tr}A=0$，i.e. $A$ 是無跡矩陣。又 $A\in\mathscr{SL}(m)\Rightarrow A\in\mathscr{GL}(m)$，故 $A$ 是 $m\times m$ 無跡實矩陣。

#### (B, $\Leftarrow$)

設 $A$ 為 $m\times m$ 無跡實矩陣，則 $\forall t\in \mathbb{R}$，$tA$ 也是 $m\times m$ 無跡實矩陣，有 $tA\in\mathscr{GL}(m),\ \mathrm{Exp}(tA)\in\mathrm{GL}(m)$，而又 $\mathrm{tr}(tA)=0\Rightarrow \det(\mathrm{Exp}\ tA)=1$，故 $\mathrm{Exp}(tA)\in\mathrm{SL}(m)$，因此 $\left.\frac{\mathrm{d}}{\mathrm{d}t}\right|_{t=0}\mathrm{Exp}(tA)=A\in\mathscr{SL}(m)$

### (B)

$A\in\mathscr{SL}(m)$ 對 $A$ 的約束為 $A_{\mu\nu}\in\mathbb{R},\ \mathrm{tr}(A)=0$，故

$$
\dim\mathrm{SL}(m)=\dim\mathscr{SL}(m)=m^2-1
$$

## 14. 

- (1) 試證存在連續曲綫 $\mu:[0,1]\to\mathrm{GL}(2)$ 使 $\mu(0)=I,\ \mu(1)=\begin{bmatrix}  -1 &1 \\  0& -1 \end{bmatrix}$
- *(2) 試證 $T\equiv\begin{bmatrix}  -1 &1 \\  0& -1 \end{bmatrix}\in\mathrm{GL}(2)$ 不屬於李群 $\mathrm{GL}(2)$ 的任一單參子群。提示：假定存在矩陣 $A=\begin{bmatrix}  a &b \\  c& d \end{bmatrix}$ 使 $T=\mathrm{Exp}(A)$，
  - (a) 證明 $c\neq 0$，
  - (b) 把 $A^n\equiv\begin{bmatrix}  a_n &b_n \\  c_n& d_n \end{bmatrix}$，證明 $\exist r_n\in\mathbb{R}$ 使 $b_n=br_n,\ c_n=cr_n$。
  - (c) 由 (b) 推出矛盾。

### (1) 直接找出來一條即證畢。

對於 $\mu_{11}(0)=1,\mu_{11}(1)=-1$，由連續函數的介值定理，$\exist x_0\in(0,1)$，s.t. $\mu_{11}(x_0)=0$，$\mu_{22}$同理，故 $\mu_{12},\mu_{21}$ 須隨 $t$ 做某種變化以使得 $\det\neq 0$。取 $\mu_{12}(t)=t,\ \mu_{21}=-\sqrt{(1/2)^2-(t-1/2)^2}=-\sqrt{t-t^2}$。此時，取 $\mu_{11}$ 與 $\mu_{22}$ 的綫性解 $1-2t$ 即可，故

$$\mu(t)=\begin{bmatrix}
  1-2t & t\\
  -\sqrt{t-t^2} & 1-2t
\end{bmatrix}$$

### (2) 反證，設 $T$ 屬於 $\mathrm{GL}(2)$ 的某一單參子群，則 $\exist A=\begin{bmatrix}  a &b \\  c& d \end{bmatrix}$，s.t. $T=\exp(A)$

#### (a) 反證

設 $c=0$，則 $(A^n)_{11}=a^n,\ (A^n)_{22}=b^n$，

$${\left( T \right)_{11}} = {\left[ {\exp \left( A \right)} \right]_{11}} = {\left( {\sum\limits_{n = 1}^\infty  {\frac{{{A^n}}}{{n!}}} } \right)_{11}} = \sum\limits_{n = 1}^\infty  {\frac{{{{\left( {{A^n}} \right)}_{11}}}}{{n!}} = } \sum\limits_{n = 1}^\infty  {\frac{{{a^n}}}{{n!}} = } {{\text{e}}^a}$$

不存在 $a\in\mathbb{R}$，s.t. $\mathrm{e}^a=-1$，矛盾。故 $c\neq 0$。

#### (b) 數學歸納法

##### (b.1)

對 $n=1$，$b_1/c_1=b/c$；若 $b_n/c_n=b/c$，則慾證 $b_{n+1}/c_{n+1}=b/c$。

$$\begin{aligned}
  {a_{n + 1}} =& a \cdot {a_n} + b \cdot {c_n} = a \cdot {a_n} + bc \cdot {r_n} \\
  {b_{n + 1}} =& a \cdot {b_n} + b \cdot {d_n} = ab \cdot {r_n} + b \cdot {d_n} \\
  {c_{n + 1}} =& c \cdot {a_n} + d \cdot {c_n} = c \cdot {a_n} + cd \cdot {r_n} \\
  {d_{n + 1}} =& c \cdot {b_n} + d \cdot {d_n} = bc \cdot {r_n} + d \cdot {d_n} \\ 
\end{aligned}$$


慾 $b_{n+1}/c_{n+1}=b/c$，需 $a \cdot {r_n} + {d_n} = {a_n} + d \cdot {r_n} = {r_{n + 1}}(*)$

##### (b.2) 再次數學歸納法

$n=1,\ a_1=a,\ d_1=d,\ r_1$，得 $r_2=a+d$；

$n=2,\ b_2=ab+bd=b(a+d)$，確有 $r_2=a+d$。

設對 $n$ 成立 $a \cdot {r_n} + {d_n} = {a_n} + d \cdot {r_n} = {r_{n + 1}}$，則：

$$\begin{aligned}
  a \cdot {r_{n + 1}} + {d_{n + 1}} =& a \cdot \left( {{a_n} + d \cdot {r_n}} \right) + \left( {bc \cdot {r_n} + d \cdot {d_n}} \right) \\
  {a_{n + 1}} + d \cdot {r_{n + 1}} =& \left( {a \cdot {a_n} + bc \cdot {r_n}} \right) + d \cdot \left( {a \cdot {r_n} + {d_n}} \right) \\ 
\end{aligned}$$


即 $a \cdot {r_{n + 1}} + {d_{n + 1}}={a_{n + 1}} + d \cdot {r_{n + 1}}$ 成立。

故 $(*)$ 成立。

##### (b.3)

故確有 $b_n/c_n=b/c$，i.e. $\exist r_n\in\mathbb{R}$，s.t. $b_n=b\cdot r_n,\ c_n=c\cdot r_n$

#### (c)

而 $T=\exp(A)=\sum^{+\infty}_{n=0}A^n/n!$ 要求 $T_{12}/T_{21}=b/c=1/0$，又 $c\neq 0$，矛盾。因此不存在 $A$，s.t. $T=\mathrm{Exp}(A)$，i.e. $T$ 不屬於 $\mathrm{GL}(2)$ 的某一單參子群。

## 15. 補証定理 G-5-11 證明中的等式 $D=\mathrm{Exp}(\mathrm{i}\varPhi)$。


$$D=\mathrm{diag}\left(\mathrm{e}^{\mathrm{i}\varphi_1},\dots,\mathrm{e}^{\mathrm{i}\varphi_m}\right),\ \varPhi=\mathrm{diag}\left(\varphi_1,\dots,\varphi_m\right)$$

$$\begin{aligned}
  {\text{Exp}}\left( {{\text{i}}\varPhi } \right) =& \sum\limits_{n = 0}^\infty  {{\varPhi ^n}/n!}  \\ 
  =& \sum\limits_{n = 0}^\infty  {{\text{diag}}\left( {{\varphi _1}^n, \dots ,{\varphi _m}^n} \right)/n!}  \\ 
  =& {\text{diag}}\left( {\sum\limits_{n = 0}^\infty {{\varphi _1}^n/n!, \dots ,} \sum\limits_{n = 0}^\infty {{\varphi _m}^n/n!} } \right) \\ 
  =& {\text{diag}}\left( {{{\text{e}}^{{\text{i}}{\varphi _1}}}, \dots ,{{\text{e}}^{{\text{i}}{\varphi _m}}}} \right) = D \\ 
\end{aligned}$$


## 16. 試用李括號所滿足的 Jacobi 恆等式證明定理 G-6-1 的(b)。

慾證 $$0 = {C^c}_{a[b}{C^a}_{de]}$$，即證：

$$\begin{aligned}
  0 =& {C^c}_{ab}{C^a}_{de} + {C^c}_{ae}{C^a}_{bd} + {C^c}_{ad}{C^a}_{eb} - {C^c}_{ab}{C^a}_{ed} - {C^c}_{ad}{C^a}_{be} - {C^c}_{ae}{C^a}_{db} \\
  0 =& {C^c}_{ab}{C^a}_{de} + {C^c}_{ae}{C^a}_{bd} + {C^c}_{ad}{C^a}_{eb} \\ 
\end{aligned} $$

得到此式應該有更簡便的辦法，即利用關於對稱和反稱的其他性質，可惜我現在還沒有想出來。

$$\begin{aligned}
  0 =& {\left[ {u,\left[ {v,w} \right]} \right]^e} + {\left[ {w,\left[ {u,v} \right]} \right]^e} + {\left[ {v,\left[ {w,u} \right]} \right]^e} \\ 
   =& {C^e}_{cd}{u^c}\left( {{C^d}_{ab}{v^a}{w^b}} \right) + {C^e}_{cd}{w^c}\left( {{C^d}_{ab}{u^a}{v^b}} \right) + {C^e}_{cd}{v^c}\left( {{C^d}_{ab}{w^a}{u^b}} \right) \\ 
   =& {C^e}_{ad}{C^d}_{bc}{u^a}{v^b}{w^c} + {C^e}_{cd}{C^d}_{ab}{u^a}{v^b}{w^c} + {C^e}_{bd}{C^d}_{ca}{u^a}{v^b}{w^c} \\ 
   =& \left( {{C^e}_{ad}{C^d}_{bc} + {C^e}_{cd}{C^d}_{ab} + {C^e}_{bd}{C^d}_{ca}} \right){u^a}{v^b}{w^c} \\ 
  0 =& {C^e}_{ad}{C^d}_{bc} + {C^e}_{cd}{C^d}_{ab} + {C^e}_{bd}{C^d}_{ca} \\ 
\end{aligned} $$

該式變換指標（並加一負號），此式即爲慾證式。

## 17. 試證 G.6 節例 1 的中的 ① 和 ②。

### ①

過原點直綫：$\forall r\in\mathbb{R},\ \gamma(t)=(x(t),y(t))=(at,bt)$

$\gamma(t+s)=\gamma(t)\gamma(s)$，故 $\gamma(t)$ 是單參子群。

### ②

$$
A=\left.\frac{\mathrm{d}}{\mathrm{d}t}\right|_{t=0}\gamma(t)=(a,b)
$$

$$
\bar{A}_{(x,y)}=L_{(x,y)*}A=L_{(x,y)*}\left.\frac{\mathrm{d}}{\mathrm{d}t}\right|_{t=0}\gamma(t)=\left.\frac{\mathrm{d}}{\mathrm{d}t}\right|_{t=0}L_{(x,y)}\gamma(t)=\left.\frac{\mathrm{d}}{\mathrm{d}t}\right|_{t=0}(x,y)(at,bt)\equiv A
$$

$$
\partial_a\bar{A}^b=0
$$

## 18. 試證 G.7 節例 4 的結論，即 $\bar{\xi}=-\bar{A}$。

我不知道我現在該説什麽，因爲有下面幾樣東西擺在我的腦子 🧠 裏：

- 我自己的想法整不出來這個結果；
- 某一個成文的參考答案裏證明出 $\bar{\xi}=\bar{A}$，我認爲這個證明沒有什么大問題；
- 在 bilibili 上有位 up 主發佈了自己站在黑板前一道一道把梁先生講李群李代數和纖維叢的兩個附錄中所有習題寫了出來。但是我認爲他對這道題的處理是有漏洞的，有對式子 $\sigma_p(g)=\sigma(g,p)=\sigma_g(p)$ 濫用的嫌疑；
- 我又實在不相信梁先生竟然會在書 📕 中出現筆誤。

我只好把這道題放在這裏……

## 19. 設 $G$ 是矩陣李群，試證 $\forall A\in\mathscr{G},\ g\in G$ 有 $\mathscr{Ad}_{g}A=gAg^{-1}$。（右邊是 3 個矩陣的連乘積。黨 $G$ 不是矩陣群時 $gAg^{-1}$ 無意義，因爲李群元 $g$ 與李代數元 $B$ 之積沒有定義）

？？？小寫的字母怎麽打成圓體呢？`\mathscr{}`只能改變大寫，唉~

$$\begin{aligned}
  \mathscr{Ad}_{g}A= & I_{g*}\left.\frac{\mathrm{d}}{\mathrm{d}t}\right|_{t=0}\exp(tA)=\left.\frac{\mathrm{d}}{\mathrm{d}t}\right|_{t=0}I_g\left(\exp(tA)\right)\\
  = & \left.\frac{\mathrm{d}}{\mathrm{d}t}\right|_{t=0}g\left(\exp(tA)\right)g^{-1}\\
  = & \left.\frac{\mathrm{d}}{\mathrm{d}t}\right|_{t=0}\mathrm{Exp}\left(tgAg^{-1}\right)=gAg^{-1}
\end{aligned}
$$

## 20. 設 $\mathscr{G}$ 和 $\hat{\mathscr{G}}$ 依次是李群 $G$ 和 $G'$ 的李代數，$\rho_*:\mathscr{G}\to\hat{\mathscr{G}}$ 是同態映射 $\rho:G\to\hat{G}$ 在 $e\in G$ 誘導的推前映射，試證

- (a) $$\rho_*\mathscr{Ad}_gA=\mathscr{Ad}_{\rho(g)}\rho_*A,\ \forall g\in G,\ A\in\mathscr{G}$$。
- (b) $$\rho_*(L_{g^{-1}*}X)=L_{\rho(g)^{-1}*}\rho_*X,\ \forall g\in G,\ X\in V_g(g 點的切空間),\ L 代表左平移$$。

### (a)

$$\begin{aligned}
  \rho_*\mathscr{Ad}_gA= & \rho_*I_{g*}\left.\frac{\mathrm{d}}{\mathrm{d}t}\right|_{t=0}\exp(tA)=\left.\frac{\mathrm{d}}{\mathrm{d}t}\right|_{t=0}\rho\left[g\exp(tA)g^{-1}\right]\\
  = & \left.\frac{\mathrm{d}}{\mathrm{d}t}\right|_{t=0}\rho(g)\rho\left[\exp(tA)\right]\rho(g^{\cancel{-1}})^{-1}\\
  = & \left.\frac{\mathrm{d}}{\mathrm{d}t}\right|_{t=0}I_{\rho(g)}\rho\exp(tA)\\
  = & I_{\rho(g)*}\rho_{*}\left.\frac{\mathrm{d}}{\mathrm{d}t}\right|_{t=0}\exp(tA)=\mathscr{Ad}_{\rho(g)}\rho_*A
\end{aligned}
$$

### (b)

過 $g$ 的單參微分同胚群：$\beta(t)=g\gamma(t)=g\exp(tA)$

$$
X=\left.\frac{\mathrm{d}}{\mathrm{d}t}\right|_{t=0}\beta(t)=\left.\frac{\mathrm{d}}{\mathrm{d}t}\right|_{t=0}L_g\exp(tA)=L_{g*}\left.\frac{\mathrm{d}}{\mathrm{d}t}\right|_{t=0}\exp(tA)=L_{g*}A
$$

$$\begin{aligned}
  \rho_*(L_{g^{-1}*}X)= & \rho_*\left(L_{g^{-1}*}L_{g*}\left.\frac{\mathrm{d}}{\mathrm{d}t}\right|_{t=0}\exp(tA)\right)\\
  = & \left.\frac{\mathrm{d}}{\mathrm{d}t}\right|_{t=0}\rho\left(L_{g^{-1}}L_{g}\exp(tA)\right)\\
  = & \left.\frac{\mathrm{d}}{\mathrm{d}t}\right|_{t=0}\rho\left(\exp(tA)\right)
\end{aligned}
$$

$$\begin{aligned}
  L_{\rho(g)^{-1}*}\rho_*X= & L_{\rho(g)^{-1}*}\rho_*L_{g*}\left.\frac{\mathrm{d}}{\mathrm{d}t}\right|_{t=0}\exp(tA)\\
  = & \left.\frac{\mathrm{d}}{\mathrm{d}t}\right|_{t=0}\rho(g)^{-1}\left[\rho(g\exp(tA))\right]\\
  = & \left.\frac{\mathrm{d}}{\mathrm{d}t}\right|_{t=0}\rho(g)^{-1}\rho(g)\rho(\exp(tA))=\left.\frac{\mathrm{d}}{\mathrm{d}t}\right|_{t=0}\rho\left(\exp(tA)\right)
\end{aligned}
$$

證畢。

## 21. 試證式 (G-8-14) 和 (G-8-16)。

### (G-8-14)

$$\begin{aligned}
  & \forall c\in G\\
  \mathrm{ad}_{[A,B]}(C)= & [[A,B],C]=-[[C,A],B]-[[B,C],A]\\
  = & [A,[B,C]]-[B,[A,C]]\\
  = & \mathrm{ad}_A(\mathrm{ad}_B(C))-\mathrm{ad}_B(\mathrm{ad}_A(C))\\
  = & (\mathrm{ad}_A\mathrm{ad}_B-\mathrm{ad}_B\mathrm{ad}_A)(C)
\end{aligned}
$$

i.e. $\mathrm{ad}_{[A,B]}=\mathrm{ad}_A\mathrm{ad}_B-\mathrm{ad}_B\mathrm{ad}_A$

### (G-8-16)

$$
K([A,B],C)=\mathrm{tr}(\mathrm{ad}_{[A,B]}\mathrm{ad}_C)=\mathrm{tr}((\mathrm{ad}_A\mathrm{ad}_B-\mathrm{ad}_B\mathrm{ad}_A)\mathrm{ad}_C)
$$

$$
K(A,[B,C])=\mathrm{tr}(\mathrm{ad}_{A}\mathrm{ad}_{[B,C]})=\mathrm{tr}(\mathrm{ad}_A(\mathrm{ad}_B\mathrm{ad}_C-\mathrm{ad}_C\mathrm{ad}_B))
$$

又 $\mathrm{tr}(ABC)=\mathrm{tr}(BCA)=\mathrm{tr}(CAB)$，故 $K([A,B],C)=K(A,[B,C])$

## *22. 設 $e$ 是李群 $G$ 的恆等元，$g\in G$，則映射 $\mathscr{Ad}:V_e\to V_e$ 可延拓為

$$
\mathscr{Ad}_g:\mathscr{F}_G(1,0)\to\mathscr{F}_G(1,0)\quad[\mathscr{F}_G(1,0)代表 G 上光滑矢量場的集合],
$$

定義爲 $$(\mathscr{Ad}_g\bar{A})_h:=I_{g*}(\bar{A}_{h'})\ \forall\bar{A}\in\mathscr{F}_G(1,0),h\in G$$，其中 $$h'=g^{-1}hg$$。試證：若 $$\bar{A}$$ 是相應于 $$A\in V_e$$ 的左不變矢量場，則 $$\mathscr{Ad}_g(\bar{A})$$ 是相應于 $$\mathscr{Ad}_g(A)\in V_e$$ 的左不變矢量場。提示：只須証明  $$(\mathscr{Ad}_g\bar{A})_h=L_{h*}(\mathscr{Ad}_gA),\ \forall h\in G$$，爲此可利用 $$I_g=L_g\circ R_{g^{-1}}$$，其中 $R$ 代表右平移（見習題 7）。

注 🐖：這道題有那種數學專業代數書課後習題的感覺，不難，就是玩定義。

慾證 $$\mathscr{Ad}_g\bar{A}$$ 左不變，只需證 $$(\mathscr{Ad}_g\bar{A})_h=L_{h*}(\mathscr{Ad}_gA)$$。

$$\begin{aligned}
  (\mathscr{Ad}_g\bar{A})_h&=I_{g*}(\bar{A}_{h'})=I_{g*}(L_{h'*}A)=\left.\frac{\mathrm{d}}{\mathrm{d}t}\right|_{t=0}I_g(h'\exp(tA))=\left.\frac{\mathrm{d}}{\mathrm{d}t}\right|_{t=0}[gh'\exp(tA)g^{-1}]=\left.\frac{\mathrm{d}}{\mathrm{d}t}\right|_{t=0}[hg\exp(tA)g^{-1}]\\
  L_{h*}(\mathscr{Ad}_gA)&=L_{h*}(I_{g*}A)=\left.\frac{\mathrm{d}}{\mathrm{d}t}\right|_{t=0}[hg\exp(tA)g^{-1}]
\end{aligned}
$$

證畢。

## 23. 設 $\mathscr{G}$ 是李群 $G$ 的李代數，$g\in G$，試證 $\mathscr{Ad}_g:\mathscr{G}\to\mathscr{G}$ 是李代數同構。提示：$I_g:G\to G$ 是微分同胚保證 $\mathscr{Ad}_g:\mathscr{G}\to\mathscr{G}$ 是矢量空間同構（見第 4 章習題 4），故只需補證 $\mathscr{Ad}_g:\mathscr{G}\to\mathscr{G}$ 保李括號，即 $\mathscr{Ad}_g[A,B]=[\mathscr{Ad}_gA,\mathscr{Ad}_gB]$。由第 4 章習題 6 可知 $\mathscr{Ad}_g[\bar{A},\bar{B}]=[\mathscr{Ad}_g\bar{A},\mathscr{Ad}_g\bar{B}]$，再用習題 22 的結論以及 $\bar{A},\bar{B}\in\mathscr{L}\Rightarrow[\bar{A},\bar{B}]\in\mathscr{L}$ 便可。

$I_g:G\to G$ 是微分同胚 $\Rightarrow$ $\mathscr{Ad}_g:\mathscr{G}\to\mathscr{G}$ 是矢量空間同構，故只需證 $\mathscr{Ad}_g:\mathscr{G}\to\mathscr{G}$ 保李括號，即 $\mathscr{Ad}_g[A,B]=[\mathscr{Ad}_gA,\mathscr{Ad}_gB]$。

$\forall A,B\in \mathscr{G}$，由上題，取 $h=e$，則 $(\mathscr{Ad}_g\bar{A})_e=\mathscr{Ad}_g\bar{A}_e=\mathscr{Ad}_gA$

$$\begin{aligned}
  \mathscr{Ad}_g[A,B]=\mathscr{Ad}_g[\bar{A},\bar{B}]_e=(\mathscr{Ad}_g[\bar{A},\bar{B}])_e=([\mathscr{Ad}_g\bar{A},\mathscr{Ad}_g\bar{B}])_e=[(\mathscr{Ad}_g\bar{A})_e,(\mathscr{Ad}_g\bar{B})_e]=[\mathscr{Ad}_gA,\mathscr{Ad}_gB]
\end{aligned}
$$

## 24. 純計算

## 25. 純計算