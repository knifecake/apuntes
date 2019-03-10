---
title: Resumen ANAMAT
author: Elias Hernandis
---

\newcommand{\X}{\mathbb{X}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\V}{\mathbb{V}}

\newcommand{\norma}[1]{\left\lVert#1\right\rVert}
\newcommand{\dotprod}[1]{\langle #1 \rangle}
\newcommand{\Int}{\text{ int }}
\newcommand{\Ext}{\text{ ext }}
\newcommand{\lacot}[1]{\mathcal{L}(#1)}
\newcommand{\hess}{\text{Hess }}
\newcommand{\tr}{\text{traza }}


Preliminares
============

Normas
------

Sea $V$ un espacio vectorial, $x, y, z \in V, \lambda \in \mathbb{R}$

-   Un **producto escalar** es una función
    $\langle \cdot, \cdot \rangle: V \times V \to \mathbb{R}$ que
    cumple: $$\begin{aligned}
            \langle \lambda x, y \rangle = \lambda\langle x,y \rangle 
            &\qquad \langle x + y, z \rangle = \langle x, z \rangle + \langle y, z \rangle
             \\
            \langle x, y \rangle = \langle y, x \rangle
            &\qquad \langle x, x \rangle \geq 0,\ \langle x, x \rangle = 0 \iff x = \vec{0}_V
        \end{aligned}$$

-   Una **norma** es una función
    $\left\lVert\cdot\right\rVert : V \to R$ que cumple:
    $$\begin{aligned}
            \left\lVert x\right\rVert \geq 0, \ \left\lVert x\right\rVert = 0 \iff x = \vec{0}_V \\
            \left\lVert\lambda v\right\rVert = |\lambda| \left\lVert v\right\rVert \qquad 
            \left\lVert x + y\right\rVert \leq \left\lVert x\right\rVert + \left\lVert y\right\rVert
        \end{aligned}$$

    -   $\left\lVert\cdot\right\rVert$ cumple la **identidad del
        paralelogramo** $$\begin{aligned}
                    \left\lVert\frac{x+y}{2}\right\rVert^2 + \left\lVert\frac{x- y}{2}\right\rVert^2 = \frac{\left\lVert x\right\rVert^2 + \left\lVert y\right\rVert}{2}
                \end{aligned}$$ si y solo si procede producto escalar
        dado por la **identidad de polarización** $$\begin{aligned}
                    4\langle x,y \rangle = \left\lVert x+y\right\rVert^2 - \left\lVert x - y\right\rVert^2
                \end{aligned}$$ Se dice que esta es una **norma
        euclídea**.

-   Un espacio normado es un par $(V, \left\lVert\cdot\right\rVert_V)$

-   Una **p-norma** es una norma
    $\left\lVert\cdot\right\rVert_p : \mathbb{R}^n \to R$ definida con
    $$\begin{aligned}
            \left\lVert(x_1, \dots, x_n)\right\rVert_p = \left[\sum_{j=1}^{n} x_j^p\right]^{\frac{1}{p}}
        \end{aligned}$$

    -   El **exponente conjugado** de $p$ es $p'$ y cumple
        $\frac{1}{p} + \frac{1}{p'} = 1$. Es único y si $p = 1$ entonces
        $p' = \infty$ y viceversa

    -   La norma euclidea que procede del producto escalar estándar es
        la p-norma de orden 2. 2 es el único número que tiene como
        conjudago a sí mismo

    -   Las p-normas cumplen las desigualdades de **Young, Hölder y
        Minkowski**: $$\begin{aligned}
                    a,b > 0 &\implies ab \leq \frac{a^p}{p} + \frac{b^{p'}}{p'} \\
                    x,y \in \mathbb{R}^n &\implies \langle x,y \rangle \leq \left\lVert x\right\rVert_p \left\lVert y\right\rVert_{p'} \\
                    x,y \in \mathbb{R}^n &\implies \left\lVert x+y\right\rVert_p \leq \left\lVert x\right\rVert_p + \left\lVert y\right\rVert_p
                \end{aligned}$$

-   Dos **normas** son **equivalentes** si definen los mismos abiertos

    -   en $V = \mathbb{R}^n$ todas las normas son equivalentes

-   Una norma $\left\lVert\cdot\right\rVert$ es **submultiplicativa**
    $\iff \forall x, y,\ \left\lVert xy\right\rVert \leq \left\lVert x\right\rVert\left\lVert y\right\rVert$

    -   $\left\lVert\cdot\right\rVert$ submultiplicativa
        $\implies \left\lVert x^n\right\rVert \leq \left\lVert x\right\rVert^n$

-   La **norma de Frobenius** para matrices es
    $\left\lVert\cdot\right\rVert_F = \sqrt{\text{traza }A^\ast A}$
    donde $A^\ast$ es la traspuesta conjugada de $A$

    -   La norma de Frobenius es submultiplicativa

Espacios métricos
-----------------

Sea $X \neq \emptyset$ conjunto y sean $x, y, z \in X$

-   Un espacio métrico es un par $(X, d)$ donde la función
    $d:X \times X \to \mathbb{R}$ es una distancia que cumple:
    $$\begin{aligned}
            d(x,y) \geq 0,\ d(x,y) = 0 \iff x = y \\
            d(x,y) = d(y,x) \qquad d(x,z) \leq d(x,y) + d(y,z)
        \end{aligned}$$

-   Si $E \subset X,\ E \neq \emptyset$ entonces la restricción
    $d_E: E \times E \to \mathbb{R}$ define una distancia

-   Si $E \subset \mathbb{R}^n = X$ no vacío, no necesariamente
    subespacio, entonces $\left\lVert x - y\right\rVert_E$ define una
    distancia en $E$

Sucesiones
----------

-   Una **sucesión** $\{x_n\} \subset X$ es **de Cauchy**
    $\iff \forall \varepsilon > 0, \exists N_\varepsilon$ tal que
    $n, m \geq N_\varepsilon \implies d(x_n, x_m) < \varepsilon$

    -   $(X, d)$ **completo** $\iff \{x_n\}$ de Cauchy
        $\implies \{x_n\}$ convergente

-   Una **sucessión** $\{x_n\} \subset X$ es **convergente** a
    $L \in X \iff \forall \varepsilon > 0, \exists N_\varepsilon$ tal
    que $n \geq N_\varepsilon \implies d(x_n, L) < \varepsilon$

    -   $\{x_n\}$ convergente $\implies \{x_n\}$ de Cauchy

    -   Si el límite $\lim_{n \to \infty} x_n = L$ existe entonces es
        único

Aplicaciones lineales. Normas equivalentes.
-------------------------------------------

-   Una **aplicación lineal** es **acotada** $L \in \mathcal{L}(E, F)$
    si cumple alguna de

    -   $L$ es continua en $\vec{0}_E$

    -   $L$ es continua $\forall x \in E$

    -   $\forall x \in E,\ \exists M \mid \left\lVert x\right\rVert_E \leq 1 \implies \left\lVert L(v)\right\rVert_F \leq M$

-   $\left\lVert\cdot\right\rVert_A$ domina a
    $\left\lVert\cdot\right\rVert_B \iff \exists 0 < c < \infty$ tal que
    $\forall x \in E,\ \left\lVert x\right\rVert_B \leq c\left\lVert x\right\rVert_A$

-   $\left\lVert\cdot\right\rVert_A, \left\lVert\cdot\right\rVert_B$ son
    equivalentes $\iff \exists 0 < c, C < \infty$ tales que
    $\forall x \in E,\ c\left\lVert x\right\rVert_A \leq \left\lVert x\right\rVert_B \leq C\left\lVert x\right\rVert_A$.
    Entonces,

    -   Definen los mismos abiertos y cerrados.

    -   En $\mathbb{R}^n$ todas las normas son equivalentes.

Topología
---------

Sea $(X,d)$ un espacio métrico,
$E \subset Y \subset X,\ a, x, y \in X,\ r \in \mathbb{R}$

-   La **bola abierta** de radio $r$ y centro $a$ es el conjunto
    $B_r(a) = B(a; r) = \{x \in X \mid d(x, a) < r\}$

-   La **bola cerrada** de radio $r$ y centro $a$ es el conjunto
    $\overline{B}_r(a) = \overline{B}(a;r) = \{x \in X \mid d(x, a) \leq r\}$

-   $E$ es **abierto**
    $\iff \forall e \in E, \exists r > 0 \mid B_r(e) \subset E$

    -   La unión arbitrara de abiertos es un abierto

    -   La intersección finita de abiertos es un abierto

    -   Dado $x \in X$, un **entorno abierto** de $x$ es cualquier
        abierto $U \mid x \in U$.

    -   $U$ es abierto $\iff U = \bigcup B_r(x)$

-   $E$ es **cerrado** si $E^\complement = X \setminus E$ es un abierto

    -   La intersección arbitraria de cerrados es un cerrado

    -   La unión finita de cerrados es un cerrado

-   $E$ **abierto relativo** de $Y$ $\iff \exists E' \mid E = Y \cap E'$
    y $E'$ es abierto en $X$ (análogo para cerrados)

    -   $E$ abierto relativo en $Y \implies E$ abierto en $(Y, d_Y)$

-   El **interior**
    $\text{ int }E = \{x \in X \mid \exists r > 0, B_r(x) \subset E\}$

-   El **exterior**
    $\text{ ext }E = \{x \in X \mid \exists r > 0, B_r(x) \cap E = \emptyset\}$

-   El **cierre, clausura o adherencia**
    $\overline{E} = \{x \in X \mid \forall r > 0, B_r(x) \cap E \neq \emptyset\}  = \{L \in X \mid \{a_n\} \subset E \text{ converge a } L\}$

    -   $E$ cerrado $\iff E = \overline{E}$

    -   $E$ **denso** $\iff \overline{E} = X$. Tanto $\mathbb{Q}$ como
        $\mathbb{R}\setminus \mathbb{Q}$ son densos en $\mathbb{R}$

-   La **frontera**
    $\partial E = \{x \in X \mid \forall r > 0, B_r(x) \cap E \neq \emptyset \land B_r(x) \cap E^\complement \neq \emptyset\} = \{x \in X \mid x \not\in \text{ int }E \land x \not\in \text{ ext }E\}$

-   Los **puntos de acumulación**
    $E' = \{x \in X \mid \forall r > 0, B_r(x) \cap E \setminus\{x\} \neq \emptyset \}$

    -   $\overline{E} = E \cup E'$

-   Un **punto** $x \in E$ es **aislado**
    $\iff \exists r > 0 \mid B_r(x) \cap E = \{x\}$

    -   si $\forall x,\ x \in E \implies x$ aislado entonces $E$ es
        **discreto** y $\{x\}$ abierto relativo de $E$

-   $(X,d)$ de **Banach** $\iff$ X es e.v., $d$ es una norma y $X$
    completo

-   $E$ es **compacto** en $(X,d) \iff$

    -   $\{x_n\} \subset E \implies \exists \{x_{n_k}\} \subset \{x_n\}$
        subsucesión convergente con límite en $K$

    -   Todo recubrimiento $\{U_i\}$ por abiertos de $K$ tiene una
        subfamilia finita que también recubre a $K$

-   Propiedades de compactos

    -   $E$ compacto $\implies K$ es cerrado y acotado

    -   en $(X,d)$, $X$ compacto $\implies (X,d)$ completo

    -   $E \subset X$ compacto, $f$ continua en $E \implies f$ alcanza
        máximo y mínimo en $E$

-   Un **camino** es una aplicación continua
    $\alpha:I \subset \mathbb{R}\to X$ con $I$ un intervalo

-   Un **homeomorfismo** es una aplicación continua y biyectiva con
    inversa continua

-   $E$ es **conexo** (por abiertos)
    $\iff \nexists A, B \subset X \mid A \cap B = \emptyset \land (E \cap A) \cup (B \cap E) = E$

-   $E$ es **conexo** (por abiertos relativos) $\iff \forall A,B$
    abiertos en $E$ con
    $A \cap B = \emptyset \land A \cup B = E \implies (A = \emptyset \land B = E) \lor B = \emptyset \land A = E)$

    -   Equivalentemente, $E$ conexo $\iff \nexists A,B$ abiertos en $E$
        con $A\cap B = \emptyset \land E = A \cup B$

    -   $E$ conexo y $p \in \overline{E} \implies E \cup p$ conexo

    -   $E_1, E_2$ conexos y
        $E_1 \cap E_2 \neq \emptyset \implies E_1 \cap E_2$ conexo

-   $E$ es **conexo por caminos**
    $\iff \forall p,q \in E, \exists \alpha(t):[0,1] \to E$ un camino
    tal que $\alpha(0) = p \land \alpha(1) = q$

    -   $E$ es **arco-conexo** si además $f:[0,1] \to f([0,1])$ es un
        homeomorfismo $$\begin{gathered}
                    E \text{ arco-conexo } \\\implies E \text{ conexo por caminos }\\ \implies E \text{ conexo }
                \end{gathered}$$

-   Dado $x \in E$, la **componente conexa** que contiene a $x$ es el
    conjunto
    $\{y \in E \mid \exists A \text{ conexo, con } x \in A \land y \in A\}$

    -   La relación de equivalencia $x\sim y \iff \exists C$ conexo con
        $x,y \in C$ define una partición cuyas clases de equivalencia
        son las componentes conexas de cada punto.

    -   Si $A \subset X$ conexo, $A$ está contenido en una única
        componente conexa.

-   $E$ es **convexo**
    $\iff \forall x, y \in E \implies [x,y] = \{tx + (1-t)y \mid t \in [0,1]\} \subset E$

    -   Más en general $x \in \mathbb{R}^n$ es **combinación convexa**
        de
        $v_1, \dots, v_n \iff \exists t_1, \dots, t_n \geq 0 \mid x = \sum_{i=0}^n t_iv_i$
        con $\sum_{i=0}^n t_i = 1$

Continuidad
-----------

Sean $(X, d_X), (Y, d_Y)$ espacios métricos, $f:X \to Y$ una función

-   $f$ es **continua** en
    $a \in X \iff \forall \varepsilon > 0, \exists \delta > 0$ tal que
    $f(B_\delta(a)) \subset B_\varepsilon(f(a))$. Equivalentemente, $f$
    continua en $a \iff \forall \varepsilon > 0,\ \exists \delta > 0$
    tal que $d_X(x, a) < \delta \implies d_Y(f(x), f(a)) < \varepsilon$.

-   $f$ **continua** en $X \iff$

    -   $f$ continua en $x,\ \forall x \in X$

    -   $\forall V \subseteq Y,\ V$ abierto de $Y \implies f^{-1}(V)$
        abierto de $X$

    -   $\forall V \subseteq Y,\ V$ cerrado de $Y \implies f^{-1}(V)$
        cerrado de $X$

    -   $\forall \{x_n\} \subset X, \{x_n\} \to x_0 \implies \{f(x_n)\} \to f(x_0)$

-   $f$ **uniformemente continua**
    $\iff \forall \varepsilon > 0, \exists \delta > 0$ tal que
    $d_X(x, x') \leq \delta \implies d_Y(f(x), f(x')) \leq \varepsilon$

    -   Si $(X,d)$ es compacto entonces $f$ continua en $X \implies f$
        uniformemente continua

    -   Si $f$ es uniformemente continua entonces se pueden intercambiar
        límite y derivada

-   Si $f$ es composición de funciones continuas entonces es continuas.
    Las fórmulas elementales son continuas.

Diferenciabilidad
=================

Sean $E, F$ espacios normados, $x_0 \in E, U \subset E$ entorno abierto
de $x_0$. $f:U \to F$ es **diferenciable** en
$x_0 \iff \exists T \in \mathcal{L}(E, F)$ tal que $$\begin{aligned}
    \lim_{h \to \vec{0}_E} \frac{f(x_0 + h) - f(x_0) - Th}{\left\lVert h\right\rVert} = \vec{0}_F\end{aligned}$$

-   Alternativamente, $f$ es diferenciable en $x_0 \iff$ podemos
    escribir $$\begin{aligned}
            f(x_0 + h) = f(x_0) + Th + o(\left\lVert h\right\rVert)
        \end{aligned}$$

-   $T$ existe $\implies T$ única y la llamamos **diferencial** de $f$
    en $x_0$ y se denota $(df)_{x_0}$

-   $f$ diferenciable en $x_0 \implies f$ continua en $x_0$

-   toda $T \in \mathcal{L}(E,F)$ es diferenciable en todo punto y
    coincide con sus diferenciales

-   $f$ constante $\implies f$ es diferenciable en todo punto y su
    diferencial $(df)_{x_0}$ es nula

-   La **linealidad:** $(f + g)_{x_0} = (df)_{x_0} + (dg)_{x_0}$

-   La **regla del producto:**
    $(d(f\cdot g))_{x_0} = (df)_{x_0}g(x_0) + f(x_0)(dg)_{x_0}$

-   La **regla de la cadena:**
    $(d(g \circ f))_{x_0} = (dg)_{f(x_0)} (df)_{x_0}$

-   La **derivada respecto de un vector** $v \in E$ en el punto
    $x_0 \in E$ es
    $D_vf(x_0) = \left.\frac{d}{dt}\right|_{t=0}f(x_0 + tv) = \lim_{t \to 0} \frac{f(x_0 + tv) - f(x_0)}{t}$

    -   Si $\left\lVert v\right\rVert = 1$ entonces la derivada se llama
        direccional

    -   Si $v = e_j \in \{e_1, \dots, e_n\}$ la base estándar de
        $\mathbb{R}^n$, entonces
        $D_{e_j}f(x_0) = \left.\frac{\partial}{\partial x_j}\right|_{x_0}f = D_jf(x_0)$
        es la j-ésima **derivada parcial**

-   La composición de funciones diferenciables es diferenciable. Ojo con
    aplicar las reglas de derivación a cosas que no son números reales
    (p.e. en matrices no funcionan).

-   **Condiciones de diferenciabilidad** de
    $f:\mathbb{R}^n \to \mathbb{R}^m$ en $x_0$:

    1.  Las derivadas parciales $\partial_{x_j}f(x_0)$ existen

    2.  El único candidato posible a diferencial $(df)_{x_0}$ es la
        aplicación lineal dada por la **matriz jacobiana** de
        $m \times n$ $$\begin{aligned}
                    Df_{x_0} &:= \left(\begin{array}{c|c|c}
                        \partial_{x_1}f(x_0) & \dots & \partial_{x_n}f(x_0)
                    \end{array}\right)\\
                    Df_{x_0} &:= \left(\begin{array}{c}
                    Df_1(x_0) \\\hline
                    \vdots \\\hline
                    Df_m(x_0) 
                    \end{array}\right) \\
                    Df_{x_0} &:= \left(\begin{array}{ccc}
                    \partial_{x_1}f_1(x_0) & \dots & \partial_{x_n}f_1(x_0) \\
                    \vdots & \ddots & \vdots \\
                    \partial_{x_1}f_m(x_0) & \dots & \partial_{x_n}f_m(x_0) \\
                    \end{array}\right)
                \end{aligned}$$

    3.  $Df_{x_0}$ cumple la definición de diferenciabilidad

-   El **gradiente** $\nabla f$ es el jacobiano de una función escalar
    ($f: \mathbb{R}^n \to \mathbb{R}$). Es un vector fila.

-   El **Jacobiano** es $\det(Df)$

-   Una función vectorial es diferenciable $\iff$ son diferenciables
    todas sus funciones componentes

Extremos relativos
------------------

En funciones escalares $f:E \to \mathbb{R}$

-   $f$ tiene un **máximo relativo** en $x_0 \iff \exists U$ entorno de
    $x_0$ tal que $\forall x \in U \implies f(x) \leq f(x_0)$

-   $f$ tiene un **máximo relativo estricto** en $x_0 \iff \exists U$
    entorno de $x_0$ tal que $\forall x \in U \implies f(x) < f(x_0)$

-   Análogamente se definen los mínimos

-   el **Hessiano** es la matriz simétrica de las derivadas segundas
    $$\begin{aligned}
            \text{Hess }f = \left(\begin{array}{ccc}
            \frac{\partial^2f}{\partial x_1\partial x_1} & \dots & \frac{\partial^2 f}{\partial x_1 \partial x_n} \\
            \vdots & \ddots & \vdots \\
            \frac{\partial^2f}{\partial x_n \partial x_1} & \dots & \frac{\partial^2}{\partial x_n \partial x_n}
            \end{array}\right)
        \end{aligned}$$

-   $f \in C^2 \implies \frac{\partial f^2}{\partial x_j\partial x_i} = \frac{\partial f^2}{\partial x_i \partial x_j}$

-   Si $Df(x_0) = 0,\ f$ tiene un punto crítico en $x_0$. Además,

    -   $\text{Hess }f(x_0)$ definida positiva $\implies f$ tiene un
        **mínimo relativo estricto** en $x_0$

    -   $\text{Hess }f(x_0)$ definida negativa $\implies f$ tiene un
        **máximo relativo estricto** en $x_0$

    -   $f$ tiene un **mínimo relativo** en
        $x_0 \implies \text{Hess }f(x_0)$ es semidefinida positiva

    -   $f$ tiene un **máximo relativo** en
        $x_0 \implies \text{Hess }f(x_0)$ es semidefinida negativa

-   El **Laplaciano** $\Delta f = \text{traza }(\text{Hess }f)$

    -   $f$ es armónica en $E \iff \forall x \in E,\ \Delta f(x) = 0$

-   El **criterio de Sylvester** para una matriz cuadrada $A$ dice

    -   menores principales $> 0 \iff A$ es **definida positiva**

    -   menores principales $\geq 0 \iff A$ es **semidefinida positiva**

    -   menores impares $\leq 0$ y menores pares $\geq 0 \iff A$ es
        **semidefinida negativa**

    -   menores impares $< 0$ y menores pares $> 0 \iff A$ **definida
        negativa**

    -   en otro caso $A$ es indefinida (no implica que no haya extremo
        relativo)

Polinomio de Taylor
-------------------

Sea $f:\mathbb{R}^n \to \mathbb{R}$ una funnción de clase $C^2$. El
polinomio de Taylor de grado 2 en $x_0$ es $$\begin{gathered}
    p_{x_0}(x) = f(x_0) + \sum_{i=0}^n \frac{\partial f}{\partial x_i}(x - x_0)\\
    + \frac{1}{2!}\sum_{i=0}^n\sum_{j=0}^n \frac{\partial^2 f}{\partial x_i\partial x_j}(x_i - x_{0_i})(x_j - x_{0_j}) + o(\left\lVert x\right\rVert^2)\end{gathered}$$

Tipos de aplicaciones
---------------------

Sean $E,F$ e.v, sea $f: E \to F$

-   Si $F = \mathbb{R}$ decimos que $f$ es **convexa**
    $\iff \forall x,y \in E, t \in [0,1], f(tx + (1-t)y) \leq tf(x) + (1-t)f(y)$

    -   En general, si $x$ es combinación convexa de $v_1, \dots, v_n$ y
        $f$ es convexa entonces
        $f(\sum_{i=0}^n t_i v_i) \leq \sum_{i=0}^nt_if(v_i)$

    -   $\forall x \in A, \text{Hess }f (x)$ es semidefinida positiva
        $\iff f$ es convexa en $A$

-   Sean $x_1, \dots, x_n$. Un punto $x$ es **combinación convexa** de
    $x_1, \dots, x_n \iff x = t_1x_1 + \dots + t_nx_n$ con
    $\sum t_i = 1 \land t_i \geq 0$

-   $f$ es $\mathbf{\alpha}$**-Hölder continua**
    $\iff \exists c > 0 \mid \left\lVert f(x) - f(x')\right\rVert \leq c \left\lVert x - x'\right\rVert^\alpha$

    -   Si $\alpha > 1$ entonces $f$ es constante

    -   Si $\alpha = 1$ entonces $f$ es de Lipschitz

Sean $(X, d_X), (Y, d_Y)$ espacios métricos, sea $f:X \to Y$

-   $f$ es **de Lipschitz** $\iff \exists K > 0$ tal que
    $$\begin{aligned}
            d_Y(f(x), f(x')) \leq K d_X(x,x'),\qquad \forall x,x' \in X
        \end{aligned}$$

    -   Toda aplicación de Lipschitz es uniformemente continua

    -   Si $f$ es de Lipschitz entonces $f$ es $\alpha$-Hölder continua.

    $$\begin{gathered}
        \boxed{
            \begin{array}{c}
            f \in C^1 \implies f \text{ de Lipschitz }\implies\\
            \implies f \text{ uniformemente continua }\implies f\text{ continua}
            \end{array}
        }
        \end{gathered}$$

-   $f$ es **contractiva** $\iff f$ es de Lipschitz con $K < 1 \land$
    dominio y codomino coinciden, distancias incluidas
    ($f:(X, d_X) \to (X, d_X)$)

    -   Si $f$ es contractiva y $X$ es completo entonces $f$ tiene un
        único punto fijo para el que $f(x) = x$

-   $f$ es **inyectiva**
    $\iff \forall x,x' \in X, f(x) \neq f(x') \implies x \neq x'$

-   $f$ es **coerciva** $\iff \exists \lambda > 0$ tal que
    $$\begin{aligned}
            d_Y(f(x), f(x')) \geq \lambda d_X(x,x'),\qquad \forall x,x' \in X
        \end{aligned}$$

    -   $f$ coerciva $\implies f$ inyectiva

    -   Una matriz real $A \in \mathbb{R}^{n\times n}$ es coerciva si
        existe $\lambda > 0$ tal que $$\begin{aligned}
                    \forall v \in \mathbb{R}^n,\ v^tAv \geq \lambda \left\lVert v\right\rVert_2^2
                \end{aligned}$$ A estos $\lambda$ se les llama
        constantes de coercividad.

        -   $A$ coerciva $\implies A$ invertible

-   $f$ es **abierta** si $\forall U \subset X$ abierto, la imagen
    $f(U)$ es un abierto de $Y$

-   $f$ es un **difeomorfismo** $\iff f: U_1 \to U_2,\ U_1,U_2$ abiertos
    de $\mathbb{R}^n$ es biyectiva, $f \in C^s$ y $f^{-1} \in C^s$

    -   $f:U_1 \to R^n$ inyectiva, $f \in C^s$ y todas las jacobianas de
        los puntos en $U_1$ son invertibles $\implies f$ es un
        difeormorfismo

-   Decimos que $f:\mathbb{R}^n \to \mathbb{R}^m$ es **regular** si todo
    punto $x_0 \in \mathbb{R}^n$ es un valor regular.

    -   Un **valor regular** es un punto $x_0$ tal que para un $U_0$
        entorno abierto de $x_0$, la función
        $f:U_0 \subset \mathbb{R}^n \to \mathbb{R}^m$ es de clase
        $C^1(U_0)$ y la diferencial $(df)_{x_0}$ tiene rango máximo, que
        es $\min(n, m)$

    -   Si $n < m$ entonces $f$ es una **inmersión**

    -   Si $n = m$ entonces $f$ es un **difeomorfismo local**

    -   Si $n > m$ entonces $f$ es una **sumbersión**

    -   Para ladrillitos: si $Df$ es $1\times m$ o $n \times 1$ entonces
        $\text{rango } Df$ es máximo
        $\iff \text{rango } Df = 1 \iff Df \neq \mathbf{0}$.

-   Una **inversa local** de
    $f:U_0 \subset \mathbb{R}^n \to \mathbb{R}^m$ es una función
    $(f|_U)^{-1} : f(U) \to U$ donde $U \subseteq U_0$ es cualquier
    abierto tal que $f(U)$ es abierto y $f|_U$ es inyectiva.

Variedades
==========

-   Una **variedad** en $\mathbb{R}^n$ de dimensión geométrica
    $k \geq 0$ es un conjunto $X \subseteq \mathbb{R}^n$ tal que
    $\forall x_0 \in X,\ \exists E, E' \subseteq \mathbb{R}^n$ abiertos
    con $x_0 \in E$ y un $\exists f:E \to E'$ difeomorfismo tal que
    $$\begin{gathered}
            f(X \cap E) = E' \cap (\mathbb{R}^k \times \{\mathbf{0}^{n-k}\}) =\\= \{y \in E' \mid y_{k+1} = y_{k+2} = \dots = y_{n} = 0\}
        \end{gathered}$$

    -   Si $k = 1$ la variedad se llama curva en $\mathbb{R}^n$

    -   Si $k = 2$ la variedad se llama superficie en $\mathbb{R}^n$

    -   Si $k = n-1$ la variedad se llama hipersuperficie en
        $\mathbb{R}^n$

    -   La dimensión de una variedad es única, si hay dos puntos que
        tienen dimensión diferente entonces no es una variedad (puede
        ser unión de variedades).

    -   El difeomorfismo $f$ se llama **difeomorfismo planchador**

    -   Una variedad se dice de clase
        $C^{s \geq 1} \iff f \in C^{s \geq 1}$.

-   **Teorema del grafo:** Sean
    $x \in \mathbb{R}^k, y \in \mathbb{R}^n$. Si
    $\forall (x,y) \in X \subset \mathbb{R}^{n+k}$ se puede expresar
    como $(x, f(x))$ donde
    $f:\mathbb{R}^k \to \mathbb{R}^n,\ f \in C^{s\geq 1}$ entonces $X$
    es una $C^s$-varidedad de dimensión $k$ en $\mathbb{R}^{n+k}$.

-   **Teorema de la preimagen:** Sea
    $f:U_0 \subset \mathbb{R}^n \to \mathbb{R}^m,\ n > m,\ f\in C^{s \geq 1},\ b \in \mathbb{R}^{m}$.
    Si $f$ es submersión en $a, \forall a \in f^{-1}(\{b\})$ entonces
    $f^{-1}(\{b\})$ es o el vacío o una variedad de dimensión $n - m$ y
    clase $C^s$.

    -   Si $n = m$ entonces $f^{-1}(\{b\})$ es una variedad de dimensión
        $0$

    -   Para ladrillitos: $f^{-1}(\{b\})$ es el vacío si
        $b \notin \text{ Im } f$, caso completamente inútil por lo que
        nunca elegiremos $f$ y $b$ de tal manera

-   Una **parametrización** de una variedad $X$ en $\mathbb{R}^n$ es un
    abierto $W \in \mathbb{R}^k$ y una función $\Phi:W \to \mathbb{R}^n$
    que cumple:

    1.  $\Phi \in C^{s \geq 1}(W)$

    2.  $\Phi(W) \subset X$

    3.  $\exists Y \neq \emptyset$ abierto relativo de $X$ tal que
        $Y \subset \Phi(W)$

    Además

    -   $\Phi$ no tiene por qué ser sobre pero $\Phi(W)$ tiene que ser
        otra variedad (no puede ser insignificante)

    -   Una parametrización $\Phi$ es de máxima calidad o un **sistema
        de coordenadas** $\iff \Phi$ es inyectiva y regular. Esto
        equivale a comprobar

        1.  $\Phi(W) \subseteq M$

        2.  $D\Phi(x)$ tiene rango máximo $\forall x \in W$

        3.  $\Phi$ es inyectiva en $W$

Teoremas gordos
===============

Sea $f: S \subset \mathbb{R}^n \to \mathbb{R}$ una función diferenciable
sobre el conjunto abierto y convexo $S$. Entonces
$\forall a, b \in S,\ \exists c \in [a,b] \mid f(a) - f(b) = \nabla f(c)(a - b)$

Sea $f$ una función integrable sobre $[a,b] \subset \mathbb{R}$.
Definimos $F:[a,b] \to \mathbb{R}$ $$\begin{aligned}
        F(x) = \int_{a}^{x} f(t)dt
    \end{aligned}$$ Si $f$ es continua en $c \in (a,b)$ entonces $F$ es
derivable en $c$ y $F'(c) = f(c)$. Además, usando la regla de la cadena
queda: $$\begin{aligned}
        \frac{d}{dx}\int_{a(x)}^{b(x)} f(t)dt = f(b(x))b'(x) - f(a(x))a'(x)
    \end{aligned}$$

Sea $(\mathbb{V}, \left\lVert\cdot\right\rVert)$ un espacio de Banach.
Sean $U_0 \in \mathbb{V}$ un abierto y $f:U_0 \to \mathbb{V}$ una
función de clase $C^1$. Si en $x_0 \in U_0$ la diferencial
$L = (df)_{x_0}$ es invertible (e.d. $L$ es lineal acototada, biyectiva
y con inversa $L^{-1}$ también acotada) entonces existen abiertos $U, V$
con $x_0 \in U,\ f(x_0) = y_0 \in V$ tales que $f$ es biyectiva de $U$ a
$V$.

Además, en ese caso la inversa $f^{-1}:V \to U$ es diferenciable en
$y_0$ y $(df^{-1})_{y_0} = [(df)_{x_0}]^{-1}$.

Sean $x,a \in \mathbb{R}^n,\ y,b \in \mathbb{R}^m$ Sea
$F: \mathbb{R}^{n+m} \to \mathbb{R}^m$ una función $C^k, k \geq 1$. Sea
$(a,b) \in \mathbb{R}^{n+m}$ tal que $F(a,b) = 0$. Si $$\begin{aligned}
        DF_y(a,b) = \left(\begin{array}{ccc}
        \frac{\partial F_1}{\partial y_1}(a,b) & \dots & \frac{\partial F_1}{\partial y_m}(a,b) \\
        \vdots & \ddots & \vdots \\
        \frac{\partial F_m}{\partial y_1}(a,b) & \dots & \frac{\partial F_m}{\partial y_m}(a,b)
        \end{array}\right)
    \end{aligned}$$ es invertible entonces
$\exists U \subset \mathbb{R}^n$ entorno abierto de $a$ y
$\exists! g:U \to \mathbb{R}^m$ tal que $g(a) = b$ y
$F(x, g(x)) = 0,\ \forall x \in U$. Es más, $g \in C^k$ y
$$\begin{aligned}
        \frac{\partial g}{\partial x_j}(x) = -\left[DF_y(x, g(x))\right]^{-1}_{m\times m}\left[\frac{\partial F}{\partial x_j}(x, g(x))\right]_{m \times 1}
    \end{aligned}$$ Esto es: las columnas de la jacobiana de $g$, que es
una matriz $m \times n$, van dadas por la expresión anterior.

-   Si de una ecuación queremos despejar $y$, mandamos todo a un lado y
    lo que no se puede anular es la matriz de las derivadas de $y$.

-   En este enunciado se escribe lo que quieres despejar después, como
    el $y \in \mathbb{R}^m$ pero a veces se pone antes. Da igual, lo que
    importa es la regla mnemotécnica de antes.
